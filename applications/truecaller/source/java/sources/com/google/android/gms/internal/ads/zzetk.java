package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzetk.class */
public final class zzetk implements zzery<zzerx<JSONObject>> {
    private final JSONObject zza;

    public zzetk(Context context) {
        this.zza = zzcbt.zzb(context);
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzerx<JSONObject>> zza() {
        return zzfsd.zza(new zzerx(this) { // from class: com.google.android.gms.internal.ads.zzetj
            private final zzetk zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzerx
            public final void zzf(Object obj) {
                this.zza.zzb((JSONObject) obj);
            }
        });
    }

    public final /* synthetic */ void zzb(JSONObject jSONObject) {
        try {
            jSONObject.put("gms_sdk_env", this.zza);
        } catch (JSONException e) {
            zze.zza("Failed putting version constants.");
        }
    }
}
