package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeff.class */
final class zzeff implements zzbwa<zzefg> {
    @Override // com.google.android.gms.internal.ads.zzbwa
    public final /* bridge */ /* synthetic */ JSONObject zzb(zzefg zzefgVar) throws JSONException {
        zzefg zzefgVar2 = zzefgVar;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        jSONObject2.put("base_url", zzefgVar2.zzd.zzb());
        jSONObject2.put("signals", zzefgVar2.zzc);
        jSONObject3.put("body", zzefgVar2.zzb.zzc);
        jSONObject3.put("headers", zzt.zzp().zzf(zzefgVar2.zzb.zzb));
        jSONObject3.put("response_code", zzefgVar2.zzb.zza);
        jSONObject3.put("latency", zzefgVar2.zzb.zzd);
        jSONObject.put("request", jSONObject2);
        jSONObject.put("response", jSONObject3);
        jSONObject.put("flags", zzefgVar2.zzd.zzg());
        return jSONObject;
    }
}
