package p011aa;

import android.support.p012v4.media.C0082b;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* renamed from: aa.r */
/* loaded from: classes2-dex2jar.jar:aa/r.class */
public final class C0067r implements AbstractC0054g {

    /* renamed from: a */
    public final C0053f f144a = new C0053f();

    /* renamed from: b */
    public final AbstractC0073x f145b;

    /* renamed from: c */
    public boolean f146c;

    public C0067r(AbstractC0073x abstractC0073x) {
        Objects.requireNonNull(abstractC0073x, "sink == null");
        this.f145b = abstractC0073x;
    }

    @Override // p011aa.AbstractC0073x
    /* renamed from: E */
    public void mo613E(C0053f c0053f, long j) throws IOException {
        if (!this.f146c) {
            this.f144a.mo613E(c0053f, j);
            mo8822F();
            return;
        }
        throw new IllegalStateException("closed");
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // p011aa.AbstractC0054g
    /* renamed from: F */
    public AbstractC0054g mo8822F() throws IOException {
        char c;
        int i;
        if (!this.f146c) {
            C0053f c0053f = this.f144a;
            ?? r0 = c0053f.f120b;
            if (r0 == 0) {
                c = 0;
            } else {
                C0070u c0070u = c0053f.f119a.f157g;
                c = r0;
                if (c0070u.f153c < 8192) {
                    c = r0;
                    if (c0070u.f155e) {
                        c = r0 - (i - c0070u.f152b);
                    }
                }
            }
            if (c > 0) {
                this.f145b.mo613E(c0053f, c);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p011aa.AbstractC0054g
    /* renamed from: R */
    public AbstractC0054g mo8821R(String str) throws IOException {
        if (!this.f146c) {
            this.f144a.m8848d0(str);
            mo8822F();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p011aa.AbstractC0054g
    /* renamed from: S */
    public AbstractC0054g mo8820S(long j) throws IOException {
        if (!this.f146c) {
            this.f144a.mo8820S(j);
            mo8822F();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p011aa.AbstractC0054g
    /* renamed from: a */
    public C0053f mo8807a() {
        return this.f144a;
    }

    @Override // p011aa.AbstractC0073x
    /* renamed from: b */
    public C0075z mo612b() {
        return this.f145b.mo612b();
    }

    @Override // p011aa.AbstractC0073x, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Throwable th;
        Throwable th2;
        if (this.f146c) {
            return;
        }
        try {
            C0053f c0053f = this.f144a;
            long j = c0053f.f120b;
            th = null;
            if (j > 0) {
                this.f145b.mo613E(c0053f, j);
                th = null;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        try {
            this.f145b.close();
            th2 = th;
        } catch (Throwable th4) {
            th2 = th;
            if (th == null) {
                th2 = th4;
            }
        }
        this.f146c = true;
        if (th2 == null) {
            return;
        }
        Charset charset = C0047a0.f107a;
        throw th2;
    }

    /* renamed from: d */
    public AbstractC0054g m8819d(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f146c) {
            this.f144a.m8856U(bArr, i, i2);
            mo8822F();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p011aa.AbstractC0054g, p011aa.AbstractC0073x, java.io.Flushable
    public void flush() throws IOException {
        if (!this.f146c) {
            C0053f c0053f = this.f144a;
            long j = c0053f.f120b;
            if (j > 0) {
                this.f145b.mo613E(c0053f, j);
            }
            this.f145b.flush();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p011aa.AbstractC0054g
    /* renamed from: g */
    public AbstractC0054g mo8818g(long j) throws IOException {
        if (!this.f146c) {
            this.f144a.mo8818g(j);
            return mo8822F();
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f146c;
    }

    @Override // p011aa.AbstractC0054g
    /* renamed from: m */
    public AbstractC0054g mo8817m(int i) throws IOException {
        if (!this.f146c) {
            this.f144a.m8850c0(i);
            mo8822F();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p011aa.AbstractC0054g
    /* renamed from: q */
    public AbstractC0054g mo8816q(int i) throws IOException {
        if (!this.f146c) {
            this.f144a.m8851b0(i);
            return mo8822F();
        }
        throw new IllegalStateException("closed");
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("buffer(");
        m8752j.append(this.f145b);
        m8752j.append(")");
        return m8752j.toString();
    }

    @Override // p011aa.AbstractC0054g
    /* renamed from: w */
    public AbstractC0054g mo8815w(int i) throws IOException {
        if (!this.f146c) {
            this.f144a.m8854Y(i);
            mo8822F();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (!this.f146c) {
            int write = this.f144a.write(byteBuffer);
            mo8822F();
            return write;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p011aa.AbstractC0054g
    /* renamed from: z */
    public AbstractC0054g mo8814z(byte[] bArr) throws IOException {
        if (!this.f146c) {
            this.f144a.m8857P(bArr);
            mo8822F();
            return this;
        }
        throw new IllegalStateException("closed");
    }
}
