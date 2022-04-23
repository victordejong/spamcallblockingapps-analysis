package p081h.p203i.p402h.p407l.p408b;

import java.util.Arrays;
/* renamed from: h.i.h.l.b.e */
/* loaded from: classes2-dex2jar.jar:h/i/h/l/b/e.class */
public class C10559e {

    /* renamed from: a */
    public final CharSequence f24032a;

    /* renamed from: b */
    public final int f24033b;

    /* renamed from: c */
    public final int f24034c;

    /* renamed from: d */
    public final byte[] f24035d;

    public C10559e(CharSequence charSequence, int i, int i2) {
        this.f24032a = charSequence;
        this.f24034c = i;
        this.f24033b = i2;
        this.f24035d = new byte[i * i2];
        Arrays.fill(this.f24035d, (byte) -1);
    }

    /* renamed from: a */
    public final void m11411a() {
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
            int i12 = i11;
            if (i9 == this.f24033b) {
                i12 = i11;
                if (i10 == 0) {
                    m11410a(i11);
                    i12 = i11 + 1;
                }
            }
            int i13 = i12;
            if (i9 == this.f24033b - 2) {
                i13 = i12;
                if (i10 == 0) {
                    i13 = i12;
                    if (this.f24034c % 4 != 0) {
                        m11405b(i12);
                        i13 = i12 + 1;
                    }
                }
            }
            int i14 = i13;
            if (i9 == this.f24033b - 2) {
                i14 = i13;
                if (i10 == 0) {
                    i14 = i13;
                    if (this.f24034c % 8 == 4) {
                        m11403c(i13);
                        i14 = i13 + 1;
                    }
                }
            }
            int i15 = i9;
            int i16 = i10;
            int i17 = i14;
            if (i9 == this.f24033b + 4) {
                i15 = i9;
                i16 = i10;
                i17 = i14;
                if (i10 == 2) {
                    i15 = i9;
                    i16 = i10;
                    i17 = i14;
                    if (this.f24034c % 8 == 0) {
                        m11402d(i14);
                        i17 = i14 + 1;
                        i16 = i10;
                        i15 = i9;
                    }
                }
            }
            do {
                i = i17;
                if (i15 < this.f24033b) {
                    i = i17;
                    if (i16 >= 0) {
                        i = i17;
                        if (!m11404b(i16, i15)) {
                            m11408a(i15, i16, i17);
                            i = i17 + 1;
                        }
                    }
                }
                i2 = i15 - 2;
                i3 = i16 + 2;
                if (i2 < 0) {
                    break;
                }
                i15 = i2;
                i16 = i3;
                i17 = i;
            } while (i3 < this.f24034c);
            int i18 = i2 + 1;
            int i19 = i3 + 3;
            do {
                i4 = i;
                if (i18 >= 0) {
                    i4 = i;
                    if (i19 < this.f24034c) {
                        i4 = i;
                        if (!m11404b(i19, i18)) {
                            m11408a(i18, i19, i);
                            i4 = i + 1;
                        }
                    }
                }
                i5 = i18 + 2;
                i6 = i19 - 2;
                if (i5 >= this.f24033b) {
                    break;
                }
                i18 = i5;
                i19 = i6;
                i = i4;
            } while (i6 >= 0);
            int i20 = i5 + 3;
            int i21 = i6 + 1;
            i7 = this.f24033b;
            i9 = i20;
            i10 = i21;
            i11 = i4;
            if (i20 >= i7) {
                i8 = this.f24034c;
                i9 = i20;
                i10 = i21;
                i11 = i4;
                if (i21 >= i8) {
                    break;
                }
            }
        }
        if (!m11404b(i8 - 1, i7 - 1)) {
            m11406a(this.f24034c - 1, this.f24033b - 1, true);
            m11406a(this.f24034c - 2, this.f24033b - 2, true);
        }
    }

    /* renamed from: a */
    public final void m11410a(int i) {
        m11407a(this.f24033b - 1, 0, i, 1);
        m11407a(this.f24033b - 1, 1, i, 2);
        m11407a(this.f24033b - 1, 2, i, 3);
        m11407a(0, this.f24034c - 2, i, 4);
        m11407a(0, this.f24034c - 1, i, 5);
        m11407a(1, this.f24034c - 1, i, 6);
        m11407a(2, this.f24034c - 1, i, 7);
        m11407a(3, this.f24034c - 1, i, 8);
    }

    /* renamed from: a */
    public final void m11408a(int i, int i2, int i3) {
        int i4 = i - 2;
        int i5 = i2 - 2;
        m11407a(i4, i5, i3, 1);
        int i6 = i2 - 1;
        m11407a(i4, i6, i3, 2);
        int i7 = i - 1;
        m11407a(i7, i5, i3, 3);
        m11407a(i7, i6, i3, 4);
        m11407a(i7, i2, i3, 5);
        m11407a(i, i5, i3, 6);
        m11407a(i, i6, i3, 7);
        m11407a(i, i2, i3, 8);
    }

    /* renamed from: a */
    public final void m11407a(int i, int i2, int i3, int i4) {
        int i5 = i;
        int i6 = i2;
        if (i < 0) {
            int i7 = this.f24033b;
            i5 = i + i7;
            i6 = i2 + (4 - ((i7 + 4) % 8));
        }
        int i8 = i5;
        int i9 = i6;
        if (i6 < 0) {
            int i10 = this.f24034c;
            i9 = i6 + i10;
            i8 = i5 + (4 - ((i10 + 4) % 8));
        }
        boolean z = true;
        if ((this.f24032a.charAt(i3) & (1 << (8 - i4))) == 0) {
            z = false;
        }
        m11406a(i9, i8, z);
    }

    /* renamed from: a */
    public final void m11406a(int i, int i2, boolean z) {
        this.f24035d[(i2 * this.f24034c) + i] = z ? (byte) 1 : (byte) 0;
    }

    /* renamed from: a */
    public final boolean m11409a(int i, int i2) {
        return this.f24035d[(i2 * this.f24034c) + i] == 1;
    }

    /* renamed from: b */
    public final void m11405b(int i) {
        m11407a(this.f24033b - 3, 0, i, 1);
        m11407a(this.f24033b - 2, 0, i, 2);
        m11407a(this.f24033b - 1, 0, i, 3);
        m11407a(0, this.f24034c - 4, i, 4);
        m11407a(0, this.f24034c - 3, i, 5);
        m11407a(0, this.f24034c - 2, i, 6);
        m11407a(0, this.f24034c - 1, i, 7);
        m11407a(1, this.f24034c - 1, i, 8);
    }

    /* renamed from: b */
    public final boolean m11404b(int i, int i2) {
        return this.f24035d[(i2 * this.f24034c) + i] >= 0;
    }

    /* renamed from: c */
    public final void m11403c(int i) {
        m11407a(this.f24033b - 3, 0, i, 1);
        m11407a(this.f24033b - 2, 0, i, 2);
        m11407a(this.f24033b - 1, 0, i, 3);
        m11407a(0, this.f24034c - 2, i, 4);
        m11407a(0, this.f24034c - 1, i, 5);
        m11407a(1, this.f24034c - 1, i, 6);
        m11407a(2, this.f24034c - 1, i, 7);
        m11407a(3, this.f24034c - 1, i, 8);
    }

    /* renamed from: d */
    public final void m11402d(int i) {
        m11407a(this.f24033b - 1, 0, i, 1);
        m11407a(this.f24033b - 1, this.f24034c - 1, i, 2);
        m11407a(0, this.f24034c - 3, i, 3);
        m11407a(0, this.f24034c - 2, i, 4);
        m11407a(0, this.f24034c - 1, i, 5);
        m11407a(1, this.f24034c - 3, i, 6);
        m11407a(1, this.f24034c - 2, i, 7);
        m11407a(1, this.f24034c - 1, i, 8);
    }
}
