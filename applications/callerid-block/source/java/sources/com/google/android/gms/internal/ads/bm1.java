package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C1407r;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bm1.class */
public final class bm1 {

    /* renamed from: a */
    private final al1 f6167a;

    /* renamed from: b */
    private final dl1 f6168b;

    /* renamed from: c */
    private final jz0 f6169c;

    /* renamed from: d */
    private final tq1 f6170d;

    public bm1(jz0 jz0Var, tq1 tq1Var, al1 al1Var, dl1 dl1Var) {
        this.f6167a = al1Var;
        this.f6168b = dl1Var;
        this.f6169c = jz0Var;
        this.f6170d = tq1Var;
    }

    /* renamed from: a */
    public final void m7957a(List<String> list) {
        for (String str : list) {
            m7955c(str, 2);
        }
    }

    /* renamed from: b */
    public final void m7956b(List<String> list, int i) {
        for (String str : list) {
            m7955c(str, i);
        }
    }

    /* renamed from: c */
    public final void m7955c(String str, int i) {
        if (!this.f6167a.f6014d0) {
            this.f6170d.m5496b(str);
            return;
        }
        this.f6169c.m6903C(new lz0(C1407r.m8913k().m8247a(), this.f6168b.f6335b, str, i));
    }
}
