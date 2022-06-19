package com.esotericsoftware.kryo.p276a;

import com.esotericsoftware.kryo.KryoException;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.esotericsoftware.kryo.a.a */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/a/a.class */
public class C9374a extends InputStream {

    /* renamed from: a */
    protected byte[] f32204a;

    /* renamed from: b */
    protected int f32205b;

    /* renamed from: c */
    protected int f32206c;

    /* renamed from: d */
    protected int f32207d;

    /* renamed from: e */
    protected long f32208e;

    /* renamed from: f */
    protected char[] f32209f;

    /* renamed from: g */
    protected InputStream f32210g;

    /* renamed from: h */
    protected boolean f32211h;

    public C9374a() {
        this.f32209f = new char[32];
        this.f32211h = true;
    }

    public C9374a(int i) {
        this.f32209f = new char[32];
        this.f32211h = true;
        this.f32206c = i;
        this.f32204a = new byte[i];
    }

    public C9374a(InputStream inputStream) {
        this(4096);
        if (inputStream != null) {
            this.f32210g = inputStream;
            return;
        }
        throw new IllegalArgumentException("inputStream cannot be null.");
    }

    public C9374a(InputStream inputStream, int i) {
        this(i);
        if (inputStream != null) {
            this.f32210g = inputStream;
            return;
        }
        throw new IllegalArgumentException("inputStream cannot be null.");
    }

    public C9374a(byte[] bArr) {
        this.f32209f = new char[32];
        this.f32211h = true;
        mo24429a(bArr, 0, bArr.length);
    }

    public C9374a(byte[] bArr, int i, int i2) {
        this.f32209f = new char[32];
        this.f32211h = true;
        mo24429a(bArr, i, i2);
    }

    /* renamed from: a */
    private void m24460a(int i, int i2) {
        char[] cArr = this.f32209f;
        byte[] bArr = this.f32204a;
        while (i2 < i) {
            if (this.f32205b == this.f32207d) {
                m24438j(1);
            }
            int i3 = this.f32205b;
            int i4 = i3 + 1;
            this.f32205b = i4;
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
                    if (i4 == this.f32207d) {
                        m24438j(1);
                    }
                    int i6 = this.f32205b;
                    this.f32205b = i6 + 1;
                    cArr[i2] = (char) (((i5 & 31) << 6) | (bArr[i6] & 63));
                    break;
                case 14:
                    m24438j(2);
                    int i7 = this.f32205b;
                    this.f32205b = i7 + 2;
                    cArr[i2] = (char) (((i5 & 15) << 12) | ((bArr[i7] & 63) << 6) | (bArr[i7 + 1] & 63));
                    break;
            }
            i2++;
        }
    }

    /* renamed from: d */
    private int m24450d(boolean z) {
        byte[] bArr = this.f32204a;
        int i = this.f32205b;
        int i2 = i + 1;
        this.f32205b = i2;
        byte b = bArr[i];
        int i3 = b & Byte.MAX_VALUE;
        int i4 = i3;
        if ((b & 128) != 0) {
            if (i2 == this.f32207d) {
                m24438j(1);
            }
            byte[] bArr2 = this.f32204a;
            int i5 = this.f32205b;
            int i6 = i5 + 1;
            this.f32205b = i6;
            byte b2 = bArr2[i5];
            int i7 = i3 | ((b2 & Byte.MAX_VALUE) << 7);
            i4 = i7;
            if ((b2 & 128) != 0) {
                if (i6 == this.f32207d) {
                    m24438j(1);
                }
                int i8 = this.f32205b;
                int i9 = i8 + 1;
                this.f32205b = i9;
                byte b3 = bArr2[i8];
                int i10 = i7 | ((b3 & Byte.MAX_VALUE) << 14);
                i4 = i10;
                if ((b3 & 128) != 0) {
                    if (i9 == this.f32207d) {
                        m24438j(1);
                    }
                    int i11 = this.f32205b;
                    int i12 = i11 + 1;
                    this.f32205b = i12;
                    byte b4 = bArr2[i11];
                    int i13 = i10 | ((b4 & Byte.MAX_VALUE) << 21);
                    i4 = i13;
                    if ((b4 & 128) != 0) {
                        if (i12 == this.f32207d) {
                            m24438j(1);
                        }
                        int i14 = this.f32205b;
                        this.f32205b = i14 + 1;
                        i4 = i13 | ((bArr2[i14] & Byte.MAX_VALUE) << 28);
                    }
                }
            }
        }
        return z ? i4 : (i4 >>> 1) ^ (-(i4 & 1));
    }

    /* renamed from: j */
    private int m24438j(int i) throws KryoException {
        int i2 = this.f32207d;
        int i3 = i2 - this.f32205b;
        if (i3 >= i) {
            return i3;
        }
        int i4 = this.f32206c;
        if (i > i4) {
            throw new KryoException("Buffer too small: capacity: " + this.f32206c + ", required: " + i);
        }
        int i5 = i3;
        if (i3 > 0) {
            int mo24428b = mo24428b(this.f32204a, i2, i4 - i2);
            if (mo24428b == -1) {
                throw new KryoException("Buffer underflow.");
            }
            int i6 = i3 + mo24428b;
            i5 = i6;
            if (i6 >= i) {
                this.f32207d += mo24428b;
                return i6;
            }
        }
        byte[] bArr = this.f32204a;
        System.arraycopy(bArr, this.f32205b, bArr, 0, i5);
        this.f32208e += this.f32205b;
        this.f32205b = 0;
        while (true) {
            int mo24428b2 = mo24428b(this.f32204a, i5, this.f32206c - i5);
            if (mo24428b2 != -1) {
                int i7 = i5 + mo24428b2;
                i5 = i7;
                if (i7 >= i) {
                    i5 = i7;
                    break;
                }
            } else if (i5 < i) {
                throw new KryoException("Buffer underflow.");
            }
        }
        this.f32207d = i5;
        return i5;
    }

    /* renamed from: k */
    private int m24436k(int i) throws KryoException {
        int i2;
        int i3 = this.f32207d - this.f32205b;
        if (i3 >= i) {
            return i;
        }
        int min = Math.min(i, this.f32206c);
        byte[] bArr = this.f32204a;
        int i4 = this.f32207d;
        int mo24428b = mo24428b(bArr, i4, this.f32206c - i4);
        if (mo24428b == -1) {
            if (i3 != 0) {
                return Math.min(i3, min);
            }
            return -1;
        }
        int i5 = i3 + mo24428b;
        if (i5 >= min) {
            this.f32207d += mo24428b;
            return min;
        }
        byte[] bArr2 = this.f32204a;
        System.arraycopy(bArr2, this.f32205b, bArr2, 0, i5);
        this.f32208e += this.f32205b;
        this.f32205b = 0;
        do {
            int mo24428b2 = mo24428b(this.f32204a, i5, this.f32206c - i5);
            i2 = i5;
            if (mo24428b2 == -1) {
                break;
            }
            i2 = i5 + mo24428b2;
            i5 = i2;
        } while (i2 < min);
        this.f32207d = i2;
        if (i2 != 0) {
            return Math.min(i2, min);
        }
        return -1;
    }

    /* renamed from: l */
    private void m24434l(int i) {
        int i2;
        byte b;
        if (this.f32209f.length < i) {
            this.f32209f = new char[i];
        }
        byte[] bArr = this.f32204a;
        char[] cArr = this.f32209f;
        int i3 = 0;
        int min = Math.min(m24438j(1), i);
        int i4 = this.f32205b;
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
            cArr[i3] = (char) b;
            i4 = i5;
            i3++;
        }
        this.f32205b = i2;
        if (i3 < i) {
            m24460a(i, i3);
        }
    }

    /* renamed from: m */
    private String m24432m(int i) {
        char[] cArr = this.f32209f;
        byte[] bArr = this.f32204a;
        while (true) {
            if (this.f32205b == this.f32207d) {
                m24438j(1);
            }
            int i2 = this.f32205b;
            this.f32205b = i2 + 1;
            byte b = bArr[i2];
            char[] cArr2 = cArr;
            if (i == cArr.length) {
                cArr2 = new char[i * 2];
                System.arraycopy(cArr, 0, cArr2, 0, i);
                this.f32209f = cArr2;
            }
            if ((b & 128) == 128) {
                cArr2[i] = (char) (b & Byte.MAX_VALUE);
                return new String(cArr2, 0, i + 1);
            }
            cArr2[i] = (char) b;
            i++;
            cArr = cArr2;
        }
    }

    /* renamed from: o */
    private String m24430o() {
        byte b;
        char[] cArr = this.f32209f;
        byte[] bArr = this.f32204a;
        int i = this.f32205b;
        int min = Math.min(cArr.length, this.f32207d - i);
        int i2 = 0;
        while (i2 < min) {
            if ((bArr[i] & 128) == 128) {
                this.f32205b = i + 1;
                cArr[i2] = (char) (b & Byte.MAX_VALUE);
                return new String(cArr, 0, i2 + 1);
            }
            cArr[i2] = (char) b;
            i2++;
            i++;
        }
        this.f32205b = i;
        return m24432m(i2);
    }

    /* renamed from: a */
    public final int m24459a(boolean z) throws KryoException {
        return this.f32211h ? m24456b(z) : m24452d();
    }

    /* renamed from: a */
    public final InputStream m24462a() {
        return this.f32210g;
    }

    /* renamed from: a */
    public final void m24461a(int i) throws KryoException {
        int i2 = i;
        int min = Math.min(this.f32207d - this.f32205b, i);
        while (true) {
            this.f32205b += min;
            i2 -= min;
            if (i2 != 0) {
                min = Math.min(i2, this.f32206c);
                m24438j(min);
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public void mo24429a(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            this.f32204a = bArr;
            this.f32205b = i;
            this.f32207d = i + i2;
            this.f32206c = bArr.length;
            this.f32208e = 0L;
            this.f32210g = null;
            return;
        }
        throw new IllegalArgumentException("bytes cannot be null.");
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        int i = this.f32207d;
        int i2 = this.f32205b;
        InputStream inputStream = this.f32210g;
        return (i - i2) + (inputStream != null ? inputStream.available() : 0);
    }

    /* renamed from: b */
    public final int m24458b() {
        return this.f32205b;
    }

    /* renamed from: b */
    public final int m24456b(boolean z) throws KryoException {
        if (m24438j(1) < 5) {
            return m24450d(z);
        }
        byte[] bArr = this.f32204a;
        int i = this.f32205b;
        int i2 = i + 1;
        this.f32205b = i2;
        byte b = bArr[i];
        int i3 = b & Byte.MAX_VALUE;
        int i4 = i3;
        if ((b & 128) != 0) {
            int i5 = i2 + 1;
            byte b2 = bArr[i2];
            int i6 = i3 | ((b2 & Byte.MAX_VALUE) << 7);
            int i7 = i5;
            i4 = i6;
            if ((b2 & 128) != 0) {
                int i8 = i5 + 1;
                byte b3 = bArr[i5];
                int i9 = i6 | ((b3 & Byte.MAX_VALUE) << 14);
                i7 = i8;
                i4 = i9;
                if ((b3 & 128) != 0) {
                    int i10 = i8 + 1;
                    byte b4 = bArr[i8];
                    int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 21);
                    i7 = i10;
                    i4 = i11;
                    if ((b4 & 128) != 0) {
                        i7 = i10 + 1;
                        i4 = ((bArr[i10] & Byte.MAX_VALUE) << 28) | i11;
                    }
                }
            }
            this.f32205b = i7;
        }
        return z ? i4 : (i4 >>> 1) ^ (-(1 & i4));
    }

    /* renamed from: b */
    public int mo24428b(byte[] bArr, int i, int i2) throws KryoException {
        InputStream inputStream = this.f32210g;
        if (inputStream == null) {
            return -1;
        }
        try {
            return inputStream.read(bArr, i, i2);
        } catch (IOException e) {
            throw new KryoException(e);
        }
    }

    /* renamed from: b */
    public final byte[] m24457b(int i) throws KryoException {
        byte[] bArr = new byte[i];
        int min = Math.min(this.f32207d - this.f32205b, i);
        int i2 = 0;
        while (true) {
            System.arraycopy(this.f32204a, this.f32205b, bArr, i2, min);
            this.f32205b += min;
            i -= min;
            if (i != 0) {
                i2 += min;
                min = Math.min(i, this.f32206c);
                m24438j(min);
            } else {
                return bArr;
            }
        }
    }

    /* renamed from: c */
    public final byte m24455c() throws KryoException {
        if (this.f32205b == this.f32207d) {
            m24438j(1);
        }
        byte[] bArr = this.f32204a;
        int i = this.f32205b;
        this.f32205b = i + 1;
        return bArr[i];
    }

    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v127, types: [long] */
    /* JADX WARN: Type inference failed for: r0v140, types: [long] */
    /* JADX WARN: Type inference failed for: r0v153, types: [long] */
    /* JADX WARN: Type inference failed for: r0v166, types: [long] */
    /* JADX WARN: Type inference failed for: r0v179, types: [long] */
    /* JADX WARN: Type inference failed for: r0v192, types: [long] */
    /* JADX WARN: Type inference failed for: r0v205, types: [long] */
    /* JADX WARN: Type inference failed for: r0v214, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* JADX WARN: Type inference failed for: r0v94, types: [long] */
    /* renamed from: c */
    public final long m24453c(boolean z) throws KryoException {
        char c;
        int i;
        if (m24438j(1) < 9) {
            byte[] bArr = this.f32204a;
            int i2 = this.f32205b;
            int i3 = i2 + 1;
            this.f32205b = i3;
            byte b = bArr[i2];
            ?? r0 = b & Byte.MAX_VALUE;
            char c2 = r0;
            if ((b & 128) != 0) {
                if (i3 == this.f32207d) {
                    m24438j(1);
                }
                byte[] bArr2 = this.f32204a;
                int i4 = this.f32205b;
                int i5 = i4 + 1;
                this.f32205b = i5;
                byte b2 = bArr2[i4];
                ?? r02 = r0 | ((b2 & Byte.MAX_VALUE) << 7);
                c2 = r02;
                if ((b2 & 128) != 0) {
                    if (i5 == this.f32207d) {
                        m24438j(1);
                    }
                    int i6 = this.f32205b;
                    int i7 = i6 + 1;
                    this.f32205b = i7;
                    byte b3 = bArr2[i6];
                    ?? r03 = r02 | ((b3 & Byte.MAX_VALUE) << 14);
                    c2 = r03;
                    if ((b3 & 128) != 0) {
                        if (i7 == this.f32207d) {
                            m24438j(1);
                        }
                        int i8 = this.f32205b;
                        int i9 = i8 + 1;
                        this.f32205b = i9;
                        byte b4 = bArr2[i8];
                        ?? r04 = r03 | ((b4 & Byte.MAX_VALUE) << 21);
                        c2 = r04;
                        if ((b4 & 128) != 0) {
                            if (i9 == this.f32207d) {
                                m24438j(1);
                            }
                            int i10 = this.f32205b;
                            int i11 = i10 + 1;
                            this.f32205b = i11;
                            byte b5 = bArr2[i10];
                            ?? r05 = r04 | ((b5 & Byte.MAX_VALUE) << 28);
                            c2 = r05;
                            if ((b5 & 128) != 0) {
                                if (i11 == this.f32207d) {
                                    m24438j(1);
                                }
                                int i12 = this.f32205b;
                                int i13 = i12 + 1;
                                this.f32205b = i13;
                                byte b6 = bArr2[i12];
                                ?? r06 = r05 | ((b6 & Byte.MAX_VALUE) << 35);
                                c2 = r06;
                                if ((b6 & 128) != 0) {
                                    if (i13 == this.f32207d) {
                                        m24438j(1);
                                    }
                                    int i14 = this.f32205b;
                                    int i15 = i14 + 1;
                                    this.f32205b = i15;
                                    byte b7 = bArr2[i14];
                                    ?? r07 = r06 | ((b7 & Byte.MAX_VALUE) << 42);
                                    c2 = r07;
                                    if ((b7 & 128) != 0) {
                                        if (i15 == this.f32207d) {
                                            m24438j(1);
                                        }
                                        int i16 = this.f32205b;
                                        int i17 = i16 + 1;
                                        this.f32205b = i17;
                                        byte b8 = bArr2[i16];
                                        ?? r08 = r07 | ((b8 & Byte.MAX_VALUE) << 49);
                                        c2 = r08;
                                        if ((b8 & 128) != 0) {
                                            if (i17 == this.f32207d) {
                                                m24438j(1);
                                            }
                                            this.f32205b = this.f32205b + 1;
                                            c2 = r08 | (bArr2[i] << 56);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            c = c2;
            if (z) {
                return c2;
            }
        } else {
            int i18 = this.f32205b;
            byte[] bArr3 = this.f32204a;
            int i19 = i18 + 1;
            byte b9 = bArr3[i18];
            ?? r09 = b9 & Byte.MAX_VALUE;
            int i20 = i19;
            char c3 = r09;
            if ((b9 & 128) != 0) {
                int i21 = i19 + 1;
                byte b10 = bArr3[i19];
                ?? r010 = r09 | ((b10 & Byte.MAX_VALUE) << 7);
                i20 = i21;
                c3 = r010;
                if ((b10 & 128) != 0) {
                    int i22 = i21 + 1;
                    byte b11 = bArr3[i21];
                    ?? r011 = r010 | ((b11 & Byte.MAX_VALUE) << 14);
                    i20 = i22;
                    c3 = r011;
                    if ((b11 & 128) != 0) {
                        int i23 = i22 + 1;
                        byte b12 = bArr3[i22];
                        ?? r012 = r011 | ((b12 & Byte.MAX_VALUE) << 21);
                        i20 = i23;
                        c3 = r012;
                        if ((b12 & 128) != 0) {
                            int i24 = i23 + 1;
                            byte b13 = bArr3[i23];
                            ?? r013 = r012 | ((b13 & Byte.MAX_VALUE) << 28);
                            i20 = i24;
                            c3 = r013;
                            if ((b13 & 128) != 0) {
                                int i25 = i24 + 1;
                                byte b14 = bArr3[i24];
                                ?? r014 = r013 | ((b14 & Byte.MAX_VALUE) << 35);
                                i20 = i25;
                                c3 = r014;
                                if ((b14 & 128) != 0) {
                                    int i26 = i25 + 1;
                                    byte b15 = bArr3[i25];
                                    ?? r015 = r014 | ((b15 & Byte.MAX_VALUE) << 42);
                                    i20 = i26;
                                    c3 = r015;
                                    if ((b15 & 128) != 0) {
                                        int i27 = i26 + 1;
                                        byte b16 = bArr3[i26];
                                        ?? r016 = r015 | ((b16 & Byte.MAX_VALUE) << 49);
                                        i20 = i27;
                                        c3 = r016;
                                        if ((b16 & 128) != 0) {
                                            i20 = i27 + 1;
                                            c3 = r016 | (bArr3[i27] << 56);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            this.f32205b = i20;
            c = c3;
            if (z) {
                return c3;
            }
        }
        return (c >>> 1) ^ (-(c & 1));
    }

    /* renamed from: c */
    public final int[] m24454c(int i) throws KryoException {
        int i2 = 0;
        if (this.f32211h) {
            int[] iArr = new int[i];
            for (int i3 = 0; i3 < i; i3++) {
                iArr[i3] = m24456b(false);
            }
            return iArr;
        }
        int[] iArr2 = new int[i];
        int i4 = i << 2;
        if (m24436k(i4) == i4) {
            byte[] bArr = this.f32204a;
            int i5 = this.f32205b;
            while (i2 < i) {
                iArr2[i2] = (bArr[i5] & 255) | ((bArr[i5 + 1] & 255) << 8) | ((bArr[i5 + 2] & 255) << 16) | ((bArr[i5 + 3] & 255) << 24);
                i2++;
                i5 += 4;
            }
            this.f32205b = i5;
        } else {
            for (int i6 = 0; i6 < i; i6++) {
                iArr2[i6] = m24452d();
            }
        }
        return iArr2;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws KryoException {
        InputStream inputStream = this.f32210g;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: d */
    public final int m24452d() throws KryoException {
        m24438j(4);
        byte[] bArr = this.f32204a;
        int i = this.f32205b;
        this.f32205b = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: d */
    public final long[] m24451d(int i) throws KryoException {
        long[] jArr = new long[i];
        int i2 = i << 3;
        int i3 = 0;
        if (m24436k(i2) == i2) {
            byte[] bArr = this.f32204a;
            int i4 = this.f32205b;
            while (i3 < i) {
                jArr[i3] = (bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4 + 2] & 255) << 16) | ((bArr[i4 + 3] & 255) << 24) | ((bArr[i4 + 4] & 255) << 32) | ((bArr[i4 + 5] & 255) << 40) | ((bArr[i4 + 6] & 255) << 48) | (bArr[i4 + 7] << 56);
                i3++;
                i4 += 8;
            }
            this.f32205b = i4;
        } else {
            for (int i5 = 0; i5 < i; i5++) {
                jArr[i5] = m24445g();
            }
        }
        return jArr;
    }

    /* renamed from: e */
    public final boolean m24449e() {
        if (this.f32205b == this.f32207d) {
            m24438j(1);
        }
        return (this.f32204a[this.f32205b] & 128) != 0;
    }

    /* renamed from: e */
    public final long[] m24448e(int i) throws KryoException {
        if (this.f32211h) {
            long[] jArr = new long[i];
            for (int i2 = 0; i2 < i; i2++) {
                jArr[i2] = m24453c(false);
            }
            return jArr;
        }
        return m24451d(i);
    }

    /* renamed from: f */
    public final int m24447f() {
        if (m24438j(1) >= 5) {
            byte[] bArr = this.f32204a;
            int i = this.f32205b;
            int i2 = i + 1;
            this.f32205b = i2;
            byte b = bArr[i];
            int i3 = b & 63;
            int i4 = i3;
            if ((b & 64) != 0) {
                int i5 = i2 + 1;
                byte b2 = bArr[i2];
                int i6 = i3 | ((b2 & Byte.MAX_VALUE) << 6);
                int i7 = i5;
                i4 = i6;
                if ((b2 & 128) != 0) {
                    int i8 = i5 + 1;
                    byte b3 = bArr[i5];
                    int i9 = i6 | ((b3 & Byte.MAX_VALUE) << 13);
                    i7 = i8;
                    i4 = i9;
                    if ((b3 & 128) != 0) {
                        int i10 = i8 + 1;
                        byte b4 = bArr[i8];
                        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 20);
                        i7 = i10;
                        i4 = i11;
                        if ((b4 & 128) != 0) {
                            i7 = i10 + 1;
                            i4 = ((bArr[i10] & Byte.MAX_VALUE) << 27) | i11;
                        }
                    }
                }
                this.f32205b = i7;
            }
            return i4;
        }
        byte[] bArr2 = this.f32204a;
        int i12 = this.f32205b;
        int i13 = i12 + 1;
        this.f32205b = i13;
        byte b5 = bArr2[i12];
        int i14 = b5 & 63;
        int i15 = i14;
        if ((b5 & 64) != 0) {
            if (i13 == this.f32207d) {
                m24438j(1);
            }
            byte[] bArr3 = this.f32204a;
            int i16 = this.f32205b;
            int i17 = i16 + 1;
            this.f32205b = i17;
            byte b6 = bArr3[i16];
            int i18 = i14 | ((b6 & Byte.MAX_VALUE) << 6);
            i15 = i18;
            if ((b6 & 128) != 0) {
                if (i17 == this.f32207d) {
                    m24438j(1);
                }
                int i19 = this.f32205b;
                int i20 = i19 + 1;
                this.f32205b = i20;
                byte b7 = bArr3[i19];
                int i21 = i18 | ((b7 & Byte.MAX_VALUE) << 13);
                i15 = i21;
                if ((b7 & 128) != 0) {
                    if (i20 == this.f32207d) {
                        m24438j(1);
                    }
                    int i22 = this.f32205b;
                    int i23 = i22 + 1;
                    this.f32205b = i23;
                    byte b8 = bArr3[i22];
                    int i24 = i21 | ((b8 & Byte.MAX_VALUE) << 20);
                    i15 = i24;
                    if ((b8 & 128) != 0) {
                        if (i23 == this.f32207d) {
                            m24438j(1);
                        }
                        int i25 = this.f32205b;
                        this.f32205b = i25 + 1;
                        i15 = i24 | ((bArr3[i25] & Byte.MAX_VALUE) << 27);
                    }
                }
            }
        }
        return i15;
    }

    /* renamed from: f */
    public final float[] m24446f(int i) throws KryoException {
        float[] fArr = new float[i];
        int i2 = i << 2;
        int i3 = 0;
        if (m24436k(i2) == i2) {
            byte[] bArr = this.f32204a;
            int i4 = this.f32205b;
            while (i3 < i) {
                fArr[i3] = Float.intBitsToFloat((bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4 + 2] & 255) << 16) | ((bArr[i4 + 3] & 255) << 24));
                i3++;
                i4 += 4;
            }
            this.f32205b = i4;
        } else {
            for (int i5 = 0; i5 < i; i5++) {
                fArr[i5] = m24443h();
            }
        }
        return fArr;
    }

    /* renamed from: g */
    public final long m24445g() throws KryoException {
        m24438j(8);
        byte[] bArr = this.f32204a;
        int i = this.f32205b;
        this.f32205b = i + 8;
        return (bArr[i + 7] << 56) | ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* renamed from: g */
    public final double[] m24444g(int i) throws KryoException {
        double[] dArr = new double[i];
        int i2 = i << 3;
        int i3 = 0;
        if (m24436k(i2) == i2) {
            byte[] bArr = this.f32204a;
            int i4 = this.f32205b;
            while (i3 < i) {
                dArr[i3] = Double.longBitsToDouble((bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4 + 2] & 255) << 16) | ((bArr[i4 + 3] & 255) << 24) | ((bArr[i4 + 4] & 255) << 32) | ((bArr[i4 + 5] & 255) << 40) | ((bArr[i4 + 6] & 255) << 48) | (bArr[i4 + 7] << 56));
                i3++;
                i4 += 8;
            }
            this.f32205b = i4;
        } else {
            for (int i5 = 0; i5 < i; i5++) {
                dArr[i5] = m24441i();
            }
        }
        return dArr;
    }

    /* renamed from: h */
    public final float m24443h() throws KryoException {
        m24438j(4);
        byte[] bArr = this.f32204a;
        int i = this.f32205b;
        this.f32205b = i + 4;
        return Float.intBitsToFloat(((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16));
    }

    /* renamed from: h */
    public final short[] m24442h(int i) throws KryoException {
        short[] sArr = new short[i];
        int i2 = i << 1;
        int i3 = 0;
        if (m24436k(i2) == i2) {
            byte[] bArr = this.f32204a;
            int i4 = this.f32205b;
            while (i3 < i) {
                sArr[i3] = (short) ((bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8));
                i3++;
                i4 += 2;
            }
            this.f32205b = i4;
        } else {
            for (int i5 = 0; i5 < i; i5++) {
                sArr[i5] = m24439j();
            }
        }
        return sArr;
    }

    /* renamed from: i */
    public final double m24441i() throws KryoException {
        m24438j(8);
        byte[] bArr = this.f32204a;
        int i = this.f32205b;
        this.f32205b = i + 8;
        return Double.longBitsToDouble((bArr[i + 7] << 56) | ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48));
    }

    /* renamed from: i */
    public final char[] m24440i(int i) throws KryoException {
        char[] cArr = new char[i];
        int i2 = i << 1;
        int i3 = 0;
        if (m24436k(i2) == i2) {
            byte[] bArr = this.f32204a;
            int i4 = this.f32205b;
            while (i3 < i) {
                cArr[i3] = (char) ((bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8));
                i3++;
                i4 += 2;
            }
            this.f32205b = i4;
        } else {
            for (int i5 = 0; i5 < i; i5++) {
                cArr[i5] = m24437k();
            }
        }
        return cArr;
    }

    /* renamed from: j */
    public final short m24439j() throws KryoException {
        m24438j(2);
        int i = this.f32205b;
        this.f32205b = i + 2;
        byte[] bArr = this.f32204a;
        return (short) (((bArr[i + 1] & 255) << 8) | (bArr[i] & 255));
    }

    /* renamed from: k */
    public final char m24437k() throws KryoException {
        m24438j(2);
        int i = this.f32205b;
        this.f32205b = i + 2;
        byte[] bArr = this.f32204a;
        return (char) (((bArr[i + 1] & 255) << 8) | (bArr[i] & 255));
    }

    /* renamed from: l */
    public final boolean m24435l() throws KryoException {
        if (this.f32205b == this.f32207d) {
            m24438j(1);
        }
        byte[] bArr = this.f32204a;
        int i = this.f32205b;
        this.f32205b = i + 1;
        return bArr[i] == 1;
    }

    /* renamed from: m */
    public final String m24433m() {
        if (!m24449e()) {
            return m24430o();
        }
        int m24447f = m24447f();
        if (m24447f == 0) {
            return null;
        }
        if (m24447f == 1) {
            return "";
        }
        int i = m24447f - 1;
        m24434l(i);
        return new String(this.f32209f, 0, i);
    }

    /* renamed from: n */
    public final StringBuilder m24431n() {
        if (!m24449e()) {
            return new StringBuilder(m24430o());
        }
        int m24447f = m24447f();
        if (m24447f == 0) {
            return null;
        }
        if (m24447f == 1) {
            return new StringBuilder(0);
        }
        int i = m24447f - 1;
        m24434l(i);
        StringBuilder sb = new StringBuilder(i);
        sb.append(this.f32209f, 0, i);
        return sb;
    }

    @Override // java.io.InputStream
    public int read() throws KryoException {
        if (m24436k(1) <= 0) {
            return -1;
        }
        byte[] bArr = this.f32204a;
        int i = this.f32205b;
        this.f32205b = i + 1;
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
            int min = Math.min(this.f32207d - this.f32205b, i2);
            int i4 = i2;
            while (true) {
                System.arraycopy(this.f32204a, this.f32205b, bArr, i, min);
                this.f32205b += min;
                i3 = i4 - min;
                if (i3 == 0) {
                    break;
                }
                i += min;
                min = m24436k(i3);
                if (min != -1) {
                    i4 = i3;
                    if (this.f32205b == this.f32207d) {
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
        this.f32205b = 0;
        this.f32208e = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    @Override // java.io.InputStream
    public long skip(long j) throws KryoException {
        char c = j;
        while (true) {
            char c2 = c;
            if (c2 > 0) {
                int min = (int) Math.min(2147483639L, (long) c2);
                m24461a(min);
                c = c2 - min;
            } else {
                return j;
            }
        }
    }
}
