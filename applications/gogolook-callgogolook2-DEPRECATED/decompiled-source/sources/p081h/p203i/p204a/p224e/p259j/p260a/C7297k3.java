package p081h.p203i.p204a.p224e.p259j.p260a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import java.util.HashMap;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.k3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/k3.class */
public class C7297k3 {

    /* renamed from: a */
    public final C7219e3 f17359a;

    /* renamed from: b */
    public final C7206d3 f17360b;

    /* renamed from: c */
    public final C7222e6 f17361c;

    /* renamed from: d */
    public final C7327m9 f17362d;

    /* renamed from: e */
    public final C7204d1 f17363e;

    /* renamed from: f */
    public final C7474z f17364f;

    /* renamed from: g */
    public final C7339n9 f17365g;

    public C7297k3(C7219e3 e3Var, C7206d3 d3Var, C7222e6 e6Var, C7327m9 m9Var, C7204d1 d1Var, C7319m1 m1Var, C7474z zVar, C7339n9 n9Var) {
        this.f17359a = e3Var;
        this.f17360b = d3Var;
        this.f17361c = e6Var;
        this.f17362d = m9Var;
        this.f17363e = d1Var;
        this.f17364f = zVar;
        this.f17365g = n9Var;
    }

    /* renamed from: a */
    public static void m20867a(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        C7430v3.m20640a().m20777a(context, C7430v3.m20634g().f6743a, "gmob-apps", bundle, true);
    }

    @Nullable
    /* renamed from: a */
    public final AbstractC7164a0 m20869a(Activity activity) {
        C7321m3 m3Var = new C7321m3(this, activity);
        Intent intent = activity.getIntent();
        boolean z = false;
        if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            C7452x1.m20574a("useClientJar flag not found in activity intent extras.");
        } else {
            z = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
        return m3Var.m20652a(activity, z);
    }

    /* renamed from: a */
    public final AbstractC7185b8 m20865a(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        return new C7394s3(this, view, hashMap, hashMap2).m20652a(view.getContext(), false);
    }

    /* renamed from: a */
    public final AbstractC7259h4 m20866a(Context context, String str, AbstractC7226ea eaVar) {
        return new C7357p3(this, context, str, eaVar).m20652a(context, false);
    }

    /* renamed from: a */
    public final AbstractC7446w7 m20868a(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return new C7382r3(this, frameLayout, frameLayout2, context).m20652a(context, false);
    }
}
