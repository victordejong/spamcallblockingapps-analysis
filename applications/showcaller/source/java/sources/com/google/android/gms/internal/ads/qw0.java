package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qw0.class */
public final class qw0 extends xy0 {

    /* renamed from: i */
    private final wn0 f28656i;

    /* renamed from: j */
    private final int f28657j;

    /* renamed from: k */
    private final Context f28658k;

    /* renamed from: l */
    private final xv0 f28659l;

    /* renamed from: m */
    private final qc1 f28660m;

    /* renamed from: n */
    private final l31 f28661n;

    /* renamed from: o */
    private boolean f28662o = false;

    public qw0(wy0 wy0Var, Context context, wn0 wn0Var, int i, xv0 xv0Var, qc1 qc1Var, l31 l31Var) {
        super(wy0Var);
        this.f28656i = wn0Var;
        this.f28658k = context;
        this.f28657j = i;
        this.f28659l = xv0Var;
        this.f28660m = qc1Var;
        this.f28661n = l31Var;
    }

    @Override // com.google.android.gms.internal.ads.xy0
    /* renamed from: b */
    public final void mo9020b() {
        super.mo9020b();
        wn0 wn0Var = this.f28656i;
        if (wn0Var != null) {
            wn0Var.destroy();
        }
    }

    /* renamed from: g */
    public final void m11783g(AbstractC6445el abstractC6445el) {
        wn0 wn0Var = this.f28656i;
        if (wn0Var != null) {
            wn0Var.mo7935R0(abstractC6445el);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v43, types: [android.content.Context] */
    /* renamed from: h */
    public final void m11782h(Activity activity, AbstractC6964sl abstractC6964sl, boolean z) {
        Activity activity2 = activity;
        if (activity == null) {
            activity2 = this.f28658k;
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25783r0)).booleanValue()) {
            C5667s.m18160d();
            if (C5679c2.m18065j(activity2)) {
                ei0.m15464f("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.f28661n.mo13732e();
                if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25791s0)).booleanValue()) {
                    return;
                }
                new xr2(activity2.getApplicationContext(), C5667s.m18146r().m17910a()).m9072a(this.f32348a.f28999b.f28519b.f24897b);
                return;
            }
        }
        if (this.f28662o) {
            ei0.m15464f("App open interstitial ad is already visible.");
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25626X6)).booleanValue()) {
                this.f28661n.mo13736I(sk2.m10997d(10, null, null));
            }
        }
        if (!this.f28662o) {
            try {
                this.f28660m.mo9015a(z, activity2, this.f28661n);
                this.f28662o = true;
            } catch (zzdkm e) {
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25626X6)).booleanValue()) {
                    this.f28661n.mo13737H(e);
                } else {
                    abstractC6964sl.mo10993h0(sk2.m11000a(e));
                }
            }
        }
    }

    /* renamed from: i */
    public final int m11781i() {
        return this.f28657j;
    }

    /* renamed from: j */
    public final void m11780j(long j, int i) {
        this.f28659l.m9047a(j, i);
    }
}
