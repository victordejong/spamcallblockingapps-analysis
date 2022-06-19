package p136j6;

import java.io.IOException;
import java.io.InputStream;
import p115h6.C3013b;
import p180n6.C3729e;
import p191o6.C3912h;
/* renamed from: j6.a */
/* loaded from: classes-dex2jar.jar:j6/a.class */
public final class C3277a extends InputStream {

    /* renamed from: a */
    public final InputStream f11098a;

    /* renamed from: b */
    public final C3013b f11099b;

    /* renamed from: c */
    public final C3729e f11100c;

    /* renamed from: e */
    public long f11102e;

    /* renamed from: d */
    public long f11101d = -1;

    /* renamed from: f */
    public long f11103f = -1;

    public C3277a(InputStream inputStream, C3013b c3013b, C3729e c3729e) {
        this.f11100c = c3729e;
        this.f11098a = inputStream;
        this.f11099b = c3013b;
        this.f11102e = ((C3912h) c3013b.f10113d.f7078b).m1657V();
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        try {
            return this.f11098a.available();
        } catch (IOException e) {
            this.f11099b.m2740j(this.f11100c.m1840a());
            C3284h.m2427c(this.f11099b);
            throw e;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        long m1840a = this.f11100c.m1840a();
        if (this.f11103f == -1) {
            this.f11103f = m1840a;
        }
        try {
            this.f11098a.close();
            long j = this.f11101d;
            if (j != -1) {
                this.f11099b.m2741i(j);
            }
            long j2 = this.f11102e;
            if (j2 != -1) {
                this.f11099b.m2739l(j2);
            }
            this.f11099b.m2740j(this.f11103f);
            this.f11099b.m2747b();
        } catch (IOException e) {
            this.f11099b.m2740j(this.f11100c.m1840a());
            C3284h.m2427c(this.f11099b);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f11098a.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f11098a.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            int read = this.f11098a.read();
            long m1840a = this.f11100c.m1840a();
            if (this.f11102e == -1) {
                this.f11102e = m1840a;
            }
            if (read == -1 && this.f11103f == -1) {
                this.f11103f = m1840a;
                this.f11099b.m2740j(m1840a);
                this.f11099b.m2747b();
            } else {
                long j = this.f11101d + 1;
                this.f11101d = j;
                this.f11099b.m2741i(j);
            }
            return read;
        } catch (IOException e) {
            this.f11099b.m2740j(this.f11100c.m1840a());
            C3284h.m2427c(this.f11099b);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        try {
            int read = this.f11098a.read(bArr);
            long m1840a = this.f11100c.m1840a();
            if (this.f11102e == -1) {
                this.f11102e = m1840a;
            }
            if (read == -1 && this.f11103f == -1) {
                this.f11103f = m1840a;
                this.f11099b.m2740j(m1840a);
                this.f11099b.m2747b();
            } else {
                long j = this.f11101d + read;
                this.f11101d = j;
                this.f11099b.m2741i(j);
            }
            return read;
        } catch (IOException e) {
            this.f11099b.m2740j(this.f11100c.m1840a());
            C3284h.m2427c(this.f11099b);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            int read = this.f11098a.read(bArr, i, i2);
            long m1840a = this.f11100c.m1840a();
            if (this.f11102e == -1) {
                this.f11102e = m1840a;
            }
            if (read == -1 && this.f11103f == -1) {
                this.f11103f = m1840a;
                this.f11099b.m2740j(m1840a);
                this.f11099b.m2747b();
            } else {
                long j = this.f11101d + read;
                this.f11101d = j;
                this.f11099b.m2741i(j);
            }
            return read;
        } catch (IOException e) {
            this.f11099b.m2740j(this.f11100c.m1840a());
            C3284h.m2427c(this.f11099b);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        try {
            this.f11098a.reset();
        } catch (IOException e) {
            this.f11099b.m2740j(this.f11100c.m1840a());
            C3284h.m2427c(this.f11099b);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        try {
            long skip = this.f11098a.skip(j);
            long m1840a = this.f11100c.m1840a();
            if (this.f11102e == -1) {
                this.f11102e = m1840a;
            }
            if (skip == -1 && this.f11103f == -1) {
                this.f11103f = m1840a;
                this.f11099b.m2740j(m1840a);
            } else {
                long j2 = this.f11101d + skip;
                this.f11101d = j2;
                this.f11099b.m2741i(j2);
            }
            return skip;
        } catch (IOException e) {
            this.f11099b.m2740j(this.f11100c.m1840a());
            C3284h.m2427c(this.f11099b);
            throw e;
        }
    }
}
