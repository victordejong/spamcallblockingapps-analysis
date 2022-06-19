package com.facebook.internal;

import com.facebook.C10181g;
import com.facebook.EnumC10396m;
import com.facebook.internal.C10336x;
import com.facebook.internal.p299b.p301b.C10249a;
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
import java.util.PriorityQueue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18405d;
import kotlin.p532h.C18425p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u000b\u0018�� )2\u00020\u0001:\b'()*+,-.B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0016\u001a\u00020\u0017J\u001f\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u00032\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u0087\u0002J\u0016\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0019J\u001c\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001a\u001a\u00020\u00032\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u0007J\b\u0010 \u001a\u00020\u0017H\u0002J\u0018\u0010!\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u000bH\u0002J\u0006\u0010#\u001a\u00020$J\b\u0010%\u001a\u00020\u0003H\u0016J\b\u0010&\u001a\u00020\u0017H\u0002R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\b0\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0011\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006/"}, m4298d2 = {"Lcom/facebook/internal/FileLruCache;", "", "tag", "", "limits", "Lcom/facebook/internal/FileLruCache$Limits;", "(Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V", "condition", "Ljava/util/concurrent/locks/Condition;", "kotlin.jvm.PlatformType", "directory", "Ljava/io/File;", "isTrimInProgress", "", "isTrimPending", "lastClearCacheTime", "Ljava/util/concurrent/atomic/AtomicLong;", "location", "getLocation", "()Ljava/lang/String;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "clearCache", "", "get", "Ljava/io/InputStream;", "key", "contentTag", "interceptAndPut", "input", "openPutStream", "Ljava/io/OutputStream;", "postTrim", "renameToTargetAndTrim", "buffer", "sizeInBytesForTest", "", "toString", "trim", "BufferFile", "CloseCallbackOutputStream", "Companion", "CopyingInputStream", "Limits", "ModifiedFile", "StreamCloseCallback", "StreamHeader", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.r */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/r.class */
public final class C10312r {

    /* renamed from: j */
    private static final String f33883j;

    /* renamed from: a */
    public final File f33885a;

    /* renamed from: b */
    public final AtomicLong f33886b = new AtomicLong(0);

    /* renamed from: d */
    private boolean f33887d;

    /* renamed from: e */
    private boolean f33888e;

    /* renamed from: f */
    private final ReentrantLock f33889f;

    /* renamed from: g */
    private final Condition f33890g;

    /* renamed from: h */
    private final String f33891h;

    /* renamed from: i */
    private final C10318d f33892i;

    /* renamed from: c */
    public static final C10317c f33882c = new C10317c(null);

    /* renamed from: k */
    private static final AtomicLong f33884k = new AtomicLong();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\bÂ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\u0006J\u0006\u0010\r\u001a\u00020\u0006J\u0010\u0010\u000e\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, m4298d2 = {"Lcom/facebook/internal/FileLruCache$BufferFile;", "", "()V", "FILE_NAME_PREFIX", "", "filterExcludeBufferFiles", "Ljava/io/FilenameFilter;", "filterExcludeNonBufferFiles", "deleteAll", "", "root", "Ljava/io/File;", "excludeBufferFiles", "excludeNonBufferFiles", "newFile", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.r$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$a.class */
    public static final class C10313a {

        /* renamed from: a */
        public static final C10313a f33893a = new C10313a();

        /* renamed from: b */
        private static final FilenameFilter f33894b = C10314a.f33896a;

        /* renamed from: c */
        private static final FilenameFilter f33895c = C10315b.f33897a;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n¢\u0006\u0002\b\u0007"}, m4298d2 = {"<anonymous>", "", "dir", "Ljava/io/File;", "kotlin.jvm.PlatformType", "filename", "", "accept"}, m4297k = 3, m4296mv = {1, 4, 0})
        /* renamed from: com.facebook.internal.r$a$a */
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$a$a.class */
        static final class C10314a implements FilenameFilter {

            /* renamed from: a */
            public static final C10314a f33896a = new C10314a();

            C10314a() {
            }

            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String filename) {
                C18524p.m3843b(filename, "filename");
                return !C18425p.m3957a(filename, "buffer", false);
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n¢\u0006\u0002\b\u0007"}, m4298d2 = {"<anonymous>", "", "dir", "Ljava/io/File;", "kotlin.jvm.PlatformType", "filename", "", "accept"}, m4297k = 3, m4296mv = {1, 4, 0})
        /* renamed from: com.facebook.internal.r$a$b */
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$a$b.class */
        static final class C10315b implements FilenameFilter {

            /* renamed from: a */
            public static final C10315b f33897a = new C10315b();

            C10315b() {
            }

            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String filename) {
                C18524p.m3843b(filename, "filename");
                return C18425p.m3957a(filename, "buffer", false);
            }
        }

        private C10313a() {
        }

        /* renamed from: a */
        public static FilenameFilter m23008a() {
            return f33894b;
        }

        /* renamed from: a */
        public static void m23007a(File root) {
            C18524p.m3840d(root, "root");
            File[] listFiles = root.listFiles(f33895c);
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
        }

        /* renamed from: b */
        public static File m23006b(File file) {
            return new File(file, "buffer" + String.valueOf(C10312r.f33884k.incrementAndGet()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n��\n\u0002\u0010\b\n\u0002\b\u0003\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J \u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0011H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0001¢\u0006\b\n��\u001a\u0004\b\b\u0010\t¨\u0006\u0014"}, m4298d2 = {"Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;", "Ljava/io/OutputStream;", "innerStream", "callback", "Lcom/facebook/internal/FileLruCache$StreamCloseCallback;", "(Ljava/io/OutputStream;Lcom/facebook/internal/FileLruCache$StreamCloseCallback;)V", "getCallback", "()Lcom/facebook/internal/FileLruCache$StreamCloseCallback;", "getInnerStream", "()Ljava/io/OutputStream;", EventConstants.CLOSE, "", "flush", "write", "buffer", "", VastIconXmlManager.OFFSET, "", "count", "oneByte", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.r$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$b.class */
    public static final class C10316b extends OutputStream {

        /* renamed from: a */
        private final OutputStream f33898a;

        /* renamed from: b */
        private final AbstractC10321f f33899b;

        public C10316b(OutputStream innerStream, AbstractC10321f callback) {
            C18524p.m3840d(innerStream, "innerStream");
            C18524p.m3840d(callback, "callback");
            this.f33898a = innerStream;
            this.f33899b = callback;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            try {
                this.f33898a.close();
            } finally {
                this.f33899b.mo23002a();
            }
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public final void flush() throws IOException {
            this.f33898a.flush();
        }

        @Override // java.io.OutputStream
        public final void write(int i) throws IOException {
            this.f33898a.write(i);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] buffer) throws IOException {
            C18524p.m3840d(buffer, "buffer");
            this.f33898a.write(buffer);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] buffer, int i, int i2) throws IOException {
            C18524p.m3840d(buffer, "buffer");
            this.f33898a.write(buffer, i, i2);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0011\u0010\u0006\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m4298d2 = {"Lcom/facebook/internal/FileLruCache$Companion;", "", "()V", "HEADER_CACHEKEY_KEY", "", "HEADER_CACHE_CONTENT_TAG_KEY", "TAG", "getTAG", "()Ljava/lang/String;", "bufferIndex", "Ljava/util/concurrent/atomic/AtomicLong;", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.r$c */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$c.class */
    public static final class C10317c {
        private C10317c() {
        }

        public /* synthetic */ C10317c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\t¨\u0006\r"}, m4298d2 = {"Lcom/facebook/internal/FileLruCache$Limits;", "", "()V", "value", "", "byteCount", "getByteCount", "()I", "setByteCount", "(I)V", "fileCount", "getFileCount", "setFileCount", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.r$d */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$d.class */
    public static final class C10318d {

        /* renamed from: a */
        int f33900a = 1048576;

        /* renamed from: b */
        int f33901b = 1024;
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0010��\n\u0002\b\u0003\b\u0002\u0018�� \u00122\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u0012B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0011\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020��H\u0096\u0002J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\r\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, m4298d2 = {"Lcom/facebook/internal/FileLruCache$ModifiedFile;", "", "file", "Ljava/io/File;", "(Ljava/io/File;)V", "getFile", "()Ljava/io/File;", "modified", "", "getModified", "()J", "compareTo", "", "another", "equals", "", "", "hashCode", "Companion", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.r$e */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$e.class */
    public static final class C10319e implements Comparable<C10319e> {

        /* renamed from: c */
        public static final C10320a f33902c = new C10320a(null);

        /* renamed from: a */
        final long f33903a;

        /* renamed from: b */
        final File f33904b;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0006"}, m4298d2 = {"Lcom/facebook/internal/FileLruCache$ModifiedFile$Companion;", "", "()V", "HASH_MULTIPLIER", "", "HASH_SEED", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
        /* renamed from: com.facebook.internal.r$e$a */
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$e$a.class */
        public static final class C10320a {
            private C10320a() {
            }

            public /* synthetic */ C10320a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public C10319e(File file) {
            C18524p.m3840d(file, "file");
            this.f33904b = file;
            this.f33903a = file.lastModified();
        }

        /* renamed from: a */
        public int compareTo(C10319e another) {
            C18524p.m3840d(another, "another");
            long j = this.f33903a;
            long j2 = another.f33903a;
            if (j < j2) {
                return -1;
            }
            if (j <= j2) {
                return this.f33904b.compareTo(another.f33904b);
            }
            return 1;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof C10319e) && compareTo((C10319e) obj) == 0;
        }

        public final int hashCode() {
            return ((this.f33904b.hashCode() + 1073) * 37) + ((int) (this.f33903a % 2147483647L));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\bb\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, m4298d2 = {"Lcom/facebook/internal/FileLruCache$StreamCloseCallback;", "", "onClose", "", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.r$f */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$f.class */
    public interface AbstractC10321f {
        /* renamed from: a */
        void mo23002a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÂ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\r"}, m4298d2 = {"Lcom/facebook/internal/FileLruCache$StreamHeader;", "", "()V", "HEADER_VERSION", "", "readHeader", "Lorg/json/JSONObject;", "stream", "Ljava/io/InputStream;", "writeHeader", "", "Ljava/io/OutputStream;", "header", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.r$g */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$g.class */
    public static final class C10322g {

        /* renamed from: a */
        public static final C10322g f33905a = new C10322g();

        private C10322g() {
        }

        /* renamed from: a */
        public static JSONObject m23004a(InputStream stream) throws IOException {
            C18524p.m3840d(stream, "stream");
            if (stream.read() != 0) {
                return null;
            }
            int i = 0;
            for (int i2 = 0; i2 < 3; i2++) {
                int read = stream.read();
                if (read == -1) {
                    C10336x.C10337a c10337a = C10336x.f33929a;
                    EnumC10396m enumC10396m = EnumC10396m.CACHE;
                    C10317c c10317c = C10312r.f33882c;
                    c10337a.m22982a(enumC10396m, C10312r.f33883j, "readHeader: stream.read returned -1 while reading header size");
                    return null;
                }
                i = (i << 8) + (read & 255);
            }
            byte[] bArr = new byte[i];
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 >= i) {
                    try {
                        Object nextValue = new JSONTokener(new String(bArr, C18405d.f63516a)).nextValue();
                        if (nextValue instanceof JSONObject) {
                            return (JSONObject) nextValue;
                        }
                        C10336x.C10337a c10337a2 = C10336x.f33929a;
                        EnumC10396m enumC10396m2 = EnumC10396m.CACHE;
                        C10317c c10317c2 = C10312r.f33882c;
                        c10337a2.m22982a(enumC10396m2, C10312r.f33883j, "readHeader: expected JSONObject, got " + nextValue.getClass().getCanonicalName());
                        return null;
                    } catch (JSONException e) {
                        throw new IOException(e.getMessage());
                    }
                }
                int read2 = stream.read(bArr, i4, i - i4);
                if (read2 <= 0) {
                    C10336x.C10337a c10337a3 = C10336x.f33929a;
                    EnumC10396m enumC10396m3 = EnumC10396m.CACHE;
                    C10317c c10317c3 = C10312r.f33882c;
                    c10337a3.m22982a(enumC10396m3, C10312r.f33883j, "readHeader: stream.read stopped at " + Integer.valueOf(i4) + " when expected " + i);
                    return null;
                }
                i3 = i4 + read2;
            }
        }

        /* renamed from: a */
        public static void m23003a(OutputStream stream, JSONObject header) throws IOException {
            C18524p.m3840d(stream, "stream");
            C18524p.m3840d(header, "header");
            String jSONObject = header.toString();
            C18524p.m3843b(jSONObject, "header.toString()");
            Charset charset = C18405d.f63516a;
            Objects.requireNonNull(jSONObject, "null cannot be cast to non-null type java.lang.String");
            byte[] bytes = jSONObject.getBytes(charset);
            C18524p.m3843b(bytes, "(this as java.lang.String).getBytes(charset)");
            stream.write(0);
            stream.write((bytes.length >> 16) & 255);
            stream.write((bytes.length >> 8) & 255);
            stream.write((bytes.length >> 0) & 255);
            stream.write(bytes);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.r$h */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$h.class */
    public static final class RunnableC10323h implements Runnable {

        /* renamed from: a */
        final /* synthetic */ File[] f33906a;

        public RunnableC10323h(File[] fileArr) {
            this.f33906a = fileArr;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (C10249a.m23108a(this)) {
                return;
            }
            try {
                if (C10249a.m23108a(this)) {
                    return;
                }
                for (File file : this.f33906a) {
                    file.delete();
                }
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
            }
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, m4298d2 = {"com/facebook/internal/FileLruCache$openPutStream$renameToTargetCallback$1", "Lcom/facebook/internal/FileLruCache$StreamCloseCallback;", "onClose", "", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.r$i */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$i.class */
    public static final class C10324i implements AbstractC10321f {

        /* renamed from: b */
        final /* synthetic */ long f33908b;

        /* renamed from: c */
        final /* synthetic */ File f33909c;

        /* renamed from: d */
        final /* synthetic */ String f33910d;

        C10324i(long j, File file, String str) {
            C10312r.this = r5;
            this.f33908b = j;
            this.f33909c = file;
            this.f33910d = str;
        }

        @Override // com.facebook.internal.C10312r.AbstractC10321f
        /* renamed from: a */
        public final void mo23002a() {
            if (this.f33908b < C10312r.this.f33886b.get()) {
                this.f33909c.delete();
            } else {
                C10312r.m23013a(C10312r.this, this.f33910d, this.f33909c);
            }
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, m4298d2 = {"<anonymous>", "", "run", "com/facebook/internal/FileLruCache$postTrim$1$1"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.r$j */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/r$j.class */
    public static final class RunnableC10325j implements Runnable {
        RunnableC10325j() {
            C10312r.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (C10249a.m23108a(this)) {
                return;
            }
            try {
                if (C10249a.m23108a(this)) {
                    return;
                }
                C10312r.m23010b(C10312r.this);
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
            }
        }
    }

    static {
        String simpleName = C10312r.class.getSimpleName();
        C18524p.m3843b(simpleName, "FileLruCache::class.java.simpleName");
        f33883j = simpleName;
    }

    public C10312r(String tag, C10318d limits) {
        C18524p.m3840d(tag, "tag");
        C18524p.m3840d(limits, "limits");
        this.f33891h = tag;
        this.f33892i = limits;
        File file = new File(C10181g.m23280s(), tag);
        this.f33885a = file;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f33889f = reentrantLock;
        this.f33890g = reentrantLock.newCondition();
        if (file.mkdirs() || file.isDirectory()) {
            C10313a c10313a = C10313a.f33893a;
            C10313a.m23007a(file);
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ void m23013a(C10312r c10312r, String str, File file) {
        if (!file.renameTo(new File(c10312r.f33885a, C10213ae.m23209b(str)))) {
            file.delete();
        }
        ReentrantLock reentrantLock = c10312r.f33889f;
        reentrantLock.lock();
        try {
            if (!c10312r.f33887d) {
                c10312r.f33887d = true;
                C10181g.m23293f().execute(new RunnableC10325j());
            }
            C20128v c20128v = C20128v.f66529a;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    /* JADX WARN: Type inference failed for: r0v99, types: [long] */
    /* renamed from: b */
    public static final /* synthetic */ void m23010b(C10312r c10312r) {
        char c;
        C10319e c10319e;
        ReentrantLock reentrantLock = c10312r.f33889f;
        reentrantLock.lock();
        try {
            c10312r.f33887d = false;
            c10312r.f33888e = true;
            C20128v c20128v = C20128v.f66529a;
            reentrantLock.unlock();
            try {
                C10336x.f33929a.m22982a(EnumC10396m.CACHE, f33883j, "trim started");
                PriorityQueue priorityQueue = new PriorityQueue();
                File file = c10312r.f33885a;
                C10313a c10313a = C10313a.f33893a;
                File[] listFiles = file.listFiles(C10313a.m23008a());
                char c2 = 0;
                if (listFiles != null) {
                    int length = listFiles.length;
                    char c3 = 0;
                    int i = 0;
                    char c4 = 0;
                    while (true) {
                        c2 = c4;
                        c = c3;
                        if (i >= length) {
                            break;
                        }
                        File file2 = listFiles[i];
                        C18524p.m3843b(file2, "file");
                        priorityQueue.add(new C10319e(file2));
                        C10336x.f33929a.m22982a(EnumC10396m.CACHE, f33883j, "  trim considering time=" + Long.valueOf(c10319e.f33903a) + " name=" + c10319e.f33904b.getName());
                        c4 += file2.length();
                        c3++;
                        i++;
                    }
                } else {
                    c = 0;
                }
                while (true) {
                    if (c2 <= c10312r.f33892i.f33900a) {
                        if (c <= c10312r.f33892i.f33901b) {
                            c10312r.f33889f.lock();
                            try {
                                c10312r.f33888e = false;
                                c10312r.f33890g.signalAll();
                                C20128v c20128v2 = C20128v.f66529a;
                                return;
                            } finally {
                            }
                        }
                    }
                    File file3 = ((C10319e) priorityQueue.remove()).f33904b;
                    C10336x.f33929a.m22982a(EnumC10396m.CACHE, f33883j, "  trim removing " + file3.getName());
                    c2 -= file3.length();
                    c--;
                    file3.delete();
                }
            } catch (Throwable th) {
                c10312r.f33889f.lock();
                try {
                    c10312r.f33888e = false;
                    c10312r.f33890g.signalAll();
                    C20128v c20128v3 = C20128v.f66529a;
                    throw th;
                } finally {
                }
            }
        } finally {
        }
    }

    /* renamed from: a */
    public final InputStream m23012a(String key, String str) throws IOException {
        Throwable th;
        JSONObject m23004a;
        C18524p.m3840d(key, "key");
        File file = new File(this.f33885a, C10213ae.m23209b(key));
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), PropertyFlags.UNSIGNED);
            boolean z = false;
            try {
                C10322g c10322g = C10322g.f33905a;
                if (C10322g.m23004a(bufferedInputStream) == null) {
                    bufferedInputStream.close();
                    return null;
                } else if (!C18524p.m3850a((Object) m23004a.optString("key"), (Object) key)) {
                    bufferedInputStream.close();
                    return null;
                } else if (!C18524p.m3850a((Object) null, (Object) m23004a.optString("tag", null))) {
                    bufferedInputStream.close();
                    return null;
                } else {
                    long time = new Date().getTime();
                    C10336x.f33929a.m22982a(EnumC10396m.CACHE, f33883j, "Setting lastModified to " + Long.valueOf(time) + " for " + file.getName());
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
        } catch (IOException e) {
            return null;
        }
    }

    /* renamed from: b */
    public final OutputStream m23009b(String key, String str) throws IOException {
        C18524p.m3840d(key, "key");
        C10313a c10313a = C10313a.f33893a;
        File m23006b = C10313a.m23006b(this.f33885a);
        m23006b.delete();
        if (!m23006b.createNewFile()) {
            throw new IOException("Could not create file at " + m23006b.getAbsolutePath());
        }
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new C10316b(new FileOutputStream(m23006b), new C10324i(System.currentTimeMillis(), m23006b, key)), PropertyFlags.UNSIGNED);
            boolean z = false;
            boolean z2 = false;
            try {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("key", key);
                    if (!C10213ae.m23230a((String) null)) {
                        jSONObject.put("tag", (Object) null);
                    }
                    C10322g c10322g = C10322g.f33905a;
                    C10322g.m23003a(bufferedOutputStream, jSONObject);
                    z2 = true;
                    z = true;
                    return bufferedOutputStream;
                } catch (JSONException e) {
                    C10336x.f33929a.m22983a(EnumC10396m.CACHE, 5, f33883j, "Error creating JSON header for cache file: ".concat(String.valueOf(e)));
                    boolean z3 = z2;
                    boolean z4 = z2;
                    boolean z5 = z2;
                    throw new IOException(e.getMessage());
                }
            } catch (Throwable th) {
                if (!z) {
                    bufferedOutputStream.close();
                }
                throw th;
            }
        } catch (FileNotFoundException e2) {
            C10336x.f33929a.m22983a(EnumC10396m.CACHE, 5, f33883j, "Error creating buffer output stream: ".concat(String.valueOf(e2)));
            throw new IOException(e2.getMessage());
        }
    }

    public final String toString() {
        return "{FileLruCache: tag:" + this.f33891h + " file:" + this.f33885a.getName() + "}";
    }
}
