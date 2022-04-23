package com.esotericsoftware.kryo.a;

import com.esotericsoftware.kryo.KryoException;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/a/c.class */
public class c extends OutputStream implements AutoCloseable {

    /* renamed from: a  reason: collision with root package name */
    protected int f18960a;

    /* renamed from: b  reason: collision with root package name */
    protected long f18961b;

    /* renamed from: c  reason: collision with root package name */
    protected int f18962c;

    /* renamed from: d  reason: collision with root package name */
    protected int f18963d;
    protected byte[] e;
    protected OutputStream f;
    protected boolean g;

    public c() {
        this.g = true;
    }

    public c(int i) {
        this(i, i);
    }

    public c(int i, int i2) {
        this.g = true;
        if (i > i2 && i2 != -1) {
            throw new IllegalArgumentException("bufferSize: " + i + " cannot be greater than maxBufferSize: " + i2);
        } else if (i2 >= -1) {
            this.f18963d = i;
            this.f18960a = i2 == -1 ? 2147483639 : i2;
            this.e = new byte[i];
        } else {
            throw new IllegalArgumentException("maxBufferSize cannot be < -1: ".concat(String.valueOf(i2)));
        }
    }

    public c(OutputStream outputStream) {
        this(4096, 4096);
        if (outputStream != null) {
            this.f = outputStream;
            return;
        }
        throw new IllegalArgumentException("outputStream cannot be null.");
    }

    public c(OutputStream outputStream, int i) {
        this(i, i);
        if (outputStream != null) {
            this.f = outputStream;
            return;
        }
        throw new IllegalArgumentException("outputStream cannot be null.");
    }

    public c(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public c(byte[] bArr, int i) {
        this.g = true;
        if (bArr == null) {
            throw new IllegalArgumentException("buffer cannot be null.");
        } else if (bArr == null) {
            throw new IllegalArgumentException("buffer cannot be null.");
        } else if (bArr.length > i && i != -1) {
            throw new IllegalArgumentException("buffer has length: " + bArr.length + " cannot be greater than maxBufferSize: " + i);
        } else if (i >= -1) {
            this.e = bArr;
            this.f18960a = i == -1 ? 2147483639 : i;
            this.f18963d = bArr.length;
            this.f18962c = 0;
            this.f18961b = 0L;
            this.f = null;
        } else {
            throw new IllegalArgumentException("maxBufferSize cannot be < -1: ".concat(String.valueOf(i)));
        }
    }

    private void a(String str, int i) throws KryoException {
        if (i != 0) {
            if (this.f18962c == this.f18963d) {
                d(1);
            }
            int i2 = 0;
            byte[] bArr = this.e;
            int min = Math.min(i, this.f18963d - this.f18962c);
            while (i2 < i) {
                int i3 = i2 + min;
                str.getBytes(i2, i3, bArr, this.f18962c);
                this.f18962c += min;
                min = Math.min(i - i3, this.f18963d);
                if (d(min)) {
                    bArr = this.e;
                }
                i2 = i3;
            }
        }
    }

    private void a(byte[] bArr, int i, int i2) throws KryoException {
        if (bArr != null) {
            int min = Math.min(this.f18963d - this.f18962c, i2);
            int i3 = i2;
            int i4 = i;
            while (true) {
                System.arraycopy(bArr, i4, this.e, this.f18962c, min);
                this.f18962c += min;
                i3 -= min;
                if (i3 != 0) {
                    i4 += min;
                    min = Math.min(Math.max(this.f18963d, 1), i3);
                    d(min);
                } else {
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException("bytes cannot be null.");
        }
    }

    private boolean d(int i) throws KryoException {
        int min;
        int i2;
        if (this.f18963d - this.f18962c >= i) {
            return false;
        }
        flush();
        int i3 = this.f18963d;
        int i4 = this.f18962c;
        if (i3 - i4 >= i) {
            return true;
        }
        int i5 = this.f18960a;
        if (i <= i5 - i4) {
            if (i3 == 0) {
                this.f18963d = 16;
            }
            do {
                min = Math.min(this.f18963d * 2, this.f18960a);
                this.f18963d = min;
                i2 = this.f18962c;
            } while (min - i2 < i);
            byte[] bArr = new byte[min];
            System.arraycopy(this.e, 0, bArr, 0, i2);
            this.e = bArr;
            return true;
        } else if (i > i5) {
            throw new KryoException("Buffer overflow. Max capacity: " + this.f18960a + ", required: " + i);
        } else {
            throw new KryoException("Buffer overflow. Available: " + (this.f18960a - this.f18962c) + ", required: " + i);
        }
    }

    public final int a(int i, boolean z) throws KryoException {
        if (this.g) {
            return b(i, z);
        }
        b(i);
        return 4;
    }

    public final int a(long j, boolean z) throws KryoException {
        if (!z) {
            j = (j << 1) ^ (j >> 63);
        }
        long j2 = j >>> 7;
        if (j2 == 0) {
            if (this.f18962c == this.f18963d) {
                d(1);
            }
            byte[] bArr = this.e;
            int i = this.f18962c;
            this.f18962c = i + 1;
            bArr[i] = (byte) j;
            return 1;
        }
        long j3 = j >>> 14;
        if (j3 == 0) {
            d(2);
            int i2 = this.f18962c;
            this.f18962c = i2 + 2;
            byte[] bArr2 = this.e;
            bArr2[i2] = (byte) ((j & 127) | 128);
            bArr2[i2 + 1] = (byte) j2;
            return 2;
        }
        long j4 = j >>> 21;
        if (j4 == 0) {
            d(3);
            int i3 = this.f18962c;
            this.f18962c = i3 + 3;
            byte[] bArr3 = this.e;
            bArr3[i3] = (byte) ((j & 127) | 128);
            bArr3[i3 + 1] = (byte) (j2 | 128);
            bArr3[i3 + 2] = (byte) j3;
            return 3;
        }
        long j5 = j >>> 28;
        if (j5 == 0) {
            d(4);
            int i4 = this.f18962c;
            this.f18962c = i4 + 4;
            byte[] bArr4 = this.e;
            bArr4[i4] = (byte) ((j & 127) | 128);
            bArr4[i4 + 1] = (byte) (j2 | 128);
            bArr4[i4 + 2] = (byte) (j3 | 128);
            bArr4[i4 + 3] = (byte) j4;
            return 4;
        }
        long j6 = j >>> 35;
        if (j6 == 0) {
            d(5);
            int i5 = this.f18962c;
            this.f18962c = i5 + 5;
            byte[] bArr5 = this.e;
            bArr5[i5] = (byte) ((j & 127) | 128);
            bArr5[i5 + 1] = (byte) (j2 | 128);
            bArr5[i5 + 2] = (byte) (j3 | 128);
            bArr5[i5 + 3] = (byte) (j4 | 128);
            bArr5[i5 + 4] = (byte) j5;
            return 5;
        }
        long j7 = j >>> 42;
        if (j7 == 0) {
            d(6);
            int i6 = this.f18962c;
            this.f18962c = i6 + 6;
            byte[] bArr6 = this.e;
            bArr6[i6] = (byte) ((j & 127) | 128);
            bArr6[i6 + 1] = (byte) (j2 | 128);
            bArr6[i6 + 2] = (byte) (j3 | 128);
            bArr6[i6 + 3] = (byte) (j4 | 128);
            bArr6[i6 + 4] = (byte) (j5 | 128);
            bArr6[i6 + 5] = (byte) j6;
            return 6;
        }
        long j8 = j >>> 49;
        if (j8 == 0) {
            d(7);
            int i7 = this.f18962c;
            this.f18962c = i7 + 7;
            byte[] bArr7 = this.e;
            bArr7[i7] = (byte) ((j & 127) | 128);
            bArr7[i7 + 1] = (byte) (j2 | 128);
            bArr7[i7 + 2] = (byte) (j3 | 128);
            bArr7[i7 + 3] = (byte) (j4 | 128);
            bArr7[i7 + 4] = (byte) (j5 | 128);
            bArr7[i7 + 5] = (byte) (j6 | 128);
            bArr7[i7 + 6] = (byte) j7;
            return 7;
        }
        long j9 = j >>> 56;
        if (j9 == 0) {
            d(8);
            int i8 = this.f18962c;
            this.f18962c = i8 + 8;
            byte[] bArr8 = this.e;
            bArr8[i8] = (byte) ((j & 127) | 128);
            bArr8[i8 + 1] = (byte) (j2 | 128);
            bArr8[i8 + 2] = (byte) (j3 | 128);
            bArr8[i8 + 3] = (byte) (j4 | 128);
            bArr8[i8 + 4] = (byte) (j5 | 128);
            bArr8[i8 + 5] = (byte) (j6 | 128);
            bArr8[i8 + 6] = (byte) (j7 | 128);
            bArr8[i8 + 7] = (byte) j8;
            return 8;
        }
        d(9);
        int i9 = this.f18962c;
        this.f18962c = i9 + 9;
        byte[] bArr9 = this.e;
        bArr9[i9] = (byte) ((j & 127) | 128);
        bArr9[i9 + 1] = (byte) (j2 | 128);
        bArr9[i9 + 2] = (byte) (j3 | 128);
        bArr9[i9 + 3] = (byte) (j4 | 128);
        bArr9[i9 + 4] = (byte) (j5 | 128);
        bArr9[i9 + 5] = (byte) (j6 | 128);
        bArr9[i9 + 6] = (byte) (j7 | 128);
        bArr9[i9 + 7] = (byte) (j8 | 128);
        bArr9[i9 + 8] = (byte) j9;
        return 9;
    }

    public final int a(boolean z, int i) throws KryoException {
        int i2 = (z ? 128 : 0) | (i & 63);
        int i3 = i >>> 6;
        if (i3 == 0) {
            if (this.f18962c == this.f18963d) {
                d(1);
            }
            byte[] bArr = this.e;
            int i4 = this.f18962c;
            this.f18962c = i4 + 1;
            bArr[i4] = (byte) i2;
            return 1;
        }
        int i5 = i >>> 13;
        if (i5 == 0) {
            d(2);
            int i6 = this.f18962c;
            this.f18962c = i6 + 2;
            byte[] bArr2 = this.e;
            bArr2[i6] = (byte) (i2 | 64);
            bArr2[i6 + 1] = (byte) i3;
            return 2;
        }
        int i7 = i >>> 20;
        if (i7 == 0) {
            d(3);
            byte[] bArr3 = this.e;
            int i8 = this.f18962c;
            this.f18962c = i8 + 3;
            bArr3[i8] = (byte) (i2 | 64);
            bArr3[i8 + 1] = (byte) (i3 | 128);
            bArr3[i8 + 2] = (byte) i5;
            return 3;
        }
        int i9 = i >>> 27;
        if (i9 == 0) {
            d(4);
            byte[] bArr4 = this.e;
            int i10 = this.f18962c;
            this.f18962c = i10 + 4;
            bArr4[i10] = (byte) (i2 | 64);
            bArr4[i10 + 1] = (byte) (i3 | 128);
            bArr4[i10 + 2] = (byte) (i5 | 128);
            bArr4[i10 + 3] = (byte) i7;
            return 4;
        }
        d(5);
        byte[] bArr5 = this.e;
        int i11 = this.f18962c;
        this.f18962c = i11 + 5;
        bArr5[i11] = (byte) (i2 | 64);
        bArr5[i11 + 1] = (byte) (i3 | 128);
        bArr5[i11 + 2] = (byte) (i5 | 128);
        bArr5[i11 + 3] = (byte) (i7 | 128);
        bArr5[i11 + 4] = (byte) i9;
        return 5;
    }

    public final OutputStream a() {
        return this.f;
    }

    public final void a(byte b2) throws KryoException {
        if (this.f18962c == this.f18963d) {
            d(1);
        }
        byte[] bArr = this.e;
        int i = this.f18962c;
        this.f18962c = i + 1;
        bArr[i] = b2;
    }

    public final void a(char c2) throws KryoException {
        d(2);
        int i = this.f18962c;
        this.f18962c = i + 2;
        byte[] bArr = this.e;
        bArr[i] = (byte) c2;
        bArr[i + 1] = (byte) (c2 >>> '\b');
    }

    public final void a(double d2) throws KryoException {
        d(8);
        byte[] bArr = this.e;
        int i = this.f18962c;
        this.f18962c = i + 8;
        long doubleToLongBits = Double.doubleToLongBits(d2);
        bArr[i] = (byte) doubleToLongBits;
        bArr[i + 1] = (byte) (doubleToLongBits >>> 8);
        bArr[i + 2] = (byte) (doubleToLongBits >>> 16);
        bArr[i + 3] = (byte) (doubleToLongBits >>> 24);
        bArr[i + 4] = (byte) (doubleToLongBits >>> 32);
        bArr[i + 5] = (byte) (doubleToLongBits >>> 40);
        bArr[i + 6] = (byte) (doubleToLongBits >>> 48);
        bArr[i + 7] = (byte) (doubleToLongBits >>> 56);
    }

    public final void a(float f) throws KryoException {
        d(4);
        byte[] bArr = this.e;
        int i = this.f18962c;
        this.f18962c = i + 4;
        int floatToIntBits = Float.floatToIntBits(f);
        bArr[i] = (byte) floatToIntBits;
        bArr[i + 1] = (byte) (floatToIntBits >> 8);
        bArr[i + 2] = (byte) (floatToIntBits >> 16);
        bArr[i + 3] = (byte) (floatToIntBits >> 24);
    }

    public final void a(int i) throws KryoException {
        if (this.f18962c == this.f18963d) {
            d(1);
        }
        byte[] bArr = this.e;
        int i2 = this.f18962c;
        this.f18962c = i2 + 1;
        bArr[i2] = (byte) i;
    }

    public final void a(long j) throws KryoException {
        d(8);
        byte[] bArr = this.e;
        int i = this.f18962c;
        this.f18962c = i + 8;
        bArr[i] = (byte) j;
        bArr[i + 1] = (byte) (j >>> 8);
        bArr[i + 2] = (byte) (j >>> 16);
        bArr[i + 3] = (byte) (j >>> 24);
        bArr[i + 4] = (byte) (j >>> 32);
        bArr[i + 5] = (byte) (j >>> 40);
        bArr[i + 6] = (byte) (j >>> 48);
        bArr[i + 7] = (byte) (j >>> 56);
    }

    public final void a(String str) throws KryoException {
        char charAt;
        byte[] bArr;
        int i;
        if (str == null) {
            a(128);
            return;
        }
        int length = str.length();
        if (length == 0) {
            a(129);
            return;
        }
        int i2 = 0;
        i2 = 0;
        if (length > 1 && length <= 32) {
            for (int i3 = 0; i3 < length; i3++) {
                if (str.charAt(i3) <= 127) {
                }
            }
            int i4 = this.f18963d;
            int i5 = this.f18962c;
            if (i4 - i5 < length) {
                a(str, length);
            } else {
                str.getBytes(0, length, this.e, i5);
                this.f18962c += length;
            }
            this.e[this.f18962c - 1] = (byte) (128 | bArr[i]);
            return;
        }
        a(true, length + 1);
        int i6 = this.f18963d;
        int i7 = this.f18962c;
        if (i6 - i7 >= length) {
            byte[] bArr2 = this.e;
            int i8 = i7;
            while (true) {
                if (str.charAt(i2) > 127) {
                    this.f18962c = i8;
                    break;
                }
                int i9 = i8 + 1;
                bArr2[i8] = (byte) charAt;
                i2++;
                if (i2 == length) {
                    this.f18962c = i9;
                    return;
                }
                i8 = i9;
            }
        }
        if (i2 < length) {
            while (i2 < length) {
                int i10 = this.f18962c;
                int i11 = this.f18963d;
                if (i10 == i11) {
                    d(Math.min(i11, length - i2));
                }
                char charAt2 = str.charAt(i2);
                if (charAt2 <= 127) {
                    byte[] bArr3 = this.e;
                    int i12 = this.f18962c;
                    this.f18962c = i12 + 1;
                    bArr3[i12] = (byte) charAt2;
                } else {
                    if (charAt2 > 2047) {
                        byte[] bArr4 = this.e;
                        int i13 = this.f18962c;
                        this.f18962c = i13 + 1;
                        bArr4[i13] = (byte) (((charAt2 >> '\f') & 15) | 224);
                        d(2);
                        byte[] bArr5 = this.e;
                        int i14 = this.f18962c;
                        this.f18962c = i14 + 1;
                        bArr5[i14] = (byte) (((charAt2 >> 6) & 63) | 128);
                    } else {
                        byte[] bArr6 = this.e;
                        int i15 = this.f18962c;
                        int i16 = i15 + 1;
                        this.f18962c = i16;
                        bArr6[i15] = (byte) (((charAt2 >> 6) & 31) | 192);
                        if (i16 == this.f18963d) {
                            d(1);
                        }
                    }
                    byte[] bArr7 = this.e;
                    int i17 = this.f18962c;
                    this.f18962c = i17 + 1;
                    bArr7[i17] = (byte) ((charAt2 & '?') | 128);
                }
                i2++;
            }
        }
    }

    public final void a(boolean z) throws KryoException {
        if (this.f18962c == this.f18963d) {
            d(1);
        }
        byte[] bArr = this.e;
        int i = this.f18962c;
        this.f18962c = i + 1;
        bArr[i] = z ? (byte) 1 : (byte) 0;
    }

    public final void a(byte[] bArr) throws KryoException {
        if (bArr != null) {
            a(bArr, 0, bArr.length);
            return;
        }
        throw new IllegalArgumentException("bytes cannot be null.");
    }

    public final void a(char[] cArr, int i, int i2) throws KryoException {
        int i3 = i2 << 1;
        if (this.f18963d >= i3) {
            d(i3);
            byte[] bArr = this.e;
            int i4 = this.f18962c;
            while (i < i2 + 0) {
                char c2 = cArr[i];
                bArr[i4] = (byte) c2;
                bArr[i4 + 1] = (byte) (c2 >>> '\b');
                i++;
                i4 += 2;
            }
            this.f18962c = i4;
            return;
        }
        while (i < i2 + 0) {
            a(cArr[i]);
            i++;
        }
    }

    public final void a(double[] dArr, int i, int i2) throws KryoException {
        int i3 = i2 << 3;
        if (this.f18963d >= i3) {
            d(i3);
            byte[] bArr = this.e;
            int i4 = this.f18962c;
            int i5 = i;
            while (i5 < i2 + 0) {
                long doubleToLongBits = Double.doubleToLongBits(dArr[i5]);
                bArr[i4] = (byte) doubleToLongBits;
                bArr[i4 + 1] = (byte) (doubleToLongBits >>> 8);
                bArr[i4 + 2] = (byte) (doubleToLongBits >>> 16);
                bArr[i4 + 3] = (byte) (doubleToLongBits >>> 24);
                bArr[i4 + 4] = (byte) (doubleToLongBits >>> 32);
                bArr[i4 + 5] = (byte) (doubleToLongBits >>> 40);
                bArr[i4 + 6] = (byte) (doubleToLongBits >>> 48);
                bArr[i4 + 7] = (byte) (doubleToLongBits >>> 56);
                i5++;
                i4 += 8;
            }
            this.f18962c = i4;
            return;
        }
        while (i < i2 + 0) {
            a(dArr[i]);
            i++;
        }
    }

    public final void a(float[] fArr, int i, int i2) throws KryoException {
        int i3 = i2 << 2;
        if (this.f18963d >= i3) {
            d(i3);
            byte[] bArr = this.e;
            int i4 = this.f18962c;
            int i5 = i;
            while (i5 < i2 + 0) {
                int floatToIntBits = Float.floatToIntBits(fArr[i5]);
                bArr[i4] = (byte) floatToIntBits;
                bArr[i4 + 1] = (byte) (floatToIntBits >> 8);
                bArr[i4 + 2] = (byte) (floatToIntBits >> 16);
                bArr[i4 + 3] = (byte) (floatToIntBits >> 24);
                i5++;
                i4 += 4;
            }
            this.f18962c = i4;
            return;
        }
        while (i < i2 + 0) {
            a(fArr[i]);
            i++;
        }
    }

    public final void a(int[] iArr, int i, int i2) throws KryoException {
        int i3 = 0;
        if (this.g) {
            while (i < i2 + 0) {
                b(iArr[i], false);
                i++;
            }
            return;
        }
        int i4 = i2 << 2;
        if (this.f18963d >= i4) {
            d(i4);
            byte[] bArr = this.e;
            int i5 = this.f18962c;
            while (i3 < i2 + 0) {
                int i6 = iArr[i3];
                bArr[i5] = (byte) i6;
                bArr[i5 + 1] = (byte) (i6 >> 8);
                bArr[i5 + 2] = (byte) (i6 >> 16);
                bArr[i5 + 3] = (byte) (i6 >> 24);
                i3++;
                i5 += 4;
            }
            this.f18962c = i5;
            return;
        }
        for (int i7 = 0; i7 < i2 + 0; i7++) {
            b(iArr[i7]);
        }
    }

    public final void a(long[] jArr, int i, int i2) throws KryoException {
        int i3 = i2 << 3;
        if (this.f18963d >= i3) {
            d(i3);
            byte[] bArr = this.e;
            int i4 = this.f18962c;
            int i5 = i;
            while (i5 < i2 + 0) {
                long j = jArr[i5];
                bArr[i4] = (byte) j;
                bArr[i4 + 1] = (byte) (j >>> 8);
                bArr[i4 + 2] = (byte) (j >>> 16);
                bArr[i4 + 3] = (byte) (j >>> 24);
                bArr[i4 + 4] = (byte) (j >>> 32);
                bArr[i4 + 5] = (byte) (j >>> 40);
                bArr[i4 + 6] = (byte) (j >>> 48);
                bArr[i4 + 7] = (byte) (j >>> 56);
                i5++;
                i4 += 8;
            }
            this.f18962c = i4;
            return;
        }
        while (i < i2 + 0) {
            a(jArr[i]);
            i++;
        }
    }

    public final void a(short[] sArr, int i, int i2) throws KryoException {
        int i3 = i2 << 1;
        if (this.f18963d >= i3) {
            d(i3);
            byte[] bArr = this.e;
            int i4 = this.f18962c;
            int i5 = i;
            while (i5 < i2 + 0) {
                short s = sArr[i5];
                bArr[i4] = (byte) s;
                bArr[i4 + 1] = (byte) (s >>> 8);
                i5++;
                i4 += 2;
            }
            this.f18962c = i4;
            return;
        }
        while (i < i2 + 0) {
            c(sArr[i]);
            i++;
        }
    }

    public final int b() {
        return this.f18962c;
    }

    public final int b(int i, boolean z) throws KryoException {
        int i2 = i;
        if (!z) {
            i2 = (i >> 31) ^ (i << 1);
        }
        int i3 = i2 >>> 7;
        if (i3 == 0) {
            if (this.f18962c == this.f18963d) {
                d(1);
            }
            byte[] bArr = this.e;
            int i4 = this.f18962c;
            this.f18962c = i4 + 1;
            bArr[i4] = (byte) i2;
            return 1;
        }
        int i5 = i2 >>> 14;
        if (i5 == 0) {
            d(2);
            int i6 = this.f18962c;
            this.f18962c = i6 + 2;
            byte[] bArr2 = this.e;
            bArr2[i6] = (byte) ((i2 & 127) | 128);
            bArr2[i6 + 1] = (byte) i3;
            return 2;
        }
        int i7 = i2 >>> 21;
        if (i7 == 0) {
            d(3);
            int i8 = this.f18962c;
            this.f18962c = i8 + 3;
            byte[] bArr3 = this.e;
            bArr3[i8] = (byte) ((i2 & 127) | 128);
            bArr3[i8 + 1] = (byte) (i3 | 128);
            bArr3[i8 + 2] = (byte) i5;
            return 3;
        }
        int i9 = i2 >>> 28;
        if (i9 == 0) {
            d(4);
            int i10 = this.f18962c;
            this.f18962c = i10 + 4;
            byte[] bArr4 = this.e;
            bArr4[i10] = (byte) ((i2 & 127) | 128);
            bArr4[i10 + 1] = (byte) (i3 | 128);
            bArr4[i10 + 2] = (byte) (i5 | 128);
            bArr4[i10 + 3] = (byte) i7;
            return 4;
        }
        d(5);
        int i11 = this.f18962c;
        this.f18962c = i11 + 5;
        byte[] bArr5 = this.e;
        bArr5[i11] = (byte) ((i2 & 127) | 128);
        bArr5[i11 + 1] = (byte) (i3 | 128);
        bArr5[i11 + 2] = (byte) (i5 | 128);
        bArr5[i11 + 3] = (byte) (i7 | 128);
        bArr5[i11 + 4] = (byte) i9;
        return 5;
    }

    public final void b(int i) throws KryoException {
        d(4);
        byte[] bArr = this.e;
        int i2 = this.f18962c;
        this.f18962c = i2 + 4;
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >> 8);
        bArr[i2 + 2] = (byte) (i >> 16);
        bArr[i2 + 3] = (byte) (i >> 24);
    }

    public final void b(String str) throws KryoException {
        byte[] bArr;
        int i;
        if (str == null) {
            a(128);
            return;
        }
        int length = str.length();
        if (length == 0) {
            a(129);
        } else if (length != 1) {
            int i2 = this.f18963d;
            int i3 = this.f18962c;
            if (i2 - i3 < length) {
                a(str, length);
            } else {
                str.getBytes(0, length, this.e, i3);
                this.f18962c += length;
            }
            this.e[this.f18962c - 1] = (byte) (128 | bArr[i]);
        } else {
            d(2);
            byte[] bArr2 = this.e;
            int i4 = this.f18962c;
            int i5 = i4 + 1;
            this.f18962c = i5;
            bArr2[i4] = (byte) (-126);
            this.f18962c = i5 + 1;
            bArr2[i5] = (byte) str.charAt(0);
        }
    }

    public final void b(long[] jArr, int i, int i2) throws KryoException {
        if (this.g) {
            while (i < i2 + 0) {
                a(jArr[i], false);
                i++;
            }
            return;
        }
        a(jArr, 0, i2);
    }

    public final void c(int i) throws KryoException {
        d(2);
        int i2 = this.f18962c;
        this.f18962c = i2 + 2;
        byte[] bArr = this.e;
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws KryoException {
        flush();
        OutputStream outputStream = this.f;
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e) {
            }
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws KryoException {
        OutputStream outputStream = this.f;
        if (outputStream != null) {
            try {
                outputStream.write(this.e, 0, this.f18962c);
                this.f.flush();
                this.f18961b += this.f18962c;
                this.f18962c = 0;
            } catch (IOException e) {
                throw new KryoException(e);
            }
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws KryoException {
        if (this.f18962c == this.f18963d) {
            d(1);
        }
        byte[] bArr = this.e;
        int i2 = this.f18962c;
        this.f18962c = i2 + 1;
        bArr[i2] = (byte) i;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws KryoException {
        if (bArr != null) {
            a(bArr, 0, bArr.length);
            return;
        }
        throw new IllegalArgumentException("bytes cannot be null.");
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws KryoException {
        a(bArr, i, i2);
    }
}
