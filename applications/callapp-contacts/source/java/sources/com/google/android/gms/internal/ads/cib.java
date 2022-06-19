package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cib.class */
public final class cib implements cgy<JSONObject> {

    /* renamed from: a */
    private String f45835a;

    public cib(String str) {
        this.f45835a = str;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(JSONObject jSONObject) {
        try {
            JSONObject zzb = zzbh.zzb(jSONObject, "pii");
            if (TextUtils.isEmpty(this.f45835a)) {
                return;
            }
            zzb.put("attok", this.f45835a);
        } catch (JSONException e) {
            zzd.zza("Failed putting attestation token.", e);
        }
    }
}
