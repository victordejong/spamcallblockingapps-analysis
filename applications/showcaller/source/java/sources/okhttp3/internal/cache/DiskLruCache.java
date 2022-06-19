package okhttp3.internal.cache;

import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.NoSuchElementException;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import okhttp3.internal.Util;
import okhttp3.internal.p341io.FileSystem;
import okhttp3.internal.platform.Platform;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/DiskLruCache.class */
public final class DiskLruCache implements Closeable, Flushable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final long ANY_SEQUENCE_NUMBER = -1;
    private static final String CLEAN = "CLEAN";
    private static final String DIRTY = "DIRTY";
    static final String JOURNAL_FILE = "journal";
    static final String JOURNAL_FILE_BACKUP = "journal.bkp";
    static final String JOURNAL_FILE_TEMP = "journal.tmp";
    static final Pattern LEGAL_KEY_PATTERN = Pattern.compile("[a-z0-9_-]{1,120}");
    static final String MAGIC = "libcore.io.DiskLruCache";
    private static final String READ = "READ";
    private static final String REMOVE = "REMOVE";
    static final String VERSION_1 = "1";
    private final int appVersion;
    boolean closed;
    final File directory;
    private final Executor executor;
    final FileSystem fileSystem;
    boolean hasJournalErrors;
    boolean initialized;
    private final File journalFile;
    private final File journalFileBackup;
    private final File journalFileTmp;
    BufferedSink journalWriter;
    private long maxSize;
    boolean mostRecentRebuildFailed;
    boolean mostRecentTrimFailed;
    int redundantOpCount;
    final int valueCount;
    private long size = 0;
    final LinkedHashMap<String, Entry> lruEntries = new LinkedHashMap<>(0, 0.75f, true);
    private long nextSequenceNumber = 0;
    private final Runnable cleanupRunnable = new Runnable() { // from class: okhttp3.internal.cache.DiskLruCache.1
        @Override // java.lang.Runnable
        public void run() {
            synchronized (DiskLruCache.this) {
                DiskLruCache diskLruCache = DiskLruCache.this;
                if ((!diskLruCache.initialized) || diskLruCache.closed) {
                    return;
                }
                try {
                    diskLruCache.trimToSize();
                } catch (IOException e) {
                    DiskLruCache.this.mostRecentTrimFailed = true;
                }
                try {
                    if (DiskLruCache.this.journalRebuildRequired()) {
                        DiskLruCache.this.rebuildJournal();
                        DiskLruCache.this.redundantOpCount = 0;
                    }
                } catch (IOException e2) {
                    DiskLruCache diskLruCache2 = DiskLruCache.this;
                    diskLruCache2.mostRecentRebuildFailed = true;
                    diskLruCache2.journalWriter = Okio.buffer(Okio.blackhole());
                }
            }
        }
    };

    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$Editor.class */
    public final class Editor {
        private boolean done;
        final Entry entry;
        final boolean[] written;

        Editor(Entry entry) {
            DiskLruCache.this = r4;
            this.entry = entry;
            this.written = entry.readable ? null : new boolean[r4.valueCount];
        }

        public void abort() {
            synchronized (DiskLruCache.this) {
                if (this.done) {
                    throw new IllegalStateException();
                }
                if (this.entry.currentEditor == this) {
                    DiskLruCache.this.completeEdit(this, false);
                }
                this.done = true;
            }
        }

        public void abortUnlessCommitted() {
            synchronized (DiskLruCache.this) {
                if (!this.done && this.entry.currentEditor == this) {
                    try {
                        DiskLruCache.this.completeEdit(this, false);
                    } catch (IOException e) {
                    }
                }
            }
        }

        public void commit() {
            synchronized (DiskLruCache.this) {
                if (this.done) {
                    throw new IllegalStateException();
                }
                if (this.entry.currentEditor == this) {
                    DiskLruCache.this.completeEdit(this, true);
                }
                this.done = true;
            }
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x003b -> B:8:0x002c). Please submit an issue!!! */
        void detach() {
            if (this.entry.currentEditor == this) {
                int i = 0;
                while (true) {
                    DiskLruCache diskLruCache = DiskLruCache.this;
                    if (i >= diskLruCache.valueCount) {
                        this.entry.currentEditor = null;
                        return;
                    } else {
                        try {
                            diskLruCache.fileSystem.delete(this.entry.dirtyFiles[i]);
                        } catch (IOException e) {
                        }
                        i++;
                    }
                }
            }
        }

        public Sink newSink(int i) {
            synchronized (DiskLruCache.this) {
                if (!this.done) {
                    Entry entry = this.entry;
                    if (entry.currentEditor != this) {
                        return Okio.blackhole();
                    }
                    if (!entry.readable) {
                        this.written[i] = true;
                    }
                    try {
                        return new FaultHidingSink(DiskLruCache.this.fileSystem.sink(entry.dirtyFiles[i])) { // from class: okhttp3.internal.cache.DiskLruCache.Editor.1
                            @Override // okhttp3.internal.cache.FaultHidingSink
                            protected void onException(IOException iOException) {
                                synchronized (DiskLruCache.this) {
                                    Editor.this.detach();
                                }
                            }
                        };
                    } catch (FileNotFoundException e) {
                        return Okio.blackhole();
                    }
                }
                throw new IllegalStateException();
            }
        }

        public Source newSource(int i) {
            synchronized (DiskLruCache.this) {
                if (!this.done) {
                    Entry entry = this.entry;
                    if (!entry.readable || entry.currentEditor != this) {
                        return null;
                    }
                    try {
                        return DiskLruCache.this.fileSystem.source(entry.cleanFiles[i]);
                    } catch (FileNotFoundException e) {
                        return null;
                    }
                }
                throw new IllegalStateException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$Entry.class */
    public final class Entry {
        final File[] cleanFiles;
        Editor currentEditor;
        final File[] dirtyFiles;
        final String key;
        final long[] lengths;
        boolean readable;
        long sequenceNumber;

        Entry(String str) {
            DiskLruCache.this = r8;
            this.key = str;
            int i = r8.valueCount;
            this.lengths = new long[i];
            this.cleanFiles = new File[i];
            this.dirtyFiles = new File[i];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i2 = 0; i2 < r8.valueCount; i2++) {
                sb.append(i2);
                this.cleanFiles[i2] = new File(r8.directory, sb.toString());
                sb.append(".tmp");
                this.dirtyFiles[i2] = new File(r8.directory, sb.toString());
                sb.setLength(length);
            }
        }

        private IOException invalidLengths(String[] strArr) {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        void setLengths(String[] strArr) {
            if (strArr.length == DiskLruCache.this.valueCount) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        this.lengths[i] = Long.parseLong(strArr[i]);
                    } catch (NumberFormatException e) {
                        throw invalidLengths(strArr);
                    }
                }
                return;
            }
            throw invalidLengths(strArr);
        }

        Snapshot snapshot() {
            if (Thread.holdsLock(DiskLruCache.this)) {
                Source[] sourceArr = new Source[DiskLruCache.this.valueCount];
                long[] jArr = (long[]) this.lengths.clone();
                int i = 0;
                while (true) {
                    try {
                        DiskLruCache diskLruCache = DiskLruCache.this;
                        if (i >= diskLruCache.valueCount) {
                            return new Snapshot(this.key, this.sequenceNumber, sourceArr, jArr);
                        }
                        sourceArr[i] = diskLruCache.fileSystem.source(this.cleanFiles[i]);
                        i++;
                    } catch (FileNotFoundException e) {
                        int i2 = 0;
                        while (true) {
                            DiskLruCache diskLruCache2 = DiskLruCache.this;
                            if (i2 >= diskLruCache2.valueCount || sourceArr[i2] == null) {
                                try {
                                    diskLruCache2.removeEntry(this);
                                    return null;
                                } catch (IOException e2) {
                                    return null;
                                }
                            }
                            Util.closeQuietly(sourceArr[i2]);
                            i2++;
                        }
                    }
                }
            } else {
                throw new AssertionError();
            }
        }

        void writeLengths(BufferedSink bufferedSink) {
            for (long j : this.lengths) {
                bufferedSink.writeByte(32).writeDecimalLong(j);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$Snapshot.class */
    public final class Snapshot implements Closeable {
        private final String key;
        private final long[] lengths;
        private final long sequenceNumber;
        private final Source[] sources;

        Snapshot(String str, long j, Source[] sourceArr, long[] jArr) {
            DiskLruCache.this = r5;
            this.key = str;
            this.sequenceNumber = j;
            this.sources = sourceArr;
            this.lengths = jArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (Source source : this.sources) {
                Util.closeQuietly(source);
            }
        }

        public Editor edit() {
            return DiskLruCache.this.edit(this.key, this.sequenceNumber);
        }

        public long getLength(int i) {
            return this.lengths[i];
        }

        public Source getSource(int i) {
            return this.sources[i];
        }

        public String key() {
            return this.key;
        }
    }

    DiskLruCache(FileSystem fileSystem, File file, int i, int i2, long j, Executor executor) {
        this.fileSystem = fileSystem;
        this.directory = file;
        this.appVersion = i;
        this.journalFile = new File(file, JOURNAL_FILE);
        this.journalFileTmp = new File(file, JOURNAL_FILE_TEMP);
        this.journalFileBackup = new File(file, JOURNAL_FILE_BACKUP);
        this.valueCount = i2;
        this.maxSize = j;
        this.executor = executor;
    }

    private void checkNotClosed() {
        synchronized (this) {
            if (isClosed()) {
                throw new IllegalStateException("cache is closed");
            }
        }
    }

    public static DiskLruCache create(FileSystem fileSystem, File file, int i, int i2, long j) {
        if (j > 0) {
            if (i2 <= 0) {
                throw new IllegalArgumentException("valueCount <= 0");
            }
            return new DiskLruCache(fileSystem, file, i, i2, j, new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory("OkHttp DiskLruCache", true)));
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private BufferedSink newJournalWriter() {
        return Okio.buffer(new FaultHidingSink(this.fileSystem.appendingSink(this.journalFile)) { // from class: okhttp3.internal.cache.DiskLruCache.2
            static final /* synthetic */ boolean $assertionsDisabled = false;

            @Override // okhttp3.internal.cache.FaultHidingSink
            protected void onException(IOException iOException) {
                DiskLruCache.this.hasJournalErrors = true;
            }
        });
    }

    private void processJournal() {
        this.fileSystem.delete(this.journalFileTmp);
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
                    this.fileSystem.delete(next.cleanFiles[i2]);
                    this.fileSystem.delete(next.dirtyFiles[i2]);
                }
                it.remove();
            }
        }
    }

    private void readJournal() {
        BufferedSource buffer = Okio.buffer(this.fileSystem.source(this.journalFile));
        try {
            String readUtf8LineStrict = buffer.readUtf8LineStrict();
            String readUtf8LineStrict2 = buffer.readUtf8LineStrict();
            String readUtf8LineStrict3 = buffer.readUtf8LineStrict();
            String readUtf8LineStrict4 = buffer.readUtf8LineStrict();
            String readUtf8LineStrict5 = buffer.readUtf8LineStrict();
            if (!MAGIC.equals(readUtf8LineStrict) || !VERSION_1.equals(readUtf8LineStrict2) || !Integer.toString(this.appVersion).equals(readUtf8LineStrict3) || !Integer.toString(this.valueCount).equals(readUtf8LineStrict4) || !"".equals(readUtf8LineStrict5)) {
                throw new IOException("unexpected journal header: [" + readUtf8LineStrict + ", " + readUtf8LineStrict2 + ", " + readUtf8LineStrict4 + ", " + readUtf8LineStrict5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    readJournalLine(buffer.readUtf8LineStrict());
                    i++;
                } catch (EOFException e) {
                    this.redundantOpCount = i - this.lruEntries.size();
                    if (!buffer.exhausted()) {
                        rebuildJournal();
                    } else {
                        this.journalWriter = newJournalWriter();
                    }
                    Util.closeQuietly(buffer);
                    return;
                }
            }
        } catch (Throwable th) {
            Util.closeQuietly(buffer);
            throw th;
        }
    }

    private void readJournalLine(String str) {
        String str2;
        int indexOf = str.indexOf(32);
        if (indexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(32, i);
        if (indexOf2 == -1) {
            String substring = str.substring(i);
            str2 = substring;
            if (indexOf == 6) {
                str2 = substring;
                if (str.startsWith(REMOVE)) {
                    this.lruEntries.remove(substring);
                    return;
                }
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
        if (indexOf2 != -1 && indexOf == 5 && str.startsWith(CLEAN)) {
            String[] split = str.substring(indexOf2 + 1).split(" ");
            entry2.readable = true;
            entry2.currentEditor = null;
            entry2.setLengths(split);
        } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith(DIRTY)) {
            entry2.currentEditor = new Editor(entry2);
        } else if (indexOf2 == -1 && indexOf == 4 && str.startsWith(READ)) {
        } else {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    private void validateKey(String str) {
        if (LEGAL_KEY_PATTERN.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (this.initialized && !this.closed) {
                for (Entry entry : (Entry[]) this.lruEntries.values().toArray(new Entry[this.lruEntries.size()])) {
                    Editor editor = entry.currentEditor;
                    if (editor != null) {
                        editor.abort();
                    }
                }
                trimToSize();
                this.journalWriter.close();
                this.journalWriter = null;
                this.closed = true;
                return;
            }
            this.closed = true;
        }
    }

    void completeEdit(Editor editor, boolean z) {
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
                            } else if (!this.fileSystem.exists(entry.dirtyFiles[i2])) {
                                editor.abort();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.valueCount) {
                    File file = entry.dirtyFiles[i];
                    if (!z) {
                        this.fileSystem.delete(file);
                    } else if (this.fileSystem.exists(file)) {
                        File file2 = entry.cleanFiles[i];
                        this.fileSystem.rename(file, file2);
                        long j = entry.lengths[i];
                        long size = this.fileSystem.size(file2);
                        entry.lengths[i] = size;
                        this.size = (this.size - j) + size;
                    }
                    i++;
                }
                this.redundantOpCount++;
                entry.currentEditor = null;
                if (entry.readable || z) {
                    entry.readable = true;
                    this.journalWriter.writeUtf8(CLEAN).writeByte(32);
                    this.journalWriter.writeUtf8(entry.key);
                    entry.writeLengths(this.journalWriter);
                    this.journalWriter.writeByte(10);
                    if (z) {
                        long j2 = this.nextSequenceNumber;
                        this.nextSequenceNumber = 1 + j2;
                        entry.sequenceNumber = j2;
                    }
                } else {
                    this.lruEntries.remove(entry.key);
                    this.journalWriter.writeUtf8(REMOVE).writeByte(32);
                    this.journalWriter.writeUtf8(entry.key);
                    this.journalWriter.writeByte(10);
                }
                this.journalWriter.flush();
                if (this.size > this.maxSize || journalRebuildRequired()) {
                    this.executor.execute(this.cleanupRunnable);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    public void delete() {
        close();
        this.fileSystem.deleteContents(this.directory);
    }

    public Editor edit(String str) {
        return edit(str, ANY_SEQUENCE_NUMBER);
    }

    Editor edit(String str, long j) {
        synchronized (this) {
            initialize();
            checkNotClosed();
            validateKey(str);
            Entry entry = this.lruEntries.get(str);
            if (j == ANY_SEQUENCE_NUMBER || (entry != null && entry.sequenceNumber == j)) {
                if (entry != null && entry.currentEditor != null) {
                    return null;
                }
                if (!this.mostRecentTrimFailed && !this.mostRecentRebuildFailed) {
                    this.journalWriter.writeUtf8(DIRTY).writeByte(32).writeUtf8(str).writeByte(10);
                    this.journalWriter.flush();
                    if (this.hasJournalErrors) {
                        return null;
                    }
                    Entry entry2 = entry;
                    if (entry == null) {
                        entry2 = new Entry(str);
                        this.lruEntries.put(str, entry2);
                    }
                    Editor editor = new Editor(entry2);
                    entry2.currentEditor = editor;
                    return editor;
                }
                this.executor.execute(this.cleanupRunnable);
                return null;
            }
            return null;
        }
    }

    public void evictAll() {
        synchronized (this) {
            initialize();
            for (Entry entry : (Entry[]) this.lruEntries.values().toArray(new Entry[this.lruEntries.size()])) {
                removeEntry(entry);
            }
            this.mostRecentTrimFailed = false;
        }
    }

    @Override // java.io.Flushable
    public void flush() {
        synchronized (this) {
            if (!this.initialized) {
                return;
            }
            checkNotClosed();
            trimToSize();
            this.journalWriter.flush();
        }
    }

    public Snapshot get(String str) {
        synchronized (this) {
            initialize();
            checkNotClosed();
            validateKey(str);
            Entry entry = this.lruEntries.get(str);
            if (entry != null && entry.readable) {
                Snapshot snapshot = entry.snapshot();
                if (snapshot == null) {
                    return null;
                }
                this.redundantOpCount++;
                this.journalWriter.writeUtf8(READ).writeByte(32).writeUtf8(str).writeByte(10);
                if (journalRebuildRequired()) {
                    this.executor.execute(this.cleanupRunnable);
                }
                return snapshot;
            }
            return null;
        }
    }

    public File getDirectory() {
        return this.directory;
    }

    public long getMaxSize() {
        long j;
        synchronized (this) {
            j = this.maxSize;
        }
        return j;
    }

    public void initialize() {
        synchronized (this) {
            if (this.initialized) {
                return;
            }
            if (this.fileSystem.exists(this.journalFileBackup)) {
                if (this.fileSystem.exists(this.journalFile)) {
                    this.fileSystem.delete(this.journalFileBackup);
                } else {
                    this.fileSystem.rename(this.journalFileBackup, this.journalFile);
                }
            }
            if (this.fileSystem.exists(this.journalFile)) {
                try {
                    readJournal();
                    processJournal();
                    this.initialized = true;
                    return;
                } catch (IOException e) {
                    Platform platform = Platform.get();
                    platform.log(5, "DiskLruCache " + this.directory + " is corrupt: " + e.getMessage() + ", removing", e);
                    delete();
                    this.closed = false;
                }
            }
            rebuildJournal();
            this.initialized = true;
        }
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.closed;
        }
        return z;
    }

    boolean journalRebuildRequired() {
        int i = this.redundantOpCount;
        return i >= 2000 && i >= this.lruEntries.size();
    }

    void rebuildJournal() {
        synchronized (this) {
            BufferedSink bufferedSink = this.journalWriter;
            if (bufferedSink != null) {
                bufferedSink.close();
            }
            BufferedSink buffer = Okio.buffer(this.fileSystem.sink(this.journalFileTmp));
            buffer.writeUtf8(MAGIC).writeByte(10);
            buffer.writeUtf8(VERSION_1).writeByte(10);
            buffer.writeDecimalLong(this.appVersion).writeByte(10);
            buffer.writeDecimalLong(this.valueCount).writeByte(10);
            buffer.writeByte(10);
            for (Entry entry : this.lruEntries.values()) {
                if (entry.currentEditor != null) {
                    buffer.writeUtf8(DIRTY).writeByte(32);
                    buffer.writeUtf8(entry.key);
                    buffer.writeByte(10);
                } else {
                    buffer.writeUtf8(CLEAN).writeByte(32);
                    buffer.writeUtf8(entry.key);
                    entry.writeLengths(buffer);
                    buffer.writeByte(10);
                }
            }
            buffer.close();
            if (this.fileSystem.exists(this.journalFile)) {
                this.fileSystem.rename(this.journalFile, this.journalFileBackup);
            }
            this.fileSystem.rename(this.journalFileTmp, this.journalFile);
            this.fileSystem.delete(this.journalFileBackup);
            this.journalWriter = newJournalWriter();
            this.hasJournalErrors = false;
            this.mostRecentRebuildFailed = false;
        }
    }

    public boolean remove(String str) {
        synchronized (this) {
            initialize();
            checkNotClosed();
            validateKey(str);
            Entry entry = this.lruEntries.get(str);
            if (entry == null) {
                return false;
            }
            boolean removeEntry = removeEntry(entry);
            if (removeEntry && this.size <= this.maxSize) {
                this.mostRecentTrimFailed = false;
            }
            return removeEntry;
        }
    }

    boolean removeEntry(Entry entry) {
        Editor editor = entry.currentEditor;
        if (editor != null) {
            editor.detach();
        }
        for (int i = 0; i < this.valueCount; i++) {
            this.fileSystem.delete(entry.cleanFiles[i]);
            long j = this.size;
            long[] jArr = entry.lengths;
            this.size = j - jArr[i];
            jArr[i] = 0;
        }
        this.redundantOpCount++;
        this.journalWriter.writeUtf8(REMOVE).writeByte(32).writeUtf8(entry.key).writeByte(10);
        this.lruEntries.remove(entry.key);
        if (journalRebuildRequired()) {
            this.executor.execute(this.cleanupRunnable);
            return true;
        }
        return true;
    }

    public void setMaxSize(long j) {
        synchronized (this) {
            this.maxSize = j;
            if (this.initialized) {
                this.executor.execute(this.cleanupRunnable);
            }
        }
    }

    public long size() {
        long j;
        synchronized (this) {
            initialize();
            j = this.size;
        }
        return j;
    }

    public Iterator<Snapshot> snapshots() {
        Iterator<Snapshot> it;
        synchronized (this) {
            initialize();
            it = new Iterator<Snapshot>() { // from class: okhttp3.internal.cache.DiskLruCache.3
                final Iterator<Entry> delegate;
                Snapshot nextSnapshot;
                Snapshot removeSnapshot;

                {
                    DiskLruCache.this = this;
                    this.delegate = new ArrayList(this.lruEntries.values()).iterator();
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    if (this.nextSnapshot != null) {
                        return true;
                    }
                    synchronized (DiskLruCache.this) {
                        if (DiskLruCache.this.closed) {
                            return false;
                        }
                        while (this.delegate.hasNext()) {
                            Snapshot snapshot = this.delegate.next().snapshot();
                            if (snapshot != null) {
                                this.nextSnapshot = snapshot;
                                return true;
                            }
                        }
                        return false;
                    }
                }

                @Override // java.util.Iterator
                public Snapshot next() {
                    if (hasNext()) {
                        Snapshot snapshot = this.nextSnapshot;
                        this.removeSnapshot = snapshot;
                        this.nextSnapshot = null;
                        return snapshot;
                    }
                    throw new NoSuchElementException();
                }

                @Override // java.util.Iterator
                public void remove() {
                    Snapshot snapshot = this.removeSnapshot;
                    if (snapshot != null) {
                        try {
                            DiskLruCache.this.remove(snapshot.key);
                        } catch (IOException e) {
                        } catch (Throwable th) {
                            this.removeSnapshot = null;
                            throw th;
                        }
                        this.removeSnapshot = null;
                        return;
                    }
                    throw new IllegalStateException("remove() before next()");
                }
            };
        }
        return it;
    }

    void trimToSize() {
        while (this.size > this.maxSize) {
            removeEntry(this.lruEntries.values().iterator().next());
        }
        this.mostRecentTrimFailed = false;
    }
}
