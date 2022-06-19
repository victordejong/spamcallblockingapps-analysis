package com.bytedance.sdk.p127a.p128a;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Objects;
/* renamed from: com.bytedance.sdk.a.a.m */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/m.class */
public final class C3983m implements AbstractC3971d {

    /* renamed from: a */
    public final C3969c f14444a = new C3969c();

    /* renamed from: b */
    public final AbstractC3989r f14445b;

    /* renamed from: c */
    boolean f14446c;

    public C3983m(AbstractC3989r abstractC3989r) {
        Objects.requireNonNull(abstractC3989r, "sink == null");
        this.f14445b = abstractC3989r;
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r
    /* renamed from: a */
    public final C3991t mo36723a() {
        return this.f14445b.mo36723a();
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r
    /* renamed from: a_ */
    public final void mo36721a_(C3969c c3969c, long j) throws IOException {
        if (!this.f14446c) {
            this.f14444a.mo36721a_(c3969c, j);
            mo37069u();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3971d
    /* renamed from: b */
    public final AbstractC3971d mo37077b(String str) throws IOException {
        if (!this.f14446c) {
            this.f14444a.mo37077b(str);
            return mo37069u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3971d, com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: c */
    public final C3969c mo37060c() {
        return this.f14444a;
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3971d
    /* renamed from: c */
    public final AbstractC3971d mo37076c(byte[] bArr) throws IOException {
        if (!this.f14446c) {
            this.f14444a.mo37076c(bArr);
            return mo37069u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3971d
    /* renamed from: c */
    public final AbstractC3971d mo37075c(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f14446c) {
            this.f14444a.mo37075c(bArr, i, i2);
            return mo37069u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Throwable th;
        if (this.f14446c) {
            return;
        }
        Throwable th2 = null;
        try {
            if (this.f14444a.f14419b > 0) {
                AbstractC3989r abstractC3989r = this.f14445b;
                C3969c c3969c = this.f14444a;
                abstractC3989r.mo36721a_(c3969c, c3969c.f14419b);
                th2 = null;
            }
        } catch (Throwable th3) {
            th2 = th3;
        }
        try {
            this.f14445b.close();
            th = th2;
        } catch (Throwable th4) {
            th = th2;
            if (th2 == null) {
                th = th4;
            }
        }
        this.f14446c = true;
        if (th == null) {
            return;
        }
        C3993u.m37013a(th);
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3971d, com.bytedance.sdk.p127a.p128a.AbstractC3989r, java.io.Flushable
    public final void flush() throws IOException {
        if (!this.f14446c) {
            if (this.f14444a.f14419b > 0) {
                AbstractC3989r abstractC3989r = this.f14445b;
                C3969c c3969c = this.f14444a;
                abstractC3989r.mo36721a_(c3969c, c3969c.f14419b);
            }
            this.f14445b.flush();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3971d
    /* renamed from: g */
    public final AbstractC3971d mo37074g(int i) throws IOException {
        if (!this.f14446c) {
            this.f14444a.mo37074g(i);
            return mo37069u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3971d
    /* renamed from: h */
    public final AbstractC3971d mo37073h(int i) throws IOException {
        if (!this.f14446c) {
            this.f14444a.mo37073h(i);
            return mo37069u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3971d
    /* renamed from: i */
    public final AbstractC3971d mo37072i(int i) throws IOException {
        if (!this.f14446c) {
            this.f14444a.mo37072i(i);
            return mo37069u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f14446c;
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3971d
    /* renamed from: k */
    public final AbstractC3971d mo37071k(long j) throws IOException {
        if (!this.f14446c) {
            this.f14444a.mo37071k(j);
            return mo37069u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3971d
    /* renamed from: l */
    public final AbstractC3971d mo37070l(long j) throws IOException {
        if (!this.f14446c) {
            this.f14444a.mo37070l(j);
            return mo37069u();
        }
        throw new IllegalStateException("closed");
    }

    public final String toString() {
        return "buffer(" + this.f14445b + ")";
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3971d
    /* renamed from: u */
    public final AbstractC3971d mo37069u() throws IOException {
        if (!this.f14446c) {
            long m37112g = this.f14444a.m37112g();
            if (m37112g > 0) {
                this.f14445b.mo36721a_(this.f14444a, m37112g);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) throws IOException {
        if (!this.f14446c) {
            int write = this.f14444a.write(byteBuffer);
            mo37069u();
            return write;
        }
        throw new IllegalStateException("closed");
    }
}
