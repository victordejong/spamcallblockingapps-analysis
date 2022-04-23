package com.bumptech.glide.load.resource.bitmap;

import com.bumptech.glide.load.engine.a.b;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/v.class */
public final class v extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private volatile byte[] f7693a;

    /* renamed from: b  reason: collision with root package name */
    private int f7694b;

    /* renamed from: c  reason: collision with root package name */
    private int f7695c;

    /* renamed from: d  reason: collision with root package name */
    private int f7696d;
    private int e;
    private final b f;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/v$a.class */
    static final class a extends IOException {
        a(String str) {
            super(str);
        }
    }

    public v(InputStream inputStream, b bVar) {
        this(inputStream, bVar, 65536);
    }

    v(InputStream inputStream, b bVar, int i) {
        super(inputStream);
        this.f7696d = -1;
        this.f = bVar;
        this.f7693a = (byte[]) bVar.a(i, byte[].class);
    }

    private int a(InputStream inputStream, byte[] bArr) throws IOException {
        byte[] bArr2;
        int i = this.f7696d;
        if (i != -1) {
            int i2 = this.e;
            int i3 = this.f7695c;
            if (i2 - i < i3) {
                if (i == 0 && i3 > bArr.length && this.f7694b == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i3) {
                        i3 = length;
                    }
                    bArr2 = (byte[]) this.f.a(i3, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f7693a = bArr2;
                    this.f.a((b) bArr);
                } else {
                    bArr2 = bArr;
                    if (i > 0) {
                        System.arraycopy(bArr, i, bArr, 0, bArr.length - i);
                        bArr2 = bArr;
                    }
                }
                int i4 = this.e - this.f7696d;
                this.e = i4;
                this.f7696d = 0;
                this.f7694b = 0;
                int read = inputStream.read(bArr2, i4, bArr2.length - i4);
                int i5 = this.e;
                if (read > 0) {
                    i5 += read;
                }
                this.f7694b = i5;
                return read;
            }
        }
        int read2 = inputStream.read(bArr);
        if (read2 > 0) {
            this.f7696d = -1;
            this.e = 0;
            this.f7694b = read2;
        }
        return read2;
    }

    private static IOException c() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    public final void a() {
        synchronized (this) {
            this.f7695c = this.f7693a.length;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        int i;
        int i2;
        int available;
        synchronized (this) {
            InputStream inputStream = this.in;
            if (this.f7693a == null || inputStream == null) {
                throw c();
            }
            i = this.f7694b;
            i2 = this.e;
            available = inputStream.available();
        }
        return (i - i2) + available;
    }

    public final void b() {
        synchronized (this) {
            if (this.f7693a != null) {
                this.f.a((b) this.f7693a);
                this.f7693a = null;
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f7693a != null) {
            this.f.a((b) this.f7693a);
            this.f7693a = null;
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
            this.f7695c = Math.max(this.f7695c, i);
            this.f7696d = this.e;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        synchronized (this) {
            byte[] bArr = this.f7693a;
            InputStream inputStream = this.in;
            if (bArr == null || inputStream == null) {
                throw c();
            } else if (this.e >= this.f7694b && a(inputStream, bArr) == -1) {
                return -1;
            } else {
                byte[] bArr2 = bArr;
                if (bArr != this.f7693a) {
                    bArr2 = this.f7693a;
                    if (bArr2 == null) {
                        throw c();
                    }
                }
                int i = this.f7694b;
                int i2 = this.e;
                if (i - i2 <= 0) {
                    return -1;
                }
                this.e = i2 + 1;
                return bArr2[i2] & 255;
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        int i5;
        synchronized (this) {
            byte[] bArr2 = this.f7693a;
            if (bArr2 == null) {
                throw c();
            } else if (i2 == 0) {
                return 0;
            } else {
                InputStream inputStream = this.in;
                if (inputStream != null) {
                    int i6 = this.e;
                    int i7 = this.f7694b;
                    if (i6 < i7) {
                        int i8 = i7 - i6 >= i2 ? i2 : i7 - i6;
                        System.arraycopy(bArr2, i6, bArr, i, i8);
                        this.e += i8;
                        if (i8 == i2 || inputStream.available() == 0) {
                            return i8;
                        }
                        i3 = i + i8;
                        i4 = i2 - i8;
                    } else {
                        i3 = i;
                        i4 = i2;
                    }
                    while (true) {
                        if (this.f7696d == -1 && i4 >= bArr2.length) {
                            int read = inputStream.read(bArr, i3, i4);
                            bArr2 = bArr2;
                            i5 = read;
                            if (read == -1) {
                                if (i4 == i2) {
                                    return -1;
                                }
                                return i2 - i4;
                            }
                        } else if (a(inputStream, bArr2) != -1) {
                            bArr2 = bArr2;
                            if (bArr2 != this.f7693a) {
                                bArr2 = this.f7693a;
                                if (bArr2 == null) {
                                    throw c();
                                }
                            }
                            int i9 = this.f7694b;
                            int i10 = this.e;
                            i5 = i9 - i10 >= i4 ? i4 : i9 - i10;
                            System.arraycopy(bArr2, i10, bArr, i3, i5);
                            this.e += i5;
                        } else if (i4 == i2) {
                            return -1;
                        } else {
                            return i2 - i4;
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
                    throw c();
                }
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() throws IOException {
        synchronized (this) {
            if (this.f7693a != null) {
                int i = this.f7696d;
                if (-1 != i) {
                    this.e = i;
                } else {
                    throw new a("Mark has been invalidated, pos: " + this.e + " markLimit: " + this.f7695c);
                }
            } else {
                throw new IOException("Stream is closed");
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) throws IOException {
        synchronized (this) {
            if (j < 1) {
                return 0L;
            }
            byte[] bArr = this.f7693a;
            if (bArr != null) {
                InputStream inputStream = this.in;
                if (inputStream != null) {
                    int i = this.f7694b;
                    int i2 = this.e;
                    if (i - i2 >= j) {
                        this.e = (int) (i2 + j);
                        return j;
                    }
                    long j2 = i - i2;
                    this.e = i;
                    if (this.f7696d == -1 || j > this.f7695c) {
                        long skip = inputStream.skip(j - j2);
                        if (skip > 0) {
                            this.f7696d = -1;
                        }
                        return j2 + skip;
                    } else if (a(inputStream, bArr) == -1) {
                        return j2;
                    } else {
                        int i3 = this.f7694b;
                        int i4 = this.e;
                        if (i3 - i4 >= j - j2) {
                            this.e = (int) ((i4 + j) - j2);
                            return j;
                        }
                        long j3 = i3;
                        long j4 = i4;
                        this.e = i3;
                        return (j2 + j3) - j4;
                    }
                } else {
                    throw c();
                }
            } else {
                throw c();
            }
        }
    }
}
