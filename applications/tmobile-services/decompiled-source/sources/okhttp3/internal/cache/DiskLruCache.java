package okhttp3.internal.cache;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tmobile.services.nameid.model.TmoUserStatus;
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
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p009io.CloseableKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal.Util;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.p011io.FileSystem;
import okhttp3.internal.platform.Platform;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0087\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010)\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\b*\u0001?\u0018�� m2\u00020\u00012\u00020\u0002:\u0004mnopB9\b��\u0012\u0006\u0010L\u001a\u00020K\u0012\u0006\u0010G\u001a\u00020F\u0012\u0006\u00108\u001a\u000207\u0012\u0006\u0010f\u001a\u000207\u0012\u0006\u0010]\u001a\u00020\u0011\u0012\u0006\u0010j\u001a\u00020i¢\u0006\u0004\bk\u0010lJ\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0005J#\u0010\r\u001a\u00020\u00032\n\u0010\b\u001a\u00060\u0007R\u00020��2\u0006\u0010\n\u001a\u00020\tH��¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\u000e\u001a\u00020\u0003¢\u0006\u0004\b\u000e\u0010\u0005J'\u0010\u0013\u001a\b\u0018\u00010\u0007R\u00020��2\u0006\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u0003¢\u0006\u0004\b\u0015\u0010\u0005J\u000f\u0010\u0016\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0016\u0010\u0005J\u001e\u0010\u0018\u001a\b\u0018\u00010\u0017R\u00020��2\u0006\u0010\u0010\u001a\u00020\u000fH\u0086\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\u0003¢\u0006\u0004\b\u001a\u0010\u0005J\r\u0010\u001b\u001a\u00020\t¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001d\u0010\u001cJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0003H\u0002¢\u0006\u0004\b!\u0010\u0005J\u000f\u0010\"\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\"\u0010\u0005J\u0017\u0010$\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u000fH\u0002¢\u0006\u0004\b$\u0010%J\u000f\u0010'\u001a\u00020\u0003H��¢\u0006\u0004\b&\u0010\u0005J\u0015\u0010(\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b(\u0010)J\u001b\u0010.\u001a\u00020\t2\n\u0010+\u001a\u00060*R\u00020��H��¢\u0006\u0004\b,\u0010-J\u000f\u0010/\u001a\u00020\tH\u0002¢\u0006\u0004\b/\u0010\u001cJ\r\u00100\u001a\u00020\u0011¢\u0006\u0004\b0\u00101J\u0017\u00103\u001a\f\u0012\b\u0012\u00060\u0017R\u00020��02¢\u0006\u0004\b3\u00104J\r\u00105\u001a\u00020\u0003¢\u0006\u0004\b5\u0010\u0005J\u0017\u00106\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b6\u0010%R\u0016\u00108\u001a\u0002078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010:\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010=\u001a\u00020<8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010@\u001a\u00020?8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010AR\"\u0010B\u001a\u00020\t8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\bB\u0010;\u001a\u0004\bC\u0010\u001c\"\u0004\bD\u0010ER\u0019\u0010G\u001a\u00020F8\u0006@\u0006¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\bI\u0010JR\u001c\u0010L\u001a\u00020K8��@��X\u0080\u0004¢\u0006\f\n\u0004\bL\u0010M\u001a\u0004\bN\u0010OR\u0016\u0010P\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010;R\u0016\u0010Q\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010;R\u0016\u0010R\u001a\u00020F8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010HR\u0016\u0010S\u001a\u00020F8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010HR\u0016\u0010T\u001a\u00020F8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bT\u0010HR\u0018\u0010U\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR,\u0010X\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\b\u0012\u00060*R\u00020��0W8��@��X\u0080\u0004¢\u0006\f\n\u0004\bX\u0010Y\u001a\u0004\bZ\u0010[R*\u0010]\u001a\u00020\u00112\u0006\u0010\\\u001a\u00020\u00118F@FX\u0086\u000e¢\u0006\u0012\n\u0004\b]\u0010^\u001a\u0004\b_\u00101\"\u0004\b`\u0010aR\u0016\u0010b\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010;R\u0016\u0010c\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010;R\u0016\u0010d\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010^R\u0016\u0010e\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u00109R\u0016\u00100\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010^R\u001c\u0010f\u001a\u0002078��@��X\u0080\u0004¢\u0006\f\n\u0004\bf\u00109\u001a\u0004\bg\u0010h¨\u0006q"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache;", "Ljava/io/Closeable;", "Ljava/io/Flushable;", "", "checkNotClosed", "()V", "close", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "editor", "", FirebaseAnalytics.Param.SUCCESS, "completeEdit$okhttp", "(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V", "completeEdit", "delete", "", "key", "", "expectedSequenceNumber", "edit", "(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;", "evictAll", "flush", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "get", "(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "initialize", "isClosed", "()Z", "journalRebuildRequired", "Lokio/BufferedSink;", "newJournalWriter", "()Lokio/BufferedSink;", "processJournal", "readJournal", "line", "readJournalLine", "(Ljava/lang/String;)V", "rebuildJournal$okhttp", "rebuildJournal", "remove", "(Ljava/lang/String;)Z", "Lokhttp3/internal/cache/DiskLruCache$Entry;", "entry", "removeEntry$okhttp", "(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z", "removeEntry", "removeOldestEntry", "size", "()J", "", "snapshots", "()Ljava/util/Iterator;", "trimToSize", "validateKey", "", "appVersion", "I", "civilizedFileSystem", "Z", "Lokhttp3/internal/concurrent/TaskQueue;", "cleanupQueue", "Lokhttp3/internal/concurrent/TaskQueue;", "okhttp3/internal/cache/DiskLruCache$cleanupTask$1", "cleanupTask", "Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;", "closed", "getClosed$okhttp", "setClosed$okhttp", "(Z)V", "Ljava/io/File;", "directory", "Ljava/io/File;", "getDirectory", "()Ljava/io/File;", "Lokhttp3/internal/io/FileSystem;", "fileSystem", "Lokhttp3/internal/io/FileSystem;", "getFileSystem$okhttp", "()Lokhttp3/internal/io/FileSystem;", "hasJournalErrors", "initialized", "journalFile", "journalFileBackup", "journalFileTmp", "journalWriter", "Lokio/BufferedSink;", "Ljava/util/LinkedHashMap;", "lruEntries", "Ljava/util/LinkedHashMap;", "getLruEntries$okhttp", "()Ljava/util/LinkedHashMap;", FirebaseAnalytics.Param.VALUE, "maxSize", "J", "getMaxSize", "setMaxSize", "(J)V", "mostRecentRebuildFailed", "mostRecentTrimFailed", "nextSequenceNumber", "redundantOpCount", "valueCount", "getValueCount$okhttp", "()I", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "<init>", "(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLokhttp3/internal/concurrent/TaskRunner;)V", "Companion", "Editor", "Entry", "Snapshot", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/DiskLruCache.class */
public final class DiskLruCache implements Closeable, Flushable {
    private final int appVersion;
    private boolean civilizedFileSystem;
    private final TaskQueue cleanupQueue;
    private final DiskLruCache$cleanupTask$1 cleanupTask;
    private boolean closed;
    @NotNull
    private final File directory;
    @NotNull
    private final FileSystem fileSystem;
    private boolean hasJournalErrors;
    private boolean initialized;
    private final File journalFile;
    private final File journalFileBackup;
    private final File journalFileTmp;
    private BufferedSink journalWriter;
    @NotNull
    private final LinkedHashMap<String, Entry> lruEntries = new LinkedHashMap<>(0, 0.75f, true);
    private long maxSize;
    private boolean mostRecentRebuildFailed;
    private boolean mostRecentTrimFailed;
    private long nextSequenceNumber;
    private int redundantOpCount;
    private long size;
    private final int valueCount;
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final String JOURNAL_FILE = "journal";
    @JvmField
    @NotNull
    public static final String JOURNAL_FILE_TEMP = "journal.tmp";
    @JvmField
    @NotNull
    public static final String JOURNAL_FILE_BACKUP = "journal.bkp";
    @JvmField
    @NotNull
    public static final String MAGIC = "libcore.io.DiskLruCache";
    @JvmField
    @NotNull
    public static final String VERSION_1 = TmoUserStatus.CUSTOMER_TYPE_POSTPAID;
    @JvmField
    public static final long ANY_SEQUENCE_NUMBER = -1;
    @JvmField
    @NotNull
    public static final Regex LEGAL_KEY_PATTERN = new Regex("[a-z0-9_-]{1,120}");
    @JvmField
    @NotNull
    public static final String CLEAN = "CLEAN";
    @JvmField
    @NotNull
    public static final String DIRTY = "DIRTY";
    @JvmField
    @NotNull
    public static final String REMOVE = "REMOVE";
    @JvmField
    @NotNull
    public static final String READ = "READ";

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0007X\u0087D¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003R\u0016\u0010\u0005\u001a\u00020\u00048\u0006@\u0007X\u0087D¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u00020\u00048\u0006@\u0007X\u0087D¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006R\u0016\u0010\b\u001a\u00020\u00048\u0006@\u0007X\u0087D¢\u0006\u0006\n\u0004\b\b\u0010\u0006R\u0016\u0010\t\u001a\u00020\u00048\u0006@\u0007X\u0087D¢\u0006\u0006\n\u0004\b\t\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00048\u0006@\u0007X\u0087D¢\u0006\u0006\n\u0004\b\n\u0010\u0006R\u0016\u0010\f\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u00020\u00048\u0006@\u0007X\u0087D¢\u0006\u0006\n\u0004\b\u000e\u0010\u0006R\u0016\u0010\u000f\u001a\u00020\u00048\u0006@\u0007X\u0087D¢\u0006\u0006\n\u0004\b\u000f\u0010\u0006R\u0016\u0010\u0010\u001a\u00020\u00048\u0006@\u0007X\u0087D¢\u0006\u0006\n\u0004\b\u0010\u0010\u0006R\u0016\u0010\u0011\u001a\u00020\u00048\u0006@\u0007X\u0087D¢\u0006\u0006\n\u0004\b\u0011\u0010\u0006¨\u0006\u0014"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Companion;", "", "ANY_SEQUENCE_NUMBER", "J", "", "CLEAN", "Ljava/lang/String;", "DIRTY", "JOURNAL_FILE", "JOURNAL_FILE_BACKUP", "JOURNAL_FILE_TEMP", "Lkotlin/text/Regex;", "LEGAL_KEY_PATTERN", "Lkotlin/text/Regex;", "MAGIC", "READ", "REMOVE", "VERSION_1", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0018\n\u0002\b\u0007\b\u0086\u0004\u0018��B\u0015\b��\u0012\n\u0010\u0014\u001a\u00060\u0012R\u00020\u0013¢\u0006\u0004\b\u001d\u0010\u001eJ\r\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0001H��¢\u0006\u0004\b\u0005\u0010\u0003J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R \u0010\u0014\u001a\u00060\u0012R\u00020\u00138��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u00188��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Editor;", "", "abort", "()V", "commit", "detach$okhttp", "detach", "", FirebaseAnalytics.Param.INDEX, "Lokio/Sink;", "newSink", "(I)Lokio/Sink;", "Lokio/Source;", "newSource", "(I)Lokio/Source;", "", "done", "Z", "Lokhttp3/internal/cache/DiskLruCache$Entry;", "Lokhttp3/internal/cache/DiskLruCache;", "entry", "Lokhttp3/internal/cache/DiskLruCache$Entry;", "getEntry$okhttp", "()Lokhttp3/internal/cache/DiskLruCache$Entry;", "", "written", "[Z", "getWritten$okhttp", "()[Z", "<init>", "(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$Editor.class */
    public final class Editor {
        private boolean done;
        @NotNull
        private final Entry entry;
        final /* synthetic */ DiskLruCache this$0;
        @Nullable
        private final boolean[] written;

        public Editor(@NotNull DiskLruCache diskLruCache, Entry entry) {
            Intrinsics.m1830e(entry, "entry");
            this.this$0 = diskLruCache;
            this.entry = entry;
            this.written = entry.getReadable$okhttp() ? null : new boolean[diskLruCache.getValueCount$okhttp()];
        }

        public final void abort() throws IOException {
            synchronized (this.this$0) {
                if (!this.done) {
                    if (Intrinsics.m1834a(this.entry.getCurrentEditor$okhttp(), this)) {
                        this.this$0.completeEdit$okhttp(this, false);
                    }
                    this.done = true;
                    Unit unit = Unit.f20447a;
                } else {
                    throw new IllegalStateException("Check failed.".toString());
                }
            }
        }

        public final void commit() throws IOException {
            synchronized (this.this$0) {
                if (!this.done) {
                    if (Intrinsics.m1834a(this.entry.getCurrentEditor$okhttp(), this)) {
                        this.this$0.completeEdit$okhttp(this, true);
                    }
                    this.done = true;
                    Unit unit = Unit.f20447a;
                } else {
                    throw new IllegalStateException("Check failed.".toString());
                }
            }
        }

        public final void detach$okhttp() {
            if (!Intrinsics.m1834a(this.entry.getCurrentEditor$okhttp(), this)) {
                return;
            }
            if (this.this$0.civilizedFileSystem) {
                this.this$0.completeEdit$okhttp(this, false);
            } else {
                this.entry.setZombie$okhttp(true);
            }
        }

        @NotNull
        public final Entry getEntry$okhttp() {
            return this.entry;
        }

        @Nullable
        public final boolean[] getWritten$okhttp() {
            return this.written;
        }

        @NotNull
        public final Sink newSink(int i) {
            synchronized (this.this$0) {
                if (!(!this.done)) {
                    throw new IllegalStateException("Check failed.".toString());
                } else if (!Intrinsics.m1834a(this.entry.getCurrentEditor$okhttp(), this)) {
                    return Okio.m145b();
                } else {
                    if (!this.entry.getReadable$okhttp()) {
                        boolean[] zArr = this.written;
                        Intrinsics.m1832c(zArr);
                        zArr[i] = true;
                    }
                    try {
                        return new FaultHidingSink(this.this$0.getFileSystem$okhttp().sink(this.entry.getDirtyFiles$okhttp().get(i)), new DiskLruCache$Editor$newSink$$inlined$synchronized$lambda$1(this, i));
                    } catch (FileNotFoundException e) {
                        return Okio.m145b();
                    }
                }
            }
        }

        @Nullable
        public final Source newSource(int i) {
            synchronized (this.this$0) {
                if (!this.done) {
                    Source source = null;
                    if (!this.entry.getReadable$okhttp() || (!Intrinsics.m1834a(this.entry.getCurrentEditor$okhttp(), this)) || this.entry.getZombie$okhttp()) {
                        return null;
                    }
                    try {
                        source = this.this$0.getFileSystem$okhttp().source(this.entry.getCleanFiles$okhttp().get(i));
                    } catch (FileNotFoundException e) {
                    }
                    return source;
                }
                throw new IllegalStateException("Check failed.".toString());
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n��\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0016\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\f\b\u0080\u0004\u0018��B\u0011\b��\u0012\u0006\u0010)\u001a\u00020\u0002¢\u0006\u0004\bI\u0010JJ\u001d\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u000f\u001a\u00020\f2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H��¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0014\u001a\b\u0018\u00010\u0010R\u00020\u0011H��¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0015H��¢\u0006\u0004\b\u0017\u0010\u0018R\"\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR(\u0010!\u001a\b\u0018\u00010 R\u00020\u00118��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010'\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8��@��X\u0080\u0004¢\u0006\f\n\u0004\b'\u0010\u001d\u001a\u0004\b(\u0010\u001fR\u001c\u0010)\u001a\u00020\u00028��@��X\u0080\u0004¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u001c\u0010.\u001a\u00020-8��@��X\u0080\u0004¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\"\u00102\u001a\u00020\u00078��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\"\u00109\u001a\u0002088��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\"\u0010@\u001a\u00020?8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b@\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\"\u0010F\u001a\u0002088��@��X\u0080\u000e¢\u0006\u0012\n\u0004\bF\u0010:\u001a\u0004\bG\u0010<\"\u0004\bH\u0010>¨\u0006K"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Entry;", "", "", "strings", "", "invalidLengths", "(Ljava/util/List;)Ljava/lang/Void;", "", FirebaseAnalytics.Param.INDEX, "Lokio/Source;", "newSource", "(I)Lokio/Source;", "", "setLengths$okhttp", "(Ljava/util/List;)V", "setLengths", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Lokhttp3/internal/cache/DiskLruCache;", "snapshot$okhttp", "()Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "snapshot", "Lokio/BufferedSink;", "writer", "writeLengths$okhttp", "(Lokio/BufferedSink;)V", "writeLengths", "", "Ljava/io/File;", "cleanFiles", "Ljava/util/List;", "getCleanFiles$okhttp", "()Ljava/util/List;", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "currentEditor", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "getCurrentEditor$okhttp", "()Lokhttp3/internal/cache/DiskLruCache$Editor;", "setCurrentEditor$okhttp", "(Lokhttp3/internal/cache/DiskLruCache$Editor;)V", "dirtyFiles", "getDirtyFiles$okhttp", "key", "Ljava/lang/String;", "getKey$okhttp", "()Ljava/lang/String;", "", "lengths", "[J", "getLengths$okhttp", "()[J", "lockingSourceCount", "I", "getLockingSourceCount$okhttp", "()I", "setLockingSourceCount$okhttp", "(I)V", "", "readable", "Z", "getReadable$okhttp", "()Z", "setReadable$okhttp", "(Z)V", "", "sequenceNumber", "J", "getSequenceNumber$okhttp", "()J", "setSequenceNumber$okhttp", "(J)V", "zombie", "getZombie$okhttp", "setZombie$okhttp", "<init>", "(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$Entry.class */
    public final class Entry {
        @Nullable
        private Editor currentEditor;
        @NotNull
        private final String key;
        @NotNull
        private final long[] lengths;
        private int lockingSourceCount;
        private boolean readable;
        private long sequenceNumber;
        final /* synthetic */ DiskLruCache this$0;
        private boolean zombie;
        @NotNull
        private final List<File> cleanFiles = new ArrayList();
        @NotNull
        private final List<File> dirtyFiles = new ArrayList();

        public Entry(@NotNull DiskLruCache diskLruCache, String key) {
            Intrinsics.m1830e(key, "key");
            this.this$0 = diskLruCache;
            this.key = key;
            this.lengths = new long[diskLruCache.getValueCount$okhttp()];
            StringBuilder sb = new StringBuilder(this.key);
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
            throw new IOException("unexpected journal line: " + list);
        }

        private final Source newSource(int i) {
            final Source source = this.this$0.getFileSystem$okhttp().source(this.cleanFiles.get(i));
            if (this.this$0.civilizedFileSystem) {
                return source;
            }
            this.lockingSourceCount++;
            return new ForwardingSource(source) { // from class: okhttp3.internal.cache.DiskLruCache$Entry$newSource$1
                private boolean closed;

                @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    super.close();
                    if (!this.closed) {
                        this.closed = true;
                        synchronized (DiskLruCache.Entry.this.this$0) {
                            DiskLruCache.Entry entry = DiskLruCache.Entry.this;
                            entry.setLockingSourceCount$okhttp(entry.getLockingSourceCount$okhttp() - 1);
                            if (DiskLruCache.Entry.this.getLockingSourceCount$okhttp() == 0 && DiskLruCache.Entry.this.getZombie$okhttp()) {
                                DiskLruCache.Entry.this.this$0.removeEntry$okhttp(DiskLruCache.Entry.this);
                            }
                            Unit unit = Unit.f20447a;
                        }
                    }
                }
            };
        }

        @NotNull
        public final List<File> getCleanFiles$okhttp() {
            return this.cleanFiles;
        }

        @Nullable
        public final Editor getCurrentEditor$okhttp() {
            return this.currentEditor;
        }

        @NotNull
        public final List<File> getDirtyFiles$okhttp() {
            return this.dirtyFiles;
        }

        @NotNull
        public final String getKey$okhttp() {
            return this.key;
        }

        @NotNull
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

        public final void setCurrentEditor$okhttp(@Nullable Editor editor) {
            this.currentEditor = editor;
        }

        public final void setLengths$okhttp(@NotNull List<String> strings) throws IOException {
            Intrinsics.m1830e(strings, "strings");
            if (strings.size() == this.this$0.getValueCount$okhttp()) {
                try {
                    int size = strings.size();
                    for (int i = 0; i < size; i++) {
                        this.lengths[i] = Long.parseLong(strings.get(i));
                    }
                } catch (NumberFormatException e) {
                    invalidLengths(strings);
                    throw new KotlinNothingValueException();
                }
            } else {
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

        @Nullable
        public final Snapshot snapshot$okhttp() {
            DiskLruCache diskLruCache = this.this$0;
            if (Util.assertionsEnabled && !Thread.holdsLock(diskLruCache)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Thread ");
                Thread currentThread = Thread.currentThread();
                Intrinsics.m1831d(currentThread, "Thread.currentThread()");
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
                ArrayList<Source> arrayList = new ArrayList();
                long[] jArr = (long[]) this.lengths.clone();
                try {
                    int valueCount$okhttp = this.this$0.getValueCount$okhttp();
                    for (int i = 0; i < valueCount$okhttp; i++) {
                        arrayList.add(newSource(i));
                    }
                    return new Snapshot(this.this$0, this.key, this.sequenceNumber, arrayList, jArr);
                } catch (FileNotFoundException e) {
                    for (Source source : arrayList) {
                        Util.closeQuietly(source);
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

        public final void writeLengths$okhttp(@NotNull BufferedSink writer) throws IOException {
            Intrinsics.m1830e(writer, "writer");
            for (long j : this.lengths) {
                writer.mo100A(32).mo90q0(j);
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0016\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0005\b\u0086\u0004\u0018��2\u00020\u0001B/\b��\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u000b\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u000e0\u001a\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0013\u0010\u0007\u001a\b\u0018\u00010\u0005R\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0014R\u0016\u0010\u0016\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0018\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u000e0\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Ljava/io/Closeable;", "", "close", "()V", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache;", "edit", "()Lokhttp3/internal/cache/DiskLruCache$Editor;", "", FirebaseAnalytics.Param.INDEX, "", "getLength", "(I)J", "Lokio/Source;", "getSource", "(I)Lokio/Source;", "", "key", "()Ljava/lang/String;", "Ljava/lang/String;", "", "lengths", "[J", "sequenceNumber", "J", "", "sources", "Ljava/util/List;", "<init>", "(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;JLjava/util/List;[J)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$Snapshot.class */
    public final class Snapshot implements Closeable {
        private final String key;
        private final long[] lengths;
        private final long sequenceNumber;
        private final List<Source> sources;
        final /* synthetic */ DiskLruCache this$0;

        /* JADX WARN: Multi-variable type inference failed */
        public Snapshot(@NotNull DiskLruCache diskLruCache, String key, @NotNull long j, @NotNull List<? extends Source> sources, long[] lengths) {
            Intrinsics.m1830e(key, "key");
            Intrinsics.m1830e(sources, "sources");
            Intrinsics.m1830e(lengths, "lengths");
            this.this$0 = diskLruCache;
            this.key = key;
            this.sequenceNumber = j;
            this.sources = sources;
            this.lengths = lengths;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (Source source : this.sources) {
                Util.closeQuietly(source);
            }
        }

        @Nullable
        public final Editor edit() throws IOException {
            return this.this$0.edit(this.key, this.sequenceNumber);
        }

        public final long getLength(int i) {
            return this.lengths[i];
        }

        @NotNull
        public final Source getSource(int i) {
            return this.sources.get(i);
        }

        @NotNull
        public final String key() {
            return this.key;
        }
    }

    /* JADX WARN: Type inference failed for: r1v14, types: [okhttp3.internal.cache.DiskLruCache$cleanupTask$1] */
    public DiskLruCache(@NotNull FileSystem fileSystem, @NotNull File directory, int i, int i2, long j, @NotNull TaskRunner taskRunner) {
        Intrinsics.m1830e(fileSystem, "fileSystem");
        Intrinsics.m1830e(directory, "directory");
        Intrinsics.m1830e(taskRunner, "taskRunner");
        this.fileSystem = fileSystem;
        this.directory = directory;
        this.appVersion = i;
        this.valueCount = i2;
        this.maxSize = j;
        boolean z = false;
        this.cleanupQueue = taskRunner.newQueue();
        final String str = Util.okHttpName + " Cache";
        this.cleanupTask = new Task(str) { // from class: okhttp3.internal.cache.DiskLruCache$cleanupTask$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                boolean z2;
                boolean journalRebuildRequired;
                synchronized (DiskLruCache.this) {
                    z2 = DiskLruCache.this.initialized;
                    if (!z2 || DiskLruCache.this.getClosed$okhttp()) {
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
                        DiskLruCache.this.journalWriter = Okio.m144c(Okio.m145b());
                    }
                    return -1L;
                }
            }
        };
        if (j > 0) {
            if (this.valueCount > 0 ? true : z) {
                this.journalFile = new File(this.directory, JOURNAL_FILE);
                this.journalFileTmp = new File(this.directory, JOURNAL_FILE_TEMP);
                this.journalFileBackup = new File(this.directory, JOURNAL_FILE_BACKUP);
                return;
            }
            throw new IllegalArgumentException("valueCount <= 0".toString());
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

    public static /* synthetic */ Editor edit$default(DiskLruCache diskLruCache, String str, long j, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            j = ANY_SEQUENCE_NUMBER;
        }
        return diskLruCache.edit(str, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean journalRebuildRequired() {
        int i = this.redundantOpCount;
        return i >= 2000 && i >= this.lruEntries.size();
    }

    private final BufferedSink newJournalWriter() throws FileNotFoundException {
        return Okio.m144c(new FaultHidingSink(this.fileSystem.appendingSink(this.journalFile), new DiskLruCache$newJournalWriter$faultHidingSink$1(this)));
    }

    private final void processJournal() throws IOException {
        this.fileSystem.delete(this.journalFileTmp);
        Iterator<Entry> it = this.lruEntries.values().iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            Intrinsics.m1831d(next, "i.next()");
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
                it.remove();
            }
        }
    }

    private final void readJournal() throws IOException {
        BufferedSource d = Okio.m143d(this.fileSystem.source(this.journalFile));
        try {
            String a0 = d.mo78a0();
            String a02 = d.mo78a0();
            String a03 = d.mo78a0();
            String a04 = d.mo78a0();
            String a05 = d.mo78a0();
            boolean z = true;
            if (!(!Intrinsics.m1834a(MAGIC, a0)) && !(!Intrinsics.m1834a(VERSION_1, a02)) && !(!Intrinsics.m1834a(String.valueOf(this.appVersion), a03)) && !(!Intrinsics.m1834a(String.valueOf(this.valueCount), a04))) {
                int i = 0;
                if (a05.length() <= 0) {
                    z = false;
                }
                if (!z) {
                    while (true) {
                        try {
                            readJournalLine(d.mo78a0());
                            i++;
                        } catch (EOFException e) {
                            this.redundantOpCount = i - this.lruEntries.size();
                            if (!d.mo60z()) {
                                rebuildJournal$okhttp();
                            } else {
                                this.journalWriter = newJournalWriter();
                            }
                            Unit unit = Unit.f20447a;
                            th = null;
                            return;
                        }
                    }
                }
            }
            throw new IOException("unexpected journal header: [" + a0 + ", " + a02 + ", " + a04 + ", " + a05 + ']');
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    private final void readJournalLine(String str) throws IOException {
        int T;
        int T2;
        String str2;
        boolean C;
        boolean C2;
        boolean C3;
        List<String> p0;
        boolean C4;
        T = StringsKt__StringsKt.m1454T(str, ' ', 0, false, 6, null);
        if (T != -1) {
            int i = T + 1;
            T2 = StringsKt__StringsKt.m1454T(str, ' ', i, false, 4, null);
            if (T2 == -1) {
                if (str != null) {
                    String substring = str.substring(i);
                    Intrinsics.m1831d(substring, "(this as java.lang.String).substring(startIndex)");
                    str2 = substring;
                    if (T == REMOVE.length()) {
                        str2 = substring;
                        C4 = StringsKt__StringsJVMKt.m1491C(str, REMOVE, false, 2, null);
                        if (C4) {
                            this.lruEntries.remove(substring);
                            return;
                        }
                    }
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                }
            } else if (str != null) {
                str2 = str.substring(i, T2);
                Intrinsics.m1831d(str2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            } else {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            Entry entry = this.lruEntries.get(str2);
            Entry entry2 = entry;
            if (entry == null) {
                entry2 = new Entry(this, str2);
                this.lruEntries.put(str2, entry2);
            }
            if (T2 != -1 && T == CLEAN.length()) {
                C3 = StringsKt__StringsJVMKt.m1491C(str, CLEAN, false, 2, null);
                if (C3) {
                    if (str != null) {
                        String substring2 = str.substring(T2 + 1);
                        Intrinsics.m1831d(substring2, "(this as java.lang.String).substring(startIndex)");
                        p0 = StringsKt__StringsKt.m1432p0(substring2, new char[]{' '}, false, 0, 6, null);
                        entry2.setReadable$okhttp(true);
                        entry2.setCurrentEditor$okhttp(null);
                        entry2.setLengths$okhttp(p0);
                        return;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                }
            }
            if (T2 == -1 && T == DIRTY.length()) {
                C2 = StringsKt__StringsJVMKt.m1491C(str, DIRTY, false, 2, null);
                if (C2) {
                    entry2.setCurrentEditor$okhttp(new Editor(this, entry2));
                    return;
                }
            }
            if (T2 == -1 && T == READ.length()) {
                C = StringsKt__StringsJVMKt.m1491C(str, READ, false, 2, null);
                if (C) {
                    return;
                }
            }
            throw new IOException("unexpected journal line: " + str);
        }
        throw new IOException("unexpected journal line: " + str);
    }

    private final boolean removeOldestEntry() {
        for (Entry toEvict : this.lruEntries.values()) {
            if (!toEvict.getZombie$okhttp()) {
                Intrinsics.m1831d(toEvict, "toEvict");
                removeEntry$okhttp(toEvict);
                return true;
            }
        }
        return false;
    }

    private final void validateKey(String str) {
        if (!LEGAL_KEY_PATTERN.m1553b(str)) {
            throw new IllegalArgumentException(("keys must match regex [a-z0-9_-]{1,120}: \"" + str + '\"').toString());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Entry[] entryArr;
        Editor currentEditor$okhttp;
        synchronized (this) {
            if (this.initialized && !this.closed) {
                Collection<Entry> values = this.lruEntries.values();
                Intrinsics.m1831d(values, "lruEntries.values");
                Object[] array = values.toArray(new Entry[0]);
                if (array != null) {
                    for (Entry entry : (Entry[]) array) {
                        if (!(entry.getCurrentEditor$okhttp() == null || (currentEditor$okhttp = entry.getCurrentEditor$okhttp()) == null)) {
                            currentEditor$okhttp.detach$okhttp();
                        }
                    }
                    trimToSize();
                    BufferedSink bufferedSink = this.journalWriter;
                    Intrinsics.m1832c(bufferedSink);
                    bufferedSink.close();
                    this.journalWriter = null;
                    this.closed = true;
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            this.closed = true;
        }
    }

    public final void completeEdit$okhttp(@NotNull Editor editor, boolean z) throws IOException {
        synchronized (this) {
            Intrinsics.m1830e(editor, "editor");
            Entry entry$okhttp = editor.getEntry$okhttp();
            if (Intrinsics.m1834a(entry$okhttp.getCurrentEditor$okhttp(), editor)) {
                if (z && !entry$okhttp.getReadable$okhttp()) {
                    int i = this.valueCount;
                    for (int i2 = 0; i2 < i; i2++) {
                        boolean[] written$okhttp = editor.getWritten$okhttp();
                        Intrinsics.m1832c(written$okhttp);
                        if (!written$okhttp[i2]) {
                            editor.abort();
                            throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
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
                BufferedSink bufferedSink = this.journalWriter;
                Intrinsics.m1832c(bufferedSink);
                if (entry$okhttp.getReadable$okhttp() || z) {
                    entry$okhttp.setReadable$okhttp(true);
                    bufferedSink.mo98M(CLEAN).mo100A(32);
                    bufferedSink.mo98M(entry$okhttp.getKey$okhttp());
                    entry$okhttp.writeLengths$okhttp(bufferedSink);
                    bufferedSink.mo100A(10);
                    if (z) {
                        long j2 = this.nextSequenceNumber;
                        this.nextSequenceNumber = 1 + j2;
                        entry$okhttp.setSequenceNumber$okhttp(j2);
                    }
                } else {
                    this.lruEntries.remove(entry$okhttp.getKey$okhttp());
                    bufferedSink.mo98M(REMOVE).mo100A(32);
                    bufferedSink.mo98M(entry$okhttp.getKey$okhttp());
                    bufferedSink.mo100A(10);
                }
                bufferedSink.flush();
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

    @JvmOverloads
    @Nullable
    public final Editor edit(@NotNull String str) throws IOException {
        return edit$default(this, str, 0L, 2, null);
    }

    @JvmOverloads
    @Nullable
    public final Editor edit(@NotNull String key, long j) throws IOException {
        synchronized (this) {
            Intrinsics.m1830e(key, "key");
            initialize();
            checkNotClosed();
            validateKey(key);
            Entry entry = this.lruEntries.get(key);
            if (j != ANY_SEQUENCE_NUMBER && (entry == null || entry.getSequenceNumber$okhttp() != j)) {
                return null;
            }
            if ((entry != null ? entry.getCurrentEditor$okhttp() : null) != null) {
                return null;
            }
            if (entry != null && entry.getLockingSourceCount$okhttp() != 0) {
                return null;
            }
            if (!this.mostRecentTrimFailed && !this.mostRecentRebuildFailed) {
                BufferedSink bufferedSink = this.journalWriter;
                Intrinsics.m1832c(bufferedSink);
                bufferedSink.mo98M(DIRTY).mo100A(32).mo98M(key).mo100A(10);
                bufferedSink.flush();
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
    }

    public final void evictAll() throws IOException {
        Entry[] entryArr;
        synchronized (this) {
            initialize();
            Collection<Entry> values = this.lruEntries.values();
            Intrinsics.m1831d(values, "lruEntries.values");
            Object[] array = values.toArray(new Entry[0]);
            if (array != null) {
                for (Entry entry : (Entry[]) array) {
                    Intrinsics.m1831d(entry, "entry");
                    removeEntry$okhttp(entry);
                }
                this.mostRecentTrimFailed = false;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
        }
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        synchronized (this) {
            if (this.initialized) {
                checkNotClosed();
                trimToSize();
                BufferedSink bufferedSink = this.journalWriter;
                Intrinsics.m1832c(bufferedSink);
                bufferedSink.flush();
            }
        }
    }

    @Nullable
    public final Snapshot get(@NotNull String key) throws IOException {
        synchronized (this) {
            Intrinsics.m1830e(key, "key");
            initialize();
            checkNotClosed();
            validateKey(key);
            Entry entry = this.lruEntries.get(key);
            if (entry == null) {
                return null;
            }
            Intrinsics.m1831d(entry, "lruEntries[key] ?: return null");
            Snapshot snapshot$okhttp = entry.snapshot$okhttp();
            if (snapshot$okhttp == null) {
                return null;
            }
            this.redundantOpCount++;
            BufferedSink bufferedSink = this.journalWriter;
            Intrinsics.m1832c(bufferedSink);
            bufferedSink.mo98M(READ).mo100A(32).mo98M(key).mo100A(10);
            if (journalRebuildRequired()) {
                TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
            }
            return snapshot$okhttp;
        }
    }

    public final boolean getClosed$okhttp() {
        return this.closed;
    }

    @NotNull
    public final File getDirectory() {
        return this.directory;
    }

    @NotNull
    public final FileSystem getFileSystem$okhttp() {
        return this.fileSystem;
    }

    @NotNull
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
                StringBuilder sb = new StringBuilder();
                sb.append("Thread ");
                Thread currentThread = Thread.currentThread();
                Intrinsics.m1831d(currentThread, "Thread.currentThread()");
                sb.append(currentThread.getName());
                sb.append(" MUST hold lock on ");
                sb.append(this);
                throw new AssertionError(sb.toString());
            }
            if (!this.initialized) {
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
            BufferedSink bufferedSink = this.journalWriter;
            if (bufferedSink != null) {
                bufferedSink.close();
            }
            BufferedSink c = Okio.m144c(this.fileSystem.sink(this.journalFileTmp));
            c.mo98M(MAGIC).mo100A(10);
            c.mo98M(VERSION_1).mo100A(10);
            c.mo90q0(this.appVersion).mo100A(10);
            c.mo90q0(this.valueCount).mo100A(10);
            c.mo100A(10);
            for (Entry entry : this.lruEntries.values()) {
                if (entry.getCurrentEditor$okhttp() != null) {
                    c.mo98M(DIRTY).mo100A(32);
                    c.mo98M(entry.getKey$okhttp());
                    c.mo100A(10);
                } else {
                    c.mo98M(CLEAN).mo100A(32);
                    c.mo98M(entry.getKey$okhttp());
                    entry.writeLengths$okhttp(c);
                    c.mo100A(10);
                }
            }
            Unit unit = Unit.f20447a;
            CloseableKt.m1887a(c, null);
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

    public final boolean remove(@NotNull String key) throws IOException {
        synchronized (this) {
            Intrinsics.m1830e(key, "key");
            initialize();
            checkNotClosed();
            validateKey(key);
            Entry entry = this.lruEntries.get(key);
            if (entry == null) {
                return false;
            }
            Intrinsics.m1831d(entry, "lruEntries[key] ?: return false");
            boolean removeEntry$okhttp = removeEntry$okhttp(entry);
            if (removeEntry$okhttp && this.size <= this.maxSize) {
                this.mostRecentTrimFailed = false;
            }
            return removeEntry$okhttp;
        }
    }

    public final boolean removeEntry$okhttp(@NotNull Entry entry) throws IOException {
        BufferedSink bufferedSink;
        Intrinsics.m1830e(entry, "entry");
        if (!this.civilizedFileSystem) {
            if (entry.getLockingSourceCount$okhttp() > 0 && (bufferedSink = this.journalWriter) != null) {
                bufferedSink.mo98M(DIRTY);
                bufferedSink.mo100A(32);
                bufferedSink.mo98M(entry.getKey$okhttp());
                bufferedSink.mo100A(10);
                bufferedSink.flush();
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
        BufferedSink bufferedSink2 = this.journalWriter;
        if (bufferedSink2 != null) {
            bufferedSink2.mo98M(REMOVE);
            bufferedSink2.mo100A(32);
            bufferedSink2.mo98M(entry.getKey$okhttp());
            bufferedSink2.mo100A(10);
        }
        this.lruEntries.remove(entry.getKey$okhttp());
        if (!journalRebuildRequired()) {
            return true;
        }
        TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
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

    @NotNull
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
