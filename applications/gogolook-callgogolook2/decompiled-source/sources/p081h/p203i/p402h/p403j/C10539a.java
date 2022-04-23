package p081h.p203i.p402h.p403j;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import p081h.p203i.p402h.AbstractC10537h;
import p081h.p203i.p402h.EnumC10529a;
import p081h.p203i.p402h.EnumC10531c;
import p081h.p203i.p402h.p403j.p404b.C10540a;
import p081h.p203i.p402h.p403j.p404b.C10542c;
import p081h.p203i.p402h.p405k.C10549b;
/* renamed from: h.i.h.j.a */
/* loaded from: classes2-dex2jar.jar:h/i/h/j/a.class */
public final class C10539a implements AbstractC10537h {
    /* renamed from: a */
    public static C10549b m11495a(C10540a aVar, int i, int i2) {
        C10549b a = aVar.m11493a();
        if (a != null) {
            int f = a.m11441f();
            int e = a.m11442e();
            int max = Math.max(i, f);
            int max2 = Math.max(i2, e);
            int min = Math.min(max / f, max2 / e);
            int i3 = (max - (f * min)) / 2;
            int i4 = (max2 - (e * min)) / 2;
            C10549b bVar = new C10549b(max, max2);
            int i5 = 0;
            while (i5 < e) {
                int i6 = 0;
                while (i6 < f) {
                    if (a.m11448a(i6, i5)) {
                        bVar.m11447a(i3, i4, min, min);
                    }
                    i6++;
                    i3 += min;
                }
                i5++;
                i4 += min;
            }
            return bVar;
        }
        throw new IllegalStateException();
    }

    /* renamed from: a */
    public static C10549b m11494a(String str, EnumC10529a aVar, int i, int i2, Charset charset, int i3, int i4) {
        if (aVar == EnumC10529a.AZTEC) {
            return m11495a(C10542c.m11480a(str.getBytes(charset), i3, i4), i, i2);
        }
        throw new IllegalArgumentException("Can only encode AZTEC, but got ".concat(String.valueOf(aVar)));
    }

    @Override // p081h.p203i.p402h.AbstractC10537h
    /* renamed from: a */
    public C10549b mo11288a(String str, EnumC10529a aVar, int i, int i2, Map<EnumC10531c, ?> map) {
        int i3;
        Charset charset;
        Charset charset2 = StandardCharsets.ISO_8859_1;
        int i4 = 33;
        if (map != null) {
            if (map.containsKey(EnumC10531c.CHARACTER_SET)) {
                charset2 = Charset.forName(map.get(EnumC10531c.CHARACTER_SET).toString());
            }
            if (map.containsKey(EnumC10531c.ERROR_CORRECTION)) {
                i4 = Integer.parseInt(map.get(EnumC10531c.ERROR_CORRECTION).toString());
            }
            if (map.containsKey(EnumC10531c.AZTEC_LAYERS)) {
                i3 = Integer.parseInt(map.get(EnumC10531c.AZTEC_LAYERS).toString());
                charset = charset2;
                return m11494a(str, aVar, i, i2, charset, i4, i3);
            }
            charset = charset2;
        } else {
            charset = charset2;
            i4 = 33;
        }
        i3 = 0;
        return m11494a(str, aVar, i, i2, charset, i4, i3);
    }
}
