package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cw3.class */
public final class cw3 implements sx3 {

    /* renamed from: a */
    private final List<C7021u4> f21394a = zzfoj.zzi();

    public cw3(int i) {
    }

    /* renamed from: b */
    private final ix3 m15983b(rx3 rx3Var) {
        return new ix3(m15981d(rx3Var));
    }

    /* renamed from: c */
    private final wx3 m15982c(rx3 rx3Var) {
        return new wx3(m15981d(rx3Var));
    }

    /* renamed from: d */
    private final List<C7021u4> m15981d(rx3 rx3Var) {
        int i;
        String str;
        List<byte[]> list;
        C6694la c6694la = new C6694la(rx3Var.f29303d);
        ArrayList arrayList = this.f21394a;
        while (c6694la.m13639l() > 0) {
            int m13629v = c6694la.m13629v();
            int m13629v2 = c6694la.m13629v();
            int m13636o = c6694la.m13636o();
            if (m13629v == 134) {
                ArrayList arrayList2 = new ArrayList();
                int m13629v3 = c6694la.m13629v();
                int i2 = 0;
                while (true) {
                    arrayList = arrayList2;
                    if (i2 < (m13629v3 & 31)) {
                        String m13646e = c6694la.m13646e(3, lu2.f26280c);
                        int m13629v4 = c6694la.m13629v();
                        int i3 = m13629v4 & 128;
                        if (i3 != 0) {
                            i = m13629v4 & 63;
                            str = "application/cea-708";
                        } else {
                            str = "application/cea-608";
                            i = 1;
                        }
                        byte m13629v5 = (byte) c6694la.m13629v();
                        c6694la.m13632s(1);
                        if (i3 != 0) {
                            int i4 = C6284a9.f19854c;
                            list = Collections.singletonList((m13629v5 & 64) != 0 ? new byte[]{(byte) 1} : new byte[]{(byte) 0});
                        } else {
                            list = null;
                        }
                        List<byte[]> list2 = list;
                        C6947s4 c6947s4 = new C6947s4();
                        c6947s4.m11129n(str);
                        c6947s4.m11138g(m13646e);
                        c6947s4.m11170G(i);
                        c6947s4.m11127p(list2);
                        arrayList2.add(c6947s4.m11168I());
                        i2++;
                    }
                }
            }
            c6694la.m13635p(m13636o + m13629v2);
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.sx3
    /* renamed from: a */
    public final ux3 mo10890a(int i, rx3 rx3Var) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new xw3(new uw3(rx3Var.f29301b));
            }
            if (i == 21) {
                return new xw3(new sw3());
            }
            if (i == 27) {
                return new xw3(new pw3(m15983b(rx3Var), false, false));
            }
            if (i == 36) {
                return new xw3(new rw3(m15983b(rx3Var)));
            }
            if (i == 89) {
                return new xw3(new fw3(rx3Var.f29302c));
            }
            if (i != 129) {
                if (i == 138) {
                    return new xw3(new dw3(rx3Var.f29301b));
                }
                if (i == 172) {
                    return new xw3(new yv3(rx3Var.f29301b));
                }
                if (i == 257) {
                    return new hx3(new ww3("application/vnd.dvb.ait"));
                }
                if (i == 134) {
                    return new hx3(new ww3("application/x-scte35"));
                }
                if (i != 135) {
                    switch (i) {
                        case 15:
                            return new xw3(new bw3(false, rx3Var.f29301b));
                        case 16:
                            return new xw3(new lw3(m15982c(rx3Var)));
                        case 17:
                            return new xw3(new tw3(rx3Var.f29301b));
                        default:
                            return null;
                    }
                }
            }
            return new xw3(new vv3(rx3Var.f29301b));
        }
        return new xw3(new iw3(m15982c(rx3Var)));
    }
}
