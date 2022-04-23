package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
import p131c.p161d.p170b.p224d.p252g.p253a.qh0;
import p131c.p161d.p170b.p224d.p252g.p253a.rh0;
import p131c.p161d.p170b.p224d.p252g.p253a.th0;
import p131c.p161d.p170b.p224d.p252g.p253a.vh0;
import p131c.p161d.p170b.p224d.p252g.p253a.wh0;
import p131c.p161d.p170b.p224d.p252g.p253a.yh0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvx.class */
public class zzvx {

    /* renamed from: a */
    public final zzve f29061a;

    /* renamed from: b */
    public final zzvf f29062b;

    /* renamed from: c */
    public final zzzl f29063c;

    /* renamed from: d */
    public final zzagi f29064d;

    /* renamed from: e */
    public final zzauk f29065e;

    /* renamed from: f */
    public final zzaqz f29066f;

    public zzvx(zzve zzveVar, zzvf zzvfVar, zzzl zzzlVar, zzagi zzagiVar, zzauk zzaukVar, zzavo zzavoVar, zzaqz zzaqzVar, zzagh zzaghVar) {
        this.f29061a = zzveVar;
        this.f29062b = zzvfVar;
        this.f29063c = zzzlVar;
        this.f29064d = zzagiVar;
        this.f29065e = zzaukVar;
        this.f29066f = zzaqzVar;
    }

    /* renamed from: a */
    public static void m11182a(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        zzwm.m11170a().m15909a(context, zzwm.m11164g().f24759a, "gmob-apps", bundle, true);
    }

    /* renamed from: a */
    public final zzaei m11185a(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return new yh0(this, frameLayout, frameLayout2, context).m27117a(context, false);
    }

    /* renamed from: a */
    public final zzaqp m11184a(Context context, zzanb zzanbVar) {
        return new th0(this, context, zzanbVar).m27117a(context, false);
    }

    /* renamed from: a */
    public final zzaqy m11186a(Activity activity) {
        qh0 qh0Var = new qh0(this, activity);
        Intent intent = activity.getIntent();
        boolean z = false;
        if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            zzbbq.m15856b("useClientJar flag not found in activity intent extras.");
        } else {
            z = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
        return qh0Var.m27117a(activity, z);
    }

    /* renamed from: a */
    public final zzwz m11181a(Context context, String str, zzanb zzanbVar) {
        return new wh0(this, context, str, zzanbVar).m27117a(context, false);
    }

    /* renamed from: a */
    public final zzxc m11183a(Context context, zzvn zzvnVar, String str, zzanb zzanbVar) {
        return new vh0(this, context, zzvnVar, str, zzanbVar).m27117a(context, false);
    }

    /* renamed from: b */
    public final zzauy m11178b(Context context, String str, zzanb zzanbVar) {
        return new rh0(this, context, str, zzanbVar).m27117a(context, false);
    }
}
