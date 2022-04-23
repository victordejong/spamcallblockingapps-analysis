package com.esotericsoftware.kryo.a;

import com.esotericsoftware.kryo.KryoException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/a/a.class */
public class a extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    protected byte[] f18956a;

    /* renamed from: b  reason: collision with root package name */
    protected int f18957b;

    /* renamed from: c  reason: collision with root package name */
    protected int f18958c;

    /* renamed from: d  reason: collision with root package name */
    protected int f18959d;
    protected long e;
    protected char[] f;
    protected InputStream g;
    protected boolean h;

    public a() {
        this.f = new char[32];
        this.h = true;
    }

    public a(int i) {
        this.f = new char[32];
        this.h = true;
        this.f18958c = i;
        this.f18956a = new byte[i];
    }

    public a(InputStream inputStream) {
        this(4096);
        if (inputStream != null) {
            this.g = inputStream;
            return;
        }
        throw new IllegalArgumentException("inputStream cannot be null.");
    }

    public a(InputStream inputStream, int i) {
        this(i);
        if (inputStream != null) {
            this.g = inputStream;
            return;
        }
        throw new IllegalArgumentException("inputStream cannot be null.");
    }

    public a(byte[] bArr) {
        this.f = new char[32];
        this.h = true;
        a(bArr, 0, bArr.length);
    }

    public a(byte[] bArr, int i, int i2) {
        this.f = new char[32];
        this.h = true;
        a(bArr, i, i2);
    }

    private void a(int i, int i2) {
        char[] cArr = this.f;
        byte[] bArr = this.f18956a;
        while (i2 < i) {
            if (this.f18957b == this.f18959d) {
                j(1);
            }
            int i3 = this.f18957b;
            int i4 = i3 + 1;
            this.f18957b = i4;
            int i5 = bArr[i3] & 255;
            switch (i5 >> 4) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    cArr[i2] = (char) i5;
                    break;
                case 12:
                case 13:
                    if (i4 == this.f18959d) {
                        j(1);
                    }
                    int i6 = this.f18957b;
                    this.f18957b = i6 + 1;
                    cArr[i2] = (char) (((i5 & 31) << 6) | (bArr[i6] & 63));
                    break;
                case 14:
                    j(2);
                    int i7 = this.f18957b;
                    this.f18957b = i7 + 2;
                    cArr[i2] = (char) (((i5 & 15) << 12) | ((bArr[i7] & 63) << 6) | (bArr[i7 + 1] & 63));
                    break;
            }
            i2++;
        }
    }

    private int d(boolean z) {
        byte[] bArr = this.f18956a;
        int i = this.f18957b;
        int i2 = i + 1;
        this.f18957b = i2;
        byte b2 = bArr[i];
        int i3 = b2 & Byte.MAX_VALUE;
        int i4 = i3;
        if ((b2 & 128) != 0) {
            if (i2 == this.f18959d) {
                j(1);
            }
            byte[] bArr2 = this.f18956a;
            int i5 = this.f18957b;
            int i6 = i5 + 1;
            this.f18957b = i6;
            byte b3 = bArr2[i5];
            int i7 = i3 | ((b3 & Byte.MAX_VALUE) << 7);
            i4 = i7;
            if ((b3 & 128) != 0) {
                if (i6 == this.f18959d) {
                    j(1);
                }
                int i8 = this.f18957b;
                int i9 = i8 + 1;
                this.f18957b = i9;
                byte b4 = bArr2[i8];
                int i10 = i7 | ((b4 & Byte.MAX_VALUE) << 14);
                i4 = i10;
                if ((b4 & 128) != 0) {
                    if (i9 == this.f18959d) {
                        j(1);
                    }
                    int i11 = this.f18957b;
                    int i12 = i11 + 1;
                    this.f18957b = i12;
                    byte b5 = bArr2[i11];
                    int i13 = i10 | ((b5 & Byte.MAX_VALUE) << 21);
                    i4 = i13;
                    if ((b5 & 128) != 0) {
                        if (i12 == this.f18959d) {
                            j(1);
                        }
                        int i14 = this.f18957b;
                        this.f18957b = i14 + 1;
                        i4 = i13 | ((bArr2[i14] & Byte.MAX_VALUE) << 28);
                    }
                }
            }
        }
        return z ? i4 : (i4 >>> 1) ^ (-(i4 & 1));
    }

    private int j(int i) throws KryoException {
        int i2 = this.f18959d;
        int i3 = i2 - this.f18957b;
        if (i3 >= i) {
            return i3;
        }
        int i4 = this.f18958c;
        if (i <= i4) {
            int i5 = i3;
            if (i3 > 0) {
                int b2 = b(this.f18956a, i2, i4 - i2);
                if (b2 != -1) {
                    int i6 = i3 + b2;
                    i5 = i6;
                    if (i6 >= i) {
                        this.f18959d += b2;
                        return i6;
                    }
                } else {
                    throw new KryoException("Buffer underflow.");
                }
            }
            byte[] bArr = this.f18956a;
            System.arraycopy(bArr, this.f18957b, bArr, 0, i5);
            this.e += this.f18957b;
            this.f18957b = 0;
            while (true) {
                int b3 = b(this.f18956a, i5, this.f18958c - i5);
                if (b3 != -1) {
                    int i7 = i5 + b3;
                    i5 = i7;
                    if (i7 >= i) {
                        i5 = i7;
                        break;
                    }
                } else if (i5 < i) {
                    throw new KryoException("Buffer underflow.");
                }
            }
            this.f18959d = i5;
            return i5;
        }
        throw new KryoException("Buffer too small: capacity: " + this.f18958c + ", required: " + i);
    }

    private int k(int i) throws KryoException {
        int i2;
        int i3 = this.f18959d - this.f18957b;
        if (i3 >= i) {
            return i;
        }
        int min = Math.min(i, this.f18958c);
        byte[] bArr = this.f18956a;
        int i4 = this.f18959d;
        int b2 = b(bArr, i4, this.f18958c - i4);
        if (b2 != -1) {
            int i5 = i3 + b2;
            if (i5 >= min) {
                this.f18959d += b2;
                return min;
            }
            byte[] bArr2 = this.f18956a;
            System.arraycopy(bArr2, this.f18957b, bArr2, 0, i5);
            this.e += this.f18957b;
            this.f18957b = 0;
            do {
                int b3 = b(this.f18956a, i5, this.f18958c - i5);
                i2 = i5;
                if (b3 == -1) {
                    break;
                }
                i2 = i5 + b3;
                i5 = i2;
            } while (i2 < min);
            this.f18959d = i2;
            if (i2 == 0) {
                return -1;
            }
            return Math.min(i2, min);
        } else if (i3 == 0) {
            return -1;
        } else {
            return Math.min(i3, min);
        }
    }

    private void l(int i) {
        int i2;
        byte b2;
        if (this.f.length < i) {
            this.f = new char[i];
        }
        byte[] bArr = this.f18956a;
        char[] cArr = this.f;
        int i3 = 0;
        int min = Math.min(j(1), i);
        int i4 = this.f18957b;
        while (true) {
            i2 = i4;
            if (i3 >= min) {
                break;
            }
            int i5 = i4 + 1;
            if (bArr[i4] < 0) {
                i2 = i5 - 1;
                break;
            }
            cArr[i3] = (char) b2;
            i4 = i5;
            i3++;
        }
        this.f18957b = i2;
        if (i3 < i) {
            a(i, i3);
        }
    }

    private String m(int i) {
        char[] cArr = this.f;
        byte[] bArr = this.f18956a;
        while (true) {
            if (this.f18957b == this.f18959d) {
                j(1);
            }
            int i2 = this.f18957b;
            this.f18957b = i2 + 1;
            byte b2 = bArr[i2];
            char[] cArr2 = cArr;
            if (i == cArr.length) {
                cArr2 = new char[i * 2];
                System.arraycopy(cArr, 0, cArr2, 0, i);
                this.f = cArr2;
            }
            if ((b2 & 128) == 128) {
                cArr2[i] = (char) (b2 & Byte.MAX_VALUE);
                return new String(cArr2, 0, i + 1);
            }
            cArr2[i] = (char) b2;
            i++;
            cArr = cArr2;
        }
    }

    private String o() {
        char[] cArr = this.f;
        byte[] bArr = this.f18956a;
        int i = this.f18957b;
        int min = Math.min(cArr.length, this.f18959d - i);
        int i2 = 0;
        while (i2 < min) {
            byte b2 = bArr[i];
            if ((b2 & 128) == 128) {
                this.f18957b = i + 1;
                cArr[i2] = (char) (b2 & Byte.MAX_VALUE);
                return new String(cArr, 0, i2 + 1);
            }
            cArr[i2] = (char) b2;
            i2++;
            i++;
        }
        this.f18957b = i;
        return m(i2);
    }

    public final int a(boolean z) throws KryoException {
        return this.h ? b(z) : d();
    }

    public final InputStream a() {
        return this.g;
    }

    public final void a(int i) throws KryoException {
        int min = Math.min(this.f18959d - this.f18957b, i);
        int i2 = i;
        while (true) {
            this.f18957b += min;
            i2 -= min;
            if (i2 != 0) {
                min = Math.min(i2, this.f18958c);
                j(min);
            } else {
                return;
            }
        }
    }

    public void a(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            this.f18956a = bArr;
            this.f18957b = i;
            this.f18959d = i + i2;
            this.f18958c = bArr.length;
            this.e = 0L;
            this.g = null;
            return;
        }
        throw new IllegalArgumentException("bytes cannot be null.");
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        int i = this.f18959d;
        int i2 = this.f18957b;
        InputStream inputStream = this.g;
        return (i - i2) + (inputStream != null ? inputStream.available() : 0);
    }

    public final int b() {
        return this.f18957b;
    }

    public final int b(boolean z) throws KryoException {
        if (j(1) < 5) {
            return d(z);
        }
        byte[] bArr = this.f18956a;
        int i = this.f18957b;
        int i2 = i + 1;
        this.f18957b = i2;
        byte b2 = bArr[i];
        int i3 = b2 & Byte.MAX_VALUE;
        int i4 = i3;
        if ((b2 & 128) != 0) {
            int i5 = i2 + 1;
            byte b3 = bArr[i2];
            int i6 = i3 | ((b3 & Byte.MAX_VALUE) << 7);
            int i7 = i5;
            i4 = i6;
            if ((b3 & 128) != 0) {
                int i8 = i5 + 1;
                byte b4 = bArr[i5];
                int i9 = i6 | ((b4 & Byte.MAX_VALUE) << 14);
                i7 = i8;
                i4 = i9;
                if ((b4 & 128) != 0) {
                    int i10 = i8 + 1;
                    byte b5 = bArr[i8];
                    int i11 = i9 | ((b5 & Byte.MAX_VALUE) << 21);
                    i7 = i10;
                    i4 = i11;
                    if ((b5 & 128) != 0) {
                        i7 = i10 + 1;
                        i4 = ((bArr[i10] & Byte.MAX_VALUE) << 28) | i11;
                    }
                }
            }
            this.f18957b = i7;
        }
        return z ? i4 : (i4 >>> 1) ^ (-(1 & i4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int b(byte[] bArr, int i, int i2) throws KryoException {
        InputStream inputStream = this.g;
        if (inputStream == null) {
            return -1;
        }
        try {
            return inputStream.read(bArr, i, i2);
        } catch (IOException e) {
            throw new KryoException(e);
        }
    }

    public final byte[] b(int i) throws KryoException {
        byte[] bArr = new byte[i];
        int min = Math.min(this.f18959d - this.f18957b, i);
        int i2 = 0;
        while (true) {
            System.arraycopy(this.f18956a, this.f18957b, bArr, i2, min);
            this.f18957b += min;
            i -= min;
            if (i == 0) {
                return bArr;
            }
            i2 += min;
            min = Math.min(i, this.f18958c);
            j(min);
        }
    }

    public final byte c() throws KryoException {
        if (this.f18957b == this.f18959d) {
            j(1);
        }
        byte[] bArr = this.f18956a;
        int i = this.f18957b;
        this.f18957b = i + 1;
        return bArr[i];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v127, types: [long] */
    /* JADX WARN: Type inference failed for: r0v140, types: [long] */
    /* JADX WARN: Type inference failed for: r0v153, types: [long] */
    /* JADX WARN: Type inference failed for: r0v166, types: [long] */
    /* JADX WARN: Type inference failed for: r0v179, types: [long] */
    /* JADX WARN: Type inference failed for: r0v192, types: [long] */
    /* JADX WARN: Type inference failed for: r0v205, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* JADX WARN: Type inference failed for: r14v20 */
    /* JADX WARN: Type inference failed for: r14v21 */
    /* JADX WARN: Unknown variable types count: 16 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long c(boolean r8) throws com.esotericsoftware.kryo.KryoException {
        /*
            Method dump skipped, instructions count: 903
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.a.a.c(boolean):long");
    }

    public final int[] c(int i) throws KryoException {
        int i2 = 0;
        if (this.h) {
            int[] iArr = new int[i];
            for (int i3 = 0; i3 < i; i3++) {
                iArr[i3] = b(false);
            }
            return iArr;
        }
        int[] iArr2 = new int[i];
        int i4 = i << 2;
        if (k(i4) == i4) {
            byte[] bArr = this.f18956a;
            int i5 = this.f18957b;
            while (i2 < i) {
                iArr2[i2] = (bArr[i5] & 255) | ((bArr[i5 + 1] & 255) << 8) | ((bArr[i5 + 2] & 255) << 16) | ((bArr[i5 + 3] & 255) << 24);
                i2++;
                i5 += 4;
            }
            this.f18957b = i5;
        } else {
            for (int i6 = 0; i6 < i; i6++) {
                iArr2[i6] = d();
            }
        }
        return iArr2;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws KryoException {
        InputStream inputStream = this.g;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
            }
        }
    }

    public final int d() throws KryoException {
        j(4);
        byte[] bArr = this.f18956a;
        int i = this.f18957b;
        this.f18957b = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public final long[] d(int i) throws KryoException {
        long[] jArr = new long[i];
        int i2 = i << 3;
        int i3 = 0;
        if (k(i2) == i2) {
            byte[] bArr = this.f18956a;
            int i4 = this.f18957b;
            while (i3 < i) {
                jArr[i3] = (bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4 + 2] & 255) << 16) | ((bArr[i4 + 3] & 255) << 24) | ((bArr[i4 + 4] & 255) << 32) | ((bArr[i4 + 5] & 255) << 40) | ((bArr[i4 + 6] & 255) << 48) | (bArr[i4 + 7] << 56);
                i3++;
                i4 += 8;
            }
            this.f18957b = i4;
        } else {
            for (int i5 = 0; i5 < i; i5++) {
                jArr[i5] = g();
            }
        }
        return jArr;
    }

    public final boolean e() {
        if (this.f18957b == this.f18959d) {
            j(1);
        }
        return (this.f18956a[this.f18957b] & 128) != 0;
    }

    public final long[] e(int i) throws KryoException {
        if (!this.h) {
            return d(i);
        }
        long[] jArr = new long[i];
        for (int i2 = 0; i2 < i; i2++) {
            jArr[i2] = c(false);
        }
        return jArr;
    }

    public final int f() {
        if (j(1) < 5) {
            byte[] bArr = this.f18956a;
            int i = this.f18957b;
            int i2 = i + 1;
            this.f18957b = i2;
            byte b2 = bArr[i];
            int i3 = b2 & 63;
            int i4 = i3;
            if ((b2 & 64) != 0) {
                if (i2 == this.f18959d) {
                    j(1);
                }
                byte[] bArr2 = this.f18956a;
                int i5 = this.f18957b;
                int i6 = i5 + 1;
                this.f18957b = i6;
                byte b3 = bArr2[i5];
                int i7 = i3 | ((b3 & Byte.MAX_VALUE) << 6);
                i4 = i7;
                if ((b3 & 128) != 0) {
                    if (i6 == this.f18959d) {
                        j(1);
                    }
                    int i8 = this.f18957b;
                    int i9 = i8 + 1;
                    this.f18957b = i9;
                    byte b4 = bArr2[i8];
                    int i10 = i7 | ((b4 & Byte.MAX_VALUE) << 13);
                    i4 = i10;
                    if ((b4 & 128) != 0) {
                        if (i9 == this.f18959d) {
                            j(1);
                        }
                        int i11 = this.f18957b;
                        int i12 = i11 + 1;
                        this.f18957b = i12;
                        byte b5 = bArr2[i11];
                        int i13 = i10 | ((b5 & Byte.MAX_VALUE) << 20);
                        i4 = i13;
                        if ((b5 & 128) != 0) {
                            if (i12 == this.f18959d) {
                                j(1);
                            }
                            int i14 = this.f18957b;
                            this.f18957b = i14 + 1;
                            i4 = i13 | ((bArr2[i14] & Byte.MAX_VALUE) << 27);
                        }
                    }
                }
            }
            return i4;
        }
        byte[] bArr3 = this.f18956a;
        int i15 = this.f18957b;
        int i16 = i15 + 1;
        this.f18957b = i16;
        byte b6 = bArr3[i15];
        int i17 = b6 & 63;
        int i18 = i17;
        if ((b6 & 64) != 0) {
            int i19 = i16 + 1;
            byte b7 = bArr3[i16];
            int i20 = i17 | ((b7 & Byte.MAX_VALUE) << 6);
            int i21 = i19;
            i18 = i20;
            if ((b7 & 128) != 0) {
                int i22 = i19 + 1;
                byte b8 = bArr3[i19];
                int i23 = i20 | ((b8 & Byte.MAX_VALUE) << 13);
                i21 = i22;
                i18 = i23;
                if ((b8 & 128) != 0) {
                    int i24 = i22 + 1;
                    byte b9 = bArr3[i22];
                    int i25 = i23 | ((b9 & Byte.MAX_VALUE) << 20);
                    i21 = i24;
                    i18 = i25;
                    if ((b9 & 128) != 0) {
                        i21 = i24 + 1;
                        i18 = ((bArr3[i24] & Byte.MAX_VALUE) << 27) | i25;
                    }
                }
            }
            this.f18957b = i21;
        }
        return i18;
    }

    public final float[] f(int i) throws KryoException {
        float[] fArr = new float[i];
        int i2 = i << 2;
        int i3 = 0;
        if (k(i2) == i2) {
            byte[] bArr = this.f18956a;
            int i4 = this.f18957b;
            while (i3 < i) {
                fArr[i3] = Float.intBitsToFloat((bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4 + 2] & 255) << 16) | ((bArr[i4 + 3] & 255) << 24));
                i3++;
                i4 += 4;
            }
            this.f18957b = i4;
        } else {
            for (int i5 = 0; i5 < i; i5++) {
                fArr[i5] = h();
            }
        }
        return fArr;
    }

    public final long g() throws KryoException {
        j(8);
        byte[] bArr = this.f18956a;
        int i = this.f18957b;
        this.f18957b = i + 8;
        return (bArr[i + 7] << 56) | ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public final double[] g(int i) throws KryoException {
        double[] dArr = new double[i];
        int i2 = i << 3;
        int i3 = 0;
        if (k(i2) == i2) {
            byte[] bArr = this.f18956a;
            int i4 = this.f18957b;
            while (i3 < i) {
                dArr[i3] = Double.longBitsToDouble((bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4 + 2] & 255) << 16) | ((bArr[i4 + 3] & 255) << 24) | ((bArr[i4 + 4] & 255) << 32) | ((bArr[i4 + 5] & 255) << 40) | ((bArr[i4 + 6] & 255) << 48) | (bArr[i4 + 7] << 56));
                i3++;
                i4 += 8;
            }
            this.f18957b = i4;
        } else {
            for (int i5 = 0; i5 < i; i5++) {
                dArr[i5] = i();
            }
        }
        return dArr;
    }

    public final float h() throws KryoException {
        j(4);
        byte[] bArr = this.f18956a;
        int i = this.f18957b;
        this.f18957b = i + 4;
        return Float.intBitsToFloat(((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16));
    }

    public final short[] h(int i) throws KryoException {
        short[] sArr = new short[i];
        int i2 = i << 1;
        int i3 = 0;
        if (k(i2) == i2) {
            byte[] bArr = this.f18956a;
            int i4 = this.f18957b;
            while (i3 < i) {
                sArr[i3] = (short) ((bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8));
                i3++;
                i4 += 2;
            }
            this.f18957b = i4;
        } else {
            for (int i5 = 0; i5 < i; i5++) {
                sArr[i5] = j();
            }
        }
        return sArr;
    }

    public final double i() throws KryoException {
        j(8);
        byte[] bArr = this.f18956a;
        int i = this.f18957b;
        this.f18957b = i + 8;
        return Double.longBitsToDouble((bArr[i + 7] << 56) | ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48));
    }

    public final char[] i(int i) throws KryoException {
        char[] cArr = new char[i];
        int i2 = i << 1;
        int i3 = 0;
        if (k(i2) == i2) {
            byte[] bArr = this.f18956a;
            int i4 = this.f18957b;
            while (i3 < i) {
                cArr[i3] = (char) ((bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8));
                i3++;
                i4 += 2;
            }
            this.f18957b = i4;
        } else {
            for (int i5 = 0; i5 < i; i5++) {
                cArr[i5] = k();
            }
        }
        return cArr;
    }

    public final short j() throws KryoException {
        j(2);
        int i = this.f18957b;
        this.f18957b = i + 2;
        byte[] bArr = this.f18956a;
        return (short) (((bArr[i + 1] & 255) << 8) | (bArr[i] & 255));
    }

    public final char k() throws KryoException {
        j(2);
        int i = this.f18957b;
        this.f18957b = i + 2;
        byte[] bArr = this.f18956a;
        return (char) (((bArr[i + 1] & 255) << 8) | (bArr[i] & 255));
    }

    public final boolean l() throws KryoException {
        if (this.f18957b == this.f18959d) {
            j(1);
        }
        byte[] bArr = this.f18956a;
        int i = this.f18957b;
        this.f18957b = i + 1;
        return bArr[i] == 1;
    }

    public final String m() {
        if (!e()) {
            return o();
        }
        int f = f();
        if (f == 0) {
            return null;
        }
        if (f == 1) {
            return "";
        }
        int i = f - 1;
        l(i);
        return new String(this.f, 0, i);
    }

    public final StringBuilder n() {
        if (!e()) {
            return new StringBuilder(o());
        }
        int f = f();
        if (f == 0) {
            return null;
        }
        if (f == 1) {
            return new StringBuilder(0);
        }
        int i = f - 1;
        l(i);
        StringBuilder sb = new StringBuilder(i);
        sb.append(this.f, 0, i);
        return sb;
    }

    @Override // java.io.InputStream
    public int read() throws KryoException {
        if (k(1) <= 0) {
            return -1;
        }
        byte[] bArr = this.f18956a;
        int i = this.f18957b;
        this.f18957b = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws KryoException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws KryoException {
        int i3;
        if (bArr != null) {
            int min = Math.min(this.f18959d - this.f18957b, i2);
            int i4 = i2;
            while (true) {
                System.arraycopy(this.f18956a, this.f18957b, bArr, i, min);
                this.f18957b += min;
                i3 = i4 - min;
                if (i3 == 0) {
                    break;
                }
                i += min;
                min = k(i3);
                if (min != -1) {
                    i4 = i3;
                    if (this.f18957b == this.f18959d) {
                        break;
                    }
                } else if (i2 == i3) {
                    return -1;
                }
            }
            return i2 - i3;
        }
        throw new IllegalArgumentException("bytes cannot be null.");
    }

    @Override // java.io.InputStream
    public void reset() {
        this.f18957b = 0;
        this.e = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long skip(long r6) throws com.esotericsoftware.kryo.KryoException {
        /*
            r5 = this;
            r0 = r6
            r8 = r0
        L_0x0002:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0021
            r0 = 2147483639(0x7ffffff7, double:1.060997891E-314)
            r1 = r8
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r10 = r0
            r0 = r5
            r1 = r10
            r0.a(r1)
            r0 = r8
            r1 = r10
            long r1 = (long) r1
            long r0 = r0 - r1
            r8 = r0
            goto L_0x0002
        L_0x0021:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.a.a.skip(long):long");
    }
}
