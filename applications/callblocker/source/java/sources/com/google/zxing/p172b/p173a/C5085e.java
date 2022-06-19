package com.google.zxing.p172b.p173a;

import java.util.Arrays;
/* renamed from: com.google.zxing.b.a.e */
/* loaded from: classes-dex2jar.jar:com/google/zxing/b/a/e.class */
public class C5085e {

    /* renamed from: a */
    private final CharSequence f21527a;

    /* renamed from: b */
    private final int f21528b;

    /* renamed from: c */
    private final int f21529c;

    /* renamed from: d */
    private final byte[] f21530d;

    public C5085e(CharSequence charSequence, int i, int i2) {
        this.f21527a = charSequence;
        this.f21529c = i;
        this.f21528b = i2;
        this.f21530d = new byte[i * i2];
        Arrays.fill(this.f21530d, (byte) -1);
    }

    /* renamed from: a */
    private void m1556a(int i) {
        m1553a(this.f21528b - 1, 0, i, 1);
        m1553a(this.f21528b - 1, 1, i, 2);
        m1553a(this.f21528b - 1, 2, i, 3);
        m1553a(0, this.f21529c - 2, i, 4);
        m1553a(0, this.f21529c - 1, i, 5);
        m1553a(1, this.f21529c - 1, i, 6);
        m1553a(2, this.f21529c - 1, i, 7);
        m1553a(3, this.f21529c - 1, i, 8);
    }

    /* renamed from: a */
    private void m1554a(int i, int i2, int i3) {
        m1553a(i - 2, i2 - 2, i3, 1);
        m1553a(i - 2, i2 - 1, i3, 2);
        m1553a(i - 1, i2 - 2, i3, 3);
        m1553a(i - 1, i2 - 1, i3, 4);
        m1553a(i - 1, i2, i3, 5);
        m1553a(i, i2 - 2, i3, 6);
        m1553a(i, i2 - 1, i3, 7);
        m1553a(i, i2, i3, 8);
    }

    /* renamed from: a */
    private void m1553a(int i, int i2, int i3, int i4) {
        boolean z = true;
        if (i < 0) {
            i += this.f21528b;
            i2 = (4 - ((this.f21528b + 4) % 8)) + i2;
        }
        int i5 = i2;
        int i6 = i;
        if (i2 < 0) {
            i5 = i2 + this.f21529c;
            i6 = i + (4 - ((this.f21529c + 4) % 8));
        }
        if ((this.f21527a.charAt(i3) & (1 << (8 - i4))) == 0) {
            z = false;
        }
        m1552a(i5, i6, z);
    }

    /* renamed from: a */
    private void m1552a(int i, int i2, boolean z) {
        this.f21530d[(this.f21529c * i2) + i] = (byte) (z ? 1 : 0);
    }

    /* renamed from: b */
    private void m1551b(int i) {
        m1553a(this.f21528b - 3, 0, i, 1);
        m1553a(this.f21528b - 2, 0, i, 2);
        m1553a(this.f21528b - 1, 0, i, 3);
        m1553a(0, this.f21529c - 4, i, 4);
        m1553a(0, this.f21529c - 3, i, 5);
        m1553a(0, this.f21529c - 2, i, 6);
        m1553a(0, this.f21529c - 1, i, 7);
        m1553a(1, this.f21529c - 1, i, 8);
    }

    /* renamed from: b */
    private boolean m1550b(int i, int i2) {
        return this.f21530d[(this.f21529c * i2) + i] >= 0;
    }

    /* renamed from: c */
    private void m1549c(int i) {
        m1553a(this.f21528b - 3, 0, i, 1);
        m1553a(this.f21528b - 2, 0, i, 2);
        m1553a(this.f21528b - 1, 0, i, 3);
        m1553a(0, this.f21529c - 2, i, 4);
        m1553a(0, this.f21529c - 1, i, 5);
        m1553a(1, this.f21529c - 1, i, 6);
        m1553a(2, this.f21529c - 1, i, 7);
        m1553a(3, this.f21529c - 1, i, 8);
    }

    /* renamed from: d */
    private void m1548d(int i) {
        m1553a(this.f21528b - 1, 0, i, 1);
        m1553a(this.f21528b - 1, this.f21529c - 1, i, 2);
        m1553a(0, this.f21529c - 3, i, 3);
        m1553a(0, this.f21529c - 2, i, 4);
        m1553a(0, this.f21529c - 1, i, 5);
        m1553a(1, this.f21529c - 3, i, 6);
        m1553a(1, this.f21529c - 2, i, 7);
        m1553a(1, this.f21529c - 1, i, 8);
    }

    /* renamed from: a */
    public final void m1557a() {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        int i5 = 4;
        int i6 = 0;
        while (true) {
            int i7 = i6;
            if (i5 == this.f21528b) {
                i7 = i6;
                if (i4 == 0) {
                    m1556a(i6);
                    i7 = i6 + 1;
                }
            }
            int i8 = i7;
            if (i5 == this.f21528b - 2) {
                i8 = i7;
                if (i4 == 0) {
                    i8 = i7;
                    if (this.f21529c % 4 != 0) {
                        m1551b(i7);
                        i8 = i7 + 1;
                    }
                }
            }
            int i9 = i8;
            if (i5 == this.f21528b - 2) {
                i9 = i8;
                if (i4 == 0) {
                    i9 = i8;
                    if (this.f21529c % 8 == 4) {
                        m1549c(i8);
                        i9 = i8 + 1;
                    }
                }
            }
            int i10 = i4;
            int i11 = i5;
            int i12 = i9;
            if (i5 == this.f21528b + 4) {
                i10 = i4;
                i11 = i5;
                i12 = i9;
                if (i4 == 2) {
                    i10 = i4;
                    i11 = i5;
                    i12 = i9;
                    if (this.f21529c % 8 == 0) {
                        m1548d(i9);
                        i12 = i9 + 1;
                        i11 = i5;
                        i10 = i4;
                    }
                }
            }
            do {
                i = i12;
                if (i11 < this.f21528b) {
                    i = i12;
                    if (i10 >= 0) {
                        i = i12;
                        if (!m1550b(i10, i11)) {
                            m1554a(i11, i10, i12);
                            i = i12 + 1;
                        }
                    }
                }
                i2 = i11 - 2;
                i3 = i10 + 2;
                if (i2 < 0) {
                    break;
                }
                i10 = i3;
                i11 = i2;
                i12 = i;
            } while (i3 < this.f21529c);
            int i13 = i3 + 3;
            int i14 = i2 + 1;
            i6 = i;
            while (true) {
                int i15 = i13;
                if (i14 >= 0 && i15 < this.f21529c && !m1550b(i15, i14)) {
                    m1554a(i14, i15, i6);
                    i6++;
                }
                i14 += 2;
                i13 = i15 - 2;
                if (i14 >= this.f21528b || i13 < 0) {
                    break;
                }
            }
            i5 = i14 + 3;
            i4 = i13 + 1;
            if (i5 >= this.f21528b && i4 >= this.f21529c) {
                break;
            }
        }
        if (!m1550b(this.f21529c - 1, this.f21528b - 1)) {
            m1552a(this.f21529c - 1, this.f21528b - 1, true);
            m1552a(this.f21529c - 2, this.f21528b - 2, true);
        }
    }

    /* renamed from: a */
    public final boolean m1555a(int i, int i2) {
        boolean z = true;
        if (this.f21530d[(this.f21529c * i2) + i] != 1) {
            z = false;
        }
        return z;
    }
}
