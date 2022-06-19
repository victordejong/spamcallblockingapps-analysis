package p193e.p1451f.p1452a.p1457n.p1466q.p1467d;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b;
/* renamed from: e.f.a.n.q.d.w */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/w.class */
public class C22520w extends FilterInputStream {

    /* renamed from: a */
    public volatile byte[] f62410a;

    /* renamed from: b */
    public int f62411b;

    /* renamed from: c */
    public int f62412c;

    /* renamed from: d */
    public int f62413d = -1;

    /* renamed from: e */
    public int f62414e;

    /* renamed from: f */
    public final AbstractC22301b f62415f;

    /* renamed from: e.f.a.n.q.d.w$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/w$a.class */
    public static class C22521a extends IOException {
        public C22521a(String str) {
            super(str);
        }
    }

    public C22520w(InputStream inputStream, AbstractC22301b abstractC22301b) {
        super(inputStream);
        this.f62415f = abstractC22301b;
        this.f62410a = (byte[]) abstractC22301b.mo8337c(65536, byte[].class);
    }

    /* renamed from: j */
    public static IOException m8170j() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i;
        int i2;
        int available;
        synchronized (this) {
            InputStream inputStream = ((FilterInputStream) this).in;
            if (this.f62410a == null || inputStream == null) {
                m8170j();
                throw null;
            }
            i = this.f62411b;
            i2 = this.f62414e;
            available = inputStream.available();
        }
        return (i - i2) + available;
    }

    /* renamed from: b */
    public final int m8172b(InputStream inputStream, byte[] bArr) throws IOException {
        byte[] bArr2;
        int i = this.f62413d;
        if (i != -1) {
            int i2 = this.f62414e;
            int i3 = this.f62412c;
            if (i2 - i < i3) {
                if (i == 0 && i3 > bArr.length && this.f62411b == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i3) {
                        i3 = length;
                    }
                    bArr2 = (byte[]) this.f62415f.mo8337c(i3, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f62410a = bArr2;
                    this.f62415f.put(bArr);
                } else {
                    bArr2 = bArr;
                    if (i > 0) {
                        System.arraycopy(bArr, i, bArr, 0, bArr.length - i);
                        bArr2 = bArr;
                    }
                }
                int i4 = this.f62414e - this.f62413d;
                this.f62414e = i4;
                this.f62413d = 0;
                this.f62411b = 0;
                int read = inputStream.read(bArr2, i4, bArr2.length - i4);
                int i5 = this.f62414e;
                if (read > 0) {
                    i5 += read;
                }
                this.f62411b = i5;
                return read;
            }
        }
        int read2 = inputStream.read(bArr);
        if (read2 > 0) {
            this.f62413d = -1;
            this.f62414e = 0;
            this.f62411b = read2;
        }
        return read2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f62410a != null) {
            this.f62415f.put(this.f62410a);
            this.f62410a = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    /* renamed from: d */
    public void m8171d() {
        synchronized (this) {
            if (this.f62410a != null) {
                this.f62415f.put(this.f62410a);
                this.f62410a = null;
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            this.f62412c = Math.max(this.f62412c, i);
            this.f62413d = this.f62414e;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        synchronized (this) {
            byte[] bArr = this.f62410a;
            InputStream inputStream = ((FilterInputStream) this).in;
            if (bArr == null || inputStream == null) {
                m8170j();
                throw null;
            } else if (this.f62414e >= this.f62411b && m8172b(inputStream, bArr) == -1) {
                return -1;
            } else {
                byte[] bArr2 = bArr;
                if (bArr != this.f62410a) {
                    bArr2 = this.f62410a;
                    if (bArr2 == null) {
                        m8170j();
                        throw null;
                    }
                }
                int i = this.f62411b;
                int i2 = this.f62414e;
                if (i - i2 <= 0) {
                    return -1;
                }
                this.f62414e = i2 + 1;
                return bArr2[i2] & 255;
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        int i5;
        synchronized (this) {
            byte[] bArr2 = this.f62410a;
            if (bArr2 == null) {
                m8170j();
                throw null;
            } else if (i2 == 0) {
                return 0;
            } else {
                InputStream inputStream = ((FilterInputStream) this).in;
                if (inputStream == null) {
                    m8170j();
                    throw null;
                }
                int i6 = this.f62414e;
                int i7 = this.f62411b;
                if (i6 < i7) {
                    int i8 = i7 - i6 >= i2 ? i2 : i7 - i6;
                    System.arraycopy(bArr2, i6, bArr, i, i8);
                    this.f62414e += i8;
                    if (i8 == i2 || inputStream.available() == 0) {
                        return i8;
                    }
                    int i9 = i + i8;
                    i4 = i2 - i8;
                    i3 = i9;
                } else {
                    i3 = i;
                    i4 = i2;
                }
                while (true) {
                    int i10 = -1;
                    if (this.f62413d == -1 && i4 >= bArr2.length) {
                        int read = inputStream.read(bArr, i3, i4);
                        i5 = read;
                        if (read == -1) {
                            if (i4 != i2) {
                                i10 = i2 - i4;
                            }
                            return i10;
                        }
                    } else if (m8172b(inputStream, bArr2) == -1) {
                        if (i4 != i2) {
                            i10 = i2 - i4;
                        }
                        return i10;
                    } else {
                        byte[] bArr3 = bArr2;
                        if (bArr2 != this.f62410a) {
                            bArr3 = this.f62410a;
                            if (bArr3 == null) {
                                m8170j();
                                throw null;
                            }
                        }
                        int i11 = this.f62411b;
                        int i12 = this.f62414e;
                        int i13 = i11 - i12 >= i4 ? i4 : i11 - i12;
                        System.arraycopy(bArr3, i12, bArr, i3, i13);
                        this.f62414e += i13;
                        i5 = i13;
                        bArr2 = bArr3;
                    }
                    i4 -= i5;
                    if (i4 == 0) {
                        return i2;
                    }
                    if (inputStream.available() == 0) {
                        return i2 - i4;
                    }
                    i3 += i5;
                }
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            if (this.f62410a == null) {
                throw new IOException("Stream is closed");
            }
            int i = this.f62413d;
            if (-1 == i) {
                throw new C22521a("Mark has been invalidated, pos: " + this.f62414e + " markLimit: " + this.f62412c);
            }
            this.f62414e = i;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        synchronized (this) {
            if (j < 1) {
                return 0L;
            }
            byte[] bArr = this.f62410a;
            if (bArr == null) {
                m8170j();
                throw null;
            }
            InputStream inputStream = ((FilterInputStream) this).in;
            if (inputStream == null) {
                m8170j();
                throw null;
            }
            int i = this.f62411b;
            int i2 = this.f62414e;
            if (i - i2 >= j) {
                this.f62414e = (int) (i2 + j);
                return j;
            }
            long j2 = i - i2;
            this.f62414e = i;
            if (this.f62413d == -1 || j > this.f62412c) {
                return j2 + inputStream.skip(j - j2);
            } else if (m8172b(inputStream, bArr) == -1) {
                return j2;
            } else {
                int i3 = this.f62411b;
                int i4 = this.f62414e;
                if (i3 - i4 >= j - j2) {
                    this.f62414e = (int) ((i4 + j) - j2);
                    return j;
                }
                long j3 = i3;
                long j4 = i4;
                this.f62414e = i3;
                return (j2 + j3) - j4;
            }
        }
    }
}
