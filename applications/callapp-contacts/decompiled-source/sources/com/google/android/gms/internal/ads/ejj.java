package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejj.class */
public class ejj {

    /* renamed from: a  reason: collision with root package name */
    private final eiz f27880a;

    /* renamed from: b  reason: collision with root package name */
    private final eiw f27881b;

    /* renamed from: c  reason: collision with root package name */
    private final c f27882c;

    /* renamed from: d  reason: collision with root package name */
    private final fx f27883d;
    private final ud e;
    private final vg f;
    private final qx g;
    private final ga h;

    public ejj(eiz eizVar, eiw eiwVar, c cVar, fx fxVar, ud udVar, vg vgVar, qx qxVar, ga gaVar) {
        this.f27880a = eizVar;
        this.f27881b = eiwVar;
        this.f27882c = cVar;
        this.f27883d = fxVar;
        this.e = udVar;
        this.f = vgVar;
        this.g = qxVar;
        this.h = gaVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        ekb.a().a(context, ekb.g().zzbrz, "gmob-apps", bundle);
    }

    public final dv a(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return new ejx(this, frameLayout, frameLayout2, context).a(context, false);
    }

    public final ed a(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        return new ejw(this, view, hashMap, hashMap2).a(view.getContext(), false);
    }

    public final ekp a(Context context, String str, mm mmVar) {
        return new ejv(this, context, str, mmVar).a(context, false);
    }

    public final ekw a(Context context, zzvt zzvtVar, String str, mm mmVar) {
        return new ejq(this, context, zzvtVar, str, mmVar).a(context, false);
    }

    public final ql a(Context context, mm mmVar) {
        return new ejo(this, context, mmVar).a(context, false);
    }

    public final ekw b(Context context, zzvt zzvtVar, String str, mm mmVar) {
        return new ejs(this, context, zzvtVar, str, mmVar).a(context, false);
    }

    public final uq b(Context context, String str, mm mmVar) {
        return new ejk(this, context, str, mmVar).a(context, false);
    }
}
