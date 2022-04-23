package p081h.p203i.p402h.p412o.p414c;

import androidx.media2.exoplayer.external.text.cea.Cea708Decoder;
import p081h.p203i.p402h.C10538i;
import p081h.p203i.p402h.p405k.C10548a;
import p081h.p203i.p402h.p412o.p413b.C10601c;
import p081h.p203i.p402h.p412o.p413b.EnumC10599a;
/* renamed from: h.i.h.o.c.e */
/* loaded from: classes2-dex2jar.jar:h/i/h/o/c/e.class */
public final class C10609e {

    /* renamed from: a */
    public static final int[][] f24152a = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};

    /* renamed from: b */
    public static final int[][] f24153b = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};

    /* renamed from: c */
    public static final int[][] f24154c = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, Cea708Decoder.CHARACTER_LOWER_RIGHT_BORDER, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, Cea708Decoder.CHARACTER_LOWER_RIGHT_BORDER, 150}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, 170}};

    /* renamed from: d */
    public static final int[][] f24155d = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    /* renamed from: a */
    public static int m11233a(int i) {
        return 32 - Integer.numberOfLeadingZeros(i);
    }

    /* renamed from: a */
    public static int m11232a(int i, int i2) {
        if (i2 != 0) {
            int a = m11233a(i2);
            int i3 = i << (a - 1);
            while (m11233a(i3) >= a) {
                i3 ^= i2 << (m11233a(i3) - a);
            }
            return i3;
        }
        throw new IllegalArgumentException("0 polynomial");
    }

    /* renamed from: a */
    public static void m11231a(int i, int i2, C10605b bVar) throws C10538i {
        for (int i3 = 0; i3 < 8; i3++) {
            int i4 = i + i3;
            if (m11223b(bVar.m11268a(i4, i2))) {
                bVar.m11267a(i4, i2, 0);
            } else {
                throw new C10538i();
            }
        }
    }

    /* renamed from: a */
    public static void m11230a(C10548a aVar, int i, C10605b bVar) throws C10538i {
        boolean z;
        int c = bVar.m11264c() - 1;
        int b = bVar.m11265b() - 1;
        int i2 = 0;
        int i3 = -1;
        while (c > 0) {
            int i4 = c;
            int i5 = i2;
            int i6 = b;
            if (c == 6) {
                i4 = c - 1;
                i6 = b;
                i5 = i2;
            }
            while (i6 >= 0 && i6 < bVar.m11265b()) {
                for (int i7 = 0; i7 < 2; i7++) {
                    int i8 = i4 - i7;
                    i5 = i5;
                    if (m11223b(bVar.m11268a(i8, i6))) {
                        if (i5 < aVar.m11450d()) {
                            z = aVar.m11453b(i5);
                            i5++;
                        } else {
                            z = false;
                        }
                        boolean z2 = z;
                        if (i != -1) {
                            z2 = z;
                            if (C10608d.m11241a(i, i8, i6)) {
                                z2 = !z;
                            }
                        }
                        bVar.m11266a(i8, i6, z2);
                    }
                }
                i6 += i3;
            }
            i3 = -i3;
            b = i6 + i3;
            c = i4 - 2;
            i2 = i5;
        }
        if (i2 != aVar.m11450d()) {
            throw new C10538i("Not all bits consumed: " + i2 + '/' + aVar.m11450d());
        }
    }

    /* renamed from: a */
    public static void m11229a(C10548a aVar, EnumC10599a aVar2, C10601c cVar, int i, C10605b bVar) throws C10538i {
        m11224a(bVar);
        m11225a(cVar, bVar);
        m11227a(aVar2, i, bVar);
        m11218c(cVar, bVar);
        m11230a(aVar, i, bVar);
    }

    /* renamed from: a */
    public static void m11228a(EnumC10599a aVar, int i, C10548a aVar2) throws C10538i {
        if (C10610f.m11208b(i)) {
            int a = (aVar.m11287a() << 3) | i;
            aVar2.m11457a(a, 5);
            aVar2.m11457a(m11232a(a, 1335), 10);
            C10548a aVar3 = new C10548a();
            aVar3.m11457a(21522, 15);
            aVar2.m11452b(aVar3);
            if (aVar2.m11450d() != 15) {
                throw new C10538i("should not happen but we got: " + aVar2.m11450d());
            }
            return;
        }
        throw new C10538i("Invalid mask pattern");
    }

    /* renamed from: a */
    public static void m11227a(EnumC10599a aVar, int i, C10605b bVar) throws C10538i {
        C10548a aVar2 = new C10548a();
        m11228a(aVar, i, aVar2);
        for (int i2 = 0; i2 < aVar2.m11450d(); i2++) {
            boolean b = aVar2.m11453b((aVar2.m11450d() - 1) - i2);
            int[] iArr = f24155d[i2];
            bVar.m11266a(iArr[0], iArr[1], b);
            if (i2 < 8) {
                bVar.m11266a((bVar.m11264c() - i2) - 1, 8, b);
            } else {
                bVar.m11266a(8, (bVar.m11265b() - 7) + (i2 - 8), b);
            }
        }
    }

    /* renamed from: a */
    public static void m11226a(C10601c cVar, C10548a aVar) throws C10538i {
        aVar.m11457a(cVar.m11280c(), 6);
        aVar.m11457a(m11232a(cVar.m11280c(), 7973), 12);
        if (aVar.m11450d() != 18) {
            throw new C10538i("should not happen but we got: " + aVar.m11450d());
        }
    }

    /* renamed from: a */
    public static void m11225a(C10601c cVar, C10605b bVar) throws C10538i {
        m11217c(bVar);
        m11220b(bVar);
        m11221b(cVar, bVar);
        m11215d(bVar);
    }

    /* renamed from: a */
    public static void m11224a(C10605b bVar) {
        bVar.m11269a((byte) -1);
    }

    /* renamed from: b */
    public static void m11222b(int i, int i2, C10605b bVar) {
        for (int i3 = 0; i3 < 5; i3++) {
            int[] iArr = f24153b[i3];
            for (int i4 = 0; i4 < 5; i4++) {
                bVar.m11267a(i + i4, i2 + i3, iArr[i4]);
            }
        }
    }

    /* renamed from: b */
    public static void m11221b(C10601c cVar, C10605b bVar) {
        if (cVar.m11280c() >= 2) {
            int[] iArr = f24154c[cVar.m11280c() - 1];
            for (int i : iArr) {
                if (i >= 0) {
                    for (int i2 : iArr) {
                        if (i2 >= 0 && m11223b(bVar.m11268a(i2, i))) {
                            m11222b(i2 - 2, i - 2, bVar);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public static void m11220b(C10605b bVar) throws C10538i {
        if (bVar.m11268a(8, bVar.m11265b() - 8) != 0) {
            bVar.m11267a(8, bVar.m11265b() - 8, 1);
            return;
        }
        throw new C10538i();
    }

    /* renamed from: b */
    public static boolean m11223b(int i) {
        return i == -1;
    }

    /* renamed from: c */
    public static void m11219c(int i, int i2, C10605b bVar) {
        for (int i3 = 0; i3 < 7; i3++) {
            int[] iArr = f24152a[i3];
            for (int i4 = 0; i4 < 7; i4++) {
                bVar.m11267a(i + i4, i2 + i3, iArr[i4]);
            }
        }
    }

    /* renamed from: c */
    public static void m11218c(C10601c cVar, C10605b bVar) throws C10538i {
        if (cVar.m11280c() >= 7) {
            C10548a aVar = new C10548a();
            m11226a(cVar, aVar);
            int i = 17;
            for (int i2 = 0; i2 < 6; i2++) {
                for (int i3 = 0; i3 < 3; i3++) {
                    boolean b = aVar.m11453b(i);
                    i--;
                    bVar.m11266a(i2, (bVar.m11265b() - 11) + i3, b);
                    bVar.m11266a((bVar.m11265b() - 11) + i3, i2, b);
                }
            }
        }
    }

    /* renamed from: c */
    public static void m11217c(C10605b bVar) throws C10538i {
        int length = f24152a[0].length;
        m11219c(0, 0, bVar);
        m11219c(bVar.m11264c() - length, 0, bVar);
        m11219c(0, bVar.m11264c() - length, bVar);
        m11231a(0, 7, bVar);
        m11231a(bVar.m11264c() - 8, 7, bVar);
        m11231a(0, bVar.m11264c() - 8, bVar);
        m11216d(7, 0, bVar);
        m11216d((bVar.m11265b() - 7) - 1, 0, bVar);
        m11216d(7, bVar.m11265b() - 7, bVar);
    }

    /* renamed from: d */
    public static void m11216d(int i, int i2, C10605b bVar) throws C10538i {
        for (int i3 = 0; i3 < 7; i3++) {
            int i4 = i2 + i3;
            if (m11223b(bVar.m11268a(i, i4))) {
                bVar.m11267a(i, i4, 0);
            } else {
                throw new C10538i();
            }
        }
    }

    /* renamed from: d */
    public static void m11215d(C10605b bVar) {
        int i = 8;
        while (i < bVar.m11264c() - 8) {
            int i2 = i + 1;
            int i3 = i2 % 2;
            if (m11223b(bVar.m11268a(i, 6))) {
                bVar.m11267a(i, 6, i3);
            }
            if (m11223b(bVar.m11268a(6, i))) {
                bVar.m11267a(6, i, i3);
            }
            i = i2;
        }
    }
}
