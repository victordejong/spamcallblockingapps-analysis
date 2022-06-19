package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ciq.class */
public final class ciq implements cgy<JSONObject> {

    /* renamed from: a */
    private String f45869a;

    /* renamed from: b */
    private String f45870b;

    public ciq(String str, String str2) {
        this.f45869a = str;
        this.f45870b = str2;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(JSONObject jSONObject) {
        try {
            JSONObject zzb = zzbh.zzb(jSONObject, "pii");
            zzb.put("doritos", this.f45869a);
            zzb.put("doritos_v2", this.f45870b);
        } catch (JSONException e) {
            zzd.zzed("Failed putting doritos string.");
        }
    }
}
