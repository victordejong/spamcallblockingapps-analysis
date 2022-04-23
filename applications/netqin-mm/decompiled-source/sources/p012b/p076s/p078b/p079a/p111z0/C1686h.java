package p012b.p076s.p078b.p079a.p111z0;

import java.io.IOException;
import java.io.InputStream;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
/* renamed from: b.s.b.a.z0.h */
/* loaded from: classes-dex2jar.jar:b/s/b/a/z0/h.class */
public final class C1686h extends InputStream {

    /* renamed from: a */
    public final AbstractC1684g f6877a;

    /* renamed from: b */
    public final C1687i f6878b;

    /* renamed from: f */
    public long f6882f;

    /* renamed from: d */
    public boolean f6880d = false;

    /* renamed from: e */
    public boolean f6881e = false;

    /* renamed from: c */
    public final byte[] f6879c = new byte[1];

    public C1686h(AbstractC1684g gVar, C1687i iVar) {
        this.f6877a = gVar;
        this.f6878b = iVar;
    }

    /* renamed from: a */
    public final void m32388a() throws IOException {
        if (!this.f6880d) {
            this.f6877a.mo32144a(this.f6878b);
            this.f6880d = true;
        }
    }

    /* renamed from: b */
    public void m32387b() throws IOException {
        m32388a();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f6881e) {
            this.f6877a.close();
            this.f6881e = true;
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i = -1;
        if (read(this.f6879c) != -1) {
            i = this.f6879c[0] & 255;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        C1160a.m34518b(!this.f6881e);
        m32388a();
        int read = this.f6877a.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        this.f6882f += read;
        return read;
    }
}
