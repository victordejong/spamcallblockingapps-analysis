package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdhf.class */
public final class zzdhf implements zzdfj<JSONObject> {
    private Bundle zzhet;

    public zzdhf(Bundle bundle) {
        this.zzhet = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (this.zzhet != null) {
            try {
                zzbh.zzb(zzbh.zzb(jSONObject2, POBConstants.KEY_DEVICE), "play_store").put("parental_controls", zzr.zzkr().zzc(this.zzhet));
            } catch (JSONException e) {
                zzd.zzeb("Failed putting parental controls bundle.");
            }
        }
    }
}
