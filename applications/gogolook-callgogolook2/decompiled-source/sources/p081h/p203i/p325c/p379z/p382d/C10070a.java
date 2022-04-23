package p081h.p203i.p325c.p379z.p382d;

import com.google.android.gms.internal.firebase-perf.zzaa;
import java.io.IOException;
import java.io.InputStream;
import p081h.p203i.p204a.p224e.p259j.p269j.C7759a1;
/* renamed from: h.i.c.z.d.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/z/d/a.class */
public final class C10070a extends InputStream {

    /* renamed from: a */
    public final InputStream f22763a;

    /* renamed from: b */
    public final C7759a1 f22764b;

    /* renamed from: c */
    public final zzaa f22765c;

    /* renamed from: e */
    public long f22767e;

    /* renamed from: d */
    public long f22766d = -1;

    /* renamed from: f */
    public long f22768f = -1;

    public C10070a(InputStream inputStream, C7759a1 a1Var, zzaa zzaaVar) {
        this.f22765c = zzaaVar;
        this.f22763a = inputStream;
        this.f22764b = a1Var;
        this.f22767e = this.f22764b.m19562u();
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        try {
            return this.f22763a.available();
        } catch (IOException e) {
            this.f22764b.m19567f(this.f22765c.m31840c());
            C10077h.m13454a(this.f22764b);
            throw e;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        long c = this.f22765c.m31840c();
        if (this.f22768f == -1) {
            this.f22768f = c;
        }
        try {
            this.f22763a.close();
            if (this.f22766d != -1) {
                this.f22764b.m19574b(this.f22766d);
            }
            if (this.f22767e != -1) {
                this.f22764b.m19568e(this.f22767e);
            }
            this.f22764b.m19567f(this.f22768f);
            this.f22764b.m19561v();
        } catch (IOException e) {
            this.f22764b.m19567f(this.f22765c.m31840c());
            C10077h.m13454a(this.f22764b);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.f22763a.mark(i);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.f22763a.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        try {
            int read = this.f22763a.read();
            long c = this.f22765c.m31840c();
            if (this.f22767e == -1) {
                this.f22767e = c;
            }
            if (read == -1 && this.f22768f == -1) {
                this.f22768f = c;
                this.f22764b.m19567f(this.f22768f);
                this.f22764b.m19561v();
            } else {
                this.f22766d++;
                this.f22764b.m19574b(this.f22766d);
            }
            return read;
        } catch (IOException e) {
            this.f22764b.m19567f(this.f22765c.m31840c());
            C10077h.m13454a(this.f22764b);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        try {
            int read = this.f22763a.read(bArr);
            long c = this.f22765c.m31840c();
            if (this.f22767e == -1) {
                this.f22767e = c;
            }
            if (read == -1 && this.f22768f == -1) {
                this.f22768f = c;
                this.f22764b.m19567f(this.f22768f);
                this.f22764b.m19561v();
            } else {
                this.f22766d += read;
                this.f22764b.m19574b(this.f22766d);
            }
            return read;
        } catch (IOException e) {
            this.f22764b.m19567f(this.f22765c.m31840c());
            C10077h.m13454a(this.f22764b);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            int read = this.f22763a.read(bArr, i, i2);
            long c = this.f22765c.m31840c();
            if (this.f22767e == -1) {
                this.f22767e = c;
            }
            if (read == -1 && this.f22768f == -1) {
                this.f22768f = c;
                this.f22764b.m19567f(this.f22768f);
                this.f22764b.m19561v();
            } else {
                this.f22766d += read;
                this.f22764b.m19574b(this.f22766d);
            }
            return read;
        } catch (IOException e) {
            this.f22764b.m19567f(this.f22765c.m31840c());
            C10077h.m13454a(this.f22764b);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final void reset() throws IOException {
        try {
            this.f22763a.reset();
        } catch (IOException e) {
            this.f22764b.m19567f(this.f22765c.m31840c());
            C10077h.m13454a(this.f22764b);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final long skip(long j) throws IOException {
        try {
            long skip = this.f22763a.skip(j);
            long c = this.f22765c.m31840c();
            if (this.f22767e == -1) {
                this.f22767e = c;
            }
            if (skip == -1 && this.f22768f == -1) {
                this.f22768f = c;
                this.f22764b.m19567f(this.f22768f);
            } else {
                this.f22766d += skip;
                this.f22764b.m19574b(this.f22766d);
            }
            return skip;
        } catch (IOException e) {
            this.f22764b.m19567f(this.f22765c.m31840c());
            C10077h.m13454a(this.f22764b);
            throw e;
        }
    }
}
