package p000a;

import java.nio.ByteBuffer;
/* renamed from: a.m */
/* loaded from: classes-dex2jar.jar:a/m.class */
public final class C0019m implements AbstractC0007d {

    /* renamed from: a */
    public final C0005c f39a = new C0005c();

    /* renamed from: b */
    public final AbstractC0025r f40b;

    /* renamed from: c */
    boolean f41c;

    public C0019m(AbstractC0025r abstractC0025r) {
        if (abstractC0025r != null) {
            this.f40b = abstractC0025r;
            return;
        }
        throw new NullPointerException("sink == null");
    }

    @Override // p000a.AbstractC0025r
    /* renamed from: a */
    public C0027t mo2091a() {
        return this.f40b.mo2091a();
    }

    @Override // p000a.AbstractC0025r
    /* renamed from: a_ */
    public void mo2089a_(C0005c c0005c, long j) {
        if (!this.f41c) {
            this.f39a.mo2089a_(c0005c, j);
            mo8081u();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p000a.AbstractC0007d
    /* renamed from: b */
    public AbstractC0007d mo8090b(C0009f c0009f) {
        if (!this.f41c) {
            this.f39a.mo8090b(c0009f);
            return mo8081u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // p000a.AbstractC0007d
    /* renamed from: b */
    public AbstractC0007d mo8089b(String str) {
        if (!this.f41c) {
            this.f39a.mo8089b(str);
            return mo8081u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // p000a.AbstractC0007d, p000a.AbstractC0008e
    /* renamed from: c */
    public C0005c mo8072c() {
        return this.f39a;
    }

    @Override // p000a.AbstractC0007d
    /* renamed from: c */
    public AbstractC0007d mo8088c(byte[] bArr) {
        if (!this.f41c) {
            this.f39a.mo8088c(bArr);
            return mo8081u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // p000a.AbstractC0007d
    /* renamed from: c */
    public AbstractC0007d mo8087c(byte[] bArr, int i, int i2) {
        if (!this.f41c) {
            this.f39a.mo8087c(bArr, i, i2);
            return mo8081u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // p000a.AbstractC0025r, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Throwable th;
        if (this.f41c) {
            return;
        }
        Throwable th2 = null;
        try {
            if (this.f39a.f14b > 0) {
                this.f40b.mo2089a_(this.f39a, this.f39a.f14b);
                th2 = null;
            }
        } catch (Throwable th3) {
            th2 = th3;
        }
        try {
            this.f40b.close();
            th = th2;
        } catch (Throwable th4) {
            th = th2;
            if (th2 == null) {
                th = th4;
            }
        }
        this.f41c = true;
        if (th == null) {
            return;
        }
        C0029u.m8025a(th);
    }

    @Override // p000a.AbstractC0007d, p000a.AbstractC0025r, java.io.Flushable
    public void flush() {
        if (!this.f41c) {
            if (this.f39a.f14b > 0) {
                AbstractC0025r abstractC0025r = this.f40b;
                C0005c c0005c = this.f39a;
                abstractC0025r.mo2089a_(c0005c, c0005c.f14b);
            }
            this.f40b.flush();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p000a.AbstractC0007d
    /* renamed from: g */
    public AbstractC0007d mo8086g(int i) {
        if (!this.f41c) {
            this.f39a.mo8086g(i);
            return mo8081u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // p000a.AbstractC0007d
    /* renamed from: h */
    public AbstractC0007d mo8085h(int i) {
        if (!this.f41c) {
            this.f39a.mo8085h(i);
            return mo8081u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // p000a.AbstractC0007d
    /* renamed from: i */
    public AbstractC0007d mo8084i(int i) {
        if (!this.f41c) {
            this.f39a.mo8084i(i);
            return mo8081u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f41c;
    }

    @Override // p000a.AbstractC0007d
    /* renamed from: k */
    public AbstractC0007d mo8083k(long j) {
        if (!this.f41c) {
            this.f39a.mo8083k(j);
            return mo8081u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // p000a.AbstractC0007d
    /* renamed from: l */
    public AbstractC0007d mo8082l(long j) {
        if (!this.f41c) {
            this.f39a.mo8082l(j);
            return mo8081u();
        }
        throw new IllegalStateException("closed");
    }

    public String toString() {
        return "buffer(" + this.f40b + ")";
    }

    @Override // p000a.AbstractC0007d
    /* renamed from: u */
    public AbstractC0007d mo8081u() {
        if (!this.f41c) {
            long m8125g = this.f39a.m8125g();
            if (m8125g > 0) {
                this.f40b.mo2089a_(this.f39a, m8125g);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (!this.f41c) {
            int write = this.f39a.write(byteBuffer);
            mo8081u();
            return write;
        }
        throw new IllegalStateException("closed");
    }
}
