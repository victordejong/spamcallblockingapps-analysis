package com.bumptech.glide.load.resource.bitmap;

import com.bumptech.glide.load.engine.p020x.AbstractC0768b;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream.class */
public class RecyclableBufferedInputStream extends FilterInputStream {

    /* renamed from: b */
    private volatile byte[] f3734b;

    /* renamed from: c */
    private int f3735c;

    /* renamed from: d */
    private int f3736d;

    /* renamed from: e */
    private int f3737e;

    /* renamed from: f */
    private int f3738f;

    /* renamed from: g */
    private final AbstractC0768b f3739g;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException.class */
    static class InvalidMarkException extends IOException {
        private static final long serialVersionUID = -4338378848813561757L;

        InvalidMarkException(String str) {
            super(str);
        }
    }

    public RecyclableBufferedInputStream(InputStream inputStream, AbstractC0768b abstractC0768b) {
        this(inputStream, abstractC0768b, 65536);
    }

    RecyclableBufferedInputStream(InputStream inputStream, AbstractC0768b abstractC0768b, int i) {
        super(inputStream);
        this.f3737e = -1;
        this.f3739g = abstractC0768b;
        this.f3734b = (byte[]) abstractC0768b.m11070d(i, byte[].class);
    }

    /* renamed from: B */
    private static IOException m10915B() {
        throw new IOException("BufferedInputStream is closed");
    }

    /* renamed from: a */
    private int m10914a(InputStream inputStream, byte[] bArr) {
        byte[] bArr2;
        int i = this.f3737e;
        if (i != -1) {
            int i2 = this.f3738f;
            int i3 = this.f3736d;
            if (i2 - i < i3) {
                if (i == 0 && i3 > bArr.length && this.f3735c == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i3) {
                        i3 = length;
                    }
                    bArr2 = (byte[]) this.f3739g.m11070d(i3, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f3734b = bArr2;
                    this.f3739g.put(bArr);
                } else {
                    bArr2 = bArr;
                    if (i > 0) {
                        System.arraycopy(bArr, i, bArr, 0, bArr.length - i);
                        bArr2 = bArr;
                    }
                }
                int i4 = this.f3738f - this.f3737e;
                this.f3738f = i4;
                this.f3737e = 0;
                this.f3735c = 0;
                int read = inputStream.read(bArr2, i4, bArr2.length - i4);
                int i5 = this.f3738f;
                if (read > 0) {
                    i5 += read;
                }
                this.f3735c = i5;
                return read;
            }
        }
        int read2 = inputStream.read(bArr);
        if (read2 > 0) {
            this.f3737e = -1;
            this.f3738f = 0;
            this.f3735c = read2;
        }
        return read2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        int i;
        int i2;
        int available;
        synchronized (this) {
            InputStream inputStream = ((FilterInputStream) this).in;
            if (this.f3734b == null || inputStream == null) {
                m10915B();
                throw null;
            }
            i = this.f3735c;
            i2 = this.f3738f;
            available = inputStream.available();
        }
        return (i - i2) + available;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f3734b != null) {
            this.f3739g.put(this.f3734b);
            this.f3734b = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            this.f3736d = Math.max(this.f3736d, i);
            this.f3737e = this.f3738f;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    /* renamed from: p */
    public void m10913p() {
        synchronized (this) {
            this.f3736d = this.f3734b.length;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        synchronized (this) {
            byte[] bArr = this.f3734b;
            InputStream inputStream = ((FilterInputStream) this).in;
            if (bArr == null || inputStream == null) {
                m10915B();
                throw null;
            } else if (this.f3738f >= this.f3735c && m10914a(inputStream, bArr) == -1) {
                return -1;
            } else {
                byte[] bArr2 = bArr;
                if (bArr != this.f3734b) {
                    bArr2 = this.f3734b;
                    if (bArr2 == null) {
                        m10915B();
                        throw null;
                    }
                }
                int i = this.f3735c;
                int i2 = this.f3738f;
                if (i - i2 <= 0) {
                    return -1;
                }
                this.f3738f = i2 + 1;
                return bArr2[i2] & 255;
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        byte[] bArr2;
        int i5;
        synchronized (this) {
            byte[] bArr3 = this.f3734b;
            if (bArr3 == null) {
                m10915B();
                throw null;
            } else if (i2 == 0) {
                return 0;
            } else {
                InputStream inputStream = ((FilterInputStream) this).in;
                if (inputStream == null) {
                    m10915B();
                    throw null;
                }
                int i6 = this.f3738f;
                int i7 = this.f3735c;
                if (i6 < i7) {
                    int i8 = i7 - i6 >= i2 ? i2 : i7 - i6;
                    System.arraycopy(bArr3, i6, bArr, i, i8);
                    this.f3738f += i8;
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
                    if (this.f3737e == -1 && i4 >= bArr3.length) {
                        int read = inputStream.read(bArr, i3, i4);
                        bArr2 = bArr3;
                        i5 = read;
                        if (read == -1) {
                            if (i4 != i2) {
                                i10 = i2 - i4;
                            }
                            return i10;
                        }
                    } else if (m10914a(inputStream, bArr3) == -1) {
                        if (i4 != i2) {
                            i10 = i2 - i4;
                        }
                        return i10;
                    } else {
                        bArr2 = bArr3;
                        if (bArr3 != this.f3734b) {
                            bArr2 = this.f3734b;
                            if (bArr2 == null) {
                                m10915B();
                                throw null;
                            }
                        }
                        int i11 = this.f3735c;
                        int i12 = this.f3738f;
                        int i13 = i11 - i12 >= i4 ? i4 : i11 - i12;
                        System.arraycopy(bArr2, i12, bArr, i3, i13);
                        this.f3738f += i13;
                        i5 = i13;
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
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        synchronized (this) {
            if (this.f3734b == null) {
                throw new IOException("Stream is closed");
            }
            int i = this.f3737e;
            if (-1 == i) {
                throw new InvalidMarkException("Mark has been invalidated, pos: " + this.f3738f + " markLimit: " + this.f3736d);
            }
            this.f3738f = i;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        synchronized (this) {
            if (j < 1) {
                return 0L;
            }
            byte[] bArr = this.f3734b;
            if (bArr == null) {
                m10915B();
                throw null;
            }
            InputStream inputStream = ((FilterInputStream) this).in;
            if (inputStream == null) {
                m10915B();
                throw null;
            }
            int i = this.f3735c;
            int i2 = this.f3738f;
            if (i - i2 >= j) {
                this.f3738f = (int) (i2 + j);
                return j;
            }
            long j2 = i - i2;
            this.f3738f = i;
            if (this.f3737e == -1 || j > this.f3736d) {
                long skip = inputStream.skip(j - j2);
                if (skip > 0) {
                    this.f3737e = -1;
                }
                return j2 + skip;
            } else if (m10914a(inputStream, bArr) == -1) {
                return j2;
            } else {
                int i3 = this.f3735c;
                int i4 = this.f3738f;
                if (i3 - i4 >= j - j2) {
                    this.f3738f = (int) ((i4 + j) - j2);
                    return j;
                }
                long j3 = i3;
                long j4 = i4;
                this.f3738f = i3;
                return (j2 + j3) - j4;
            }
        }
    }

    /* renamed from: x */
    public void m10912x() {
        synchronized (this) {
            if (this.f3734b != null) {
                this.f3739g.put(this.f3734b);
                this.f3734b = null;
            }
        }
    }
}
