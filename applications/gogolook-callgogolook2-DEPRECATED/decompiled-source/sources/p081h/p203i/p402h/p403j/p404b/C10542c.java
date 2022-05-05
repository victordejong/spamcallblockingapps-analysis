package p081h.p203i.p402h.p403j.p404b;

import p081h.p203i.p402h.p405k.C10548a;
import p081h.p203i.p402h.p405k.C10549b;
import p081h.p203i.p402h.p405k.p406d.C10551a;
import p081h.p203i.p402h.p405k.p406d.C10553c;
/* renamed from: h.i.h.j.b.c */
/* loaded from: classes2-dex2jar.jar:h/i/h/j/b/c.class */
public final class C10542c {

    /* renamed from: a */
    public static final int[] f23963a = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    /* renamed from: a */
    public static int m11486a(int i, boolean z) {
        return ((z ? 88 : 112) + (i << 4)) * i;
    }

    /* renamed from: a */
    public static C10540a m11480a(byte[] bArr, int i, int i2) {
        int i3;
        boolean z;
        int i4;
        int i5;
        C10548a aVar;
        int i6;
        C10548a a = new C10543d(bArr).m11478a();
        int i7 = 11;
        int d = ((a.m11450d() * i) / 100) + 11;
        int d2 = a.m11450d();
        int i8 = 32;
        if (i2 != 0) {
            boolean z2 = i2 < 0;
            int abs = Math.abs(i2);
            if (z2) {
                i8 = 4;
            }
            if (abs <= i8) {
                int a2 = m11486a(abs, z2);
                int i9 = f23963a[abs];
                C10548a a3 = m11485a(a, i9);
                if (a3.m11450d() + d <= a2 - (a2 % i9)) {
                    aVar = a3;
                    z = z2;
                    i3 = a2;
                    i5 = abs;
                    i4 = i9;
                    if (z2) {
                        if (a3.m11450d() <= (i9 << 6)) {
                            aVar = a3;
                            z = z2;
                            i3 = a2;
                            i5 = abs;
                            i4 = i9;
                        } else {
                            throw new IllegalArgumentException("Data to large for user specified layer");
                        }
                    }
                } else {
                    throw new IllegalArgumentException("Data to large for user specified layer");
                }
            } else {
                throw new IllegalArgumentException(String.format("Illegal value %s for layers", Integer.valueOf(i2)));
            }
        } else {
            aVar = null;
            int i10 = 0;
            int i11 = 0;
            while (i10 <= 32) {
                boolean z3 = i10 <= 3;
                int i12 = z3 ? i10 + 1 : i10;
                int a4 = m11486a(i12, z3);
                if (d2 + d <= a4) {
                    if (aVar == null || i11 != f23963a[i12]) {
                        i11 = f23963a[i12];
                        aVar = m11485a(a, i11);
                    }
                    if ((!z3 || aVar.m11450d() <= (i11 << 6)) && aVar.m11450d() + d <= a4 - (a4 % i11)) {
                        i3 = a4;
                        i4 = i11;
                        i5 = i12;
                        z = z3;
                    }
                }
                i10++;
            }
            throw new IllegalArgumentException("Data too large for an Aztec code");
        }
        C10548a b = m11479b(aVar, i3, i4);
        int d3 = aVar.m11450d() / i4;
        C10548a a5 = m11481a(z, i5, d3);
        if (!z) {
            i7 = 14;
        }
        int i13 = i7 + (i5 << 2);
        int[] iArr = new int[i13];
        if (!z) {
            int i14 = i13 / 2;
            int i15 = i13 + 1 + (((i14 - 1) / 15) * 2);
            int i16 = i15 / 2;
            int i17 = 0;
            while (true) {
                i6 = i15;
                if (i17 >= i14) {
                    break;
                }
                int i18 = (i17 / 15) + i17;
                iArr[(i14 - i17) - 1] = (i16 - i18) - 1;
                iArr[i14 + i17] = i18 + i16 + 1;
                i17++;
            }
        } else {
            for (int i19 = 0; i19 < iArr.length; i19++) {
                iArr[i19] = i19;
            }
            i6 = i13;
        }
        C10549b bVar = new C10549b(i6);
        int i20 = 0;
        for (int i21 = 0; i21 < i5; i21++) {
            int i22 = ((i5 - i21) << 2) + (z ? 9 : 12);
            int i23 = 0;
            while (true) {
                if (i23 < i22) {
                    int i24 = i23 << 1;
                    for (int i25 = 0; i25 < 2; i25++) {
                        if (b.m11453b(i20 + i24 + i25)) {
                            int i26 = i21 << 1;
                            bVar.m11444b(iArr[i26 + i25], iArr[i26 + i23]);
                        }
                        if (b.m11453b((i22 << 1) + i20 + i24 + i25)) {
                            int i27 = i21 << 1;
                            bVar.m11444b(iArr[i27 + i23], iArr[((i13 - 1) - i27) - i25]);
                        }
                        if (b.m11453b((i22 << 2) + i20 + i24 + i25)) {
                            int i28 = (i13 - 1) - (i21 << 1);
                            bVar.m11444b(iArr[i28 - i25], iArr[i28 - i23]);
                        }
                        if (b.m11453b((i22 * 6) + i20 + i24 + i25)) {
                            int i29 = i21 << 1;
                            bVar.m11444b(iArr[((i13 - 1) - i29) - i23], iArr[i29 + i25]);
                        }
                    }
                    i23++;
                }
            }
            i20 += i22 << 3;
        }
        m11482a(bVar, z, i6, a5);
        if (z) {
            m11483a(bVar, i6 / 2, 5);
        } else {
            int i30 = i6 / 2;
            m11483a(bVar, i30, 7);
            int i31 = 0;
            int i32 = 0;
            while (i31 < (i13 / 2) - 1) {
                for (int i33 = i30 & 1; i33 < i6; i33 += 2) {
                    int i34 = i30 - i32;
                    bVar.m11444b(i34, i33);
                    int i35 = i30 + i32;
                    bVar.m11444b(i35, i33);
                    bVar.m11444b(i33, i34);
                    bVar.m11444b(i33, i35);
                }
                i31 += 15;
                i32 += 16;
            }
        }
        C10540a aVar2 = new C10540a();
        aVar2.m11490a(z);
        aVar2.m11488c(i6);
        aVar2.m11489b(i5);
        aVar2.m11492a(d3);
        aVar2.m11491a(bVar);
        return aVar2;
    }

    /* renamed from: a */
    public static C10548a m11485a(C10548a aVar, int i) {
        C10548a aVar2 = new C10548a();
        int d = aVar.m11450d();
        int i2 = (1 << i) - 2;
        int i3 = 0;
        while (i3 < d) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                int i6 = i3 + i5;
                if (i6 < d) {
                    i4 = i4;
                    if (!aVar.m11453b(i6)) {
                    }
                }
                i4 |= 1 << ((i - 1) - i5);
            }
            int i7 = i4 & i2;
            if (i7 == i2) {
                aVar2.m11457a(i7, i);
            } else if (i7 == 0) {
                aVar2.m11457a(i4 | 1, i);
            } else {
                aVar2.m11457a(i4, i);
                i3 += i;
            }
            i3--;
            i3 += i;
        }
        return aVar2;
    }

    /* renamed from: a */
    public static C10548a m11481a(boolean z, int i, int i2) {
        C10548a aVar;
        C10548a aVar2 = new C10548a();
        if (z) {
            aVar2.m11457a(i - 1, 2);
            aVar2.m11457a(i2 - 1, 6);
            aVar = m11479b(aVar2, 28, 4);
        } else {
            aVar2.m11457a(i - 1, 5);
            aVar2.m11457a(i2 - 1, 11);
            aVar = m11479b(aVar2, 40, 4);
        }
        return aVar;
    }

    /* renamed from: a */
    public static C10551a m11487a(int i) {
        if (i == 4) {
            return C10551a.f24019j;
        }
        if (i == 6) {
            return C10551a.f24018i;
        }
        if (i == 8) {
            return C10551a.f24021l;
        }
        if (i == 10) {
            return C10551a.f24017h;
        }
        if (i == 12) {
            return C10551a.f24016g;
        }
        throw new IllegalArgumentException("Unsupported word size ".concat(String.valueOf(i)));
    }

    /* renamed from: a */
    public static void m11483a(C10549b bVar, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3 += 2) {
            int i4 = i - i3;
            int i5 = i4;
            while (true) {
                int i6 = i + i3;
                if (i5 <= i6) {
                    bVar.m11444b(i5, i4);
                    bVar.m11444b(i5, i6);
                    bVar.m11444b(i4, i5);
                    bVar.m11444b(i6, i5);
                    i5++;
                }
            }
        }
        int i7 = i - i2;
        bVar.m11444b(i7, i7);
        int i8 = i7 + 1;
        bVar.m11444b(i8, i7);
        bVar.m11444b(i7, i8);
        int i9 = i + i2;
        bVar.m11444b(i9, i7);
        bVar.m11444b(i9, i8);
        bVar.m11444b(i9, i9 - 1);
    }

    /* renamed from: a */
    public static void m11482a(C10549b bVar, boolean z, int i, C10548a aVar) {
        int i2 = i / 2;
        if (z) {
            for (int i3 = 0; i3 < 7; i3++) {
                int i4 = (i2 - 3) + i3;
                if (aVar.m11453b(i3)) {
                    bVar.m11444b(i4, i2 - 5);
                }
                if (aVar.m11453b(i3 + 7)) {
                    bVar.m11444b(i2 + 5, i4);
                }
                if (aVar.m11453b(20 - i3)) {
                    bVar.m11444b(i4, i2 + 5);
                }
                if (aVar.m11453b(27 - i3)) {
                    bVar.m11444b(i2 - 5, i4);
                }
            }
            return;
        }
        for (int i5 = 0; i5 < 10; i5++) {
            int i6 = (i2 - 5) + i5 + (i5 / 5);
            if (aVar.m11453b(i5)) {
                bVar.m11444b(i6, i2 - 7);
            }
            if (aVar.m11453b(i5 + 10)) {
                bVar.m11444b(i2 + 7, i6);
            }
            if (aVar.m11453b(29 - i5)) {
                bVar.m11444b(i6, i2 + 7);
            }
            if (aVar.m11453b(39 - i5)) {
                bVar.m11444b(i2 - 7, i6);
            }
        }
    }

    /* renamed from: a */
    public static int[] m11484a(C10548a aVar, int i, int i2) {
        int[] iArr = new int[i2];
        int d = aVar.m11450d() / i;
        for (int i3 = 0; i3 < d; i3++) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                i4 |= aVar.m11453b((i3 * i) + i5) ? 1 << ((i - i5) - 1) : 0;
            }
            iArr[i3] = i4;
        }
        return iArr;
    }

    /* renamed from: b */
    public static C10548a m11479b(C10548a aVar, int i, int i2) {
        int d = aVar.m11450d() / i2;
        C10553c cVar = new C10553c(m11487a(i2));
        int i3 = i / i2;
        int[] a = m11484a(aVar, i2, i3);
        cVar.m11421a(a, i3 - d);
        C10548a aVar2 = new C10548a();
        aVar2.m11457a(0, i % i2);
        for (int i4 : a) {
            aVar2.m11457a(i4, i2);
        }
        return aVar2;
    }
}
