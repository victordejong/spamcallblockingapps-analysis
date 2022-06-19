package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/civ.class */
public final class civ implements cgy<JSONObject> {

    /* renamed from: a */
    private Bundle f45880a;

    public civ(Bundle bundle) {
        this.f45880a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (this.f45880a != null) {
            try {
                zzbh.zzb(zzbh.zzb(jSONObject2, "device"), "play_store").put("parental_controls", zzr.zzkv().zzc(this.f45880a));
            } catch (JSONException e) {
                zzd.zzed("Failed putting parental controls bundle.");
            }
        }
    }
}
