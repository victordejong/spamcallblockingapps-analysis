package p081h.p203i.p402h.p409m;

import java.util.Map;
import p081h.p203i.p402h.C10532d;
import p081h.p203i.p402h.C10538i;
import p081h.p203i.p402h.EnumC10529a;
import p081h.p203i.p402h.EnumC10531c;
import p081h.p203i.p402h.p405k.C10549b;
/* renamed from: h.i.h.m.k */
/* loaded from: classes2-dex2jar.jar:h/i/h/m/k.class */
public final class C10580k extends AbstractC10586q {
    @Override // p081h.p203i.p402h.p409m.AbstractC10583n, p081h.p203i.p402h.AbstractC10537h
    /* renamed from: a */
    public C10549b mo11288a(String str, EnumC10529a aVar, int i, int i2, Map<EnumC10531c, ?> map) throws C10538i {
        if (aVar == EnumC10529a.EAN_8) {
            return super.mo11288a(str, aVar, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode EAN_8, but got ".concat(String.valueOf(aVar)));
    }

    @Override // p081h.p203i.p402h.p409m.AbstractC10583n
    /* renamed from: a */
    public boolean[] mo11330a(String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = str + AbstractC10585p.m11333b(str);
            } catch (C10532d e) {
                throw new IllegalArgumentException(e);
            }
        } else if (length == 8) {
            try {
                if (!AbstractC10585p.m11334a(str)) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (C10532d e2) {
                throw new IllegalArgumentException("Illegal contents");
            }
        } else {
            throw new IllegalArgumentException("Requested contents should be 8 digits long, but got ".concat(String.valueOf(length)));
        }
        boolean[] zArr = new boolean[67];
        int a = AbstractC10583n.m11335a(zArr, 0, AbstractC10585p.f24081a, true) + 0;
        for (int i = 0; i <= 3; i++) {
            a += AbstractC10583n.m11335a(zArr, a, AbstractC10585p.f24084d[Character.digit(str.charAt(i), 10)], false);
        }
        int a2 = a + AbstractC10583n.m11335a(zArr, a, AbstractC10585p.f24082b, false);
        for (int i2 = 4; i2 <= 7; i2++) {
            a2 += AbstractC10583n.m11335a(zArr, a2, AbstractC10585p.f24084d[Character.digit(str.charAt(i2), 10)], true);
        }
        AbstractC10583n.m11335a(zArr, a2, AbstractC10585p.f24081a, true);
        return zArr;
    }
}
