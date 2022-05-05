package p081h.p203i.p402h.p409m;

import java.util.Map;
import p081h.p203i.p402h.C10532d;
import p081h.p203i.p402h.C10538i;
import p081h.p203i.p402h.EnumC10529a;
import p081h.p203i.p402h.EnumC10531c;
import p081h.p203i.p402h.p405k.C10549b;
/* renamed from: h.i.h.m.j */
/* loaded from: classes2-dex2jar.jar:h/i/h/m/j.class */
public final class C10579j extends AbstractC10586q {
    @Override // p081h.p203i.p402h.p409m.AbstractC10583n, p081h.p203i.p402h.AbstractC10537h
    /* renamed from: a */
    public C10549b mo11288a(String str, EnumC10529a aVar, int i, int i2, Map<EnumC10531c, ?> map) throws C10538i {
        if (aVar == EnumC10529a.EAN_13) {
            return super.mo11288a(str, aVar, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode EAN_13, but got ".concat(String.valueOf(aVar)));
    }

    @Override // p081h.p203i.p402h.p409m.AbstractC10583n
    /* renamed from: a */
    public boolean[] mo11330a(String str) {
        int length = str.length();
        if (length == 12) {
            try {
                str = str + AbstractC10585p.m11333b(str);
            } catch (C10532d e) {
                throw new IllegalArgumentException(e);
            }
        } else if (length == 13) {
            try {
                if (!AbstractC10585p.m11334a(str)) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (C10532d e2) {
                throw new IllegalArgumentException("Illegal contents");
            }
        } else {
            throw new IllegalArgumentException("Requested contents should be 12 or 13 digits long, but got ".concat(String.valueOf(length)));
        }
        int i = C10578i.f24076f[Character.digit(str.charAt(0), 10)];
        boolean[] zArr = new boolean[95];
        int a = AbstractC10583n.m11335a(zArr, 0, AbstractC10585p.f24081a, true) + 0;
        for (int i2 = 1; i2 <= 6; i2++) {
            int digit = Character.digit(str.charAt(i2), 10);
            int i3 = digit;
            if (((i >> (6 - i2)) & 1) == 1) {
                i3 = digit + 10;
            }
            a += AbstractC10583n.m11335a(zArr, a, AbstractC10585p.f24085e[i3], false);
        }
        int a2 = a + AbstractC10583n.m11335a(zArr, a, AbstractC10585p.f24082b, false);
        for (int i4 = 7; i4 <= 12; i4++) {
            a2 += AbstractC10583n.m11335a(zArr, a2, AbstractC10585p.f24084d[Character.digit(str.charAt(i4), 10)], true);
        }
        AbstractC10583n.m11335a(zArr, a2, AbstractC10585p.f24081a, true);
        return zArr;
    }
}
