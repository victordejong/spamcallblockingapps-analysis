package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fw3.class */
public final class fw3 implements gw3 {

    /* renamed from: a */
    private final List<qx3> f23175a;

    /* renamed from: b */
    private final yr3[] f23176b;

    /* renamed from: c */
    private boolean f23177c;

    /* renamed from: d */
    private int f23178d;

    /* renamed from: e */
    private int f23179e;

    /* renamed from: f */
    private long f23180f = -9223372036854775807L;

    public fw3(List<qx3> list) {
        this.f23175a = list;
        this.f23176b = new yr3[list.size()];
    }

    /* renamed from: e */
    private final boolean m15030e(C6694la c6694la, int i) {
        if (c6694la.m13639l() == 0) {
            return false;
        }
        if (c6694la.m13629v() != i) {
            this.f23177c = false;
        }
        this.f23178d--;
        return this.f23177c;
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: a */
    public final void mo8681a() {
        if (this.f23177c) {
            if (this.f23180f != -9223372036854775807L) {
                for (yr3 yr3Var : this.f23176b) {
                    yr3Var.mo8705c(this.f23180f, 1, this.f23179e, 0, null);
                }
            }
            this.f23177c = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: b */
    public final void mo8680b(xq3 xq3Var, tx3 tx3Var) {
        for (int i = 0; i < this.f23176b.length; i++) {
            qx3 qx3Var = this.f23175a.get(i);
            tx3Var.m10475a();
            yr3 mo8690o = xq3Var.mo8690o(tx3Var.m10474b(), 3);
            C6947s4 c6947s4 = new C6947s4();
            c6947s4.m11144d(tx3Var.m10473c());
            c6947s4.m11129n("application/dvbsubs");
            c6947s4.m11127p(Collections.singletonList(qx3Var.f28681b));
            c6947s4.m11138g(qx3Var.f28680a);
            mo8690o.mo8704d(c6947s4.m11168I());
            this.f23176b[i] = mo8690o;
        }
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: c */
    public final void mo8679c(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f23177c = true;
        if (j != -9223372036854775807L) {
            this.f23180f = j;
        }
        this.f23179e = 0;
        this.f23178d = 2;
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: d */
    public final void mo8678d(C6694la c6694la) {
        yr3[] yr3VarArr;
        if (this.f23177c) {
            if (this.f23178d == 2 && !m15030e(c6694la, 32)) {
                return;
            }
            if (this.f23178d == 1 && !m15030e(c6694la, 0)) {
                return;
            }
            int m13636o = c6694la.m13636o();
            int m13639l = c6694la.m13639l();
            for (yr3 yr3Var : this.f23176b) {
                c6694la.m13635p(m13636o);
                yr3Var.mo8706b(c6694la, m13639l);
            }
            this.f23179e += m13639l;
        }
    }

    @Override // com.google.android.gms.internal.ads.gw3
    public final void zza() {
        this.f23177c = false;
        this.f23180f = -9223372036854775807L;
    }
}
