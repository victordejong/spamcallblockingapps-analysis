package com.lidroid.xutils.cache;

import com.lidroid.xutils.util.IOUtils;
import com.lidroid.xutils.util.LogUtils;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/cache/LruDiskCache.class */
public final class LruDiskCache implements Closeable {
    static final long ANY_SEQUENCE_NUMBER = -1;
    private static final char CLEAN = 'C';
    private static final char DELETE = 'D';
    private static final char EXPIRY_PREFIX = 't';
    static final String JOURNAL_FILE = "journal";
    static final String JOURNAL_FILE_BACKUP = "journal.bkp";
    static final String JOURNAL_FILE_TEMP = "journal.tmp";
    static final String MAGIC = "libcore.io.DiskLruCache";
    private static final OutputStream NULL_OUTPUT_STREAM = new OutputStream() { // from class: com.lidroid.xutils.cache.LruDiskCache.2
        @Override // java.io.OutputStream
        public void write(int i) {
        }
    };
    private static final char READ = 'R';
    private static final char UPDATE = 'U';
    static final String VERSION = "1";
    private final int appVersion;
    private final File directory;
    private final File journalFile;
    private final File journalFileBackup;
    private final File journalFileTmp;
    private Writer journalWriter;
    private long maxSize;
    private int redundantOpCount;
    private final int valueCount;
    private long size = 0;
    private final LinkedHashMap<String, Entry> lruEntries = new LinkedHashMap<>(0, 0.75f, true);
    private long nextSequenceNumber = 0;
    final ThreadPoolExecutor executorService = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final Callable<Void> cleanupCallable = new Callable<Void>() { // from class: com.lidroid.xutils.cache.LruDiskCache.1
        @Override // java.util.concurrent.Callable
        public Void call() {
            synchronized (LruDiskCache.this) {
                if (LruDiskCache.this.journalWriter == null) {
                    return null;
                }
                LruDiskCache.this.trimToSize();
                if (LruDiskCache.this.journalRebuildRequired()) {
                    LruDiskCache.this.rebuildJournal();
                    LruDiskCache.this.redundantOpCount = 0;
                }
                return null;
            }
        }
    };
    private FileNameGenerator fileNameGenerator = new MD5FileNameGenerator();

    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/cache/LruDiskCache$Editor.class */
    public final class Editor {
        private boolean committed;
        private final Entry entry;
        private boolean hasErrors;
        private final boolean[] written;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream.class */
        public class FaultHidingOutputStream extends FilterOutputStream {
            private FaultHidingOutputStream(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (Throwable th) {
                    Editor.this.hasErrors = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (Throwable th) {
                    Editor.this.hasErrors = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (Throwable th) {
                    Editor.this.hasErrors = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                    ((FilterOutputStream) this).out.flush();
                } catch (Throwable th) {
                    Editor.this.hasErrors = true;
                }
            }
        }

        private Editor(Entry entry) {
            this.entry = entry;
            this.written = entry.readable ? null : new boolean[LruDiskCache.this.valueCount];
        }

        public void abort() {
            LruDiskCache.this.completeEdit(this, false);
        }

        public void abortUnlessCommitted() {
            if (!this.committed) {
                try {
                    abort();
                } catch (Throwable th) {
                }
            }
        }

        public void commit() {
            if (this.hasErrors) {
                LruDiskCache.this.completeEdit(this, false);
                LruDiskCache.this.removeByDiskKey(this.entry.diskKey);
            } else {
                LruDiskCache.this.completeEdit(this, true);
            }
            this.committed = true;
        }

        public String getString(int i) {
            InputStream newInputStream = newInputStream(i);
            return newInputStream != null ? LruDiskCache.inputStreamToString(newInputStream) : null;
        }

        public InputStream newInputStream(int i) {
            synchronized (LruDiskCache.this) {
                if (this.entry.currentEditor != this) {
                    throw new IllegalStateException();
                } else if (!this.entry.readable) {
                    return null;
                } else {
                    try {
                        return new FileInputStream(this.entry.getCleanFile(i));
                    } catch (FileNotFoundException e) {
                        return null;
                    }
                }
            }
        }

        public OutputStream newOutputStream(int i) {
            FileOutputStream fileOutputStream;
            FaultHidingOutputStream faultHidingOutputStream;
            synchronized (LruDiskCache.this) {
                if (this.entry.currentEditor == this) {
                    if (!this.entry.readable) {
                        this.written[i] = true;
                    }
                    File dirtyFile = this.entry.getDirtyFile(i);
                    try {
                        fileOutputStream = new FileOutputStream(dirtyFile);
                    } catch (FileNotFoundException e) {
                        LruDiskCache.this.directory.mkdirs();
                        try {
                            fileOutputStream = new FileOutputStream(dirtyFile);
                        } catch (FileNotFoundException e2) {
                            return LruDiskCache.NULL_OUTPUT_STREAM;
                        }
                    }
                    faultHidingOutputStream = new FaultHidingOutputStream(fileOutputStream);
                } else {
                    throw new IllegalStateException();
                }
            }
            return faultHidingOutputStream;
        }

        public void set(int i, String str) {
            Throwable th;
            OutputStreamWriter outputStreamWriter;
            OutputStreamWriter outputStreamWriter2 = null;
            try {
                outputStreamWriter = new OutputStreamWriter(newOutputStream(i), "UTF-8");
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                outputStreamWriter.write(str);
                IOUtils.closeQuietly(outputStreamWriter);
            } catch (Throwable th3) {
                th = th3;
                outputStreamWriter2 = outputStreamWriter;
                IOUtils.closeQuietly(outputStreamWriter2);
                throw th;
            }
        }

        public void setEntryExpiryTimestamp(long j) {
            this.entry.expiryTimestamp = j;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/cache/LruDiskCache$Entry.class */
    public final class Entry {
        private Editor currentEditor;
        private final String diskKey;
        private long expiryTimestamp;
        private final long[] lengths;
        private boolean readable;
        private long sequenceNumber;

        private Entry(String str) {
            this.expiryTimestamp = Long.MAX_VALUE;
            this.diskKey = str;
            this.lengths = new long[LruDiskCache.this.valueCount];
        }

        private IOException invalidLengths(String[] strArr) {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLengths(String[] strArr, int i) {
            if (strArr.length - i == LruDiskCache.this.valueCount) {
                for (int i2 = 0; i2 < LruDiskCache.this.valueCount; i2++) {
                    try {
                        this.lengths[i2] = Long.parseLong(strArr[i2 + i]);
                    } catch (NumberFormatException e) {
                        throw invalidLengths(strArr);
                    }
                }
                return;
            }
            throw invalidLengths(strArr);
        }

        public File getCleanFile(int i) {
            File file = LruDiskCache.this.directory;
            return new File(file, this.diskKey + "." + i);
        }

        public File getDirtyFile(int i) {
            File file = LruDiskCache.this.directory;
            return new File(file, this.diskKey + "." + i + ".tmp");
        }

        public String getLengths() {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.lengths) {
                sb.append(" ");
                sb.append(j);
            }
            return sb.toString();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/cache/LruDiskCache$Snapshot.class */
    public final class Snapshot implements Closeable {
        private final String diskKey;
        private final FileInputStream[] ins;
        private final long[] lengths;
        private final long sequenceNumber;

        private Snapshot(String str, long j, FileInputStream[] fileInputStreamArr, long[] jArr) {
            this.diskKey = str;
            this.sequenceNumber = j;
            this.ins = fileInputStreamArr;
            this.lengths = jArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (FileInputStream fileInputStream : this.ins) {
                IOUtils.closeQuietly(fileInputStream);
            }
        }

        public Editor edit() {
            return LruDiskCache.this.editByDiskKey(this.diskKey, this.sequenceNumber);
        }

        public FileInputStream getInputStream(int i) {
            return this.ins[i];
        }

        public long getLength(int i) {
            return this.lengths[i];
        }

        public String getString(int i) {
            return LruDiskCache.inputStreamToString(getInputStream(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/cache/LruDiskCache$StrictLineReader.class */
    public class StrictLineReader implements Closeable {

        /* renamed from: CR */
        private static final byte f11336CR = 13;

        /* renamed from: LF */
        private static final byte f11337LF = 10;
        private byte[] buf;
        private final Charset charset;
        private int end;

        /* renamed from: in */
        private final InputStream f11338in;
        private int pos;

        public StrictLineReader(LruDiskCache lruDiskCache, InputStream inputStream) {
            this(inputStream, 8192);
        }

        public StrictLineReader(InputStream inputStream, int i) {
            this.charset = Charset.forName("US-ASCII");
            inputStream.getClass();
            if (i >= 0) {
                this.f11338in = inputStream;
                this.buf = new byte[i];
                return;
            }
            throw new IllegalArgumentException("capacity <= 0");
        }

        private void fillBuf() {
            InputStream inputStream = this.f11338in;
            byte[] bArr = this.buf;
            int read = inputStream.read(bArr, 0, bArr.length);
            if (read != -1) {
                this.pos = 0;
                this.end = read;
                return;
            }
            throw new EOFException();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            synchronized (this.f11338in) {
                if (this.buf != null) {
                    this.buf = null;
                    this.f11338in.close();
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
            if (r0[r10] == 13) goto L_0x0053;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String readLine() {
            /*
                Method dump skipped, instructions count: 292
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.lidroid.xutils.cache.LruDiskCache.StrictLineReader.readLine():java.lang.String");
        }
    }

    private LruDiskCache(File file, int i, int i2, long j) {
        this.directory = file;
        this.appVersion = i;
        this.journalFile = new File(file, JOURNAL_FILE);
        this.journalFileTmp = new File(file, JOURNAL_FILE_TEMP);
        this.journalFileBackup = new File(file, JOURNAL_FILE_BACKUP);
        this.valueCount = i2;
        this.maxSize = j;
    }

    private void checkNotClosed() {
        if (this.journalWriter == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void completeEdit(Editor editor, boolean z) {
        synchronized (this) {
            Entry entry = editor.entry;
            if (entry.currentEditor == editor) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!entry.readable) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.valueCount) {
                                break;
                            } else if (!editor.written[i2]) {
                                editor.abort();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else if (!entry.getDirtyFile(i2).exists()) {
                                editor.abort();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.valueCount) {
                    File dirtyFile = entry.getDirtyFile(i);
                    if (!z) {
                        deleteIfExists(dirtyFile);
                    } else if (dirtyFile.exists()) {
                        File cleanFile = entry.getCleanFile(i);
                        dirtyFile.renameTo(cleanFile);
                        long j = entry.lengths[i];
                        long length = cleanFile.length();
                        entry.lengths[i] = length;
                        this.size = (this.size - j) + length;
                    }
                    i++;
                }
                this.redundantOpCount++;
                entry.currentEditor = null;
                if (entry.readable || z) {
                    entry.readable = true;
                    this.journalWriter.write("C " + entry.diskKey + " t" + entry.expiryTimestamp + entry.getLengths() + '\n');
                    if (z) {
                        long j2 = this.nextSequenceNumber;
                        this.nextSequenceNumber = 1 + j2;
                        entry.sequenceNumber = j2;
                    }
                } else {
                    this.lruEntries.remove(entry.diskKey);
                    this.journalWriter.write("D " + entry.diskKey + '\n');
                }
                this.journalWriter.flush();
                if (this.size > this.maxSize || journalRebuildRequired()) {
                    this.executorService.submit(this.cleanupCallable);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    private static void deleteContents(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    deleteContents(file2);
                }
                if (file2.exists() && !file2.delete()) {
                    throw new IOException("failed to delete file: " + file2);
                }
            }
            return;
        }
        throw new IOException("not a readable directory: " + file);
    }

    private static void deleteIfExists(File file) {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Editor editByDiskKey(String str, long j) {
        synchronized (this) {
            checkNotClosed();
            Entry entry = this.lruEntries.get(str);
            if (j != ANY_SEQUENCE_NUMBER && (entry == null || entry.sequenceNumber != j)) {
                return null;
            }
            if (entry == null) {
                entry = new Entry(str);
                this.lruEntries.put(str, entry);
            } else if (entry.currentEditor != null) {
                return null;
            }
            Editor editor = new Editor(entry);
            entry.currentEditor = editor;
            Writer writer = this.journalWriter;
            writer.write("U " + str + '\n');
            this.journalWriter.flush();
            return editor;
        }
    }

    private Snapshot getByDiskKey(String str) {
        synchronized (this) {
            checkNotClosed();
            Entry entry = this.lruEntries.get(str);
            if (entry == null) {
                return null;
            }
            if (!entry.readable) {
                return null;
            }
            if (entry.expiryTimestamp < System.currentTimeMillis()) {
                for (int i = 0; i < this.valueCount; i++) {
                    File cleanFile = entry.getCleanFile(i);
                    if (cleanFile.exists() && !cleanFile.delete()) {
                        throw new IOException("failed to delete " + cleanFile);
                    }
                    this.size -= entry.lengths[i];
                    entry.lengths[i] = 0;
                }
                this.redundantOpCount++;
                this.journalWriter.append((CharSequence) ("D " + str + '\n'));
                this.lruEntries.remove(str);
                if (journalRebuildRequired()) {
                    this.executorService.submit(this.cleanupCallable);
                }
                return null;
            }
            FileInputStream[] fileInputStreamArr = new FileInputStream[this.valueCount];
            for (int i2 = 0; i2 < this.valueCount; i2++) {
                try {
                    fileInputStreamArr[i2] = new FileInputStream(entry.getCleanFile(i2));
                } catch (FileNotFoundException e) {
                    for (int i3 = 0; i3 < this.valueCount && fileInputStreamArr[i3] != null; i3++) {
                        IOUtils.closeQuietly(fileInputStreamArr[i3]);
                    }
                    return null;
                }
            }
            this.redundantOpCount++;
            this.journalWriter.append((CharSequence) ("R " + str + '\n'));
            if (journalRebuildRequired()) {
                this.executorService.submit(this.cleanupCallable);
            }
            return new Snapshot(str, entry.sequenceNumber, fileInputStreamArr, entry.lengths);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String inputStreamToString(InputStream inputStream) {
        return readFully(new InputStreamReader(inputStream, "UTF-8"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean journalRebuildRequired() {
        int i = this.redundantOpCount;
        return i >= 2000 && i >= this.lruEntries.size();
    }

    public static LruDiskCache open(File file, int i, int i2, long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i2 > 0) {
            File file2 = new File(file, JOURNAL_FILE_BACKUP);
            if (file2.exists()) {
                File file3 = new File(file, JOURNAL_FILE);
                if (file3.exists()) {
                    file2.delete();
                } else {
                    renameTo(file2, file3, false);
                }
            }
            LruDiskCache lruDiskCache = new LruDiskCache(file, i, i2, j);
            if (lruDiskCache.journalFile.exists()) {
                try {
                    lruDiskCache.readJournal();
                    lruDiskCache.processJournal();
                    lruDiskCache.journalWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(lruDiskCache.journalFile, true), "US-ASCII"));
                    return lruDiskCache;
                } catch (Throwable th) {
                    LogUtils.m2008e("DiskLruCache " + file + " is corrupt: " + th.getMessage() + ", removing", th);
                    lruDiskCache.delete();
                }
            }
            if (file.exists() || file.mkdirs()) {
                lruDiskCache = new LruDiskCache(file, i, i2, j);
                lruDiskCache.rebuildJournal();
            }
            return lruDiskCache;
        } else {
            throw new IllegalArgumentException("valueCount <= 0");
        }
    }

    private void processJournal() {
        deleteIfExists(this.journalFileTmp);
        Iterator<Entry> it = this.lruEntries.values().iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            if (next.currentEditor == null) {
                for (int i = 0; i < this.valueCount; i++) {
                    this.size += next.lengths[i];
                }
            } else {
                next.currentEditor = null;
                for (int i2 = 0; i2 < this.valueCount; i2++) {
                    deleteIfExists(next.getCleanFile(i2));
                    deleteIfExists(next.getDirtyFile(i2));
                }
                it.remove();
            }
        }
    }

    private static String readFully(Reader reader) {
        Throwable th;
        StringWriter stringWriter;
        try {
            stringWriter = new StringWriter();
            try {
                char[] cArr = new char[1024];
                while (true) {
                    int read = reader.read(cArr);
                    if (read != -1) {
                        stringWriter.write(cArr, 0, read);
                    } else {
                        String stringWriter2 = stringWriter.toString();
                        IOUtils.closeQuietly(reader);
                        IOUtils.closeQuietly(stringWriter);
                        return stringWriter2;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                IOUtils.closeQuietly(reader);
                IOUtils.closeQuietly(stringWriter);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            stringWriter = null;
        }
    }

    private void readJournal() {
        Throwable th;
        StrictLineReader strictLineReader = null;
        try {
            strictLineReader = new StrictLineReader(this, new FileInputStream(this.journalFile));
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            String readLine = strictLineReader.readLine();
            String readLine2 = strictLineReader.readLine();
            String readLine3 = strictLineReader.readLine();
            String readLine4 = strictLineReader.readLine();
            String readLine5 = strictLineReader.readLine();
            if (!MAGIC.equals(readLine) || !VERSION.equals(readLine2) || !Integer.toString(this.appVersion).equals(readLine3) || !Integer.toString(this.valueCount).equals(readLine4) || !"".equals(readLine5)) {
                throw new IOException("unexpected journal header: [" + readLine + ", " + readLine2 + ", " + readLine4 + ", " + readLine5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    readJournalLine(strictLineReader.readLine());
                    i++;
                } catch (EOFException e) {
                    this.redundantOpCount = i - this.lruEntries.size();
                    IOUtils.closeQuietly(strictLineReader);
                    return;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            IOUtils.closeQuietly(strictLineReader);
            throw th;
        }
    }

    private void readJournalLine(String str) {
        String sb;
        String str2;
        int indexOf = str.indexOf(32);
        if (indexOf == 1) {
            char charAt = str.charAt(0);
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(32, i);
            if (indexOf2 == -1) {
                String substring = str.substring(i);
                str2 = substring;
                if (charAt == 'D') {
                    this.lruEntries.remove(substring);
                    return;
                }
            } else {
                str2 = str.substring(i, indexOf2);
            }
            Entry entry = this.lruEntries.get(str2);
            Entry entry2 = entry;
            if (entry == null) {
                entry2 = new Entry(str2);
                this.lruEntries.put(str2, entry2);
            }
            if (charAt == 'C') {
                entry2.readable = true;
                entry2.currentEditor = null;
                String[] split = str.substring(indexOf2 + 1).split(" ");
                if (split.length > 0) {
                    try {
                        if (split[0].charAt(0) == 't') {
                            entry2.expiryTimestamp = Long.valueOf(split[0].substring(1)).longValue();
                            entry2.setLengths(split, 1);
                        } else {
                            entry2.expiryTimestamp = Long.MAX_VALUE;
                            entry2.setLengths(split, 0);
                        }
                    } finally {
                        IOException iOException = new IOException("unexpected journal line: " + str);
                    }
                }
            } else if (charAt == 'R') {
            } else {
                if (charAt == 'U') {
                    entry2.currentEditor = new Editor(entry2);
                    return;
                }
                throw new IOException(sb);
            }
        } else {
            throw new IOException(sb);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rebuildJournal() {
        BufferedWriter bufferedWriter;
        Throwable th;
        synchronized (this) {
            Writer writer = this.journalWriter;
            if (writer != null) {
                IOUtils.closeQuietly(writer);
            }
            try {
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFileTmp), "US-ASCII"));
                try {
                    bufferedWriter.write(MAGIC);
                    bufferedWriter.write("\n");
                    bufferedWriter.write(VERSION);
                    bufferedWriter.write("\n");
                    bufferedWriter.write(Integer.toString(this.appVersion));
                    bufferedWriter.write("\n");
                    bufferedWriter.write(Integer.toString(this.valueCount));
                    bufferedWriter.write("\n");
                    bufferedWriter.write("\n");
                    for (Entry entry : this.lruEntries.values()) {
                        bufferedWriter.write(entry.currentEditor != null ? "U " + entry.diskKey + '\n' : "C " + entry.diskKey + " t" + entry.expiryTimestamp + entry.getLengths() + '\n');
                    }
                    IOUtils.closeQuietly(bufferedWriter);
                    if (this.journalFile.exists()) {
                        renameTo(this.journalFile, this.journalFileBackup, true);
                    }
                    renameTo(this.journalFileTmp, this.journalFile, false);
                    this.journalFileBackup.delete();
                    this.journalWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFile, true), "US-ASCII"));
                } catch (Throwable th2) {
                    th = th2;
                    IOUtils.closeQuietly(bufferedWriter);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedWriter = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean removeByDiskKey(String str) {
        synchronized (this) {
            checkNotClosed();
            Entry entry = this.lruEntries.get(str);
            if (entry != null && entry.currentEditor == null) {
                for (int i = 0; i < this.valueCount; i++) {
                    File cleanFile = entry.getCleanFile(i);
                    if (cleanFile.exists() && !cleanFile.delete()) {
                        throw new IOException("failed to delete " + cleanFile);
                    }
                    this.size -= entry.lengths[i];
                    entry.lengths[i] = 0;
                }
                this.redundantOpCount++;
                this.journalWriter.append((CharSequence) ("D " + str + '\n'));
                this.lruEntries.remove(str);
                if (journalRebuildRequired()) {
                    this.executorService.submit(this.cleanupCallable);
                }
                return true;
            }
            return false;
        }
    }

    private static void renameTo(File file, File file2, boolean z) {
        if (z) {
            deleteIfExists(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void trimToSize() {
        while (this.size > this.maxSize) {
            removeByDiskKey(this.lruEntries.entrySet().iterator().next().getKey());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (this.journalWriter != null) {
                Iterator it = new ArrayList(this.lruEntries.values()).iterator();
                while (it.hasNext()) {
                    Entry entry = (Entry) it.next();
                    if (entry.currentEditor != null) {
                        entry.currentEditor.abort();
                    }
                }
                trimToSize();
                this.journalWriter.close();
                this.journalWriter = null;
            }
        }
    }

    public void delete() {
        IOUtils.closeQuietly(this);
        deleteContents(this.directory);
    }

    public Editor edit(String str) {
        return editByDiskKey(this.fileNameGenerator.generate(str), ANY_SEQUENCE_NUMBER);
    }

    public void flush() {
        synchronized (this) {
            checkNotClosed();
            trimToSize();
            this.journalWriter.flush();
        }
    }

    public Snapshot get(String str) {
        return getByDiskKey(this.fileNameGenerator.generate(str));
    }

    public File getCacheFile(String str, int i) {
        String generate = this.fileNameGenerator.generate(str);
        File file = this.directory;
        File file2 = new File(file, generate + "." + i);
        if (file2.exists()) {
            return file2;
        }
        try {
            remove(str);
            return null;
        } catch (IOException e) {
            return null;
        }
    }

    public File getDirectory() {
        return this.directory;
    }

    public long getExpiryTimestamp(String str) {
        synchronized (this) {
            String generate = this.fileNameGenerator.generate(str);
            checkNotClosed();
            Entry entry = this.lruEntries.get(generate);
            if (entry == null) {
                return 0L;
            }
            return entry.expiryTimestamp;
        }
    }

    public FileNameGenerator getFileNameGenerator() {
        return this.fileNameGenerator;
    }

    public long getMaxSize() {
        long j;
        synchronized (this) {
            j = this.maxSize;
        }
        return j;
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.journalWriter == null;
        }
        return z;
    }

    public boolean remove(String str) {
        return removeByDiskKey(this.fileNameGenerator.generate(str));
    }

    public void setFileNameGenerator(FileNameGenerator fileNameGenerator) {
        if (fileNameGenerator != null) {
            this.fileNameGenerator = fileNameGenerator;
        }
    }

    public void setMaxSize(long j) {
        synchronized (this) {
            this.maxSize = j;
            this.executorService.submit(this.cleanupCallable);
        }
    }

    public long size() {
        long j;
        synchronized (this) {
            j = this.size;
        }
        return j;
    }
}
