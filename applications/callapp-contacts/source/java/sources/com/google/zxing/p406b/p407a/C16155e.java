package com.google.zxing.p406b.p407a;

import java.util.Arrays;
/* renamed from: com.google.zxing.b.a.e */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a/e.class */
public final class C16155e {

    /* renamed from: a */
    public final int f57075a;

    /* renamed from: b */
    public final byte[] f57076b;

    /* renamed from: c */
    private final CharSequence f57077c;

    /* renamed from: d */
    private final int f57078d;

    public C16155e(CharSequence charSequence, int i, int i2) {
        this.f57077c = charSequence;
        this.f57075a = i;
        this.f57078d = i2;
        byte[] bArr = new byte[i * i2];
        this.f57076b = bArr;
        Arrays.fill(bArr, (byte) -1);
    }

    /* renamed from: a */
    private void m7739a(int i, int i2, int i3) {
        int i4 = i - 2;
        int i5 = i2 - 2;
        m7738a(i4, i5, i3, 1);
        int i6 = i2 - 1;
        m7738a(i4, i6, i3, 2);
        int i7 = i - 1;
        m7738a(i7, i5, i3, 3);
        m7738a(i7, i6, i3, 4);
        m7738a(i7, i2, i3, 5);
        m7738a(i, i5, i3, 6);
        m7738a(i, i6, i3, 7);
        m7738a(i, i2, i3, 8);
    }

    /* renamed from: a */
    private void m7738a(int i, int i2, int i3, int i4) {
        int i5 = i;
        int i6 = i2;
        if (i < 0) {
            int i7 = this.f57078d;
            i5 = i + i7;
            i6 = i2 + (4 - ((i7 + 4) % 8));
        }
        int i8 = i5;
        int i9 = i6;
        if (i6 < 0) {
            int i10 = this.f57075a;
            i9 = i6 + i10;
            i8 = i5 + (4 - ((i10 + 4) % 8));
        }
        boolean z = true;
        if ((this.f57077c.charAt(i3) & (1 << (8 - i4))) == 0) {
            z = false;
        }
        m7737a(i9, i8, z);
    }

    /* renamed from: a */
    private void m7737a(int i, int i2, boolean z) {
        this.f57076b[(i2 * this.f57075a) + i] = z ? (byte) 1 : (byte) 0;
    }

    /* renamed from: a */
    private boolean m7740a(int i, int i2) {
        return this.f57076b[(i2 * this.f57075a) + i] >= 0;
    }

    /* renamed from: a */
    public final void m7741a() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = 4;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = this.f57078d;
            int i13 = i11;
            if (i9 == i12) {
                i13 = i11;
                if (i10 == 0) {
                    m7738a(i12 - 1, 0, i11, 1);
                    m7738a(this.f57078d - 1, 1, i11, 2);
                    m7738a(this.f57078d - 1, 2, i11, 3);
                    m7738a(0, this.f57075a - 2, i11, 4);
                    m7738a(0, this.f57075a - 1, i11, 5);
                    m7738a(1, this.f57075a - 1, i11, 6);
                    m7738a(2, this.f57075a - 1, i11, 7);
                    m7738a(3, this.f57075a - 1, i11, 8);
                    i13 = i11 + 1;
                }
            }
            int i14 = this.f57078d;
            int i15 = i13;
            if (i9 == i14 - 2) {
                i15 = i13;
                if (i10 == 0) {
                    i15 = i13;
                    if (this.f57075a % 4 != 0) {
                        m7738a(i14 - 3, 0, i13, 1);
                        m7738a(this.f57078d - 2, 0, i13, 2);
                        m7738a(this.f57078d - 1, 0, i13, 3);
                        m7738a(0, this.f57075a - 4, i13, 4);
                        m7738a(0, this.f57075a - 3, i13, 5);
                        m7738a(0, this.f57075a - 2, i13, 6);
                        m7738a(0, this.f57075a - 1, i13, 7);
                        m7738a(1, this.f57075a - 1, i13, 8);
                        i15 = i13 + 1;
                    }
                }
            }
            int i16 = this.f57078d;
            int i17 = i15;
            if (i9 == i16 - 2) {
                i17 = i15;
                if (i10 == 0) {
                    i17 = i15;
                    if (this.f57075a % 8 == 4) {
                        m7738a(i16 - 3, 0, i15, 1);
                        m7738a(this.f57078d - 2, 0, i15, 2);
                        m7738a(this.f57078d - 1, 0, i15, 3);
                        m7738a(0, this.f57075a - 2, i15, 4);
                        m7738a(0, this.f57075a - 1, i15, 5);
                        m7738a(1, this.f57075a - 1, i15, 6);
                        m7738a(2, this.f57075a - 1, i15, 7);
                        m7738a(3, this.f57075a - 1, i15, 8);
                        i17 = i15 + 1;
                    }
                }
            }
            int i18 = this.f57078d;
            int i19 = i9;
            int i20 = i10;
            int i21 = i17;
            if (i9 == i18 + 4) {
                i19 = i9;
                i20 = i10;
                i21 = i17;
                if (i10 == 2) {
                    i19 = i9;
                    i20 = i10;
                    i21 = i17;
                    if (this.f57075a % 8 == 0) {
                        m7738a(i18 - 1, 0, i17, 1);
                        m7738a(this.f57078d - 1, this.f57075a - 1, i17, 2);
                        m7738a(0, this.f57075a - 3, i17, 3);
                        m7738a(0, this.f57075a - 2, i17, 4);
                        m7738a(0, this.f57075a - 1, i17, 5);
                        m7738a(1, this.f57075a - 3, i17, 6);
                        m7738a(1, this.f57075a - 2, i17, 7);
                        m7738a(1, this.f57075a - 1, i17, 8);
                        i21 = i17 + 1;
                        i20 = i10;
                        i19 = i9;
                    }
                }
            }
            do {
                i = i21;
                if (i19 < this.f57078d) {
                    i = i21;
                    if (i20 >= 0) {
                        i = i21;
                        if (!m7740a(i20, i19)) {
                            m7739a(i19, i20, i21);
                            i = i21 + 1;
                        }
                    }
                }
                i2 = i19 - 2;
                i3 = i20 + 2;
                if (i2 < 0) {
                    break;
                }
                i19 = i2;
                i20 = i3;
                i21 = i;
            } while (i3 < this.f57075a);
            int i22 = i2 + 1;
            int i23 = i3 + 3;
            do {
                i4 = i;
                if (i22 >= 0) {
                    i4 = i;
                    if (i23 < this.f57075a) {
                        i4 = i;
                        if (!m7740a(i23, i22)) {
                            m7739a(i22, i23, i);
                            i4 = i + 1;
                        }
                    }
                }
                i5 = i22 + 2;
                i6 = i23 - 2;
                i7 = this.f57078d;
                if (i5 >= i7) {
                    break;
                }
                i22 = i5;
                i23 = i6;
                i = i4;
            } while (i6 >= 0);
            int i24 = i5 + 3;
            int i25 = i6 + 1;
            i9 = i24;
            i10 = i25;
            i11 = i4;
            if (i24 >= i7) {
                i8 = this.f57075a;
                i9 = i24;
                i10 = i25;
                i11 = i4;
                if (i25 >= i8) {
                    break;
                }
            }
        }
        if (!m7740a(i8 - 1, i7 - 1)) {
            m7737a(this.f57075a - 1, this.f57078d - 1, true);
            m7737a(this.f57075a - 2, this.f57078d - 2, true);
        }
    }
}
