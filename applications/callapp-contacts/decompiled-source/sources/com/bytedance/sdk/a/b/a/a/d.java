package com.bytedance.sdk.a.b.a.a;

import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/a/d.class */
public final class d implements Closeable, Flushable {

    /* renamed from: a  reason: collision with root package name */
    static final Pattern f7842a = Pattern.compile("[a-z0-9_-]{1,120}");
    static final /* synthetic */ boolean j = true;

    /* renamed from: b  reason: collision with root package name */
    final com.bytedance.sdk.a.b.a.f.a f7843b;

    /* renamed from: c  reason: collision with root package name */
    final int f7844c;

    /* renamed from: d  reason: collision with root package name */
    com.bytedance.sdk.a.a.d f7845d;
    final LinkedHashMap<String, b> e;
    int f;
    boolean g;
    boolean h;
    boolean i;
    private long k;
    private long l;
    private long m;
    private final Executor n;
    private final Runnable o;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/a/d$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        final b f7846a;

        /* renamed from: b  reason: collision with root package name */
        final boolean[] f7847b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ d f7848c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f7849d;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x003c -> B:8:0x002d). Please submit an issue!!! */
        final void a() {
            if (this.f7846a.f == this) {
                for (int i = 0; i < this.f7848c.f7844c; i++) {
                    try {
                        this.f7848c.f7843b.a(this.f7846a.f7853d[i]);
                    } catch (IOException e) {
                    }
                }
                this.f7846a.f = null;
            }
        }

        public final void b() throws IOException {
            synchronized (this.f7848c) {
                if (!this.f7849d) {
                    if (this.f7846a.f == this) {
                        this.f7848c.a(this, false);
                    }
                    this.f7849d = true;
                } else {
                    throw new IllegalStateException();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/a/d$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        final String f7850a;

        /* renamed from: b  reason: collision with root package name */
        final long[] f7851b;

        /* renamed from: c  reason: collision with root package name */
        final File[] f7852c;

        /* renamed from: d  reason: collision with root package name */
        final File[] f7853d;
        boolean e;
        a f;
        long g;

        final void a(com.bytedance.sdk.a.a.d dVar) throws IOException {
            for (long j : this.f7851b) {
                dVar.i(32).l(j);
            }
        }
    }

    private void d() {
        synchronized (this) {
            if (b()) {
                throw new IllegalStateException("cache is closed");
            }
        }
    }

    final void a(a aVar, boolean z) throws IOException {
        synchronized (this) {
            b bVar = aVar.f7846a;
            if (bVar.f == aVar) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!bVar.e) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.f7844c) {
                                break;
                            } else if (!aVar.f7847b[i2]) {
                                aVar.b();
                                throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i2)));
                            } else if (!this.f7843b.b(bVar.f7853d[i2])) {
                                aVar.b();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.f7844c) {
                    File file = bVar.f7853d[i];
                    if (!z) {
                        this.f7843b.a(file);
                    } else if (this.f7843b.b(file)) {
                        File file2 = bVar.f7852c[i];
                        this.f7843b.a(file, file2);
                        long j2 = bVar.f7851b[i];
                        long c2 = this.f7843b.c(file2);
                        bVar.f7851b[i] = c2;
                        this.l = (this.l - j2) + c2;
                    }
                    i++;
                }
                this.f++;
                bVar.f = null;
                if (bVar.e || z) {
                    bVar.e = true;
                    this.f7845d.b("CLEAN").i(32);
                    this.f7845d.b(bVar.f7850a);
                    bVar.a(this.f7845d);
                    this.f7845d.i(10);
                    if (z) {
                        long j3 = this.m;
                        this.m = 1 + j3;
                        bVar.g = j3;
                    }
                } else {
                    this.e.remove(bVar.f7850a);
                    this.f7845d.b("REMOVE").i(32);
                    this.f7845d.b(bVar.f7850a);
                    this.f7845d.i(10);
                }
                this.f7845d.flush();
                if (this.l > this.k || a()) {
                    this.n.execute(this.o);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    final boolean a() {
        int i = this.f;
        return i >= 2000 && i >= this.e.size();
    }

    final boolean a(b bVar) throws IOException {
        if (bVar.f != null) {
            bVar.f.a();
        }
        for (int i = 0; i < this.f7844c; i++) {
            this.f7843b.a(bVar.f7852c[i]);
            this.l -= bVar.f7851b[i];
            bVar.f7851b[i] = 0;
        }
        this.f++;
        this.f7845d.b("REMOVE").i(32).b(bVar.f7850a).i(10);
        this.e.remove(bVar.f7850a);
        if (!a()) {
            return true;
        }
        this.n.execute(this.o);
        return true;
    }

    public final boolean b() {
        boolean z;
        synchronized (this) {
            z = this.h;
        }
        return z;
    }

    final void c() throws IOException {
        while (this.l > this.k) {
            a(this.e.values().iterator().next());
        }
        this.i = false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        b[] bVarArr;
        synchronized (this) {
            if (this.g && !this.h) {
                for (b bVar : (b[]) this.e.values().toArray(new b[this.e.size()])) {
                    if (bVar.f != null) {
                        bVar.f.b();
                    }
                }
                c();
                this.f7845d.close();
                this.f7845d = null;
                this.h = true;
                return;
            }
            this.h = true;
        }
    }

    @Override // java.io.Flushable
    public final void flush() throws IOException {
        synchronized (this) {
            if (this.g) {
                d();
                c();
                this.f7845d.flush();
            }
        }
    }
}
