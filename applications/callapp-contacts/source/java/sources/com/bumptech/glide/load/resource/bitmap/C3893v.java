package com.bumptech.glide.load.resource.bitmap;

import com.bumptech.glide.load.engine.p119a.AbstractC3707b;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.resource.bitmap.v */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/v.class */
public final class C3893v extends FilterInputStream {

    /* renamed from: a */
    private volatile byte[] f14278a;

    /* renamed from: b */
    private int f14279b;

    /* renamed from: c */
    private int f14280c;

    /* renamed from: d */
    private int f14281d;

    /* renamed from: e */
    private int f14282e;

    /* renamed from: f */
    private final AbstractC3707b f14283f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.resource.bitmap.v$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/v$a.class */
    public static final class C3894a extends IOException {
        C3894a(String str) {
            super(str);
        }
    }

    public C3893v(InputStream inputStream, AbstractC3707b abstractC3707b) {
        this(inputStream, abstractC3707b, 65536);
    }

    C3893v(InputStream inputStream, AbstractC3707b abstractC3707b, int i) {
        super(inputStream);
        this.f14281d = -1;
        this.f14283f = abstractC3707b;
        this.f14278a = (byte[]) abstractC3707b.mo37474a(i, byte[].class);
    }

    /* renamed from: a */
    private int m37251a(InputStream inputStream, byte[] bArr) throws IOException {
        byte[] bArr2;
        int i = this.f14281d;
        if (i != -1) {
            int i2 = this.f14282e;
            int i3 = this.f14280c;
            if (i2 - i < i3) {
                if (i == 0 && i3 > bArr.length && this.f14279b == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i3) {
                        i3 = length;
                    }
                    bArr2 = (byte[]) this.f14283f.mo37474a(i3, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f14278a = bArr2;
                    this.f14283f.mo37470a((AbstractC3707b) bArr);
                } else {
                    bArr2 = bArr;
                    if (i > 0) {
                        System.arraycopy(bArr, i, bArr, 0, bArr.length - i);
                        bArr2 = bArr;
                    }
                }
                int i4 = this.f14282e - this.f14281d;
                this.f14282e = i4;
                this.f14281d = 0;
                this.f14279b = 0;
                int read = inputStream.read(bArr2, i4, bArr2.length - i4);
                int i5 = this.f14282e;
                if (read > 0) {
                    i5 += read;
                }
                this.f14279b = i5;
                return read;
            }
        }
        int read2 = inputStream.read(bArr);
        if (read2 > 0) {
            this.f14281d = -1;
            this.f14282e = 0;
            this.f14279b = read2;
        }
        return read2;
    }

    /* renamed from: c */
    private static IOException m37249c() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    /* renamed from: a */
    public final void m37252a() {
        synchronized (this) {
            this.f14280c = this.f14278a.length;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        int i;
        int i2;
        int available;
        synchronized (this) {
            InputStream inputStream = this.in;
            if (this.f14278a == null || inputStream == null) {
                throw m37249c();
            }
            i = this.f14279b;
            i2 = this.f14282e;
            available = inputStream.available();
        }
        return (i - i2) + available;
    }

    /* renamed from: b */
    public final void m37250b() {
        synchronized (this) {
            if (this.f14278a != null) {
                this.f14283f.mo37470a((AbstractC3707b) this.f14278a);
                this.f14278a = null;
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f14278a != null) {
            this.f14283f.mo37470a((AbstractC3707b) this.f14278a);
            this.f14278a = null;
        }
        InputStream inputStream = this.in;
        this.in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        synchronized (this) {
            this.f14280c = Math.max(this.f14280c, i);
            this.f14281d = this.f14282e;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        synchronized (this) {
            byte[] bArr = this.f14278a;
            InputStream inputStream = this.in;
            if (bArr == null || inputStream == null) {
                throw m37249c();
            }
            if (this.f14282e >= this.f14279b && m37251a(inputStream, bArr) == -1) {
                return -1;
            }
            byte[] bArr2 = bArr;
            if (bArr != this.f14278a) {
                bArr2 = this.f14278a;
                if (bArr2 == null) {
                    throw m37249c();
                }
            }
            int i = this.f14279b;
            int i2 = this.f14282e;
            if (i - i2 <= 0) {
                return -1;
            }
            this.f14282e = i2 + 1;
            return bArr2[i2] & 255;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        byte[] bArr2;
        int i5;
        synchronized (this) {
            byte[] bArr3 = this.f14278a;
            if (bArr3 != null) {
                if (i2 == 0) {
                    return 0;
                }
                InputStream inputStream = this.in;
                if (inputStream == null) {
                    throw m37249c();
                }
                int i6 = this.f14282e;
                int i7 = this.f14279b;
                if (i6 < i7) {
                    int i8 = i7 - i6 >= i2 ? i2 : i7 - i6;
                    System.arraycopy(bArr3, i6, bArr, i, i8);
                    this.f14282e += i8;
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
                    if (this.f14281d == -1 && i4 >= bArr3.length) {
                        int read = inputStream.read(bArr, i3, i4);
                        bArr2 = bArr3;
                        i5 = read;
                        if (read == -1) {
                            if (i4 != i2) {
                                return i2 - i4;
                            }
                            return -1;
                        }
                    } else if (m37251a(inputStream, bArr3) == -1) {
                        if (i4 != i2) {
                            return i2 - i4;
                        }
                        return -1;
                    } else {
                        bArr2 = bArr3;
                        if (bArr3 != this.f14278a) {
                            bArr2 = this.f14278a;
                            if (bArr2 == null) {
                                throw m37249c();
                            }
                        }
                        int i10 = this.f14279b;
                        int i11 = this.f14282e;
                        i5 = i10 - i11 >= i4 ? i4 : i10 - i11;
                        System.arraycopy(bArr2, i11, bArr, i3, i5);
                        this.f14282e += i5;
                    }
                    i4 -= i5;
                    if (i4 == 0) {
                        return i2;
                    }
                    if (inputStream.available() == 0) {
                        return i2 - i4;
                    }
                    i3 += i5;
                    bArr3 = bArr2;
                }
            } else {
                throw m37249c();
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() throws IOException {
        synchronized (this) {
            if (this.f14278a == null) {
                throw new IOException("Stream is closed");
            }
            int i = this.f14281d;
            if (-1 == i) {
                throw new C3894a("Mark has been invalidated, pos: " + this.f14282e + " markLimit: " + this.f14280c);
            }
            this.f14282e = i;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) throws IOException {
        synchronized (this) {
            if (j < 1) {
                return 0L;
            }
            byte[] bArr = this.f14278a;
            if (bArr == null) {
                throw m37249c();
            }
            InputStream inputStream = this.in;
            if (inputStream == null) {
                throw m37249c();
            }
            int i = this.f14279b;
            int i2 = this.f14282e;
            if (i - i2 >= j) {
                this.f14282e = (int) (i2 + j);
                return j;
            }
            long j2 = i - i2;
            this.f14282e = i;
            if (this.f14281d == -1 || j > this.f14280c) {
                long skip = inputStream.skip(j - j2);
                if (skip > 0) {
                    this.f14281d = -1;
                }
                return j2 + skip;
            } else if (m37251a(inputStream, bArr) == -1) {
                return j2;
            } else {
                int i3 = this.f14279b;
                int i4 = this.f14282e;
                if (i3 - i4 >= j - j2) {
                    this.f14282e = (int) ((i4 + j) - j2);
                    return j;
                }
                long j3 = i3;
                long j4 = i4;
                this.f14282e = i3;
                return (j2 + j3) - j4;
            }
        }
    }
}
