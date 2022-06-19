package p000a;

import java.nio.ByteBuffer;
/* renamed from: a.m */
/* loaded from: classes-dex2jar.jar:a/m.class */
public final class C0018m implements AbstractC0006d {

    /* renamed from: a */
    public final C0005c f38a = new C0005c();

    /* renamed from: b */
    public final AbstractC0023r f39b;

    /* renamed from: c */
    boolean f40c;

    public C0018m(AbstractC0023r abstractC0023r) {
        if (abstractC0023r == null) {
            throw new NullPointerException("sink == null");
        }
        this.f39b = abstractC0023r;
    }

    @Override // p000a.AbstractC0023r
    /* renamed from: a */
    public C0025t mo408a() {
        return this.f39b.mo408a();
    }

    @Override // p000a.AbstractC0023r
    /* renamed from: a_ */
    public void mo406a_(C0005c c0005c, long j) {
        if (this.f40c) {
            throw new IllegalStateException("closed");
        }
        this.f38a.mo406a_(c0005c, j);
        mo22505t();
    }

    @Override // p000a.AbstractC0006d
    /* renamed from: b */
    public AbstractC0006d mo22514b(C0008f c0008f) {
        if (this.f40c) {
            throw new IllegalStateException("closed");
        }
        this.f38a.mo22514b(c0008f);
        return mo22505t();
    }

    @Override // p000a.AbstractC0006d
    /* renamed from: b */
    public AbstractC0006d mo22513b(String str) {
        if (this.f40c) {
            throw new IllegalStateException("closed");
        }
        this.f38a.mo22513b(str);
        return mo22505t();
    }

    @Override // p000a.AbstractC0006d, p000a.AbstractC0007e
    /* renamed from: c */
    public C0005c mo22495c() {
        return this.f38a;
    }

    @Override // p000a.AbstractC0006d
    /* renamed from: c */
    public AbstractC0006d mo22512c(byte[] bArr) {
        if (this.f40c) {
            throw new IllegalStateException("closed");
        }
        this.f38a.mo22512c(bArr);
        return mo22505t();
    }

    @Override // p000a.AbstractC0006d
    /* renamed from: c */
    public AbstractC0006d mo22511c(byte[] bArr, int i, int i2) {
        if (this.f40c) {
            throw new IllegalStateException("closed");
        }
        this.f38a.mo22511c(bArr, i, i2);
        return mo22505t();
    }

    @Override // p000a.AbstractC0023r, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Throwable th;
        if (this.f40c) {
            return;
        }
        Throwable th2 = null;
        try {
            if (this.f38a.f14b > 0) {
                this.f39b.mo406a_(this.f38a, this.f38a.f14b);
                th2 = null;
            }
        } catch (Throwable th3) {
            th2 = th3;
        }
        try {
            this.f39b.close();
            th = th2;
        } catch (Throwable th4) {
            th = th2;
            if (th2 == null) {
                th = th4;
            }
        }
        this.f40c = true;
        if (th == null) {
            return;
        }
        C0027u.m22449a(th);
    }

    @Override // p000a.AbstractC0006d, p000a.AbstractC0023r, java.io.Flushable
    public void flush() {
        if (this.f40c) {
            throw new IllegalStateException("closed");
        }
        if (this.f38a.f14b > 0) {
            this.f39b.mo406a_(this.f38a, this.f38a.f14b);
        }
        this.f39b.flush();
    }

    @Override // p000a.AbstractC0006d
    /* renamed from: g */
    public AbstractC0006d mo22510g(int i) {
        if (this.f40c) {
            throw new IllegalStateException("closed");
        }
        this.f38a.mo22510g(i);
        return mo22505t();
    }

    @Override // p000a.AbstractC0006d
    /* renamed from: h */
    public AbstractC0006d mo22509h(int i) {
        if (this.f40c) {
            throw new IllegalStateException("closed");
        }
        this.f38a.mo22509h(i);
        return mo22505t();
    }

    @Override // p000a.AbstractC0006d
    /* renamed from: i */
    public AbstractC0006d mo22508i(int i) {
        if (this.f40c) {
            throw new IllegalStateException("closed");
        }
        this.f38a.mo22508i(i);
        return mo22505t();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f40c;
    }

    @Override // p000a.AbstractC0006d
    /* renamed from: k */
    public AbstractC0006d mo22507k(long j) {
        if (this.f40c) {
            throw new IllegalStateException("closed");
        }
        this.f38a.mo22507k(j);
        return mo22505t();
    }

    @Override // p000a.AbstractC0006d
    /* renamed from: l */
    public AbstractC0006d mo22506l(long j) {
        if (this.f40c) {
            throw new IllegalStateException("closed");
        }
        this.f38a.mo22506l(j);
        return mo22505t();
    }

    @Override // p000a.AbstractC0006d
    /* renamed from: t */
    public AbstractC0006d mo22505t() {
        if (this.f40c) {
            throw new IllegalStateException("closed");
        }
        long m22552f = this.f38a.m22552f();
        if (m22552f > 0) {
            this.f39b.mo406a_(this.f38a, m22552f);
        }
        return this;
    }

    public String toString() {
        return "buffer(" + this.f39b + ")";
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (this.f40c) {
            throw new IllegalStateException("closed");
        }
        int write = this.f38a.write(byteBuffer);
        mo22505t();
        return write;
    }
}
