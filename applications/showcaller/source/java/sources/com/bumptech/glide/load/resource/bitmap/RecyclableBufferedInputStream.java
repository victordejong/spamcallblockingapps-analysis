package com.bumptech.glide.load.resource.bitmap;

import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream.class */
public class RecyclableBufferedInputStream extends FilterInputStream {

    /* renamed from: d */
    private volatile byte[] f13224d;

    /* renamed from: e */
    private int f13225e;

    /* renamed from: f */
    private int f13226f;

    /* renamed from: g */
    private int f13227g;

    /* renamed from: h */
    private int f13228h;

    /* renamed from: i */
    private final AbstractC4091b f13229i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException.class */
    public static class InvalidMarkException extends IOException {
        private static final long serialVersionUID = -4338378848813561757L;

        InvalidMarkException(String str) {
            super(str);
        }
    }

    public RecyclableBufferedInputStream(InputStream inputStream, AbstractC4091b abstractC4091b) {
        this(inputStream, abstractC4091b, 65536);
    }

    RecyclableBufferedInputStream(InputStream inputStream, AbstractC4091b abstractC4091b, int i) {
        super(inputStream);
        this.f13227g = -1;
        this.f13229i = abstractC4091b;
        this.f13224d = (byte[]) abstractC4091b.mo23275e(i, byte[].class);
    }

    /* renamed from: a */
    private int m22969a(InputStream inputStream, byte[] bArr) {
        byte[] bArr2;
        int i = this.f13227g;
        if (i != -1) {
            int i2 = this.f13228h;
            int i3 = this.f13226f;
            if (i2 - i < i3) {
                if (i == 0 && i3 > bArr.length && this.f13225e == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i3) {
                        i3 = length;
                    }
                    bArr2 = (byte[]) this.f13229i.mo23275e(i3, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f13224d = bArr2;
                    this.f13229i.mo23276d(bArr);
                } else {
                    bArr2 = bArr;
                    if (i > 0) {
                        System.arraycopy(bArr, i, bArr, 0, bArr.length - i);
                        bArr2 = bArr;
                    }
                }
                int i4 = this.f13228h - this.f13227g;
                this.f13228h = i4;
                this.f13227g = 0;
                this.f13225e = 0;
                int read = inputStream.read(bArr2, i4, bArr2.length - i4);
                int i5 = this.f13228h;
                if (read > 0) {
                    i5 += read;
                }
                this.f13225e = i5;
                return read;
            }
        }
        int read2 = inputStream.read(bArr);
        if (read2 > 0) {
            this.f13227g = -1;
            this.f13228h = 0;
            this.f13225e = read2;
        }
        return read2;
    }

    /* renamed from: g */
    private static IOException m22966g() {
        throw new IOException("BufferedInputStream is closed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        int i;
        int i2;
        int available;
        synchronized (this) {
            InputStream inputStream = ((FilterInputStream) this).in;
            if (this.f13224d == null || inputStream == null) {
                throw m22966g();
            }
            i = this.f13225e;
            i2 = this.f13228h;
            available = inputStream.available();
        }
        return (i - i2) + available;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f13224d != null) {
            this.f13229i.mo23276d(this.f13224d);
            this.f13224d = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    /* renamed from: e */
    public void m22968e() {
        synchronized (this) {
            this.f13226f = this.f13224d.length;
        }
    }

    /* renamed from: f */
    public void m22967f() {
        synchronized (this) {
            if (this.f13224d != null) {
                this.f13229i.mo23276d(this.f13224d);
                this.f13224d = null;
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            this.f13226f = Math.max(this.f13226f, i);
            this.f13227g = this.f13228h;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        synchronized (this) {
            byte[] bArr = this.f13224d;
            InputStream inputStream = ((FilterInputStream) this).in;
            if (bArr == null || inputStream == null) {
                throw m22966g();
            }
            if (this.f13228h >= this.f13225e && m22969a(inputStream, bArr) == -1) {
                return -1;
            }
            byte[] bArr2 = bArr;
            if (bArr != this.f13224d) {
                bArr2 = this.f13224d;
                if (bArr2 == null) {
                    throw m22966g();
                }
            }
            int i = this.f13225e;
            int i2 = this.f13228h;
            if (i - i2 <= 0) {
                return -1;
            }
            this.f13228h = i2 + 1;
            return bArr2[i2] & 255;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        synchronized (this) {
            byte[] bArr2 = this.f13224d;
            if (bArr2 != null) {
                if (i2 == 0) {
                    return 0;
                }
                InputStream inputStream = ((FilterInputStream) this).in;
                if (inputStream == null) {
                    throw m22966g();
                }
                int i6 = this.f13228h;
                int i7 = this.f13225e;
                if (i6 < i7) {
                    int i8 = i7 - i6 >= i2 ? i2 : i7 - i6;
                    System.arraycopy(bArr2, i6, bArr, i, i8);
                    this.f13228h += i8;
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
                    if (this.f13227g == -1 && i4 >= bArr2.length) {
                        int read = inputStream.read(bArr, i3, i4);
                        i5 = read;
                        if (read == -1) {
                            if (i4 != i2) {
                                i10 = i2 - i4;
                            }
                            return i10;
                        }
                    } else if (m22969a(inputStream, bArr2) == -1) {
                        if (i4 != i2) {
                            i10 = i2 - i4;
                        }
                        return i10;
                    } else {
                        byte[] bArr3 = bArr2;
                        if (bArr2 != this.f13224d) {
                            bArr3 = this.f13224d;
                            if (bArr3 == null) {
                                throw m22966g();
                            }
                        }
                        int i11 = this.f13225e;
                        int i12 = this.f13228h;
                        i5 = i11 - i12 >= i4 ? i4 : i11 - i12;
                        System.arraycopy(bArr3, i12, bArr, i3, i5);
                        this.f13228h += i5;
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
            } else {
                throw m22966g();
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        synchronized (this) {
            if (this.f13224d == null) {
                throw new IOException("Stream is closed");
            }
            int i = this.f13227g;
            if (-1 == i) {
                throw new InvalidMarkException("Mark has been invalidated, pos: " + this.f13228h + " markLimit: " + this.f13226f);
            }
            this.f13228h = i;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        synchronized (this) {
            if (j < 1) {
                return 0L;
            }
            byte[] bArr = this.f13224d;
            if (bArr == null) {
                throw m22966g();
            }
            InputStream inputStream = ((FilterInputStream) this).in;
            if (inputStream == null) {
                throw m22966g();
            }
            int i = this.f13225e;
            int i2 = this.f13228h;
            if (i - i2 >= j) {
                this.f13228h = (int) (i2 + j);
                return j;
            }
            long j2 = i - i2;
            this.f13228h = i;
            if (this.f13227g == -1 || j > this.f13226f) {
                long skip = inputStream.skip(j - j2);
                if (skip > 0) {
                    this.f13227g = -1;
                }
                return j2 + skip;
            } else if (m22969a(inputStream, bArr) == -1) {
                return j2;
            } else {
                int i3 = this.f13225e;
                int i4 = this.f13228h;
                if (i3 - i4 >= j - j2) {
                    this.f13228h = (int) ((i4 + j) - j2);
                    return j;
                }
                long j3 = i3;
                long j4 = i4;
                this.f13228h = i3;
                return (j2 + j3) - j4;
            }
        }
    }
}
