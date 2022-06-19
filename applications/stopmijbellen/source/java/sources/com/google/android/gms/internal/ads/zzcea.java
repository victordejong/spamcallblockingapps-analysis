package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcea.class */
public final class zzcea extends zzceb {
    private final Object zza = new Object();
    private final Context zzb;
    private SharedPreferences zzc;
    private final zzbvx<JSONObject, JSONObject> zzd;

    public zzcea(Context context, zzbvx<JSONObject, JSONObject> zzbvxVar) {
        this.zzb = context.getApplicationContext();
        this.zzd = zzbvxVar;
    }

    public static JSONObject zzc(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("js", zzcjf.zza().zza);
            jSONObject.put("mf", zzbmx.zza.zze());
            jSONObject.put("cl", "428884702");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", "HEAD");
            jSONObject.put("admob_module_version", GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.getRemoteVersion(context, ModuleDescriptor.MODULE_ID));
            jSONObject.put("container_version", GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzceb
    public final zzfxa<Void> zza() {
        synchronized (this.zza) {
            if (this.zzc == null) {
                this.zzc = this.zzb.getSharedPreferences("google_ads_flags_meta", 0);
            }
        }
        if (zzt.zzA().currentTimeMillis() - this.zzc.getLong("js_last_update", 0L) < zzbmx.zzb.zze().longValue()) {
            return zzfwq.zzi(null);
        }
        return zzfwq.zzm(this.zzd.zzb(zzc(this.zzb)), new zzfpv() { // from class: com.google.android.gms.internal.ads.zzcdz
            @Override // com.google.android.gms.internal.ads.zzfpv
            public final Object apply(Object obj) {
                zzcea.this.zzb((JSONObject) obj);
                return null;
            }
        }, zzcjm.zzf);
    }

    public final /* synthetic */ Void zzb(JSONObject jSONObject) {
        zzblj.zzd(this.zzb, 1, jSONObject);
        this.zzc.edit().putLong("js_last_update", zzt.zzA().currentTimeMillis()).apply();
        return null;
    }
}
