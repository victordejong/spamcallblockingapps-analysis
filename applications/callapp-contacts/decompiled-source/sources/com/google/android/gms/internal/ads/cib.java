package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cib.class */
public final class cib implements cgy<JSONObject> {

    /* renamed from: a  reason: collision with root package name */
    private String f25874a;

    public cib(String str) {
        this.f25874a = str;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(JSONObject jSONObject) {
        try {
            JSONObject zzb = zzbh.zzb(jSONObject, "pii");
            if (!TextUtils.isEmpty(this.f25874a)) {
                zzb.put("attok", this.f25874a);
            }
        } catch (JSONException e) {
            zzd.zza("Failed putting attestation token.", e);
        }
    }
}
