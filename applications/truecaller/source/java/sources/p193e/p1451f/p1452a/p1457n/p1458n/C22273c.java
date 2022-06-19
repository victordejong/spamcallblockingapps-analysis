package p193e.p1451f.p1452a.p1457n.p1458n;

import java.io.IOException;
import java.io.OutputStream;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b;
/* renamed from: e.f.a.n.n.c */
/* loaded from: classes-dex2jar.jar:e/f/a/n/n/c.class */
public final class C22273c extends OutputStream {

    /* renamed from: a */
    public final OutputStream f61908a;

    /* renamed from: b */
    public byte[] f61909b;

    /* renamed from: c */
    public AbstractC22301b f61910c;

    /* renamed from: d */
    public int f61911d;

    public C22273c(OutputStream outputStream, AbstractC22301b abstractC22301b) {
        this.f61908a = outputStream;
        this.f61910c = abstractC22301b;
        this.f61909b = (byte[]) abstractC22301b.mo8337c(65536, byte[].class);
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            flush();
            this.f61908a.close();
            byte[] bArr = this.f61909b;
            if (bArr == null) {
                return;
            }
            this.f61910c.put(bArr);
            this.f61909b = null;
        } catch (Throwable th) {
            this.f61908a.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        int i = this.f61911d;
        if (i > 0) {
            this.f61908a.write(this.f61909b, 0, i);
            this.f61911d = 0;
        }
        this.f61908a.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.f61909b;
        int i2 = this.f61911d;
        int i3 = i2 + 1;
        this.f61911d = i3;
        bArr[i2] = (byte) i;
        if (i3 != bArr.length || i3 <= 0) {
            return;
        }
        this.f61908a.write(bArr, 0, i3);
        this.f61911d = 0;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4 = 0;
        do {
            int i5 = i2 - i4;
            int i6 = i + i4;
            int i7 = this.f61911d;
            if (i7 == 0 && i5 >= this.f61909b.length) {
                this.f61908a.write(bArr, i6, i5);
                return;
            }
            int min = Math.min(i5, this.f61909b.length - i7);
            System.arraycopy(bArr, i6, this.f61909b, this.f61911d, min);
            int i8 = this.f61911d + min;
            this.f61911d = i8;
            i3 = i4 + min;
            byte[] bArr2 = this.f61909b;
            if (i8 == bArr2.length && i8 > 0) {
                this.f61908a.write(bArr2, 0, i8);
                this.f61911d = 0;
            }
            i4 = i3;
        } while (i3 < i2);
    }
}
