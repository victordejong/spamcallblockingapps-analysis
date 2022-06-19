package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/k03.class */
public final class k03 {

    /* renamed from: a */
    private final oz2 f6951a;

    /* renamed from: b */
    private final nz2 f6952b;

    /* renamed from: c */
    private final e2 f6953c;

    /* renamed from: d */
    private final a8 f6954d;

    /* renamed from: e */
    private final wh f6955e;

    public k03(oz2 oz2Var, nz2 nz2Var, e2 e2Var, a8 a8Var, C1703dl c1703dl, wh whVar, b8 b8Var) {
        this.f6951a = oz2Var;
        this.f6952b = nz2Var;
        this.f6953c = e2Var;
        this.f6954d = a8Var;
        this.f6955e = whVar;
    }

    /* renamed from: j */
    static /* synthetic */ void m6884j(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        m03.m6636a().m7139e(context, m03.m6633d().b, "gmob-apps", bundle, true);
    }

    /* renamed from: a */
    public final AbstractC2007w m6893a(Context context, zzyx zzyxVar, String str, AbstractC1767he abstractC1767he) {
        return (AbstractC2007w) new d03(this, context, zzyxVar, str, abstractC1767he).m6736d(context, false);
    }

    /* renamed from: b */
    public final AbstractC2007w m6892b(Context context, zzyx zzyxVar, String str, AbstractC1767he abstractC1767he) {
        return (AbstractC2007w) new f03(this, context, zzyxVar, str, abstractC1767he).m6736d(context, false);
    }

    /* renamed from: c */
    public final AbstractC1930s m6891c(Context context, String str, AbstractC1767he abstractC1767he) {
        return (AbstractC1930s) new g03(this, context, str, abstractC1767he).m6736d(context, false);
    }

    /* renamed from: d */
    public final AbstractC1813k6 m6890d(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return (AbstractC1813k6) new i03(this, frameLayout, frameLayout2, context).m6736d(context, false);
    }

    /* renamed from: e */
    public final AbstractC1923rk m6889e(Context context, String str, AbstractC1767he abstractC1767he) {
        return (AbstractC1923rk) new j03(this, context, str, abstractC1767he).m6736d(context, false);
    }

    /* renamed from: f */
    public final AbstractC2069zh m6888f(Activity activity) {
        xz2 xz2Var = new xz2(this, activity);
        Intent intent = activity.getIntent();
        boolean z = false;
        if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            C1894po.m6183c("useClientJar flag not found in activity intent extras.");
        } else {
            z = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
        return (AbstractC2069zh) xz2Var.m6736d(activity, z);
    }

    /* renamed from: g */
    public final AbstractC1835ln m6887g(Context context, AbstractC1767he abstractC1767he) {
        return (AbstractC1835ln) new zz2(this, context, abstractC1767he).m6736d(context, false);
    }

    /* renamed from: h */
    public final AbstractC1874oh m6886h(Context context, AbstractC1767he abstractC1767he) {
        return (AbstractC1874oh) new b03(this, context, abstractC1767he).m6736d(context, false);
    }
}
