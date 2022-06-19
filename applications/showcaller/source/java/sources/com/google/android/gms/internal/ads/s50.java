package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.C5722o1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/s50.class */
public final class s50 implements zi0<x40> {

    /* renamed from: a */
    final /* synthetic */ c60 f29408a;

    /* renamed from: b */
    final /* synthetic */ d60 f29409b;

    public s50(d60 d60Var, c60 c60Var) {
        this.f29409b = d60Var;
        this.f29408a = c60Var;
    }

    @Override // com.google.android.gms.internal.ads.zi0
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8354a(x40 x40Var) {
        Object obj;
        c60 c60Var;
        c60 c60Var2;
        c60 c60Var3;
        obj = this.f29409b.f21491a;
        synchronized (obj) {
            this.f29409b.f21498h = 0;
            c60Var = this.f29409b.f21497g;
            if (c60Var != null) {
                c60 c60Var4 = this.f29408a;
                c60Var2 = this.f29409b.f21497g;
                if (c60Var4 != c60Var2) {
                    C5722o1.m17990k("New JS engine is loaded, marking previous one as destroyable.");
                    c60Var3 = this.f29409b.f21497g;
                    c60Var3.m16114h();
                }
            }
            this.f29409b.f21497g = this.f29408a;
        }
    }
}
