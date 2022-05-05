package okhttp3.internal.cache;

import gogolook.callgogolook2.gson.UserProfile;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import okhttp3.internal.Util;
import okhttp3.internal.p659io.FileSystem;
import okhttp3.internal.platform.Platform;
import p645m.AbstractC15173d;
import p645m.AbstractC15174e;
import p645m.AbstractC15192r;
import p645m.AbstractC15193s;
import p645m.C15181l;
/* loaded from: classes3-dex2jar.jar:okhttp3/internal/cache/DiskLruCache.class */
public final class DiskLruCache implements Closeable, Flushable {
    public static final Pattern LEGAL_KEY_PATTERN = Pattern.compile("[a-z0-9_-]{1,120}");
    public final int appVersion;
    public boolean closed;
    public final File directory;
    public final Executor executor;
    public final FileSystem fileSystem;
    public boolean hasJournalErrors;
    public boolean initialized;
    public final File journalFile;
    public final File journalFileBackup;
    public final File journalFileTmp;
    public AbstractC15173d journalWriter;
    public long maxSize;
    public boolean mostRecentRebuildFailed;
    public boolean mostRecentTrimFailed;
    public int redundantOpCount;
    public final int valueCount;
    public long size = 0;
    public final LinkedHashMap<String, Entry> lruEntries = new LinkedHashMap<>(0, 0.75f, true);
    public long nextSequenceNumber = 0;
    public final Runnable cleanupRunnable = new Runnable() { // from class: okhttp3.internal.cache.DiskLruCache.1
        @Override // java.lang.Runnable
        public void run() {
            synchronized (DiskLruCache.this) {
                if (!(!DiskLruCache.this.initialized) && !DiskLruCache.this.closed) {
                    try {
                        DiskLruCache.this.trimToSize();
                    } catch (IOException e) {
                        DiskLruCache.this.mostRecentTrimFailed = true;
                    }
                    try {
                        if (DiskLruCache.this.journalRebuildRequired()) {
                            DiskLruCache.this.rebuildJournal();
                            DiskLruCache.this.redundantOpCount = 0;
                        }
                    } catch (IOException e2) {
                        DiskLruCache.this.mostRecentRebuildFailed = true;
                        DiskLruCache.this.journalWriter = C15181l.m319a(C15181l.m327a());
                    }
                }
            }
        }
    };

    /* loaded from: classes3-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$Editor.class */
    public final class Editor {
        public boolean done;
        public final Entry entry;
        public final boolean[] written;

        public Editor(Entry entry) {
            this.entry = entry;
            this.written = entry.readable ? null : new boolean[DiskLruCache.this.valueCount];
        }

        public void abort() throws IOException {
            synchronized (DiskLruCache.this) {
                if (!this.done) {
                    if (this.entry.currentEditor == this) {
                        DiskLruCache.this.completeEdit(this, false);
                    }
                    this.done = true;
                } else {
                    throw new IllegalStateException();
                }
            }
        }

        public void commit() throws IOException {
            synchronized (DiskLruCache.this) {
                if (!this.done) {
                    if (this.entry.currentEditor == this) {
                        DiskLruCache.this.completeEdit(this, true);
                    }
                    this.done = true;
                } else {
                    throw new IllegalStateException();
                }
            }
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x003b -> B:8:0x002c). Please submit an issue!!! */
        public void detach() {
            if (this.entry.currentEditor == this) {
                int i = 0;
                while (true) {
                    DiskLruCache diskLruCache = DiskLruCache.this;
                    if (i < diskLruCache.valueCount) {
                        try {
                            diskLruCache.fileSystem.delete(this.entry.dirtyFiles[i]);
                        } catch (IOException e) {
                        }
                        i++;
                    } else {
                        this.entry.currentEditor = null;
                        return;
                    }
                }
            }
        }

        public AbstractC15192r newSink(int i) {
            synchronized (DiskLruCache.this) {
                if (this.done) {
                    throw new IllegalStateException();
                } else if (this.entry.currentEditor != this) {
                    return C15181l.m327a();
                } else {
                    if (!this.entry.readable) {
                        this.written[i] = true;
                    }
                    try {
                        return new FaultHidingSink(DiskLruCache.this.fileSystem.sink(this.entry.dirtyFiles[i])) { // from class: okhttp3.internal.cache.DiskLruCache.Editor.1
                            @Override // okhttp3.internal.cache.FaultHidingSink
                            public void onException(IOException iOException) {
                                synchronized (DiskLruCache.this) {
                                    Editor.this.detach();
                                }
                            }
                        };
                    } catch (FileNotFoundException e) {
                        return C15181l.m327a();
                    }
                }
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$Entry.class */
    public final class Entry {
        public final File[] cleanFiles;
        public Editor currentEditor;
        public final File[] dirtyFiles;
        public final String key;
        public final long[] lengths;
        public boolean readable;
        public long sequenceNumber;

        public Entry(String str) {
            this.key = str;
            int i = DiskLruCache.this.valueCount;
            this.lengths = new long[i];
            this.cleanFiles = new File[i];
            this.dirtyFiles = new File[i];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i2 = 0; i2 < DiskLruCache.this.valueCount; i2++) {
                sb.append(i2);
                this.cleanFiles[i2] = new File(DiskLruCache.this.directory, sb.toString());
                sb.append(".tmp");
                this.dirtyFiles[i2] = new File(DiskLruCache.this.directory, sb.toString());
                sb.setLength(length);
            }
        }

        public final IOException invalidLengths(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public void setLengths(String[] strArr) throws IOException {
            if (strArr.length == DiskLruCache.this.valueCount) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        this.lengths[i] = Long.parseLong(strArr[i]);
                    } catch (NumberFormatException e) {
                        invalidLengths(strArr);
                        throw null;
                    }
                }
                return;
            }
            invalidLengths(strArr);
            throw null;
        }

        public Snapshot snapshot() {
            if (Thread.holdsLock(DiskLruCache.this)) {
                AbstractC15193s[] sVarArr = new AbstractC15193s[DiskLruCache.this.valueCount];
                long[] jArr = (long[]) this.lengths.clone();
                for (int i = 0; i < DiskLruCache.this.valueCount; i++) {
                    try {
                        sVarArr[i] = DiskLruCache.this.fileSystem.source(this.cleanFiles[i]);
                    } catch (FileNotFoundException e) {
                        for (int i2 = 0; i2 < DiskLruCache.this.valueCount && sVarArr[i2] != null; i2++) {
                            Util.closeQuietly(sVarArr[i2]);
                        }
                        try {
                            DiskLruCache.this.removeEntry(this);
                            return null;
                        } catch (IOException e2) {
                            return null;
                        }
                    }
                }
                return new Snapshot(this.key, this.sequenceNumber, sVarArr, jArr);
            }
            throw new AssertionError();
        }

        public void writeLengths(AbstractC15173d dVar) throws IOException {
            for (long j : this.lengths) {
                dVar.writeByte(32).mo313a(j);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$Snapshot.class */
    public final class Snapshot implements Closeable {
        public final String key;
        public final long sequenceNumber;
        public final AbstractC15193s[] sources;

        public Snapshot(String str, long j, AbstractC15193s[] sVarArr, long[] jArr) {
            this.key = str;
            this.sequenceNumber = j;
            this.sources = sVarArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (AbstractC15193s sVar : this.sources) {
                Util.closeQuietly(sVar);
            }
        }

        @Nullable
        public Editor edit() throws IOException {
            return DiskLruCache.this.edit(this.key, this.sequenceNumber);
        }

        public AbstractC15193s getSource(int i) {
            return this.sources[i];
        }
    }

    public DiskLruCache(FileSystem fileSystem, File file, int i, int i2, long j, Executor executor) {
        this.fileSystem = fileSystem;
        this.directory = file;
        this.appVersion = i;
        this.journalFile = new File(file, com.aotter.net.trek.common.DiskLruCache.f1462a);
        this.journalFileTmp = new File(file, com.aotter.net.trek.common.DiskLruCache.f1463b);
        this.journalFileBackup = new File(file, com.aotter.net.trek.common.DiskLruCache.f1464c);
        this.valueCount = i2;
        this.maxSize = j;
        this.executor = executor;
    }

    public static DiskLruCache create(FileSystem fileSystem, File file, int i, int i2, long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i2 > 0) {
            return new DiskLruCache(fileSystem, file, i, i2, j, new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory("OkHttp DiskLruCache", true)));
        } else {
            throw new IllegalArgumentException("valueCount <= 0");
        }
    }

    public final void checkNotClosed() {
        synchronized (this) {
            if (isClosed()) {
                throw new IllegalStateException("cache is closed");
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Entry[] entryArr;
        synchronized (this) {
            if (this.initialized && !this.closed) {
                for (Entry entry : (Entry[]) this.lruEntries.values().toArray(new Entry[this.lruEntries.size()])) {
                    if (entry.currentEditor != null) {
                        entry.currentEditor.abort();
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

    public void completeEdit(Editor editor, boolean z) throws IOException {
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
                    this.journalWriter.mo309e(com.aotter.net.trek.common.DiskLruCache.f1469i).writeByte(32);
                    this.journalWriter.mo309e(entry.key);
                    entry.writeLengths(this.journalWriter);
                    this.journalWriter.writeByte(10);
                    if (z) {
                        long j2 = this.nextSequenceNumber;
                        this.nextSequenceNumber = 1 + j2;
                        entry.sequenceNumber = j2;
                    }
                } else {
                    this.lruEntries.remove(entry.key);
                    this.journalWriter.mo309e(com.aotter.net.trek.common.DiskLruCache.f1471k).writeByte(32);
                    this.journalWriter.mo309e(entry.key);
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

    public void delete() throws IOException {
        close();
        this.fileSystem.deleteContents(this.directory);
    }

    @Nullable
    public Editor edit(String str) throws IOException {
        return edit(str, -1L);
    }

    public Editor edit(String str, long j) throws IOException {
        synchronized (this) {
            initialize();
            checkNotClosed();
            validateKey(str);
            Entry entry = this.lruEntries.get(str);
            if (j != -1 && (entry == null || entry.sequenceNumber != j)) {
                return null;
            }
            if (entry != null && entry.currentEditor != null) {
                return null;
            }
            if (!this.mostRecentTrimFailed && !this.mostRecentRebuildFailed) {
                this.journalWriter.mo309e(com.aotter.net.trek.common.DiskLruCache.f1470j).writeByte(32).mo309e(str).writeByte(10);
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
    }

    public void evictAll() throws IOException {
        synchronized (this) {
            initialize();
            for (Entry entry : (Entry[]) this.lruEntries.values().toArray(new Entry[this.lruEntries.size()])) {
                removeEntry(entry);
            }
            this.mostRecentTrimFailed = false;
        }
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        synchronized (this) {
            if (this.initialized) {
                checkNotClosed();
                trimToSize();
                this.journalWriter.flush();
            }
        }
    }

    public Snapshot get(String str) throws IOException {
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
                this.journalWriter.mo309e(com.aotter.net.trek.common.DiskLruCache.f1472l).writeByte(32).mo309e(str).writeByte(10);
                if (journalRebuildRequired()) {
                    this.executor.execute(this.cleanupRunnable);
                }
                return snapshot;
            }
            return null;
        }
    }

    public void initialize() throws IOException {
        synchronized (this) {
            if (!this.initialized) {
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
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.closed;
        }
        return z;
    }

    public boolean journalRebuildRequired() {
        int i = this.redundantOpCount;
        return i >= 2000 && i >= this.lruEntries.size();
    }

    public final AbstractC15173d newJournalWriter() throws FileNotFoundException {
        return C15181l.m319a(new FaultHidingSink(this.fileSystem.appendingSink(this.journalFile)) { // from class: okhttp3.internal.cache.DiskLruCache.2
            @Override // okhttp3.internal.cache.FaultHidingSink
            public void onException(IOException iOException) {
                DiskLruCache.this.hasJournalErrors = true;
            }
        });
    }

    public final void processJournal() throws IOException {
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

    public final void readJournal() throws IOException {
        AbstractC15174e a = C15181l.m318a(this.fileSystem.source(this.journalFile));
        try {
            String s = a.mo295s();
            String s2 = a.mo295s();
            String s3 = a.mo295s();
            String s4 = a.mo295s();
            String s5 = a.mo295s();
            if (!com.aotter.net.trek.common.DiskLruCache.f1465d.equals(s) || !"1".equals(s2) || !Integer.toString(this.appVersion).equals(s3) || !Integer.toString(this.valueCount).equals(s4) || !"".equals(s5)) {
                throw new IOException("unexpected journal header: [" + s + UserProfile.CARD_CATE_SEPARATOR + s2 + UserProfile.CARD_CATE_SEPARATOR + s4 + UserProfile.CARD_CATE_SEPARATOR + s5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    readJournalLine(a.mo295s());
                    i++;
                } catch (EOFException e) {
                    this.redundantOpCount = i - this.lruEntries.size();
                    if (!a.mo292v()) {
                        rebuildJournal();
                    } else {
                        this.journalWriter = newJournalWriter();
                    }
                    Util.closeQuietly(a);
                    return;
                }
            }
        } catch (Throwable th) {
            Util.closeQuietly(a);
            throw th;
        }
    }

    public final void readJournalLine(String str) throws IOException {
        String str2;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(32, i);
            if (indexOf2 == -1) {
                String substring = str.substring(i);
                str2 = substring;
                if (indexOf == 6) {
                    str2 = substring;
                    if (str.startsWith(com.aotter.net.trek.common.DiskLruCache.f1471k)) {
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
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith(com.aotter.net.trek.common.DiskLruCache.f1469i)) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                entry2.readable = true;
                entry2.currentEditor = null;
                entry2.setLengths(split);
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith(com.aotter.net.trek.common.DiskLruCache.f1470j)) {
                entry2.currentEditor = new Editor(entry2);
            } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith(com.aotter.net.trek.common.DiskLruCache.f1472l)) {
                throw new IOException("unexpected journal line: " + str);
            }
        } else {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    public void rebuildJournal() throws IOException {
        synchronized (this) {
            if (this.journalWriter != null) {
                this.journalWriter.close();
            }
            AbstractC15173d a = C15181l.m319a(this.fileSystem.sink(this.journalFileTmp));
            a.mo309e(com.aotter.net.trek.common.DiskLruCache.f1465d).writeByte(10);
            a.mo309e("1").writeByte(10);
            a.mo313a(this.appVersion).writeByte(10);
            a.mo313a(this.valueCount).writeByte(10);
            a.writeByte(10);
            for (Entry entry : this.lruEntries.values()) {
                if (entry.currentEditor != null) {
                    a.mo309e(com.aotter.net.trek.common.DiskLruCache.f1470j).writeByte(32);
                    a.mo309e(entry.key);
                    a.writeByte(10);
                } else {
                    a.mo309e(com.aotter.net.trek.common.DiskLruCache.f1469i).writeByte(32);
                    a.mo309e(entry.key);
                    entry.writeLengths(a);
                    a.writeByte(10);
                }
            }
            a.close();
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

    public boolean remove(String str) throws IOException {
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

    public boolean removeEntry(Entry entry) throws IOException {
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
        this.journalWriter.mo309e(com.aotter.net.trek.common.DiskLruCache.f1471k).writeByte(32).mo309e(entry.key).writeByte(10);
        this.lruEntries.remove(entry.key);
        if (!journalRebuildRequired()) {
            return true;
        }
        this.executor.execute(this.cleanupRunnable);
        return true;
    }

    public void trimToSize() throws IOException {
        while (this.size > this.maxSize) {
            removeEntry(this.lruEntries.values().iterator().next());
        }
        this.mostRecentTrimFailed = false;
    }

    public final void validateKey(String str) {
        if (!LEGAL_KEY_PATTERN.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
        }
    }
}
