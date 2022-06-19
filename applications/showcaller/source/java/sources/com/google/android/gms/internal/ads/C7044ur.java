package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
/* renamed from: com.google.android.gms.internal.ads.ur */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ur.class */
public final class C7044ur {

    /* renamed from: a */
    private final C7006tq f30937a;

    /* renamed from: b */
    private final C6932rq f30938b;

    /* renamed from: c */
    private final C6306av f30939c;

    /* renamed from: d */
    private final e10 f30940d;

    /* renamed from: e */
    private final se0 f30941e;

    /* renamed from: f */
    private final hb0 f30942f;

    /* renamed from: g */
    private final f10 f30943g;

    /* renamed from: h */
    private kc0 f30944h;

    public C7044ur(C7006tq c7006tq, C6932rq c6932rq, C6306av c6306av, e10 e10Var, se0 se0Var, hb0 hb0Var, f10 f10Var) {
        this.f30937a = c7006tq;
        this.f30938b = c6932rq;
        this.f30939c = c6306av;
        this.f30940d = e10Var;
        this.f30941e = se0Var;
        this.f30942f = hb0Var;
        this.f30943g = f10Var;
    }

    /* renamed from: h */
    public static /* synthetic */ void m10192h(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        C7118wr.m9485a().m9173e(context, C7118wr.m9482d().f33854d, "gmob-apps", bundle, true);
    }

    /* renamed from: i */
    public final AbstractC7008ts m10191i(Context context, zzbdl zzbdlVar, String str, s70 s70Var) {
        return new C6674kr(this, context, zzbdlVar, str, s70Var).m9877d(context, false);
    }

    /* renamed from: j */
    public final AbstractC7008ts m10190j(Context context, zzbdl zzbdlVar, String str, s70 s70Var) {
        return new C6748mr(this, context, zzbdlVar, str, s70Var).m9877d(context, false);
    }

    /* renamed from: k */
    public final AbstractC6860ps m10189k(Context context, String str, s70 s70Var) {
        return new C6822or(this, context, str, s70Var).m9877d(context, false);
    }

    /* renamed from: l */
    public final AbstractC6682kz m10188l(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return new C6970sr(this, frameLayout, frameLayout2, context).m9877d(context, false);
    }

    /* renamed from: m */
    public final fe0 m10187m(Context context, String str, s70 s70Var) {
        return new C7007tr(this, context, str, s70Var).m9877d(context, false);
    }

    /* renamed from: n */
    public final kb0 m10186n(Activity activity) {
        C6413dr c6413dr = new C6413dr(this, activity);
        Intent intent = activity.getIntent();
        boolean z = false;
        if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            ei0.m15467c("useClientJar flag not found in activity intent extras.");
        } else {
            z = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
        return c6413dr.m9877d(activity, z);
    }

    /* renamed from: o */
    public final yg0 m10185o(Context context, s70 s70Var) {
        return new C6488fr(this, context, s70Var).m9877d(context, false);
    }

    /* renamed from: p */
    public final ab0 m10184p(Context context, s70 s70Var) {
        return new C6562hr(this, context, s70Var).m9877d(context, false);
    }
}
