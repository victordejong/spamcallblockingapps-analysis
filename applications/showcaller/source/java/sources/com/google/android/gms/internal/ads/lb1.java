package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lb1.class */
public final class lb1 extends xy0 {

    /* renamed from: i */
    private final Context f26026i;

    /* renamed from: j */
    private final WeakReference<wn0> f26027j;

    /* renamed from: k */
    private final z91 f26028k;

    /* renamed from: l */
    private final qc1 f26029l;

    /* renamed from: m */
    private final sz0 f26030m;

    /* renamed from: n */
    private final xr2 f26031n;

    /* renamed from: o */
    private final l31 f26032o;

    /* renamed from: p */
    private boolean f26033p = false;

    public lb1(wy0 wy0Var, Context context, wn0 wn0Var, z91 z91Var, qc1 qc1Var, sz0 sz0Var, xr2 xr2Var, l31 l31Var) {
        super(wy0Var);
        this.f26026i = context;
        this.f26027j = new WeakReference<>(wn0Var);
        this.f26028k = z91Var;
        this.f26029l = qc1Var;
        this.f26030m = sz0Var;
        this.f26031n = xr2Var;
        this.f26032o = l31Var;
    }

    public final void finalize() {
        try {
            wn0 wn0Var = this.f26027j.get();
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25640Z4)).booleanValue()) {
                if (!this.f26033p && wn0Var != null) {
                    qi0.f28499e.execute(kb1.m13929a(wn0Var));
                }
            } else if (wn0Var != null) {
                wn0Var.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [android.content.Context] */
    /* renamed from: g */
    public final boolean m13596g(boolean z, Activity activity) {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25783r0)).booleanValue()) {
            C5667s.m18160d();
            if (C5679c2.m18065j(this.f26026i)) {
                ei0.m15464f("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.f26032o.mo13732e();
                if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25791s0)).booleanValue()) {
                    return false;
                }
                this.f26031n.m9072a(this.f32348a.f28999b.f28519b.f24897b);
                return false;
            }
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25626X6)).booleanValue() && this.f26033p) {
            ei0.m15464f("The interstitial ad has been showed.");
            this.f26032o.mo13736I(sk2.m10997d(10, null, null));
        }
        if (!this.f26033p) {
            this.f26028k.zza();
            Activity activity2 = activity;
            if (activity == null) {
                activity2 = this.f26026i;
            }
            try {
                this.f26029l.mo9015a(z, activity2, this.f26032o);
                this.f26028k.m8478b();
                this.f26033p = true;
                return true;
            } catch (zzdkm e) {
                this.f26032o.mo13737H(e);
                return false;
            }
        }
        return false;
    }

    /* renamed from: h */
    public final boolean m13595h() {
        return this.f26030m.m10884b();
    }
}
