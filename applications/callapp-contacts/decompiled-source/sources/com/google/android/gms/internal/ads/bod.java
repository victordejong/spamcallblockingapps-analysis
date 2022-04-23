package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bod.class */
public final class bod {

    /* renamed from: a  reason: collision with root package name */
    final Context f24789a;

    /* renamed from: b  reason: collision with root package name */
    final zzbar f24790b;

    /* renamed from: c  reason: collision with root package name */
    final cpo f24791c;

    /* renamed from: d  reason: collision with root package name */
    final Executor f24792d;

    public bod(Context context, zzbar zzbarVar, cpo cpoVar, Executor executor) {
        this.f24789a = context;
        this.f24790b = zzbarVar;
        this.f24791c = cpoVar;
        this.f24792d = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(zzvf zzvfVar) {
        if (!((Boolean) ekb.e().a(aq.er)).booleanValue()) {
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
