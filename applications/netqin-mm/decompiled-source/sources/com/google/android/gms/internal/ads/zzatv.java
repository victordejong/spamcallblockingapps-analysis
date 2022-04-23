package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatv.class */
public final class zzatv implements zzatg {

    /* renamed from: a */
    public zzalt<JSONObject, JSONObject> f24517a;

    public zzatv(Context context) {
        zzamb a = zzp.m17956p().m16667a(context, zzbbx.m15844f());
        zzalx<JSONObject> zzalxVar = zzama.f24180b;
        a.m16663a("google.afma.request.getAdDictionary", zzalxVar, zzalxVar);
        zzamb a2 = zzp.m17956p().m16667a(context, zzbbx.m15844f());
        zzalx<JSONObject> zzalxVar2 = zzama.f24180b;
        this.f24517a = a2.m16663a("google.afma.sdkConstants.getSdkConstants", zzalxVar2, zzalxVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzatg
    /* renamed from: a */
    public final zzalt<JSONObject, JSONObject> mo16352a() {
        return this.f24517a;
    }
}
