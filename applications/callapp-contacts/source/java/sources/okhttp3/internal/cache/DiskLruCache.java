package okhttp3.internal.cache;

import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import kotlin.C20128v;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18418l;
import kotlin.p532h.C18425p;
import kotlin.p533io.C18442b;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import okhttp3.internal.Util;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.p577io.FileSystem;
import okhttp3.internal.platform.Platform;
import p092c.AbstractC3188ab;
import p092c.AbstractC3190ad;
import p092c.AbstractC3206g;
import p092c.AbstractC3207h;
import p092c.AbstractC3212l;
import p092c.C3218r;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��y\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\b\u0011\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010)\n\u0002\b\u0007*\u0001\u0014\u0018�� [2\u00020\u00012\u00020\u0002:\u0004[\\]^B7\b��\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\b\u00108\u001a\u000209H\u0002J\b\u0010:\u001a\u000209H\u0016J!\u0010;\u001a\u0002092\n\u0010<\u001a\u00060=R\u00020��2\u0006\u0010>\u001a\u00020\u0010H��¢\u0006\u0002\b?J\u0006\u0010@\u001a\u000209J \u0010A\u001a\b\u0018\u00010=R\u00020��2\u0006\u0010B\u001a\u00020(2\b\b\u0002\u0010C\u001a\u00020\u000bH\u0007J\u0006\u0010D\u001a\u000209J\b\u0010E\u001a\u000209H\u0016J\u0017\u0010F\u001a\b\u0018\u00010GR\u00020��2\u0006\u0010B\u001a\u00020(H\u0086\u0002J\u0006\u0010H\u001a\u000209J\u0006\u0010I\u001a\u00020\u0010J\b\u0010J\u001a\u00020\u0010H\u0002J\b\u0010K\u001a\u00020%H\u0002J\b\u0010L\u001a\u000209H\u0002J\b\u0010M\u001a\u000209H\u0002J\u0010\u0010N\u001a\u0002092\u0006\u0010O\u001a\u00020(H\u0002J\r\u0010P\u001a\u000209H��¢\u0006\u0002\bQJ\u000e\u0010R\u001a\u00020\u00102\u0006\u0010B\u001a\u00020(J\u0019\u0010S\u001a\u00020\u00102\n\u0010T\u001a\u00060)R\u00020��H��¢\u0006\u0002\bUJ\b\u0010V\u001a\u00020\u0010H\u0002J\u0006\u00105\u001a\u00020\u000bJ\u0010\u0010W\u001a\f\u0012\b\u0012\u00060GR\u00020��0XJ\u0006\u0010Y\u001a\u000209J\u0010\u0010Z\u001a\u0002092\u0006\u0010B\u001a\u00020(H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0010X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010 \u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010!\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\"\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010#\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n��R$\u0010&\u001a\u0012\u0012\u0004\u0012\u00020(\u0012\b\u0012\u00060)R\u00020��0'X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b*\u0010+R&\u0010\n\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u000b8F@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u000e\u00101\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n��R\u000e\u00102\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n��R\u000e\u00103\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u00104\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u00105\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\t\u001a\u00020\bX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b6\u00107¨\u0006_"}, m4298d2 = {"Lokhttp3/internal/cache/DiskLruCache;", "Ljava/io/Closeable;", "Ljava/io/Flushable;", "fileSystem", "Lokhttp3/internal/io/FileSystem;", "directory", "Ljava/io/File;", "appVersion", "", "valueCount", "maxSize", "", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLokhttp3/internal/concurrent/TaskRunner;)V", "civilizedFileSystem", "", "cleanupQueue", "Lokhttp3/internal/concurrent/TaskQueue;", "cleanupTask", "okhttp3/internal/cache/DiskLruCache$cleanupTask$1", "Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;", "closed", "getClosed$okhttp", "()Z", "setClosed$okhttp", "(Z)V", "getDirectory", "()Ljava/io/File;", "getFileSystem$okhttp", "()Lokhttp3/internal/io/FileSystem;", "hasJournalErrors", "initialized", "journalFile", "journalFileBackup", "journalFileTmp", "journalWriter", "Lokio/BufferedSink;", "lruEntries", "Ljava/util/LinkedHashMap;", "", "Lokhttp3/internal/cache/DiskLruCache$Entry;", "getLruEntries$okhttp", "()Ljava/util/LinkedHashMap;", "value", "getMaxSize", "()J", "setMaxSize", "(J)V", "mostRecentRebuildFailed", "mostRecentTrimFailed", "nextSequenceNumber", "redundantOpCount", "size", "getValueCount$okhttp", "()I", "checkNotClosed", "", EventConstants.CLOSE, "completeEdit", "editor", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "success", "completeEdit$okhttp", "delete", "edit", "key", "expectedSequenceNumber", "evictAll", "flush", "get", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "initialize", "isClosed", "journalRebuildRequired", "newJournalWriter", "processJournal", "readJournal", "readJournalLine", "line", "rebuildJournal", "rebuildJournal$okhttp", "remove", "removeEntry", "entry", "removeEntry$okhttp", "removeOldestEntry", "snapshots", "", "trimToSize", "validateKey", "Companion", "Editor", "Entry", "Snapshot", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/cache/DiskLruCache.class */
public final class DiskLruCache implements Closeable, Flushable {
    private final int appVersion;
    private boolean civilizedFileSystem;
    private final TaskQueue cleanupQueue;
    private boolean closed;
    private final File directory;
    private final FileSystem fileSystem;
    private boolean hasJournalErrors;
    private boolean initialized;
    private final File journalFile;
    private final File journalFileBackup;
    private final File journalFileTmp;
    private AbstractC3206g journalWriter;
    private long maxSize;
    private boolean mostRecentRebuildFailed;
    private boolean mostRecentTrimFailed;
    private long nextSequenceNumber;
    private int redundantOpCount;
    private long size;
    private final int valueCount;
    public static final Companion Companion = new Companion(null);
    public static final String JOURNAL_FILE = "journal";
    public static final String JOURNAL_FILE_TEMP = "journal.tmp";
    public static final String JOURNAL_FILE_BACKUP = "journal.bkp";
    public static final String MAGIC = "libcore.io.DiskLruCache";
    public static final String VERSION_1 = "1";
    public static final long ANY_SEQUENCE_NUMBER = -1;
    public static final C18418l LEGAL_KEY_PATTERN = new C18418l("[a-z0-9_-]{1,120}");
    public static final String CLEAN = "CLEAN";
    public static final String DIRTY = "DIRTY";
    public static final String REMOVE = "REMOVE";
    public static final String READ = "READ";
    private final LinkedHashMap<String, Entry> lruEntries = new LinkedHashMap<>(0, 0.75f, true);
    private final DiskLruCache$cleanupTask$1 cleanupTask = new Task(Util.okHttpName + " Cache") { // from class: okhttp3.internal.cache.DiskLruCache$cleanupTask$1
        @Override // okhttp3.internal.concurrent.Task
        public final long runOnce() {
            boolean z;
            boolean journalRebuildRequired;
            synchronized (DiskLruCache.this) {
                z = DiskLruCache.this.initialized;
                if (!z || DiskLruCache.this.getClosed$okhttp()) {
                    return -1L;
                }
                try {
                    DiskLruCache.this.trimToSize();
                } catch (IOException e) {
                    DiskLruCache.this.mostRecentTrimFailed = true;
                }
                try {
                    journalRebuildRequired = DiskLruCache.this.journalRebuildRequired();
                    if (journalRebuildRequired) {
                        DiskLruCache.this.rebuildJournal$okhttp();
                        DiskLruCache.this.redundantOpCount = 0;
                    }
                } catch (IOException e2) {
                    DiskLruCache.this.mostRecentRebuildFailed = true;
                    DiskLruCache.this.journalWriter = C3218r.m39151a(C3218r.m39152a());
                }
                return -1L;
            }
        }
    };

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\t\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\n\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\u000e\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\u000f\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\u0010\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n��¨\u0006\u0011"}, m4298d2 = {"Lokhttp3/internal/cache/DiskLruCache$Companion;", "", "()V", "ANY_SEQUENCE_NUMBER", "", "CLEAN", "", "DIRTY", "JOURNAL_FILE", "JOURNAL_FILE_BACKUP", "JOURNAL_FILE_TEMP", "LEGAL_KEY_PATTERN", "Lkotlin/text/Regex;", "MAGIC", "READ", "REMOVE", "VERSION_1", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0018\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\b\u0086\u0004\u0018��2\u00020\u0001B\u0013\b��\u0012\n\u0010\u0002\u001a\u00060\u0003R\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u000fJ\r\u0010\u0011\u001a\u00020\u000fH��¢\u0006\u0002\b\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0018\u0010\u0002\u001a\u00060\u0003R\u00020\u0004X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, m4298d2 = {"Lokhttp3/internal/cache/DiskLruCache$Editor;", "", "entry", "Lokhttp3/internal/cache/DiskLruCache$Entry;", "Lokhttp3/internal/cache/DiskLruCache;", "(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V", "done", "", "getEntry$okhttp", "()Lokhttp3/internal/cache/DiskLruCache$Entry;", "written", "", "getWritten$okhttp", "()[Z", "abort", "", "commit", "detach", "detach$okhttp", "newSink", "Lokio/Sink;", "index", "", "newSource", "Lokio/Source;", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$Editor.class */
    public final class Editor {
        private boolean done;
        private final Entry entry;
        final /* synthetic */ DiskLruCache this$0;
        private final boolean[] written;

        public Editor(DiskLruCache diskLruCache, Entry entry) {
            C18524p.m3840d(entry, "entry");
            this.this$0 = diskLruCache;
            this.entry = entry;
            this.written = entry.getReadable$okhttp() ? null : new boolean[diskLruCache.getValueCount$okhttp()];
        }

        public final void abort() throws IOException {
            synchronized (this.this$0) {
                if (!(!this.done)) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                if (C18524p.m3850a(this.entry.getCurrentEditor$okhttp(), this)) {
                    this.this$0.completeEdit$okhttp(this, false);
                }
                this.done = true;
                C20128v c20128v = C20128v.f66529a;
            }
        }

        public final void commit() throws IOException {
            synchronized (this.this$0) {
                if (!(!this.done)) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                if (C18524p.m3850a(this.entry.getCurrentEditor$okhttp(), this)) {
                    this.this$0.completeEdit$okhttp(this, true);
                }
                this.done = true;
                C20128v c20128v = C20128v.f66529a;
            }
        }

        public final void detach$okhttp() {
            if (C18524p.m3850a(this.entry.getCurrentEditor$okhttp(), this)) {
                if (this.this$0.civilizedFileSystem) {
                    this.this$0.completeEdit$okhttp(this, false);
                } else {
                    this.entry.setZombie$okhttp(true);
                }
            }
        }

        public final Entry getEntry$okhttp() {
            return this.entry;
        }

        public final boolean[] getWritten$okhttp() {
            return this.written;
        }

        public final AbstractC3188ab newSink(int i) {
            synchronized (this.this$0) {
                if (!this.done) {
                    if (!C18524p.m3850a(this.entry.getCurrentEditor$okhttp(), this)) {
                        return C3218r.m39152a();
                    }
                    if (!this.entry.getReadable$okhttp()) {
                        boolean[] zArr = this.written;
                        C18524p.m3851a(zArr);
                        zArr[i] = true;
                    }
                    try {
                        return new FaultHidingSink(this.this$0.getFileSystem$okhttp().sink(this.entry.getDirtyFiles$okhttp().get(i)), new DiskLruCache$Editor$newSink$$inlined$synchronized$lambda$1(this, i));
                    } catch (FileNotFoundException e) {
                        return C3218r.m39152a();
                    }
                }
                throw new IllegalStateException("Check failed.".toString());
            }
        }

        public final AbstractC3190ad newSource(int i) {
            synchronized (this.this$0) {
                if (!this.done) {
                    AbstractC3190ad abstractC3190ad = null;
                    if (!this.entry.getReadable$okhttp() || (!C18524p.m3850a(this.entry.getCurrentEditor$okhttp(), this)) || this.entry.getZombie$okhttp()) {
                        return null;
                    }
                    try {
                        abstractC3190ad = this.this$0.getFileSystem$okhttp().source(this.entry.getCleanFiles$okhttp().get(i));
                    } catch (FileNotFoundException e) {
                    }
                    return abstractC3190ad;
                }
                throw new IllegalStateException("Check failed.".toString());
            }
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��v\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0016\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u0001\n��\n\u0002\u0010 \n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0080\u0004\u0018��2\u00020\u0001B\u000f\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010.\u001a\u00020/2\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u000301H\u0002J\u0010\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u001aH\u0002J\u001b\u00105\u001a\u0002062\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u000301H��¢\u0006\u0002\b7J\u0013\u00108\u001a\b\u0018\u000109R\u00020\fH��¢\u0006\u0002\b:J\u0015\u0010;\u001a\u0002062\u0006\u0010<\u001a\u00020=H��¢\u0006\u0002\b>R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR \u0010\n\u001a\b\u0018\u00010\u000bR\u00020\fX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\tR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u0016X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020 X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001a\u0010%\u001a\u00020&X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001a\u0010+\u001a\u00020 X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b,\u0010\"\"\u0004\b-\u0010$¨\u0006?"}, m4298d2 = {"Lokhttp3/internal/cache/DiskLruCache$Entry;", "", "key", "", "(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V", "cleanFiles", "", "Ljava/io/File;", "getCleanFiles$okhttp", "()Ljava/util/List;", "currentEditor", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache;", "getCurrentEditor$okhttp", "()Lokhttp3/internal/cache/DiskLruCache$Editor;", "setCurrentEditor$okhttp", "(Lokhttp3/internal/cache/DiskLruCache$Editor;)V", "dirtyFiles", "getDirtyFiles$okhttp", "getKey$okhttp", "()Ljava/lang/String;", "lengths", "", "getLengths$okhttp", "()[J", "lockingSourceCount", "", "getLockingSourceCount$okhttp", "()I", "setLockingSourceCount$okhttp", "(I)V", "readable", "", "getReadable$okhttp", "()Z", "setReadable$okhttp", "(Z)V", "sequenceNumber", "", "getSequenceNumber$okhttp", "()J", "setSequenceNumber$okhttp", "(J)V", "zombie", "getZombie$okhttp", "setZombie$okhttp", "invalidLengths", "", "strings", "", "newSource", "Lokio/Source;", "index", "setLengths", "", "setLengths$okhttp", "snapshot", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "snapshot$okhttp", "writeLengths", "writer", "Lokio/BufferedSink;", "writeLengths$okhttp", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$Entry.class */
    public final class Entry {
        private Editor currentEditor;
        private final String key;
        private final long[] lengths;
        private int lockingSourceCount;
        private boolean readable;
        private long sequenceNumber;
        final /* synthetic */ DiskLruCache this$0;
        private boolean zombie;
        private final List<File> cleanFiles = new ArrayList();
        private final List<File> dirtyFiles = new ArrayList();

        public Entry(DiskLruCache diskLruCache, String key) {
            C18524p.m3840d(key, "key");
            this.this$0 = diskLruCache;
            this.key = key;
            this.lengths = new long[diskLruCache.getValueCount$okhttp()];
            StringBuilder sb = new StringBuilder(key);
            sb.append('.');
            int length = sb.length();
            int valueCount$okhttp = diskLruCache.getValueCount$okhttp();
            for (int i = 0; i < valueCount$okhttp; i++) {
                sb.append(i);
                this.cleanFiles.add(new File(diskLruCache.getDirectory(), sb.toString()));
                sb.append(".tmp");
                this.dirtyFiles.add(new File(diskLruCache.getDirectory(), sb.toString()));
                sb.setLength(length);
            }
        }

        private final Void invalidLengths(List<String> list) throws IOException {
            throw new IOException("unexpected journal line: ".concat(String.valueOf(list)));
        }

        private final AbstractC3190ad newSource(int i) {
            final AbstractC3190ad source = this.this$0.getFileSystem$okhttp().source(this.cleanFiles.get(i));
            if (this.this$0.civilizedFileSystem) {
                return source;
            }
            this.lockingSourceCount++;
            return new AbstractC3212l(source) { // from class: okhttp3.internal.cache.DiskLruCache$Entry$newSource$1
                private boolean closed;

                @Override // p092c.AbstractC3212l, p092c.AbstractC3190ad, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                    super.close();
                    if (!this.closed) {
                        this.closed = true;
                        synchronized (DiskLruCache.Entry.this.this$0) {
                            DiskLruCache.Entry entry = DiskLruCache.Entry.this;
                            entry.setLockingSourceCount$okhttp(entry.getLockingSourceCount$okhttp() - 1);
                            if (DiskLruCache.Entry.this.getLockingSourceCount$okhttp() == 0 && DiskLruCache.Entry.this.getZombie$okhttp()) {
                                DiskLruCache.Entry.this.this$0.removeEntry$okhttp(DiskLruCache.Entry.this);
                            }
                            C20128v c20128v = C20128v.f66529a;
                        }
                    }
                }
            };
        }

        public final List<File> getCleanFiles$okhttp() {
            return this.cleanFiles;
        }

        public final Editor getCurrentEditor$okhttp() {
            return this.currentEditor;
        }

        public final List<File> getDirtyFiles$okhttp() {
            return this.dirtyFiles;
        }

        public final String getKey$okhttp() {
            return this.key;
        }

        public final long[] getLengths$okhttp() {
            return this.lengths;
        }

        public final int getLockingSourceCount$okhttp() {
            return this.lockingSourceCount;
        }

        public final boolean getReadable$okhttp() {
            return this.readable;
        }

        public final long getSequenceNumber$okhttp() {
            return this.sequenceNumber;
        }

        public final boolean getZombie$okhttp() {
            return this.zombie;
        }

        public final void setCurrentEditor$okhttp(Editor editor) {
            this.currentEditor = editor;
        }

        public final void setLengths$okhttp(List<String> strings) throws IOException {
            C18524p.m3840d(strings, "strings");
            if (strings.size() != this.this$0.getValueCount$okhttp()) {
                invalidLengths(strings);
                throw new KotlinNothingValueException();
            }
            try {
                int size = strings.size();
                for (int i = 0; i < size; i++) {
                    this.lengths[i] = Long.parseLong(strings.get(i));
                }
            } catch (NumberFormatException e) {
                invalidLengths(strings);
                throw new KotlinNothingValueException();
            }
        }

        public final void setLockingSourceCount$okhttp(int i) {
            this.lockingSourceCount = i;
        }

        public final void setReadable$okhttp(boolean z) {
            this.readable = z;
        }

        public final void setSequenceNumber$okhttp(long j) {
            this.sequenceNumber = j;
        }

        public final void setZombie$okhttp(boolean z) {
            this.zombie = z;
        }

        public final Snapshot snapshot$okhttp() {
            DiskLruCache diskLruCache = this.this$0;
            if (Util.assertionsEnabled && !Thread.holdsLock(diskLruCache)) {
                StringBuilder sb = new StringBuilder("Thread ");
                Thread currentThread = Thread.currentThread();
                C18524p.m3843b(currentThread, "Thread.currentThread()");
                sb.append(currentThread.getName());
                sb.append(" MUST hold lock on ");
                sb.append(diskLruCache);
                throw new AssertionError(sb.toString());
            } else if (!this.readable) {
                return null;
            } else {
                if (!this.this$0.civilizedFileSystem && (this.currentEditor != null || this.zombie)) {
                    return null;
                }
                ArrayList<AbstractC3190ad> arrayList = new ArrayList();
                long[] jArr = (long[]) this.lengths.clone();
                try {
                    int valueCount$okhttp = this.this$0.getValueCount$okhttp();
                    for (int i = 0; i < valueCount$okhttp; i++) {
                        arrayList.add(newSource(i));
                    }
                    return new Snapshot(this.this$0, this.key, this.sequenceNumber, arrayList, jArr);
                } catch (FileNotFoundException e) {
                    for (AbstractC3190ad abstractC3190ad : arrayList) {
                        Util.closeQuietly(abstractC3190ad);
                    }
                    try {
                        this.this$0.removeEntry$okhttp(this);
                        return null;
                    } catch (IOException e2) {
                        return null;
                    }
                }
            }
        }

        public final void writeLengths$okhttp(AbstractC3206g writer) throws IOException {
            C18524p.m3840d(writer, "writer");
            for (long j : this.lengths) {
                writer.mo39141c(32).mo39135k(j);
            }
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u0016\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0004\u0018��2\u00020\u0001B-\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\b\u0010\f\u001a\u00020\rH\u0016J\f\u0010\u000e\u001a\b\u0018\u00010\u000fR\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0002\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0015"}, m4298d2 = {"Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Ljava/io/Closeable;", "key", "", "sequenceNumber", "", "sources", "", "Lokio/Source;", "lengths", "", "(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;JLjava/util/List;[J)V", EventConstants.CLOSE, "", "edit", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache;", "getLength", "index", "", "getSource", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$Snapshot.class */
    public final class Snapshot implements Closeable {
        private final String key;
        private final long[] lengths;
        private final long sequenceNumber;
        private final List<AbstractC3190ad> sources;
        final /* synthetic */ DiskLruCache this$0;

        /* JADX WARN: Multi-variable type inference failed */
        public Snapshot(DiskLruCache diskLruCache, String key, long j, List<? extends AbstractC3190ad> sources, long[] lengths) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(sources, "sources");
            C18524p.m3840d(lengths, "lengths");
            this.this$0 = diskLruCache;
            this.key = key;
            this.sequenceNumber = j;
            this.sources = sources;
            this.lengths = lengths;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            for (AbstractC3190ad abstractC3190ad : this.sources) {
                Util.closeQuietly(abstractC3190ad);
            }
        }

        public final Editor edit() throws IOException {
            return this.this$0.edit(this.key, this.sequenceNumber);
        }

        public final long getLength(int i) {
            return this.lengths[i];
        }

        public final AbstractC3190ad getSource(int i) {
            return this.sources.get(i);
        }

        public final String key() {
            return this.key;
        }
    }

    /* JADX WARN: Type inference failed for: r1v14, types: [okhttp3.internal.cache.DiskLruCache$cleanupTask$1] */
    public DiskLruCache(FileSystem fileSystem, File directory, int i, int i2, long j, TaskRunner taskRunner) {
        C18524p.m3840d(fileSystem, "fileSystem");
        C18524p.m3840d(directory, "directory");
        C18524p.m3840d(taskRunner, "taskRunner");
        this.fileSystem = fileSystem;
        this.directory = directory;
        this.appVersion = i;
        this.valueCount = i2;
        this.maxSize = j;
        this.cleanupQueue = taskRunner.newQueue();
        if (j > 0) {
            if (!(i2 > 0)) {
                throw new IllegalArgumentException("valueCount <= 0".toString());
            }
            this.journalFile = new File(directory, JOURNAL_FILE);
            this.journalFileTmp = new File(directory, JOURNAL_FILE_TEMP);
            this.journalFileBackup = new File(directory, JOURNAL_FILE_BACKUP);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0".toString());
    }

    private final void checkNotClosed() {
        synchronized (this) {
            if (!(!this.closed)) {
                throw new IllegalStateException("cache is closed".toString());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [okhttp3.internal.cache.DiskLruCache] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public static /* synthetic */ Editor edit$default(DiskLruCache diskLruCache, String str, long j, int i, Object obj) throws IOException {
        ?? r7 = j;
        if ((i & 2) != 0) {
            r7 = ANY_SEQUENCE_NUMBER;
        }
        return diskLruCache.edit(str, r7);
    }

    public final boolean journalRebuildRequired() {
        int i = this.redundantOpCount;
        return i >= 2000 && i >= this.lruEntries.size();
    }

    private final AbstractC3206g newJournalWriter() throws FileNotFoundException {
        return C3218r.m39151a(new FaultHidingSink(this.fileSystem.appendingSink(this.journalFile), new DiskLruCache$newJournalWriter$faultHidingSink$1(this)));
    }

    private final void processJournal() throws IOException {
        this.fileSystem.delete(this.journalFileTmp);
        Iterator<Entry> it2 = this.lruEntries.values().iterator();
        while (it2.hasNext()) {
            Entry next = it2.next();
            C18524p.m3843b(next, "i.next()");
            Entry entry = next;
            if (entry.getCurrentEditor$okhttp() == null) {
                int i = this.valueCount;
                for (int i2 = 0; i2 < i; i2++) {
                    this.size += entry.getLengths$okhttp()[i2];
                }
            } else {
                entry.setCurrentEditor$okhttp(null);
                int i3 = this.valueCount;
                for (int i4 = 0; i4 < i3; i4++) {
                    this.fileSystem.delete(entry.getCleanFiles$okhttp().get(i4));
                    this.fileSystem.delete(entry.getDirtyFiles$okhttp().get(i4));
                }
                it2.remove();
            }
        }
    }

    private final void readJournal() throws IOException {
        AbstractC3207h m39150a;
        try {
            AbstractC3207h m39150a2 = C3218r.m39150a(this.fileSystem.source(this.journalFile));
            String mo39106s = m39150a2.mo39106s();
            String mo39106s2 = m39150a2.mo39106s();
            String mo39106s3 = m39150a2.mo39106s();
            String mo39106s4 = m39150a2.mo39106s();
            String mo39106s5 = m39150a2.mo39106s();
            boolean z = true;
            if (!(!C18524p.m3850a((Object) MAGIC, (Object) mo39106s)) && !(!C18524p.m3850a((Object) VERSION_1, (Object) mo39106s2)) && !(!C18524p.m3850a((Object) String.valueOf(this.appVersion), (Object) mo39106s3)) && !(!C18524p.m3850a((Object) String.valueOf(this.valueCount), (Object) mo39106s4))) {
                if (mo39106s5.length() <= 0) {
                    z = false;
                }
                if (!z) {
                    int i = 0;
                    while (true) {
                        try {
                            readJournalLine(m39150a2.mo39106s());
                            i++;
                        } catch (EOFException e) {
                            this.redundantOpCount = i - this.lruEntries.size();
                            if (!m39150a2.mo39119e()) {
                                rebuildJournal$okhttp();
                            } else {
                                this.journalWriter = newJournalWriter();
                            }
                            C20128v c20128v = C20128v.f66529a;
                            th = null;
                            return;
                        }
                    }
                }
            }
            throw new IOException("unexpected journal header: [" + mo39106s + ", " + mo39106s2 + ", " + mo39106s4 + ", " + mo39106s5 + ']');
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    private final void readJournalLine(String str) throws IOException {
        String str2;
        String str3 = str;
        int a = C18425p.m3949a((CharSequence) str3, ' ', 0, false, 6);
        if (a != -1) {
            int i = a + 1;
            int a2 = C18425p.m3949a((CharSequence) str3, ' ', i, false, 4);
            if (a2 == -1) {
                Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                String substring = str.substring(i);
                C18524p.m3843b(substring, "(this as java.lang.String).substring(startIndex)");
                String str4 = REMOVE;
                str2 = substring;
                if (a == str4.length()) {
                    str2 = substring;
                    if (C18425p.m3957a(str, str4, false)) {
                        this.lruEntries.remove(substring);
                        return;
                    }
                }
            } else {
                Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                str2 = str.substring(i, a2);
                C18524p.m3843b(str2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            }
            Entry entry = this.lruEntries.get(str2);
            Entry entry2 = entry;
            if (entry == null) {
                entry2 = new Entry(this, str2);
                this.lruEntries.put(str2, entry2);
            }
            if (a2 != -1) {
                String str5 = CLEAN;
                if (a == str5.length() && C18425p.m3957a(str, str5, false)) {
                    Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                    String substring2 = str.substring(a2 + 1);
                    C18524p.m3843b(substring2, "(this as java.lang.String).substring(startIndex)");
                    List<String> a3 = C18425p.m3937a(substring2, new char[]{' '});
                    entry2.setReadable$okhttp(true);
                    entry2.setCurrentEditor$okhttp(null);
                    entry2.setLengths$okhttp(a3);
                    return;
                }
            }
            if (a2 == -1) {
                String str6 = DIRTY;
                if (a == str6.length() && C18425p.m3957a(str, str6, false)) {
                    entry2.setCurrentEditor$okhttp(new Editor(this, entry2));
                    return;
                }
            }
            if (a2 == -1) {
                String str7 = READ;
                if (a == str7.length() && C18425p.m3957a(str, str7, false)) {
                    return;
                }
            }
            throw new IOException("unexpected journal line: ".concat(String.valueOf(str)));
        }
        throw new IOException("unexpected journal line: ".concat(String.valueOf(str)));
    }

    private final boolean removeOldestEntry() {
        for (Entry toEvict : this.lruEntries.values()) {
            if (!toEvict.getZombie$okhttp()) {
                C18524p.m3843b(toEvict, "toEvict");
                removeEntry$okhttp(toEvict);
                return true;
            }
        }
        return false;
    }

    private final void validateKey(String str) {
        if (LEGAL_KEY_PATTERN.m3986a(str)) {
            return;
        }
        throw new IllegalArgumentException(("keys must match regex [a-z0-9_-]{1,120}: \"" + str + '\"').toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Entry[] entryArr;
        Editor currentEditor$okhttp;
        synchronized (this) {
            if (this.initialized && !this.closed) {
                Collection<Entry> values = this.lruEntries.values();
                C18524p.m3843b(values, "lruEntries.values");
                Object[] array = values.toArray(new Entry[0]);
                if (array == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
                for (Entry entry : (Entry[]) array) {
                    if (entry.getCurrentEditor$okhttp() != null && (currentEditor$okhttp = entry.getCurrentEditor$okhttp()) != null) {
                        currentEditor$okhttp.detach$okhttp();
                    }
                }
                trimToSize();
                AbstractC3206g abstractC3206g = this.journalWriter;
                C18524p.m3851a(abstractC3206g);
                abstractC3206g.close();
                this.journalWriter = null;
                this.closed = true;
                return;
            }
            this.closed = true;
        }
    }

    public final void completeEdit$okhttp(Editor editor, boolean z) throws IOException {
        synchronized (this) {
            C18524p.m3840d(editor, "editor");
            Entry entry$okhttp = editor.getEntry$okhttp();
            if (C18524p.m3850a(entry$okhttp.getCurrentEditor$okhttp(), editor)) {
                if (z && !entry$okhttp.getReadable$okhttp()) {
                    int i = this.valueCount;
                    for (int i2 = 0; i2 < i; i2++) {
                        boolean[] written$okhttp = editor.getWritten$okhttp();
                        C18524p.m3851a(written$okhttp);
                        if (!written$okhttp[i2]) {
                            editor.abort();
                            throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i2)));
                        } else if (!this.fileSystem.exists(entry$okhttp.getDirtyFiles$okhttp().get(i2))) {
                            editor.abort();
                            return;
                        }
                    }
                }
                int i3 = this.valueCount;
                for (int i4 = 0; i4 < i3; i4++) {
                    File file = entry$okhttp.getDirtyFiles$okhttp().get(i4);
                    if (!z || entry$okhttp.getZombie$okhttp()) {
                        this.fileSystem.delete(file);
                    } else if (this.fileSystem.exists(file)) {
                        File file2 = entry$okhttp.getCleanFiles$okhttp().get(i4);
                        this.fileSystem.rename(file, file2);
                        long j = entry$okhttp.getLengths$okhttp()[i4];
                        long size = this.fileSystem.size(file2);
                        entry$okhttp.getLengths$okhttp()[i4] = size;
                        this.size = (this.size - j) + size;
                    }
                }
                entry$okhttp.setCurrentEditor$okhttp(null);
                if (entry$okhttp.getZombie$okhttp()) {
                    removeEntry$okhttp(entry$okhttp);
                    return;
                }
                this.redundantOpCount++;
                AbstractC3206g abstractC3206g = this.journalWriter;
                C18524p.m3851a(abstractC3206g);
                if (entry$okhttp.getReadable$okhttp() || z) {
                    entry$okhttp.setReadable$okhttp(true);
                    abstractC3206g.mo39143b(CLEAN).mo39141c(32);
                    abstractC3206g.mo39143b(entry$okhttp.getKey$okhttp());
                    entry$okhttp.writeLengths$okhttp(abstractC3206g);
                    abstractC3206g.mo39141c(10);
                    if (z) {
                        long j2 = this.nextSequenceNumber;
                        this.nextSequenceNumber = 1 + j2;
                        entry$okhttp.setSequenceNumber$okhttp(j2);
                    }
                } else {
                    this.lruEntries.remove(entry$okhttp.getKey$okhttp());
                    abstractC3206g.mo39143b(REMOVE).mo39141c(32);
                    abstractC3206g.mo39143b(entry$okhttp.getKey$okhttp());
                    abstractC3206g.mo39141c(10);
                }
                abstractC3206g.flush();
                if (this.size > this.maxSize || journalRebuildRequired()) {
                    TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
                }
                return;
            }
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    public final void delete() throws IOException {
        close();
        this.fileSystem.deleteContents(this.directory);
    }

    public final Editor edit(String str) throws IOException {
        return edit$default(this, str, 0L, 2, null);
    }

    public final Editor edit(String key, long j) throws IOException {
        synchronized (this) {
            C18524p.m3840d(key, "key");
            initialize();
            checkNotClosed();
            validateKey(key);
            Entry entry = this.lruEntries.get(key);
            if (j == ANY_SEQUENCE_NUMBER || (entry != null && entry.getSequenceNumber$okhttp() == j)) {
                if ((entry != null ? entry.getCurrentEditor$okhttp() : null) != null) {
                    return null;
                }
                if (entry != null && entry.getLockingSourceCount$okhttp() != 0) {
                    return null;
                }
                if (!this.mostRecentTrimFailed && !this.mostRecentRebuildFailed) {
                    AbstractC3206g abstractC3206g = this.journalWriter;
                    C18524p.m3851a(abstractC3206g);
                    abstractC3206g.mo39143b(DIRTY).mo39141c(32).mo39143b(key).mo39141c(10);
                    abstractC3206g.flush();
                    if (this.hasJournalErrors) {
                        return null;
                    }
                    Entry entry2 = entry;
                    if (entry == null) {
                        entry2 = new Entry(this, key);
                        this.lruEntries.put(key, entry2);
                    }
                    Editor editor = new Editor(this, entry2);
                    entry2.setCurrentEditor$okhttp(editor);
                    return editor;
                }
                TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
                return null;
            }
            return null;
        }
    }

    public final void evictAll() throws IOException {
        Entry[] entryArr;
        synchronized (this) {
            initialize();
            Collection<Entry> values = this.lruEntries.values();
            C18524p.m3843b(values, "lruEntries.values");
            Object[] array = values.toArray(new Entry[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            for (Entry entry : (Entry[]) array) {
                C18524p.m3843b(entry, "entry");
                removeEntry$okhttp(entry);
            }
            this.mostRecentTrimFailed = false;
        }
    }

    @Override // java.io.Flushable
    public final void flush() throws IOException {
        synchronized (this) {
            if (!this.initialized) {
                return;
            }
            checkNotClosed();
            trimToSize();
            AbstractC3206g abstractC3206g = this.journalWriter;
            C18524p.m3851a(abstractC3206g);
            abstractC3206g.flush();
        }
    }

    public final Snapshot get(String key) throws IOException {
        synchronized (this) {
            C18524p.m3840d(key, "key");
            initialize();
            checkNotClosed();
            validateKey(key);
            Entry entry = this.lruEntries.get(key);
            if (entry == null) {
                return null;
            }
            C18524p.m3843b(entry, "lruEntries[key] ?: return null");
            Snapshot snapshot$okhttp = entry.snapshot$okhttp();
            if (snapshot$okhttp == null) {
                return null;
            }
            this.redundantOpCount++;
            AbstractC3206g abstractC3206g = this.journalWriter;
            C18524p.m3851a(abstractC3206g);
            abstractC3206g.mo39143b(READ).mo39141c(32).mo39143b(key).mo39141c(10);
            if (journalRebuildRequired()) {
                TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
            }
            return snapshot$okhttp;
        }
    }

    public final boolean getClosed$okhttp() {
        return this.closed;
    }

    public final File getDirectory() {
        return this.directory;
    }

    public final FileSystem getFileSystem$okhttp() {
        return this.fileSystem;
    }

    public final LinkedHashMap<String, Entry> getLruEntries$okhttp() {
        return this.lruEntries;
    }

    public final long getMaxSize() {
        long j;
        synchronized (this) {
            j = this.maxSize;
        }
        return j;
    }

    public final int getValueCount$okhttp() {
        return this.valueCount;
    }

    public final void initialize() throws IOException {
        synchronized (this) {
            if (Util.assertionsEnabled && !Thread.holdsLock(this)) {
                StringBuilder sb = new StringBuilder("Thread ");
                Thread currentThread = Thread.currentThread();
                C18524p.m3843b(currentThread, "Thread.currentThread()");
                sb.append(currentThread.getName());
                sb.append(" MUST hold lock on ");
                sb.append(this);
                throw new AssertionError(sb.toString());
            }
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
            this.civilizedFileSystem = Util.isCivilized(this.fileSystem, this.journalFileBackup);
            if (this.fileSystem.exists(this.journalFile)) {
                try {
                    readJournal();
                    processJournal();
                    this.initialized = true;
                    return;
                } catch (IOException e) {
                    Platform platform = Platform.Companion.get();
                    platform.log("DiskLruCache " + this.directory + " is corrupt: " + e.getMessage() + ", removing", 5, e);
                    delete();
                    this.closed = false;
                }
            }
            rebuildJournal$okhttp();
            this.initialized = true;
        }
    }

    public final boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.closed;
        }
        return z;
    }

    public final void rebuildJournal$okhttp() throws IOException {
        synchronized (this) {
            AbstractC3206g abstractC3206g = this.journalWriter;
            if (abstractC3206g != null) {
                abstractC3206g.close();
            }
            AbstractC3206g m39151a = C3218r.m39151a(this.fileSystem.sink(this.journalFileTmp));
            AbstractC3206g abstractC3206g2 = m39151a;
            abstractC3206g2.mo39143b(MAGIC).mo39141c(10);
            abstractC3206g2.mo39143b(VERSION_1).mo39141c(10);
            abstractC3206g2.mo39135k(this.appVersion).mo39141c(10);
            abstractC3206g2.mo39135k(this.valueCount).mo39141c(10);
            abstractC3206g2.mo39141c(10);
            for (Entry entry : this.lruEntries.values()) {
                if (entry.getCurrentEditor$okhttp() != null) {
                    abstractC3206g2.mo39143b(DIRTY).mo39141c(32);
                    abstractC3206g2.mo39143b(entry.getKey$okhttp());
                    abstractC3206g2.mo39141c(10);
                } else {
                    abstractC3206g2.mo39143b(CLEAN).mo39141c(32);
                    abstractC3206g2.mo39143b(entry.getKey$okhttp());
                    entry.writeLengths$okhttp(abstractC3206g2);
                    abstractC3206g2.mo39141c(10);
                }
            }
            C20128v c20128v = C20128v.f66529a;
            C18442b.m3909a(m39151a, null);
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

    public final boolean remove(String key) throws IOException {
        synchronized (this) {
            C18524p.m3840d(key, "key");
            initialize();
            checkNotClosed();
            validateKey(key);
            Entry entry = this.lruEntries.get(key);
            if (entry == null) {
                return false;
            }
            C18524p.m3843b(entry, "lruEntries[key] ?: return false");
            boolean removeEntry$okhttp = removeEntry$okhttp(entry);
            if (removeEntry$okhttp && this.size <= this.maxSize) {
                this.mostRecentTrimFailed = false;
            }
            return removeEntry$okhttp;
        }
    }

    public final boolean removeEntry$okhttp(Entry entry) throws IOException {
        AbstractC3206g abstractC3206g;
        C18524p.m3840d(entry, "entry");
        if (!this.civilizedFileSystem) {
            if (entry.getLockingSourceCount$okhttp() > 0 && (abstractC3206g = this.journalWriter) != null) {
                abstractC3206g.mo39143b(DIRTY);
                abstractC3206g.mo39141c(32);
                abstractC3206g.mo39143b(entry.getKey$okhttp());
                abstractC3206g.mo39141c(10);
                abstractC3206g.flush();
            }
            if (entry.getLockingSourceCount$okhttp() > 0 || entry.getCurrentEditor$okhttp() != null) {
                entry.setZombie$okhttp(true);
                return true;
            }
        }
        Editor currentEditor$okhttp = entry.getCurrentEditor$okhttp();
        if (currentEditor$okhttp != null) {
            currentEditor$okhttp.detach$okhttp();
        }
        int i = this.valueCount;
        for (int i2 = 0; i2 < i; i2++) {
            this.fileSystem.delete(entry.getCleanFiles$okhttp().get(i2));
            this.size -= entry.getLengths$okhttp()[i2];
            entry.getLengths$okhttp()[i2] = 0;
        }
        this.redundantOpCount++;
        AbstractC3206g abstractC3206g2 = this.journalWriter;
        if (abstractC3206g2 != null) {
            abstractC3206g2.mo39143b(REMOVE);
            abstractC3206g2.mo39141c(32);
            abstractC3206g2.mo39143b(entry.getKey$okhttp());
            abstractC3206g2.mo39141c(10);
        }
        this.lruEntries.remove(entry.getKey$okhttp());
        if (journalRebuildRequired()) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
            return true;
        }
        return true;
    }

    public final void setClosed$okhttp(boolean z) {
        this.closed = z;
    }

    public final void setMaxSize(long j) {
        synchronized (this) {
            this.maxSize = j;
            if (this.initialized) {
                TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
            }
        }
    }

    public final long size() throws IOException {
        long j;
        synchronized (this) {
            initialize();
            j = this.size;
        }
        return j;
    }

    public final Iterator<Snapshot> snapshots() throws IOException {
        DiskLruCache$snapshots$1 diskLruCache$snapshots$1;
        synchronized (this) {
            initialize();
            diskLruCache$snapshots$1 = new DiskLruCache$snapshots$1(this);
        }
        return diskLruCache$snapshots$1;
    }

    public final void trimToSize() throws IOException {
        while (this.size > this.maxSize) {
            if (!removeOldestEntry()) {
                return;
            }
        }
        this.mostRecentTrimFailed = false;
    }
}
