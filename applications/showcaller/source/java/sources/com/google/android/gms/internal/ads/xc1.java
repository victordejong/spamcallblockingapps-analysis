package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xc1.class */
final class xc1 implements az0<ez0> {

    /* renamed from: a */
    private final Map<String, qw1<ez0>> f31972a;

    /* renamed from: b */
    private final Map<String, qw1<me1>> f31973b;

    /* renamed from: c */
    private final Map<String, fz1<me1>> f31974c;

    /* renamed from: d */
    private final pj3<az0<xw0>> f31975d;

    /* renamed from: e */
    private final cf1 f31976e;

    public xc1(Map<String, qw1<ez0>> map, Map<String, qw1<me1>> map2, Map<String, fz1<me1>> map3, pj3<az0<xw0>> pj3Var, cf1 cf1Var) {
        this.f31972a = map;
        this.f31973b = map2;
        this.f31974c = map3;
        this.f31975d = pj3Var;
        this.f31976e = cf1Var;
    }

    @Override // com.google.android.gms.internal.ads.az0
    /* renamed from: a */
    public final qw1<ez0> mo8142a(int i, String str) {
        qw1<xw0> mo8142a;
        qw1<ez0> qw1Var;
        qw1<ez0> qw1Var2 = this.f31972a.get(str);
        if (qw1Var2 != null) {
            return qw1Var2;
        }
        if (i == 1) {
            if (this.f31976e.m16066d() != null && (mo8142a = this.f31975d.mo8141b().mo8142a(i, str)) != null) {
                return ez0.m15330b(mo8142a);
            }
            return null;
        } else if (i != 4) {
            return null;
        } else {
            fz1<me1> fz1Var = this.f31974c.get(str);
            if (fz1Var != null) {
                qw1Var = ez0.m15331a(fz1Var);
            } else {
                qw1<me1> qw1Var3 = this.f31973b.get(str);
                if (qw1Var3 != null) {
                    return ez0.m15330b(qw1Var3);
                }
                qw1Var = null;
            }
            return qw1Var;
        }
    }
}
