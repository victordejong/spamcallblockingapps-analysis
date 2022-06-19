package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/le1.class */
public final class le1 implements AbstractC6888qj {

    /* renamed from: d */
    final /* synthetic */ String f26074d;

    /* renamed from: e */
    final /* synthetic */ me1 f26075e;

    public le1(me1 me1Var, String str) {
        this.f26075e = me1Var;
        this.f26074d = str;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6888qj
    /* renamed from: Y */
    public final void mo7924Y(C6851pj c6851pj) {
        Map map;
        ng1 ng1Var;
        ng1 ng1Var2;
        ng1 ng1Var3;
        ng1 ng1Var4;
        Map map2;
        ng1 ng1Var5;
        ng1 ng1Var6;
        ng1 ng1Var7;
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25688f1)).booleanValue()) {
            if (!c6851pj.f28023j) {
                return;
            }
            map = this.f26075e.f26555D;
            map.put(this.f26074d, Boolean.TRUE);
            me1 me1Var = this.f26075e;
            ng1Var = me1Var.f26569t;
            View mo12908V4 = ng1Var.mo12908V4();
            ng1Var2 = this.f26075e.f26569t;
            Map<String, WeakReference<View>> mo12906g = ng1Var2.mo12906g();
            ng1Var3 = this.f26075e.f26569t;
            me1Var.m13246J(mo12908V4, mo12906g, ng1Var3.mo12905h(), true);
            return;
        }
        synchronized (this) {
            if (c6851pj.f28023j) {
                ng1Var4 = this.f26075e.f26569t;
                if (ng1Var4 == null) {
                    return;
                }
                map2 = this.f26075e.f26555D;
                map2.put(this.f26074d, Boolean.TRUE);
                me1 me1Var2 = this.f26075e;
                ng1Var5 = me1Var2.f26569t;
                View mo12908V42 = ng1Var5.mo12908V4();
                ng1Var6 = this.f26075e.f26569t;
                Map<String, WeakReference<View>> mo12906g2 = ng1Var6.mo12906g();
                ng1Var7 = this.f26075e.f26569t;
                me1Var2.m13246J(mo12908V42, mo12906g2, ng1Var7.mo12905h(), true);
            }
        }
    }
}
