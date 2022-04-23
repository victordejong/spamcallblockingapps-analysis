package com.bytedance.sdk.a.a;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/m.class */
public final class m implements d {

    /* renamed from: a  reason: collision with root package name */
    public final c f7808a = new c();

    /* renamed from: b  reason: collision with root package name */
    public final r f7809b;

    /* renamed from: c  reason: collision with root package name */
    boolean f7810c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(r rVar) {
        Objects.requireNonNull(rVar, "sink == null");
        this.f7809b = rVar;
    }

    @Override // com.bytedance.sdk.a.a.r
    public final t a() {
        return this.f7809b.a();
    }

    @Override // com.bytedance.sdk.a.a.r
    public final void a_(c cVar, long j) throws IOException {
        if (!this.f7810c) {
            this.f7808a.a_(cVar, j);
            u();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.a.a.d
    public final d b(String str) throws IOException {
        if (!this.f7810c) {
            this.f7808a.b(str);
            return u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.a.a.d, com.bytedance.sdk.a.a.e
    public final c c() {
        return this.f7808a;
    }

    @Override // com.bytedance.sdk.a.a.d
    public final d c(byte[] bArr) throws IOException {
        if (!this.f7810c) {
            this.f7808a.c(bArr);
            return u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.a.a.d
    public final d c(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f7810c) {
            this.f7808a.c(bArr, i, i2);
            return u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.a.a.r, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Throwable th;
        if (!this.f7810c) {
            Throwable th2 = null;
            try {
                if (this.f7808a.f7785b > 0) {
                    r rVar = this.f7809b;
                    c cVar = this.f7808a;
                    rVar.a_(cVar, cVar.f7785b);
                    th2 = null;
                }
            } catch (Throwable th3) {
                th2 = th3;
            }
            try {
                this.f7809b.close();
                th = th2;
            } catch (Throwable th4) {
                th = th4;
                th = th2;
                if (th2 == null) {
                }
            }
            this.f7810c = true;
            if (th != null) {
                u.a(th);
            }
        }
    }

    @Override // com.bytedance.sdk.a.a.d, com.bytedance.sdk.a.a.r, java.io.Flushable
    public final void flush() throws IOException {
        if (!this.f7810c) {
            if (this.f7808a.f7785b > 0) {
                r rVar = this.f7809b;
                c cVar = this.f7808a;
                rVar.a_(cVar, cVar.f7785b);
            }
            this.f7809b.flush();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.a.a.d
    public final d g(int i) throws IOException {
        if (!this.f7810c) {
            this.f7808a.g(i);
            return u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.a.a.d
    public final d h(int i) throws IOException {
        if (!this.f7810c) {
            this.f7808a.h(i);
            return u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.a.a.d
    public final d i(int i) throws IOException {
        if (!this.f7810c) {
            this.f7808a.i(i);
            return u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f7810c;
    }

    @Override // com.bytedance.sdk.a.a.d
    public final d k(long j) throws IOException {
        if (!this.f7810c) {
            this.f7808a.k(j);
            return u();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.a.a.d
    public final d l(long j) throws IOException {
        if (!this.f7810c) {
            this.f7808a.l(j);
            return u();
        }
        throw new IllegalStateException("closed");
    }

    public final String toString() {
        return "buffer(" + this.f7809b + ")";
    }

    @Override // com.bytedance.sdk.a.a.d
    public final d u() throws IOException {
        if (!this.f7810c) {
            long g = this.f7808a.g();
            if (g > 0) {
                this.f7809b.a_(this.f7808a, g);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) throws IOException {
        if (!this.f7810c) {
            int write = this.f7808a.write(byteBuffer);
            u();
            return write;
        }
        throw new IllegalStateException("closed");
    }
}
