package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bod.class */
public final class bod {

    /* renamed from: a */
    final Context f44374a;

    /* renamed from: b */
    final zzbar f44375b;

    /* renamed from: c */
    final cpo f44376c;

    /* renamed from: d */
    final Executor f44377d;

    public bod(Context context, zzbar zzbarVar, cpo cpoVar, Executor executor) {
        this.f44374a = context;
        this.f44375b = zzbarVar;
        this.f44376c = cpoVar;
        this.f44377d = executor;
    }

    /* renamed from: a */
    public static boolean m17706a(zzvf zzvfVar) {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42893er)).booleanValue()) {
            return true;
        }
        if (zzvfVar == null) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(zzvfVar.zzchp);
            JSONObject jSONObject2 = new JSONObject(zzvfVar.zzchq);
            String optString = jSONObject.optString("request_id", "");
            String optString2 = jSONObject2.optString("request_id", "");
            return !TextUtils.isEmpty(optString2) && optString.equals(optString2);
        } catch (JSONException e) {
            return false;
        }
    }
}
