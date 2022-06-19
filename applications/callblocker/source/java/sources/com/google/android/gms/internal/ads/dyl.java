package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dyl.class */
public class dyl {

    /* renamed from: a */
    private final dxy f16111a;

    /* renamed from: b */
    private final dxv f16112b;

    /* renamed from: c */
    private final ebx f16113c;

    /* renamed from: d */
    private final C3100dy f16114d;

    /* renamed from: e */
    private final C3460rf f16115e;

    /* renamed from: f */
    private final C3486se f16116f;

    /* renamed from: g */
    private final C3369nw f16117g;

    /* renamed from: h */
    private final C3104eb f16118h;

    public dyl(dxy dxyVar, dxv dxvVar, ebx ebxVar, C3100dy c3100dy, C3460rf c3460rf, C3486se c3486se, C3369nw c3369nw, C3104eb c3104eb) {
        this.f16111a = dxyVar;
        this.f16112b = dxvVar;
        this.f16113c = ebxVar;
        this.f16114d = c3100dy;
        this.f16115e = c3460rf;
        this.f16116f = c3486se;
        this.f16117g = c3369nw;
        this.f16118h = c3104eb;
    }

    /* renamed from: b */
    public static void m8180b(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        dyx.m8162a().m6800a(context, dyx.m8156g().f17636a, "gmob-apps", bundle, true);
    }

    /* renamed from: a */
    public final dzg m8182a(Context context, String str, AbstractC3280ko abstractC3280ko) {
        return new dyt(this, context, str, abstractC3280ko).m8172a(context, false);
    }

    /* renamed from: a */
    public final AbstractC3371ny m8184a(Activity activity) {
        boolean z = false;
        dyo dyoVar = new dyo(this, activity);
        Intent intent = activity.getIntent();
        if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            C3645yb.m6749c("useClientJar flag not found in activity intent extras.");
        } else {
            z = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
        return dyoVar.m8172a(activity, z);
    }
}
