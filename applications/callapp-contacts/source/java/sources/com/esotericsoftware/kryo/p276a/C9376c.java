package com.esotericsoftware.kryo.p276a;

import com.esotericsoftware.kryo.KryoException;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.esotericsoftware.kryo.a.c */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/a/c.class */
public class C9376c extends OutputStream implements AutoCloseable {

    /* renamed from: a */
    protected int f32213a;

    /* renamed from: b */
    protected long f32214b;

    /* renamed from: c */
    protected int f32215c;

    /* renamed from: d */
    protected int f32216d;

    /* renamed from: e */
    protected byte[] f32217e;

    /* renamed from: f */
    protected OutputStream f32218f;

    /* renamed from: g */
    protected boolean f32219g;

    public C9376c() {
        this.f32219g = true;
    }

    public C9376c(int i) {
        this(i, i);
    }

    public C9376c(int i, int i2) {
        this.f32219g = true;
        if (i > i2 && i2 != -1) {
            throw new IllegalArgumentException("bufferSize: " + i + " cannot be greater than maxBufferSize: " + i2);
        } else if (i2 < -1) {
            throw new IllegalArgumentException("maxBufferSize cannot be < -1: ".concat(String.valueOf(i2)));
        } else {
            this.f32216d = i;
            this.f32213a = i2 == -1 ? 2147483639 : i2;
            this.f32217e = new byte[i];
        }
    }

    public C9376c(OutputStream outputStream) {
        this(4096, 4096);
        if (outputStream != null) {
            this.f32218f = outputStream;
            return;
        }
        throw new IllegalArgumentException("outputStream cannot be null.");
    }

    public C9376c(OutputStream outputStream, int i) {
        this(i, i);
        if (outputStream != null) {
            this.f32218f = outputStream;
            return;
        }
        throw new IllegalArgumentException("outputStream cannot be null.");
    }

    public C9376c(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public C9376c(byte[] bArr, int i) {
        this.f32219g = true;
        if (bArr != null) {
            if (bArr == null) {
                throw new IllegalArgumentException("buffer cannot be null.");
            }
            if (bArr.length > i && i != -1) {
                throw new IllegalArgumentException("buffer has length: " + bArr.length + " cannot be greater than maxBufferSize: " + i);
            } else if (i < -1) {
                throw new IllegalArgumentException("maxBufferSize cannot be < -1: ".concat(String.valueOf(i)));
            } else {
                this.f32217e = bArr;
                this.f32213a = i == -1 ? 2147483639 : i;
                this.f32216d = bArr.length;
                this.f32215c = 0;
                this.f32214b = 0L;
                this.f32218f = null;
                return;
            }
        }
        throw new IllegalArgumentException("buffer cannot be null.");
    }

    /* renamed from: a */
    private void m24415a(String str, int i) throws KryoException {
        if (i == 0) {
            return;
        }
        if (this.f32215c == this.f32216d) {
            m24398d(1);
        }
        int i2 = 0;
        byte[] bArr = this.f32217e;
        int min = Math.min(i, this.f32216d - this.f32215c);
        while (i2 < i) {
            int i3 = i2 + min;
            str.getBytes(i2, i3, bArr, this.f32215c);
            this.f32215c += min;
            min = Math.min(i - i3, this.f32216d);
            if (m24398d(min)) {
                bArr = this.f32217e;
            }
            i2 = i3;
        }
    }

    /* renamed from: a */
    private void m24411a(byte[] bArr, int i, int i2) throws KryoException {
        if (bArr != null) {
            int min = Math.min(this.f32216d - this.f32215c, i2);
            int i3 = i2;
            int i4 = i;
            int i5 = min;
            while (true) {
                System.arraycopy(bArr, i4, this.f32217e, this.f32215c, i5);
                this.f32215c += i5;
                i3 -= i5;
                if (i3 == 0) {
                    return;
                }
                i4 += i5;
                i5 = Math.min(Math.max(this.f32216d, 1), i3);
                m24398d(i5);
            }
        } else {
            throw new IllegalArgumentException("bytes cannot be null.");
        }
    }

    /* renamed from: d */
    private boolean m24398d(int i) throws KryoException {
        int min;
        int i2;
        if (this.f32216d - this.f32215c >= i) {
            return false;
        }
        flush();
        int i3 = this.f32216d;
        int i4 = this.f32215c;
        if (i3 - i4 >= i) {
            return true;
        }
        int i5 = this.f32213a;
        if (i <= i5 - i4) {
            if (i3 == 0) {
                this.f32216d = 16;
            }
            do {
                min = Math.min(this.f32216d * 2, this.f32213a);
                this.f32216d = min;
                i2 = this.f32215c;
            } while (min - i2 < i);
            byte[] bArr = new byte[min];
            System.arraycopy(this.f32217e, 0, bArr, 0, i2);
            this.f32217e = bArr;
            return true;
        } else if (i > i5) {
            throw new KryoException("Buffer overflow. Max capacity: " + this.f32213a + ", required: " + i);
        } else {
            throw new KryoException("Buffer overflow. Available: " + (this.f32213a - this.f32215c) + ", required: " + i);
        }
    }

    /* renamed from: a */
    public final int m24419a(int i, boolean z) throws KryoException {
        if (this.f32219g) {
            return m24402b(i, z);
        }
        m24403b(i);
        return 4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v154, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* renamed from: a */
    public final int m24417a(long j, boolean z) throws KryoException {
        ?? r8 = j;
        if (!z) {
            r8 = (j << 1) ^ (j >> 63);
        }
        long j2 = r8 >>> 7;
        if (j2 == 0) {
            if (this.f32215c == this.f32216d) {
                m24398d(1);
            }
            byte[] bArr = this.f32217e;
            int i = this.f32215c;
            this.f32215c = i + 1;
            bArr[i] = (byte) r8;
            return 1;
        }
        long j3 = r8 >>> 14;
        if (j3 == 0) {
            m24398d(2);
            int i2 = this.f32215c;
            this.f32215c = i2 + 2;
            byte[] bArr2 = this.f32217e;
            bArr2[i2] = (byte) ((r8 & 127) | 128);
            bArr2[i2 + 1] = (byte) j2;
            return 2;
        }
        long j4 = r8 >>> 21;
        if (j4 == 0) {
            m24398d(3);
            int i3 = this.f32215c;
            this.f32215c = i3 + 3;
            byte[] bArr3 = this.f32217e;
            bArr3[i3] = (byte) ((r8 & 127) | 128);
            bArr3[i3 + 1] = (byte) (j2 | 128);
            bArr3[i3 + 2] = (byte) j3;
            return 3;
        }
        long j5 = r8 >>> 28;
        if (j5 == 0) {
            m24398d(4);
            int i4 = this.f32215c;
            this.f32215c = i4 + 4;
            byte[] bArr4 = this.f32217e;
            bArr4[i4] = (byte) ((r8 & 127) | 128);
            bArr4[i4 + 1] = (byte) (j2 | 128);
            bArr4[i4 + 2] = (byte) (j3 | 128);
            bArr4[i4 + 3] = (byte) j4;
            return 4;
        }
        long j6 = r8 >>> '#';
        if (j6 == 0) {
            m24398d(5);
            int i5 = this.f32215c;
            this.f32215c = i5 + 5;
            byte[] bArr5 = this.f32217e;
            bArr5[i5] = (byte) ((r8 & 127) | 128);
            bArr5[i5 + 1] = (byte) (j2 | 128);
            bArr5[i5 + 2] = (byte) (j3 | 128);
            bArr5[i5 + 3] = (byte) (j4 | 128);
            bArr5[i5 + 4] = (byte) j5;
            return 5;
        }
        long j7 = r8 >>> '*';
        if (j7 == 0) {
            m24398d(6);
            int i6 = this.f32215c;
            this.f32215c = i6 + 6;
            byte[] bArr6 = this.f32217e;
            bArr6[i6] = (byte) ((r8 & 127) | 128);
            bArr6[i6 + 1] = (byte) (j2 | 128);
            bArr6[i6 + 2] = (byte) (j3 | 128);
            bArr6[i6 + 3] = (byte) (j4 | 128);
            bArr6[i6 + 4] = (byte) (j5 | 128);
            bArr6[i6 + 5] = (byte) j6;
            return 6;
        }
        long j8 = r8 >>> '1';
        if (j8 == 0) {
            m24398d(7);
            int i7 = this.f32215c;
            this.f32215c = i7 + 7;
            byte[] bArr7 = this.f32217e;
            bArr7[i7] = (byte) ((r8 & 127) | 128);
            bArr7[i7 + 1] = (byte) (j2 | 128);
            bArr7[i7 + 2] = (byte) (j3 | 128);
            bArr7[i7 + 3] = (byte) (j4 | 128);
            bArr7[i7 + 4] = (byte) (j5 | 128);
            bArr7[i7 + 5] = (byte) (j6 | 128);
            bArr7[i7 + 6] = (byte) j7;
            return 7;
        }
        long j9 = r8 >>> '8';
        if (j9 == 0) {
            m24398d(8);
            int i8 = this.f32215c;
            this.f32215c = i8 + 8;
            byte[] bArr8 = this.f32217e;
            bArr8[i8] = (byte) ((r8 & 127) | 128);
            bArr8[i8 + 1] = (byte) (j2 | 128);
            bArr8[i8 + 2] = (byte) (j3 | 128);
            bArr8[i8 + 3] = (byte) (j4 | 128);
            bArr8[i8 + 4] = (byte) (j5 | 128);
            bArr8[i8 + 5] = (byte) (j6 | 128);
            bArr8[i8 + 6] = (byte) (j7 | 128);
            bArr8[i8 + 7] = (byte) j8;
            return 8;
        }
        m24398d(9);
        int i9 = this.f32215c;
        this.f32215c = i9 + 9;
        byte[] bArr9 = this.f32217e;
        bArr9[i9] = (byte) ((r8 & 127) | 128);
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

    /* renamed from: a */
    public final int m24413a(boolean z, int i) throws KryoException {
        int i2 = (z ? 128 : 0) | (i & 63);
        int i3 = i >>> 6;
        if (i3 == 0) {
            if (this.f32215c == this.f32216d) {
                m24398d(1);
            }
            byte[] bArr = this.f32217e;
            int i4 = this.f32215c;
            this.f32215c = i4 + 1;
            bArr[i4] = (byte) i2;
            return 1;
        }
        int i5 = i >>> 13;
        if (i5 == 0) {
            m24398d(2);
            int i6 = this.f32215c;
            this.f32215c = i6 + 2;
            byte[] bArr2 = this.f32217e;
            bArr2[i6] = (byte) (i2 | 64);
            bArr2[i6 + 1] = (byte) i3;
            return 2;
        }
        int i7 = i >>> 20;
        if (i7 == 0) {
            m24398d(3);
            byte[] bArr3 = this.f32217e;
            int i8 = this.f32215c;
            this.f32215c = i8 + 3;
            bArr3[i8] = (byte) (i2 | 64);
            bArr3[i8 + 1] = (byte) (i3 | 128);
            bArr3[i8 + 2] = (byte) i5;
            return 3;
        }
        int i9 = i >>> 27;
        if (i9 == 0) {
            m24398d(4);
            byte[] bArr4 = this.f32217e;
            int i10 = this.f32215c;
            this.f32215c = i10 + 4;
            bArr4[i10] = (byte) (i2 | 64);
            bArr4[i10 + 1] = (byte) (i3 | 128);
            bArr4[i10 + 2] = (byte) (i5 | 128);
            bArr4[i10 + 3] = (byte) i7;
            return 4;
        }
        m24398d(5);
        byte[] bArr5 = this.f32217e;
        int i11 = this.f32215c;
        this.f32215c = i11 + 5;
        bArr5[i11] = (byte) (i2 | 64);
        bArr5[i11 + 1] = (byte) (i3 | 128);
        bArr5[i11 + 2] = (byte) (i5 | 128);
        bArr5[i11 + 3] = (byte) (i7 | 128);
        bArr5[i11 + 4] = (byte) i9;
        return 5;
    }

    /* renamed from: a */
    public final OutputStream m24425a() {
        return this.f32218f;
    }

    /* renamed from: a */
    public final void m24424a(byte b) throws KryoException {
        if (this.f32215c == this.f32216d) {
            m24398d(1);
        }
        byte[] bArr = this.f32217e;
        int i = this.f32215c;
        this.f32215c = i + 1;
        bArr[i] = b;
    }

    /* renamed from: a */
    public final void m24423a(char c) throws KryoException {
        m24398d(2);
        int i = this.f32215c;
        this.f32215c = i + 2;
        byte[] bArr = this.f32217e;
        bArr[i] = (byte) c;
        bArr[i + 1] = (byte) (c >>> '\b');
    }

    /* renamed from: a */
    public final void m24422a(double d) throws KryoException {
        m24398d(8);
        byte[] bArr = this.f32217e;
        int i = this.f32215c;
        this.f32215c = i + 8;
        long doubleToLongBits = Double.doubleToLongBits(d);
        bArr[i] = (byte) doubleToLongBits;
        bArr[i + 1] = (byte) (doubleToLongBits >>> 8);
        bArr[i + 2] = (byte) (doubleToLongBits >>> 16);
        bArr[i + 3] = (byte) (doubleToLongBits >>> 24);
        bArr[i + 4] = (byte) (doubleToLongBits >>> 32);
        bArr[i + 5] = (byte) (doubleToLongBits >>> 40);
        bArr[i + 6] = (byte) (doubleToLongBits >>> 48);
        bArr[i + 7] = (byte) (doubleToLongBits >>> 56);
    }

    /* renamed from: a */
    public final void m24421a(float f) throws KryoException {
        m24398d(4);
        byte[] bArr = this.f32217e;
        int i = this.f32215c;
        this.f32215c = i + 4;
        int floatToIntBits = Float.floatToIntBits(f);
        bArr[i] = (byte) floatToIntBits;
        bArr[i + 1] = (byte) (floatToIntBits >> 8);
        bArr[i + 2] = (byte) (floatToIntBits >> 16);
        bArr[i + 3] = (byte) (floatToIntBits >> 24);
    }

    /* renamed from: a */
    public final void m24420a(int i) throws KryoException {
        if (this.f32215c == this.f32216d) {
            m24398d(1);
        }
        byte[] bArr = this.f32217e;
        int i2 = this.f32215c;
        this.f32215c = i2 + 1;
        bArr[i2] = (byte) i;
    }

    /* renamed from: a */
    public final void m24418a(long j) throws KryoException {
        m24398d(8);
        byte[] bArr = this.f32217e;
        int i = this.f32215c;
        this.f32215c = i + 8;
        bArr[i] = (byte) j;
        bArr[i + 1] = (byte) (j >>> 8);
        bArr[i + 2] = (byte) (j >>> 16);
        bArr[i + 3] = (byte) (j >>> 24);
        bArr[i + 4] = (byte) (j >>> 32);
        bArr[i + 5] = (byte) (j >>> 40);
        bArr[i + 6] = (byte) (j >>> 48);
        bArr[i + 7] = (byte) (j >>> 56);
    }

    /* renamed from: a */
    public final void m24416a(String str) throws KryoException {
        char charAt;
        byte[] bArr;
        int i;
        if (str == null) {
            m24420a(128);
            return;
        }
        int length = str.length();
        if (length == 0) {
            m24420a(129);
            return;
        }
        if (length > 1 && length <= 32) {
            for (int i2 = 0; i2 < length; i2++) {
                if (str.charAt(i2) <= 127) {
                }
            }
            int i3 = this.f32216d;
            int i4 = this.f32215c;
            if (i3 - i4 < length) {
                m24415a(str, length);
            } else {
                str.getBytes(0, length, this.f32217e, i4);
                this.f32215c += length;
            }
            this.f32217e[this.f32215c - 1] = (byte) (128 | bArr[i]);
            return;
        }
        m24413a(true, length + 1);
        int i5 = this.f32216d;
        int i6 = this.f32215c;
        int i7 = 0;
        if (i5 - i6 >= length) {
            byte[] bArr2 = this.f32217e;
            int i8 = i6;
            i7 = 0;
            while (true) {
                if (str.charAt(i7) > 127) {
                    this.f32215c = i8;
                    break;
                }
                int i9 = i8 + 1;
                bArr2[i8] = (byte) charAt;
                i7++;
                if (i7 == length) {
                    this.f32215c = i9;
                    return;
                }
                i8 = i9;
            }
        }
        if (i7 >= length) {
            return;
        }
        while (i7 < length) {
            int i10 = this.f32215c;
            int i11 = this.f32216d;
            if (i10 == i11) {
                m24398d(Math.min(i11, length - i7));
            }
            char charAt2 = str.charAt(i7);
            if (charAt2 <= 127) {
                byte[] bArr3 = this.f32217e;
                int i12 = this.f32215c;
                this.f32215c = i12 + 1;
                bArr3[i12] = (byte) charAt2;
            } else {
                if (charAt2 > 2047) {
                    byte[] bArr4 = this.f32217e;
                    int i13 = this.f32215c;
                    this.f32215c = i13 + 1;
                    bArr4[i13] = (byte) (((charAt2 >> '\f') & 15) | 224);
                    m24398d(2);
                    byte[] bArr5 = this.f32217e;
                    int i14 = this.f32215c;
                    this.f32215c = i14 + 1;
                    bArr5[i14] = (byte) (((charAt2 >> 6) & 63) | 128);
                } else {
                    byte[] bArr6 = this.f32217e;
                    int i15 = this.f32215c;
                    int i16 = i15 + 1;
                    this.f32215c = i16;
                    bArr6[i15] = (byte) (((charAt2 >> 6) & 31) | 192);
                    if (i16 == this.f32216d) {
                        m24398d(1);
                    }
                }
                byte[] bArr7 = this.f32217e;
                int i17 = this.f32215c;
                this.f32215c = i17 + 1;
                bArr7[i17] = (byte) ((charAt2 & '?') | 128);
            }
            i7++;
        }
    }

    /* renamed from: a */
    public final void m24414a(boolean z) throws KryoException {
        if (this.f32215c == this.f32216d) {
            m24398d(1);
        }
        byte[] bArr = this.f32217e;
        int i = this.f32215c;
        this.f32215c = i + 1;
        bArr[i] = z ? (byte) 1 : (byte) 0;
    }

    /* renamed from: a */
    public final void m24412a(byte[] bArr) throws KryoException {
        if (bArr != null) {
            m24411a(bArr, 0, bArr.length);
            return;
        }
        throw new IllegalArgumentException("bytes cannot be null.");
    }

    /* renamed from: a */
    public final void m24410a(char[] cArr, int i, int i2) throws KryoException {
        int i3 = i2 << 1;
        if (this.f32216d < i3) {
            while (i < i2 + 0) {
                m24423a(cArr[i]);
                i++;
            }
            return;
        }
        m24398d(i3);
        byte[] bArr = this.f32217e;
        int i4 = this.f32215c;
        while (i < i2 + 0) {
            char c = cArr[i];
            bArr[i4] = (byte) c;
            bArr[i4 + 1] = (byte) (c >>> '\b');
            i++;
            i4 += 2;
        }
        this.f32215c = i4;
    }

    /* renamed from: a */
    public final void m24409a(double[] dArr, int i, int i2) throws KryoException {
        int i3 = i2 << 3;
        if (this.f32216d < i3) {
            while (i < i2 + 0) {
                m24422a(dArr[i]);
                i++;
            }
            return;
        }
        m24398d(i3);
        byte[] bArr = this.f32217e;
        int i4 = i;
        int i5 = this.f32215c;
        while (i4 < i2 + 0) {
            long doubleToLongBits = Double.doubleToLongBits(dArr[i4]);
            bArr[i5] = (byte) doubleToLongBits;
            bArr[i5 + 1] = (byte) (doubleToLongBits >>> 8);
            bArr[i5 + 2] = (byte) (doubleToLongBits >>> 16);
            bArr[i5 + 3] = (byte) (doubleToLongBits >>> 24);
            bArr[i5 + 4] = (byte) (doubleToLongBits >>> 32);
            bArr[i5 + 5] = (byte) (doubleToLongBits >>> 40);
            bArr[i5 + 6] = (byte) (doubleToLongBits >>> 48);
            bArr[i5 + 7] = (byte) (doubleToLongBits >>> 56);
            i4++;
            i5 += 8;
        }
        this.f32215c = i5;
    }

    /* renamed from: a */
    public final void m24408a(float[] fArr, int i, int i2) throws KryoException {
        int i3 = i2 << 2;
        if (this.f32216d < i3) {
            while (i < i2 + 0) {
                m24421a(fArr[i]);
                i++;
            }
            return;
        }
        m24398d(i3);
        byte[] bArr = this.f32217e;
        int i4 = i;
        int i5 = this.f32215c;
        while (i4 < i2 + 0) {
            int floatToIntBits = Float.floatToIntBits(fArr[i4]);
            bArr[i5] = (byte) floatToIntBits;
            bArr[i5 + 1] = (byte) (floatToIntBits >> 8);
            bArr[i5 + 2] = (byte) (floatToIntBits >> 16);
            bArr[i5 + 3] = (byte) (floatToIntBits >> 24);
            i4++;
            i5 += 4;
        }
        this.f32215c = i5;
    }

    /* renamed from: a */
    public final void m24407a(int[] iArr, int i, int i2) throws KryoException {
        if (this.f32219g) {
            while (i < i2 + 0) {
                m24402b(iArr[i], false);
                i++;
            }
            return;
        }
        int i3 = i2 << 2;
        if (this.f32216d < i3) {
            for (int i4 = 0; i4 < i2 + 0; i4++) {
                m24403b(iArr[i4]);
            }
            return;
        }
        m24398d(i3);
        byte[] bArr = this.f32217e;
        int i5 = 0;
        int i6 = this.f32215c;
        while (i5 < i2 + 0) {
            int i7 = iArr[i5];
            bArr[i6] = (byte) i7;
            bArr[i6 + 1] = (byte) (i7 >> 8);
            bArr[i6 + 2] = (byte) (i7 >> 16);
            bArr[i6 + 3] = (byte) (i7 >> 24);
            i5++;
            i6 += 4;
        }
        this.f32215c = i6;
    }

    /* renamed from: a */
    public final void m24406a(long[] jArr, int i, int i2) throws KryoException {
        int i3 = i2 << 3;
        if (this.f32216d < i3) {
            while (i < i2 + 0) {
                m24418a(jArr[i]);
                i++;
            }
            return;
        }
        m24398d(i3);
        byte[] bArr = this.f32217e;
        int i4 = i;
        int i5 = this.f32215c;
        while (i4 < i2 + 0) {
            long j = jArr[i4];
            bArr[i5] = (byte) j;
            bArr[i5 + 1] = (byte) (j >>> 8);
            bArr[i5 + 2] = (byte) (j >>> 16);
            bArr[i5 + 3] = (byte) (j >>> 24);
            bArr[i5 + 4] = (byte) (j >>> 32);
            bArr[i5 + 5] = (byte) (j >>> 40);
            bArr[i5 + 6] = (byte) (j >>> 48);
            bArr[i5 + 7] = (byte) (j >>> 56);
            i4++;
            i5 += 8;
        }
        this.f32215c = i5;
    }

    /* renamed from: a */
    public final void m24405a(short[] sArr, int i, int i2) throws KryoException {
        int i3 = i2 << 1;
        if (this.f32216d < i3) {
            while (i < i2 + 0) {
                m24399c(sArr[i]);
                i++;
            }
            return;
        }
        m24398d(i3);
        byte[] bArr = this.f32217e;
        int i4 = i;
        int i5 = this.f32215c;
        while (i4 < i2 + 0) {
            short s = sArr[i4];
            bArr[i5] = (byte) s;
            bArr[i5 + 1] = (byte) (s >>> 8);
            i4++;
            i5 += 2;
        }
        this.f32215c = i5;
    }

    /* renamed from: b */
    public final int m24404b() {
        return this.f32215c;
    }

    /* renamed from: b */
    public final int m24402b(int i, boolean z) throws KryoException {
        int i2 = i;
        if (!z) {
            i2 = (i >> 31) ^ (i << 1);
        }
        int i3 = i2 >>> 7;
        if (i3 == 0) {
            if (this.f32215c == this.f32216d) {
                m24398d(1);
            }
            byte[] bArr = this.f32217e;
            int i4 = this.f32215c;
            this.f32215c = i4 + 1;
            bArr[i4] = (byte) i2;
            return 1;
        }
        int i5 = i2 >>> 14;
        if (i5 == 0) {
            m24398d(2);
            int i6 = this.f32215c;
            this.f32215c = i6 + 2;
            byte[] bArr2 = this.f32217e;
            bArr2[i6] = (byte) ((i2 & 127) | 128);
            bArr2[i6 + 1] = (byte) i3;
            return 2;
        }
        int i7 = i2 >>> 21;
        if (i7 == 0) {
            m24398d(3);
            int i8 = this.f32215c;
            this.f32215c = i8 + 3;
            byte[] bArr3 = this.f32217e;
            bArr3[i8] = (byte) ((i2 & 127) | 128);
            bArr3[i8 + 1] = (byte) (i3 | 128);
            bArr3[i8 + 2] = (byte) i5;
            return 3;
        }
        int i9 = i2 >>> 28;
        if (i9 == 0) {
            m24398d(4);
            int i10 = this.f32215c;
            this.f32215c = i10 + 4;
            byte[] bArr4 = this.f32217e;
            bArr4[i10] = (byte) ((i2 & 127) | 128);
            bArr4[i10 + 1] = (byte) (i3 | 128);
            bArr4[i10 + 2] = (byte) (i5 | 128);
            bArr4[i10 + 3] = (byte) i7;
            return 4;
        }
        m24398d(5);
        int i11 = this.f32215c;
        this.f32215c = i11 + 5;
        byte[] bArr5 = this.f32217e;
        bArr5[i11] = (byte) ((i2 & 127) | 128);
        bArr5[i11 + 1] = (byte) (i3 | 128);
        bArr5[i11 + 2] = (byte) (i5 | 128);
        bArr5[i11 + 3] = (byte) (i7 | 128);
        bArr5[i11 + 4] = (byte) i9;
        return 5;
    }

    /* renamed from: b */
    public final void m24403b(int i) throws KryoException {
        m24398d(4);
        byte[] bArr = this.f32217e;
        int i2 = this.f32215c;
        this.f32215c = i2 + 4;
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >> 8);
        bArr[i2 + 2] = (byte) (i >> 16);
        bArr[i2 + 3] = (byte) (i >> 24);
    }

    /* renamed from: b */
    public final void m24401b(String str) throws KryoException {
        byte[] bArr;
        int i;
        if (str == null) {
            m24420a(128);
            return;
        }
        int length = str.length();
        if (length == 0) {
            m24420a(129);
        } else if (length == 1) {
            m24398d(2);
            byte[] bArr2 = this.f32217e;
            int i2 = this.f32215c;
            int i3 = i2 + 1;
            this.f32215c = i3;
            bArr2[i2] = (byte) (-126);
            this.f32215c = i3 + 1;
            bArr2[i3] = (byte) str.charAt(0);
        } else {
            int i4 = this.f32216d;
            int i5 = this.f32215c;
            if (i4 - i5 < length) {
                m24415a(str, length);
            } else {
                str.getBytes(0, length, this.f32217e, i5);
                this.f32215c += length;
            }
            this.f32217e[this.f32215c - 1] = (byte) (128 | bArr[i]);
        }
    }

    /* renamed from: b */
    public final void m24400b(long[] jArr, int i, int i2) throws KryoException {
        if (!this.f32219g) {
            m24406a(jArr, 0, i2);
            return;
        }
        while (i < i2 + 0) {
            m24417a(jArr[i], false);
            i++;
        }
    }

    /* renamed from: c */
    public final void m24399c(int i) throws KryoException {
        m24398d(2);
        int i2 = this.f32215c;
        this.f32215c = i2 + 2;
        byte[] bArr = this.f32217e;
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws KryoException {
        flush();
        OutputStream outputStream = this.f32218f;
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e) {
            }
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws KryoException {
        OutputStream outputStream = this.f32218f;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.write(this.f32217e, 0, this.f32215c);
            this.f32218f.flush();
            this.f32214b += this.f32215c;
            this.f32215c = 0;
        } catch (IOException e) {
            throw new KryoException(e);
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws KryoException {
        if (this.f32215c == this.f32216d) {
            m24398d(1);
        }
        byte[] bArr = this.f32217e;
        int i2 = this.f32215c;
        this.f32215c = i2 + 1;
        bArr[i2] = (byte) i;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws KryoException {
        if (bArr != null) {
            m24411a(bArr, 0, bArr.length);
            return;
        }
        throw new IllegalArgumentException("bytes cannot be null.");
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws KryoException {
        m24411a(bArr, i, i2);
    }
}
