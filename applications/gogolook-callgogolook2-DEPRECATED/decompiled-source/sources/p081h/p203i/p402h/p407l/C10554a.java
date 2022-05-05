package p081h.p203i.p402h.p407l;

import java.util.Map;
import p081h.p203i.p402h.AbstractC10537h;
import p081h.p203i.p402h.C10530b;
import p081h.p203i.p402h.EnumC10529a;
import p081h.p203i.p402h.EnumC10531c;
import p081h.p203i.p402h.p405k.C10549b;
import p081h.p203i.p402h.p407l.p408b.C10559e;
import p081h.p203i.p402h.p407l.p408b.C10563i;
import p081h.p203i.p402h.p407l.p408b.C10564j;
import p081h.p203i.p402h.p407l.p408b.C10565k;
import p081h.p203i.p402h.p407l.p408b.EnumC10566l;
import p081h.p203i.p402h.p412o.p414c.C10605b;
/* renamed from: h.i.h.l.a */
/* loaded from: classes2-dex2jar.jar:h/i/h/l/a.class */
public final class C10554a implements AbstractC10537h {
    /* renamed from: a */
    public static C10549b m11420a(C10559e eVar, C10565k kVar, int i, int i2) {
        int f = kVar.m11352f();
        int e = kVar.m11353e();
        C10605b bVar = new C10605b(kVar.m11350h(), kVar.m11351g());
        int i3 = 0;
        for (int i4 = 0; i4 < e; i4++) {
            int i5 = i3;
            if (i4 % kVar.f24054e == 0) {
                int i6 = 0;
                for (int i7 = 0; i7 < kVar.m11350h(); i7++) {
                    bVar.m11266a(i6, i3, i7 % 2 == 0);
                    i6++;
                }
                i5 = i3 + 1;
            }
            int i8 = 0;
            for (int i9 = 0; i9 < f; i9++) {
                int i10 = i8;
                if (i9 % kVar.f24053d == 0) {
                    bVar.m11266a(i8, i5, true);
                    i10 = i8 + 1;
                }
                bVar.m11266a(i10, i5, eVar.m11409a(i9, i4));
                int i11 = i10 + 1;
                int i12 = kVar.f24053d;
                i8 = i11;
                if (i9 % i12 == i12 - 1) {
                    bVar.m11266a(i11, i5, i4 % 2 == 0);
                    i8 = i11 + 1;
                }
            }
            int i13 = i5 + 1;
            int i14 = kVar.f24054e;
            i3 = i13;
            if (i4 % i14 == i14 - 1) {
                int i15 = 0;
                for (int i16 = 0; i16 < kVar.m11350h(); i16++) {
                    bVar.m11266a(i15, i13, true);
                    i15++;
                }
                i3 = i13 + 1;
            }
        }
        return m11419a(bVar, i, i2);
    }

    /* renamed from: a */
    public static C10549b m11419a(C10605b bVar, int i, int i2) {
        C10549b bVar2;
        int c = bVar.m11264c();
        int b = bVar.m11265b();
        int max = Math.max(i, c);
        int max2 = Math.max(i2, b);
        int min = Math.min(max / c, max2 / b);
        int i3 = (max - (c * min)) / 2;
        int i4 = (max2 - (b * min)) / 2;
        if (i2 < b || i < c) {
            bVar2 = new C10549b(c, b);
            i3 = 0;
            i4 = 0;
        } else {
            bVar2 = new C10549b(i, i2);
        }
        bVar2.m11443d();
        int i5 = 0;
        while (i5 < b) {
            int i6 = 0;
            while (i6 < c) {
                if (bVar.m11268a(i6, i5) == 1) {
                    bVar2.m11447a(i3, i4, min, min);
                }
                i6++;
                i3 += min;
            }
            i5++;
            i4 += min;
        }
        return bVar2;
    }

    @Override // p081h.p203i.p402h.AbstractC10537h
    /* renamed from: a */
    public C10549b mo11288a(String str, EnumC10529a aVar, int i, int i2, Map<EnumC10531c, ?> map) {
        C10530b bVar;
        EnumC10566l lVar;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        } else if (aVar != EnumC10529a.DATA_MATRIX) {
            throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got ".concat(String.valueOf(aVar)));
        } else if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions can't be negative: " + i + 'x' + i2);
        } else {
            EnumC10566l lVar2 = EnumC10566l.FORCE_NONE;
            C10530b bVar2 = null;
            if (map != null) {
                EnumC10566l lVar3 = (EnumC10566l) map.get(EnumC10531c.DATA_MATRIX_SHAPE);
                if (lVar3 != null) {
                    lVar2 = lVar3;
                }
                C10530b bVar3 = (C10530b) map.get(EnumC10531c.MIN_SIZE);
                if (bVar3 == null) {
                    bVar3 = null;
                }
                C10530b bVar4 = (C10530b) map.get(EnumC10531c.MAX_SIZE);
                bVar = bVar3;
                lVar = lVar2;
                if (bVar4 != null) {
                    bVar2 = bVar4;
                    bVar = bVar3;
                    lVar = lVar2;
                }
            } else {
                bVar = null;
                lVar = lVar2;
            }
            String a = C10564j.m11371a(str, lVar, bVar, bVar2);
            C10565k a2 = C10565k.m11358a(a.length(), lVar, bVar, bVar2, true);
            C10559e eVar = new C10559e(C10563i.m11376a(a, a2), a2.m11352f(), a2.m11353e());
            eVar.m11411a();
            return m11420a(eVar, a2, i, i2);
        }
    }
}
