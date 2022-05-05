package p081h.p203i.p325c.p379z.p382d;

import com.google.android.gms.internal.firebase-perf.zzaa;
import java.io.IOException;
import java.io.OutputStream;
import p081h.p203i.p204a.p224e.p259j.p269j.C7759a1;
/* renamed from: h.i.c.z.d.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/z/d/b.class */
public final class C10071b extends OutputStream {

    /* renamed from: a */
    public OutputStream f22769a;

    /* renamed from: b */
    public long f22770b = -1;

    /* renamed from: c */
    public C7759a1 f22771c;

    /* renamed from: d */
    public final zzaa f22772d;

    public C10071b(OutputStream outputStream, C7759a1 a1Var, zzaa zzaaVar) {
        this.f22769a = outputStream;
        this.f22771c = a1Var;
        this.f22772d = zzaaVar;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        long j = this.f22770b;
        if (j != -1) {
            this.f22771c.m19578a(j);
        }
        this.f22771c.m19569d(this.f22772d.m31840c());
        try {
            this.f22769a.close();
        } catch (IOException e) {
            this.f22771c.m19567f(this.f22772d.m31840c());
            C10077h.m13454a(this.f22771c);
            throw e;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        try {
            this.f22769a.flush();
        } catch (IOException e) {
            this.f22771c.m19567f(this.f22772d.m31840c());
            C10077h.m13454a(this.f22771c);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        try {
            this.f22769a.write(i);
            this.f22770b++;
            this.f22771c.m19578a(this.f22770b);
        } catch (IOException e) {
            this.f22771c.m19567f(this.f22772d.m31840c());
            C10077h.m13454a(this.f22771c);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        try {
            this.f22769a.write(bArr);
            this.f22770b += bArr.length;
            this.f22771c.m19578a(this.f22770b);
        } catch (IOException e) {
            this.f22771c.m19567f(this.f22772d.m31840c());
            C10077h.m13454a(this.f22771c);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        try {
            this.f22769a.write(bArr, i, i2);
            this.f22770b += i2;
            this.f22771c.m19578a(this.f22770b);
        } catch (IOException e) {
            this.f22771c.m19567f(this.f22772d.m31840c());
            C10077h.m13454a(this.f22771c);
            throw e;
        }
    }
}
