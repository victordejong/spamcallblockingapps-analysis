package com.facebook.internal;

import com.facebook.internal.x;
import com.facebook.m;
import com.mopub.mobileads.VastIconXmlManager;
import io.objectbox.model.PropertyFlags;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.Date;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.v;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u000b\u0018�� )2\u00020\u0001:\b'()*+,-.B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0016\u001a\u00020\u0017J\u001f\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u00032\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u0087\u0002J\u0016\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0019J\u001c\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001a\u001a\u00020\u00032\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u0007J\b\u0010 \u001a\u00020\u0017H\u0002J\u0018\u0010!\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u000bH\u0002J\u0006\u0010#\u001a\u00020$J\b\u0010%\u001a\u00020\u0003H\u0016J\b\u0010&\u001a\u00020\u0017H\u0002R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\b0\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0011\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006/"}, d2 = {"Lcom/facebook/internal/FileLruCache;", "", "tag", "", "limits", "Lcom/facebook/internal/FileLruCache$Limits;", "(Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V", "condition", "Ljava/util/concurrent/locks/Condition;", "kotlin.jvm.PlatformType", "directory", "Ljava/io/File;", "isTrimInProgress", "", "isTrimPending", "lastClearCacheTime", "Ljava/util/concurrent/atomic/AtomicLong;", "location", "getLocation", "()Ljava/lang/String;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "clearCache", "", "get", "Ljava/io/InputStream;", "key", "contentTag", "interceptAndPut", "input", "openPutStream", "Ljava/io/OutputStream;", "postTrim", "renameToTargetAndTrim", "buffer", "sizeInBytesForTest", "", "toString", "trim", "BufferFile", "CloseCallbackOutputStream", "Companion", "CopyingInputStream", "Limits", "ModifiedFile", "StreamCloseCallback", "StreamHeader", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/r.class */
public final class r {
    private static final String j;

    /* renamed from: a  reason: collision with root package name */
    public final File f19977a;

    /* renamed from: b  reason: collision with root package name */
    public final AtomicLong f19978b = new AtomicLong(0);

    /* renamed from: d  reason: collision with root package name */
    private boolean f19979d;
    private boolean e;
    private final ReentrantLock f;
    private final Condition g;
    private final String h;
    private final d i;

    /* renamed from: c  reason: collision with root package name */
    public static final c f19976c = new c(null);
    private static final AtomicLong k = new AtomicLong();

    @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\bÂ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\u0006J\u0006\u0010\r\u001a\u00020\u0006J\u0010\u0010\u000e\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, d2 = {"Lcom/facebook/internal/FileLruCache$BufferFile;", "", "()V", "FILE_NAME_PREFIX", "", "filterExcludeBufferFiles", "Ljava/io/FilenameFilter;", "filterExcludeNonBufferFiles", "deleteAll", "", "root", "Ljava/io/File;", "excludeBufferFiles", "excludeNonBufferFiles", "newFile", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f19980a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final FilenameFilter f19981b = C0403a.f19983a;

        /* renamed from: c  reason: collision with root package name */
        private static final FilenameFilter f19982c = b.f19984a;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "dir", "Ljava/io/File;", "kotlin.jvm.PlatformType", "filename", "", "accept"}, k = 3, mv = {1, 4, 0})
        /* renamed from: com.facebook.internal.r$a$a  reason: collision with other inner class name */
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$a$a.class */
        static final class C0403a implements FilenameFilter {

            /* renamed from: a  reason: collision with root package name */
            public static final C0403a f19983a = new C0403a();

            C0403a() {
            }

            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String filename) {
                p.b(filename, "filename");
                return !kotlin.h.p.a(filename, "buffer", false);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "dir", "Ljava/io/File;", "kotlin.jvm.PlatformType", "filename", "", "accept"}, k = 3, mv = {1, 4, 0})
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$a$b.class */
        static final class b implements FilenameFilter {

            /* renamed from: a  reason: collision with root package name */
            public static final b f19984a = new b();

            b() {
            }

            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String filename) {
                p.b(filename, "filename");
                return kotlin.h.p.a(filename, "buffer", false);
            }
        }

        private a() {
        }

        public static FilenameFilter a() {
            return f19981b;
        }

        public static void a(File root) {
            p.d(root, "root");
            File[] listFiles = root.listFiles(f19982c);
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
        }

        public static File b(File file) {
            return new File(file, "buffer" + String.valueOf(r.k.incrementAndGet()));
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n��\n\u0002\u0010\b\n\u0002\b\u0003\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J \u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0011H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0001¢\u0006\b\n��\u001a\u0004\b\b\u0010\t¨\u0006\u0014"}, d2 = {"Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;", "Ljava/io/OutputStream;", "innerStream", "callback", "Lcom/facebook/internal/FileLruCache$StreamCloseCallback;", "(Ljava/io/OutputStream;Lcom/facebook/internal/FileLruCache$StreamCloseCallback;)V", "getCallback", "()Lcom/facebook/internal/FileLruCache$StreamCloseCallback;", "getInnerStream", "()Ljava/io/OutputStream;", EventConstants.CLOSE, "", "flush", "write", "buffer", "", VastIconXmlManager.OFFSET, "", "count", "oneByte", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$b.class */
    static final class b extends OutputStream {

        /* renamed from: a  reason: collision with root package name */
        private final OutputStream f19985a;

        /* renamed from: b  reason: collision with root package name */
        private final f f19986b;

        public b(OutputStream innerStream, f callback) {
            p.d(innerStream, "innerStream");
            p.d(callback, "callback");
            this.f19985a = innerStream;
            this.f19986b = callback;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            try {
                this.f19985a.close();
            } finally {
                this.f19986b.a();
            }
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public final void flush() throws IOException {
            this.f19985a.flush();
        }

        @Override // java.io.OutputStream
        public final void write(int i) throws IOException {
            this.f19985a.write(i);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] buffer) throws IOException {
            p.d(buffer, "buffer");
            this.f19985a.write(buffer);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] buffer, int i, int i2) throws IOException {
            p.d(buffer, "buffer");
            this.f19985a.write(buffer, i, i2);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0011\u0010\u0006\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, d2 = {"Lcom/facebook/internal/FileLruCache$Companion;", "", "()V", "HEADER_CACHEKEY_KEY", "", "HEADER_CACHE_CONTENT_TAG_KEY", "TAG", "getTAG", "()Ljava/lang/String;", "bufferIndex", "Ljava/util/concurrent/atomic/AtomicLong;", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$c.class */
    public static final class c {
        private c() {
        }

        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\t¨\u0006\r"}, d2 = {"Lcom/facebook/internal/FileLruCache$Limits;", "", "()V", "value", "", "byteCount", "getByteCount", "()I", "setByteCount", "(I)V", "fileCount", "getFileCount", "setFileCount", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        int f19987a = 1048576;

        /* renamed from: b  reason: collision with root package name */
        int f19988b = 1024;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0010��\n\u0002\b\u0003\b\u0002\u0018�� \u00122\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u0012B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0011\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020��H\u0096\u0002J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\r\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/facebook/internal/FileLruCache$ModifiedFile;", "", "file", "Ljava/io/File;", "(Ljava/io/File;)V", "getFile", "()Ljava/io/File;", "modified", "", "getModified", "()J", "compareTo", "", "another", "equals", "", "", "hashCode", "Companion", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$e.class */
    public static final class e implements Comparable<e> {

        /* renamed from: c  reason: collision with root package name */
        public static final a f19989c = new a(null);

        /* renamed from: a  reason: collision with root package name */
        final long f19990a;

        /* renamed from: b  reason: collision with root package name */
        final File f19991b;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/FileLruCache$ModifiedFile$Companion;", "", "()V", "HASH_MULTIPLIER", "", "HASH_SEED", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$e$a.class */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public e(File file) {
            p.d(file, "file");
            this.f19991b = file;
            this.f19990a = file.lastModified();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public int compareTo(e another) {
            p.d(another, "another");
            long j = this.f19990a;
            long j2 = another.f19990a;
            if (j < j2) {
                return -1;
            }
            if (j > j2) {
                return 1;
            }
            return this.f19991b.compareTo(another.f19991b);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof e) && compareTo((e) obj) == 0;
        }

        public final int hashCode() {
            return ((this.f19991b.hashCode() + 1073) * 37) + ((int) (this.f19990a % 2147483647L));
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\bb\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/facebook/internal/FileLruCache$StreamCloseCallback;", "", "onClose", "", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$f.class */
    interface f {
        void a();
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÂ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\r"}, d2 = {"Lcom/facebook/internal/FileLruCache$StreamHeader;", "", "()V", "HEADER_VERSION", "", "readHeader", "Lorg/json/JSONObject;", "stream", "Ljava/io/InputStream;", "writeHeader", "", "Ljava/io/OutputStream;", "header", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$g.class */
    static final class g {

        /* renamed from: a  reason: collision with root package name */
        public static final g f19992a = new g();

        private g() {
        }

        public static JSONObject a(InputStream stream) throws IOException {
            p.d(stream, "stream");
            if (stream.read() != 0) {
                return null;
            }
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < 3; i3++) {
                int read = stream.read();
                if (read == -1) {
                    x.a aVar = x.f20014a;
                    m mVar = m.CACHE;
                    c cVar = r.f19976c;
                    aVar.a(mVar, r.j, "readHeader: stream.read returned -1 while reading header size");
                    return null;
                }
                i2 = (i2 << 8) + (read & 255);
            }
            byte[] bArr = new byte[i2];
            while (i < i2) {
                int read2 = stream.read(bArr, i, i2 - i);
                if (read2 <= 0) {
                    x.a aVar2 = x.f20014a;
                    m mVar2 = m.CACHE;
                    c cVar2 = r.f19976c;
                    String str = r.j;
                    aVar2.a(mVar2, str, "readHeader: stream.read stopped at " + Integer.valueOf(i) + " when expected " + i2);
                    return null;
                }
                i += read2;
            }
            try {
                Object nextValue = new JSONTokener(new String(bArr, kotlin.h.d.f36719a)).nextValue();
                if (nextValue instanceof JSONObject) {
                    return (JSONObject) nextValue;
                }
                x.a aVar3 = x.f20014a;
                m mVar3 = m.CACHE;
                c cVar3 = r.f19976c;
                String str2 = r.j;
                aVar3.a(mVar3, str2, "readHeader: expected JSONObject, got " + nextValue.getClass().getCanonicalName());
                return null;
            } catch (JSONException e) {
                throw new IOException(e.getMessage());
            }
        }

        public static void a(OutputStream stream, JSONObject header) throws IOException {
            p.d(stream, "stream");
            p.d(header, "header");
            String jSONObject = header.toString();
            p.b(jSONObject, "header.toString()");
            Charset charset = kotlin.h.d.f36719a;
            Objects.requireNonNull(jSONObject, "null cannot be cast to non-null type java.lang.String");
            byte[] bytes = jSONObject.getBytes(charset);
            p.b(bytes, "(this as java.lang.String).getBytes(charset)");
            stream.write(0);
            stream.write((bytes.length >> 16) & 255);
            stream.write((bytes.length >> 8) & 255);
            stream.write((bytes.length >> 0) & 255);
            stream.write(bytes);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$h.class */
    public static final class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ File[] f19993a;

        public h(File[] fileArr) {
            this.f19993a = fileArr;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!com.facebook.internal.b.b.a.a(this)) {
                try {
                    if (!com.facebook.internal.b.b.a.a(this)) {
                        for (File file : this.f19993a) {
                            file.delete();
                        }
                    }
                } catch (Throwable th) {
                    com.facebook.internal.b.b.a.a(th, this);
                }
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"com/facebook/internal/FileLruCache$openPutStream$renameToTargetCallback$1", "Lcom/facebook/internal/FileLruCache$StreamCloseCallback;", "onClose", "", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$i.class */
    public static final class i implements f {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long f19995b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ File f19996c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f19997d;

        i(long j, File file, String str) {
            this.f19995b = j;
            this.f19996c = file;
            this.f19997d = str;
        }

        @Override // com.facebook.internal.r.f
        public final void a() {
            if (this.f19995b < r.this.f19978b.get()) {
                this.f19996c.delete();
            } else {
                r.a(r.this, this.f19997d, this.f19996c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, d2 = {"<anonymous>", "", "run", "com/facebook/internal/FileLruCache$postTrim$1$1"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$j.class */
    public static final class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!com.facebook.internal.b.b.a.a(this)) {
                try {
                    if (!com.facebook.internal.b.b.a.a(this)) {
                        r.b(r.this);
                    }
                } catch (Throwable th) {
                    com.facebook.internal.b.b.a.a(th, this);
                }
            }
        }
    }

    static {
        String simpleName = r.class.getSimpleName();
        p.b(simpleName, "FileLruCache::class.java.simpleName");
        j = simpleName;
    }

    public r(String tag, d limits) {
        p.d(tag, "tag");
        p.d(limits, "limits");
        this.h = tag;
        this.i = limits;
        File file = new File(com.facebook.g.s(), tag);
        this.f19977a = file;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f = reentrantLock;
        this.g = reentrantLock.newCondition();
        if (file.mkdirs() || file.isDirectory()) {
            a aVar = a.f19980a;
            a.a(file);
        }
    }

    public static final /* synthetic */ void a(r rVar, String str, File file) {
        if (!file.renameTo(new File(rVar.f19977a, ae.b(str)))) {
            file.delete();
        }
        ReentrantLock reentrantLock = rVar.f;
        reentrantLock.lock();
        try {
            if (!rVar.f19979d) {
                rVar.f19979d = true;
                com.facebook.g.f().execute(new j());
            }
            v vVar = v.f38654a;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void b(com.facebook.internal.r r5) {
        /*
            Method dump skipped, instructions count: 471
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.r.b(com.facebook.internal.r):void");
    }

    public final InputStream a(String key, String str) throws IOException {
        Throwable th;
        p.d(key, "key");
        File file = new File(this.f19977a, ae.b(key));
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), PropertyFlags.UNSIGNED);
            boolean z = false;
            try {
                g gVar = g.f19992a;
                JSONObject a2 = g.a(bufferedInputStream);
                if (a2 == null) {
                    bufferedInputStream.close();
                    return null;
                } else if (!p.a((Object) a2.optString("key"), (Object) key)) {
                    bufferedInputStream.close();
                    return null;
                } else if (!p.a((Object) null, (Object) a2.optString("tag", null))) {
                    bufferedInputStream.close();
                    return null;
                } else {
                    long time = new Date().getTime();
                    x.a aVar = x.f20014a;
                    m mVar = m.CACHE;
                    String str2 = j;
                    aVar.a(mVar, str2, "Setting lastModified to " + Long.valueOf(time) + " for " + file.getName());
                    file.setLastModified(time);
                    try {
                        return bufferedInputStream;
                    } catch (Throwable th2) {
                        th = th2;
                        z = true;
                        if (!z) {
                            bufferedInputStream.close();
                        }
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e2) {
            return null;
        }
    }

    public final OutputStream b(String key, String str) throws IOException {
        p.d(key, "key");
        a aVar = a.f19980a;
        File b2 = a.b(this.f19977a);
        b2.delete();
        if (b2.createNewFile()) {
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new b(new FileOutputStream(b2), new i(System.currentTimeMillis(), b2, key)), PropertyFlags.UNSIGNED);
                boolean z = false;
                boolean z2 = false;
                try {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("key", key);
                        if (!ae.a((String) null)) {
                            jSONObject.put("tag", (Object) null);
                        }
                        g gVar = g.f19992a;
                        g.a(bufferedOutputStream, jSONObject);
                        z = true;
                        z2 = true;
                        return bufferedOutputStream;
                    } catch (JSONException e2) {
                        x.f20014a.a(m.CACHE, 5, j, "Error creating JSON header for cache file: ".concat(String.valueOf(e2)));
                        throw new IOException(e2.getMessage());
                    }
                } catch (Throwable th) {
                    if (!z2) {
                        bufferedOutputStream.close();
                    }
                    throw th;
                }
            } catch (FileNotFoundException e3) {
                x.f20014a.a(m.CACHE, 5, j, "Error creating buffer output stream: ".concat(String.valueOf(e3)));
                throw new IOException(e3.getMessage());
            }
        } else {
            throw new IOException("Could not create file at " + b2.getAbsolutePath());
        }
    }

    public final String toString() {
        return "{FileLruCache: tag:" + this.h + " file:" + this.f19977a.getName() + "}";
    }
}
