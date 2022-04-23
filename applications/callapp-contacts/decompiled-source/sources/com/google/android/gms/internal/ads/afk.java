package com.google.android.gms.internal.ads;

import io.objectbox.model.PropertyFlags;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/afk.class */
public final class afk extends ByteArrayOutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final rq f23222a;

    public afk(rq rqVar, int i) {
        this.f23222a = rqVar;
        this.buf = rqVar.a(Math.max(i, (int) PropertyFlags.INDEX_PARTIAL_SKIP_NULL));
    }

    private final void a(int i) {
        if (this.count + i > this.buf.length) {
            byte[] a2 = this.f23222a.a((this.count + i) << 1);
            System.arraycopy(this.buf, 0, a2, 0, this.count);
            this.f23222a.a(this.buf);
            this.buf = a2;
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f23222a.a(this.buf);
        this.buf = null;
        super.close();
    }

    public final void finalize() {
        this.f23222a.a(this.buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(int i) {
        synchronized (this) {
            a(1);
            super.write(i);
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            a(i2);
            super.write(bArr, i, i2);
        }
    }
}
