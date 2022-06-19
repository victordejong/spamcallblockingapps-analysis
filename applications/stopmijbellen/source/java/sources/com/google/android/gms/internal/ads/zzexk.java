package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzby;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzexk.class */
public final class zzexk implements zzevm<JSONObject> {
    private final Bundle zza;

    public zzexk(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (this.zza != null) {
            try {
                zzby.zzf(zzby.zzf(jSONObject2, "device"), "play_store").put("parental_controls", zzt.zzp().zze(this.zza));
            } catch (JSONException e) {
                zze.zza("Failed putting parental controls bundle.");
            }
        }
    }
}
