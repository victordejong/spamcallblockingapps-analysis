package p136j6;

import java.io.IOException;
import java.io.OutputStream;
import p115h6.C3013b;
import p180n6.C3729e;
import p191o6.C3912h;
/* renamed from: j6.b */
/* loaded from: classes-dex2jar.jar:j6/b.class */
public final class C3278b extends OutputStream {

    /* renamed from: a */
    public final OutputStream f11104a;

    /* renamed from: b */
    public final C3729e f11105b;

    /* renamed from: c */
    public C3013b f11106c;

    /* renamed from: d */
    public long f11107d = -1;

    public C3278b(OutputStream outputStream, C3013b c3013b, C3729e c3729e) {
        this.f11104a = outputStream;
        this.f11106c = c3013b;
        this.f11105b = c3729e;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        long j = this.f11107d;
        if (j != -1) {
            this.f11106c.m2744f(j);
        }
        C3013b c3013b = this.f11106c;
        long m1840a = this.f11105b.m1840a();
        C3912h.C3914b c3914b = c3013b.f10113d;
        c3914b.m4282n();
        C3912h.m1673F((C3912h) c3914b.f7078b, m1840a);
        try {
            this.f11104a.close();
        } catch (IOException e) {
            this.f11106c.m2740j(this.f11105b.m1840a());
            C3284h.m2427c(this.f11106c);
            throw e;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        try {
            this.f11104a.flush();
        } catch (IOException e) {
            this.f11106c.m2740j(this.f11105b.m1840a());
            C3284h.m2427c(this.f11106c);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        try {
            this.f11104a.write(i);
            long j = this.f11107d + 1;
            this.f11107d = j;
            this.f11106c.m2744f(j);
        } catch (IOException e) {
            this.f11106c.m2740j(this.f11105b.m1840a());
            C3284h.m2427c(this.f11106c);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        try {
            this.f11104a.write(bArr);
            long length = this.f11107d + bArr.length;
            this.f11107d = length;
            this.f11106c.m2744f(length);
        } catch (IOException e) {
            this.f11106c.m2740j(this.f11105b.m1840a());
            C3284h.m2427c(this.f11106c);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        try {
            this.f11104a.write(bArr, i, i2);
            long j = this.f11107d + i2;
            this.f11107d = j;
            this.f11106c.m2744f(j);
        } catch (IOException e) {
            this.f11106c.m2740j(this.f11105b.m1840a());
            C3284h.m2427c(this.f11106c);
            throw e;
        }
    }
}
