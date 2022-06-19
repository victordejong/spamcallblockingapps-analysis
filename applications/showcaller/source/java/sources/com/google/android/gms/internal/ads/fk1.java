package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fk1.class */
public final class fk1 extends xy0 {

    /* renamed from: i */
    private final Context f22931i;

    /* renamed from: j */
    private final WeakReference<wn0> f22932j;

    /* renamed from: k */
    private final qc1 f22933k;

    /* renamed from: l */
    private final z91 f22934l;

    /* renamed from: m */
    private final l31 f22935m;

    /* renamed from: n */
    private final t41 f22936n;

    /* renamed from: o */
    private final sz0 f22937o;

    /* renamed from: p */
    private final ce0 f22938p;

    /* renamed from: q */
    private final xr2 f22939q;

    /* renamed from: r */
    private boolean f22940r = false;

    public fk1(wy0 wy0Var, Context context, wn0 wn0Var, qc1 qc1Var, z91 z91Var, l31 l31Var, t41 t41Var, sz0 sz0Var, ej2 ej2Var, xr2 xr2Var) {
        super(wy0Var);
        this.f22931i = context;
        this.f22933k = qc1Var;
        this.f22932j = new WeakReference<>(wn0Var);
        this.f22934l = z91Var;
        this.f22935m = l31Var;
        this.f22936n = t41Var;
        this.f22937o = sz0Var;
        this.f22939q = xr2Var;
        zzccl zzcclVar = ej2Var.f22241m;
        this.f22938p = new ve0(zzcclVar != null ? zzcclVar.f33838d : "", zzcclVar != null ? zzcclVar.f33839e : 1);
    }

    public final void finalize() {
        try {
            wn0 wn0Var = this.f22932j.get();
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25640Z4)).booleanValue()) {
                if (!this.f22940r && wn0Var != null) {
                    qi0.f28499e.execute(ek1.m15446a(wn0Var));
                }
            } else if (wn0Var != null) {
                wn0Var.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [android.content.Context] */
    /* renamed from: g */
    public final boolean m15160g(boolean z, Activity activity) {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25783r0)).booleanValue()) {
            C5667s.m18160d();
            if (C5679c2.m18065j(this.f22931i)) {
                ei0.m15464f("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.f22935m.mo13732e();
                if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25791s0)).booleanValue()) {
                    return false;
                }
                this.f22939q.m9072a(this.f32348a.f28999b.f28519b.f24897b);
                return false;
            }
        }
        if (this.f22940r) {
            ei0.m15464f("The rewarded ad have been showed.");
            this.f22935m.mo13736I(sk2.m10997d(10, null, null));
            return false;
        }
        this.f22940r = true;
        this.f22934l.zza();
        Activity activity2 = activity;
        if (activity == null) {
            activity2 = this.f22931i;
        }
        try {
            this.f22933k.mo9015a(z, activity2, this.f22935m);
            this.f22934l.m8478b();
            return true;
        } catch (zzdkm e) {
            this.f22935m.mo13737H(e);
            return false;
        }
    }

    /* renamed from: h */
    public final boolean m15159h() {
        return this.f22940r;
    }

    /* renamed from: i */
    public final ce0 m15158i() {
        return this.f22938p;
    }

    /* renamed from: j */
    public final boolean m15157j() {
        return this.f22937o.m10884b();
    }

    /* renamed from: k */
    public final boolean m15156k() {
        wn0 wn0Var = this.f22932j.get();
        return wn0Var != null && !wn0Var.mo7963B0();
    }

    /* renamed from: l */
    public final Bundle m15155l() {
        return this.f22936n.m10837S0();
    }
}
