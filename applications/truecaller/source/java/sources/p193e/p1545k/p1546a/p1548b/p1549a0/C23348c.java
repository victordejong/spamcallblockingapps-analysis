package p193e.p1545k.p1546a.p1548b.p1549a0;

import java.io.OutputStream;
import java.util.Iterator;
import java.util.LinkedList;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.k.a.b.a0.c */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/a0/c.class */
public final class C23348c extends OutputStream {

    /* renamed from: f */
    public static final byte[] f64567f = new byte[0];

    /* renamed from: a */
    public final C23346a f64568a;

    /* renamed from: b */
    public final LinkedList<byte[]> f64569b;

    /* renamed from: c */
    public int f64570c;

    /* renamed from: d */
    public byte[] f64571d;

    /* renamed from: e */
    public int f64572e;

    public C23348c(C23346a c23346a, int i) {
        this.f64569b = new LinkedList<>();
        this.f64568a = c23346a;
        this.f64571d = c23346a == null ? new byte[i > 131072 ? 131072 : i] : c23346a.m7254a(2);
    }

    public C23348c(byte[] bArr, int i) {
        this.f64569b = new LinkedList<>();
        this.f64568a = null;
        this.f64571d = bArr;
        this.f64572e = i;
    }

    /* renamed from: b */
    public final void m7252b() {
        int length = this.f64570c + this.f64571d.length;
        if (length >= 0) {
            this.f64570c = length;
            int max = Math.max(length >> 1, 1000);
            int i = max;
            if (max > 131072) {
                i = 131072;
            }
            this.f64569b.add(this.f64571d);
            this.f64571d = new byte[i];
            this.f64572e = 0;
            return;
        }
        throw new IllegalStateException("Maximum Java array size (2GB) exceeded by `ByteArrayBuilder`");
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* renamed from: d */
    public void m7251d(int i) {
        if (this.f64572e >= this.f64571d.length) {
            m7252b();
        }
        byte[] bArr = this.f64571d;
        int i2 = this.f64572e;
        this.f64572e = i2 + 1;
        bArr[i2] = (byte) i;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    /* renamed from: j */
    public void m7250j(int i) {
        int i2 = this.f64572e;
        byte[] bArr = this.f64571d;
        if (i2 + 2 >= bArr.length) {
            m7251d(i >> 16);
            m7251d(i >> 8);
            m7251d(i);
            return;
        }
        int i3 = i2 + 1;
        this.f64572e = i3;
        bArr[i2] = (byte) (i >> 16);
        int i4 = i3 + 1;
        this.f64572e = i4;
        bArr[i3] = (byte) (i >> 8);
        this.f64572e = i4 + 1;
        bArr[i4] = (byte) i;
    }

    /* renamed from: k */
    public void m7249k(int i) {
        int i2 = this.f64572e;
        byte[] bArr = this.f64571d;
        if (i2 + 1 >= bArr.length) {
            m7251d(i >> 8);
            m7251d(i);
            return;
        }
        int i3 = i2 + 1;
        this.f64572e = i3;
        bArr[i2] = (byte) (i >> 8);
        this.f64572e = i3 + 1;
        bArr[i3] = (byte) i;
    }

    /* renamed from: l */
    public void m7248l() {
        this.f64570c = 0;
        this.f64572e = 0;
        if (!this.f64569b.isEmpty()) {
            this.f64569b.clear();
        }
    }

    /* renamed from: q */
    public byte[] m7247q() {
        int i;
        int i2 = this.f64570c + this.f64572e;
        if (i2 == 0) {
            return f64567f;
        }
        byte[] bArr = new byte[i2];
        Iterator<byte[]> it = this.f64569b.iterator();
        int i3 = 0;
        while (true) {
            i = i3;
            if (!it.hasNext()) {
                break;
            }
            byte[] next = it.next();
            int length = next.length;
            System.arraycopy(next, 0, bArr, i, length);
            i3 = i + length;
        }
        System.arraycopy(this.f64571d, 0, bArr, i, this.f64572e);
        int i4 = i + this.f64572e;
        if (i4 != i2) {
            throw new RuntimeException(C22128a.m8591n2("Internal error: total len assumed to be ", i2, ", copied ", i4, " bytes"));
        }
        if (!this.f64569b.isEmpty()) {
            m7248l();
        }
        return bArr;
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        m7251d(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        int i3 = i;
        while (true) {
            int min = Math.min(this.f64571d.length - this.f64572e, i2);
            int i4 = i3;
            int i5 = i2;
            if (min > 0) {
                System.arraycopy(bArr, i3, this.f64571d, this.f64572e, min);
                i4 = i3 + min;
                this.f64572e += min;
                i5 = i2 - min;
            }
            if (i5 <= 0) {
                return;
            }
            m7252b();
            i3 = i4;
            i2 = i5;
        }
    }
}
