package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hq1.class */
public final class hq1 {

    /* renamed from: a */
    private final vp1 f24012a;

    /* renamed from: b */
    private final ll1 f24013b;

    /* renamed from: c */
    private final Object f24014c = new Object();

    /* renamed from: d */
    private final List<gq1> f24015d = new ArrayList();

    /* renamed from: e */
    private boolean f24016e;

    public hq1(vp1 vp1Var, ll1 ll1Var) {
        this.f24012a = vp1Var;
        this.f24013b = ll1Var;
    }

    /* renamed from: d */
    public final void m14568d(List<zzbrl> list) {
        String str;
        synchronized (this.f24014c) {
            if (this.f24016e) {
                return;
            }
            for (zzbrl zzbrlVar : list) {
                List<gq1> list2 = this.f24015d;
                String str2 = zzbrlVar.f33736d;
                kl1 m13485c = this.f24013b.m13485c(str2);
                if (m13485c == null) {
                    str = "";
                } else {
                    zzbya zzbyaVar = m13485c.f25245b;
                    str = zzbyaVar == null ? "" : zzbyaVar.toString();
                }
                list2.add(new gq1(str2, str, zzbrlVar.f33737e ? 1 : 0, zzbrlVar.f33739g, zzbrlVar.f33738f));
            }
            this.f24016e = true;
        }
    }

    /* renamed from: a */
    public final void m14571a() {
        this.f24012a.m9908h(new fq1(this));
    }

    /* renamed from: b */
    public final JSONArray m14570b() {
        JSONArray jSONArray = new JSONArray();
        synchronized (this.f24014c) {
            if (!this.f24016e) {
                if (!this.f24012a.m9903m()) {
                    m14571a();
                    return jSONArray;
                }
                m14568d(this.f24012a.m9906j());
            }
            for (gq1 gq1Var : this.f24015d) {
                jSONArray.put(gq1Var.m14873a());
            }
            return jSONArray;
        }
    }
}
