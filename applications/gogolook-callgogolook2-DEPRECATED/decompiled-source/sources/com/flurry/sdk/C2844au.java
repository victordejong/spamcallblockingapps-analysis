package com.flurry.sdk;

import android.os.FileObserver;
import com.flurry.sdk.C2818am;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* renamed from: com.flurry.sdk.au */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/au.class */
public class C2844au {

    /* renamed from: a */
    public static final String f4078a = "au";

    /* renamed from: b */
    public final String f4079b;

    /* renamed from: c */
    public final long f4080c;

    /* renamed from: d */
    public final boolean f4081d;

    /* renamed from: e */
    public FileObserver f4082e;

    /* renamed from: f */
    public C2818am f4083f;

    /* renamed from: com.flurry.sdk.au$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/au$a.class */
    public static final class C2847a extends BufferedOutputStream {

        /* renamed from: a */
        public boolean f4086a;

        public C2847a(OutputStream outputStream) {
            super(outputStream);
            this.f4086a = false;
        }

        public /* synthetic */ C2847a(OutputStream outputStream, byte b) {
            this(outputStream);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            try {
                super.close();
            } catch (IOException e) {
                this.f4086a = true;
                throw e;
            }
        }

        @Override // java.io.BufferedOutputStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
        public final void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e) {
                this.f4086a = true;
                throw e;
            }
        }

        @Override // java.io.BufferedOutputStream, java.io.FilterOutputStream, java.io.OutputStream
        public final void write(int i) throws IOException {
            try {
                super.write(i);
            } catch (IOException e) {
                this.f4086a = true;
                throw e;
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public final void write(byte[] bArr) throws IOException {
            try {
                super.write(bArr);
            } catch (IOException e) {
                this.f4086a = true;
                throw e;
            }
        }

        @Override // java.io.BufferedOutputStream, java.io.FilterOutputStream, java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) throws IOException {
            try {
                super.write(bArr, i, i2);
            } catch (IOException e) {
                this.f4086a = true;
                throw e;
            }
        }
    }

    /* renamed from: com.flurry.sdk.au$b */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/au$b.class */
    public final class C2848b implements Closeable {

        /* renamed from: a */
        public final BufferedInputStream f4087a;

        /* renamed from: c */
        public final C2818am.C2824c f4088c;

        /* renamed from: d */
        public final InputStream f4089d;

        /* renamed from: e */
        public final GZIPInputStream f4090e;

        /* renamed from: f */
        public boolean f4091f;

        public C2848b(C2844au auVar, C2818am.C2824c cVar, boolean z) throws IOException {
            if (cVar != null) {
                this.f4088c = cVar;
                this.f4089d = this.f4088c.f4034a[0];
                InputStream inputStream = this.f4089d;
                if (inputStream == null) {
                    throw new IOException("Snapshot inputstream is null");
                } else if (z) {
                    this.f4090e = new GZIPInputStream(inputStream);
                    GZIPInputStream gZIPInputStream = this.f4090e;
                    if (gZIPInputStream != null) {
                        this.f4087a = new BufferedInputStream(gZIPInputStream);
                        return;
                    }
                    throw new IOException("Gzip inputstream is null");
                } else {
                    this.f4090e = null;
                    this.f4087a = new BufferedInputStream(inputStream);
                }
            } else {
                throw new IllegalArgumentException("Snapshot cannot be null");
            }
        }

        public /* synthetic */ C2848b(C2844au auVar, C2818am.C2824c cVar, boolean z, byte b) throws IOException {
            this(auVar, cVar, z);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (!this.f4091f) {
                this.f4091f = true;
                C3445la.m32465a((Closeable) this.f4087a);
                C3445la.m32465a((Closeable) this.f4090e);
                C3445la.m32465a((Closeable) this.f4089d);
                C3445la.m32465a(this.f4088c);
            }
        }

        public final void finalize() throws Throwable {
            super.finalize();
            close();
        }
    }

    /* renamed from: com.flurry.sdk.au$c */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/au$c.class */
    public final class C2849c implements Closeable {

        /* renamed from: a */
        public final C2847a f4092a;

        /* renamed from: c */
        public final C2818am.C2821a f4094c;

        /* renamed from: d */
        public final OutputStream f4095d;

        /* renamed from: e */
        public final GZIPOutputStream f4096e;

        /* renamed from: f */
        public boolean f4097f;

        public C2849c(C2818am.C2821a aVar, boolean z) throws IOException {
            if (aVar != null) {
                this.f4094c = aVar;
                this.f4095d = this.f4094c.m33594a();
                OutputStream outputStream = this.f4095d;
                if (outputStream == null) {
                    throw new IOException("Editor outputstream is null");
                } else if (z) {
                    this.f4096e = new GZIPOutputStream(outputStream);
                    GZIPOutputStream gZIPOutputStream = this.f4096e;
                    if (gZIPOutputStream != null) {
                        this.f4092a = new C2847a(gZIPOutputStream, (byte) 0);
                        return;
                    }
                    throw new IOException("Gzip outputstream is null");
                } else {
                    this.f4096e = null;
                    this.f4092a = new C2847a(outputStream, (byte) 0);
                }
            } else {
                throw new IllegalArgumentException("Editor cannot be null");
            }
        }

        public /* synthetic */ C2849c(C2844au auVar, C2818am.C2821a aVar, boolean z, byte b) throws IOException {
            this(aVar, z);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (!this.f4097f) {
                this.f4097f = true;
                C3445la.m32465a(this.f4092a);
                C3445la.m32465a(this.f4096e);
                C3445la.m32465a(this.f4095d);
                if (this.f4094c != null) {
                    C2847a aVar = this.f4092a;
                    try {
                        if (aVar == null ? true : aVar.f4086a) {
                            this.f4094c.m33593b();
                            return;
                        }
                        C2818am.C2821a aVar2 = this.f4094c;
                        if (aVar2.f4024c) {
                            C2818am.this.m33617a(aVar2, false);
                            C2818am.this.m33611a(aVar2.f4022a.f4028a);
                        } else {
                            C2818am.this.m33617a(aVar2, true);
                        }
                        aVar2.f4025d = true;
                    } catch (IOException e) {
                        String str = C2844au.f4078a;
                        C3356jq.m32614a(3, str, "Exception closing editor for cache: " + C2844au.this.f4079b, e);
                    }
                }
            }
        }

        public final void finalize() throws Throwable {
            super.finalize();
            close();
        }
    }

    public C2844au(String str, long j) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("The cache must have a name");
        }
        this.f4079b = str;
        this.f4080c = j;
        this.f4081d = false;
    }

    /* renamed from: a */
    public final C2848b m33552a(String str) {
        C2848b bVar;
        C2818am amVar = this.f4083f;
        if (amVar == null || str == null) {
            return null;
        }
        try {
            C2818am.C2824c b = amVar.m33608b(C3012dz.m33301c(str));
            bVar = null;
            if (b != null) {
                bVar = new C2848b(this, b, this.f4081d, (byte) 0);
            }
        } catch (IOException e) {
            C3356jq.m32614a(3, f4078a, "Exception during getReader for cache: " + this.f4079b + " key: " + str, e);
            C3445la.m32465a((Closeable) null);
            bVar = null;
        }
        return bVar;
    }

    /* renamed from: a */
    public final void m33554a() {
        try {
            File file = new File(C3012dz.m33304a(this.f4079b), "canary");
            if (!C3443kz.m32479a(file) || (!file.exists() && !file.createNewFile())) {
                throw new IOException("Could not create canary file.");
            }
            this.f4082e = new FileObserver(file.getAbsolutePath()) { // from class: com.flurry.sdk.au.1
                @Override // android.os.FileObserver
                public final void onEvent(int i, String str) {
                    if ((i & 2048) != 0 || (i & 1024) != 0) {
                        C3331jb.m32681a().f5681c.post(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.au.1.1
                            @Override // com.flurry.sdk.AbstractRunnableC3447lc
                            /* renamed from: a */
                            public final void mo32300a() {
                                if (C2844au.this.f4083f != null) {
                                    C2844au.this.m33551b();
                                    C2844au.this.m33554a();
                                }
                            }
                        });
                    }
                }
            };
            this.f4082e.startWatching();
            this.f4083f = C2818am.m33613a(C3012dz.m33304a(this.f4079b), this.f4080c);
        } catch (IOException e) {
            String str = f4078a;
            C3356jq.m32615a(3, str, "Could not open cache: " + this.f4079b);
        }
    }

    /* renamed from: b */
    public final C2849c m33549b(String str) {
        C2849c cVar;
        C2818am amVar = this.f4083f;
        if (amVar == null || str == null) {
            return null;
        }
        try {
            C2818am.C2821a c = amVar.m33605c(C3012dz.m33301c(str));
            cVar = null;
            if (c != null) {
                cVar = new C2849c(this, c, this.f4081d, (byte) 0);
            }
        } catch (IOException e) {
            C3356jq.m32614a(3, f4078a, "Exception during getWriter for cache: " + this.f4079b + " key: " + str, e);
            C3445la.m32465a((Closeable) null);
            cVar = null;
        }
        return cVar;
    }

    /* renamed from: b */
    public final void m33551b() {
        FileObserver fileObserver = this.f4082e;
        if (fileObserver != null) {
            fileObserver.stopWatching();
            this.f4082e = null;
        }
        C3445la.m32465a(this.f4083f);
    }

    /* renamed from: c */
    public final boolean m33547c(String str) {
        C2818am amVar = this.f4083f;
        boolean z = false;
        if (amVar == null || str == null) {
            return false;
        }
        try {
            z = amVar.m33611a(C3012dz.m33301c(str));
        } catch (IOException e) {
            String str2 = f4078a;
            C3356jq.m32614a(3, str2, "Exception during remove for cache: " + this.f4079b + " key: " + str, e);
        }
        return z;
    }

    /* renamed from: d */
    public final boolean m33546d(String str) {
        C2818am amVar = this.f4083f;
        r9 = false;
        boolean z = false;
        if (amVar == null || str == null) {
            return false;
        }
        try {
            try {
                C2818am.C2824c b = amVar.m33608b(C3012dz.m33301c(str));
                if (b != null) {
                    z = true;
                }
                C3445la.m32465a(b);
            } catch (IOException e) {
                String str2 = f4078a;
                C3356jq.m32614a(3, str2, "Exception during exists for cache: " + this.f4079b, e);
                C3445la.m32465a((Closeable) null);
            }
            return z;
        } catch (Throwable th) {
            C3445la.m32465a((Closeable) null);
            throw th;
        }
    }

    public void finalize() throws Throwable {
        super.finalize();
        m33551b();
    }
}
