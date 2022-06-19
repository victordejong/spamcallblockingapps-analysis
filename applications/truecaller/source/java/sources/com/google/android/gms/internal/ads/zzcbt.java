package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.freshchat.consumer.sdk.BuildConfig;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbt.class */
public final class zzcbt extends zzcbu {
    private final Object zza = new Object();
    private final Context zzb;
    private SharedPreferences zzc;
    private final zzbtw<JSONObject, JSONObject> zzd;

    public zzcbt(Context context, zzbtw<JSONObject, JSONObject> zzbtwVar) {
        this.zzb = context.getApplicationContext();
        this.zzd = zzbtwVar;
    }

    public static JSONObject zzb(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("js", zzcgz.zza().zza);
            jSONObject.put("mf", zzbky.zza.zze());
            jSONObject.put("cl", "407425155");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", BuildConfig.SCM_BRANCH);
            jSONObject.put("admob_module_version", GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.m38739b(context, ModuleDescriptor.MODULE_ID));
            jSONObject.put("container_version", GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzcbu
    public final zzfsm<Void> zza() {
        synchronized (this.zza) {
            if (this.zzc == null) {
                this.zzc = this.zzb.getSharedPreferences("google_ads_flags_meta", 0);
            }
        }
        if (zzt.zzj().mo38787c() - this.zzc.getLong("js_last_update", 0L) < zzbky.zzb.zze().longValue()) {
            return zzfsd.zza(null);
        }
        return zzfsd.zzj(this.zzd.zzb(zzb(this.zzb)), new zzfln(this) { // from class: com.google.android.gms.internal.ads.zzcbs
            private final zzcbt zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzfln
            public final Object apply(Object obj) {
                this.zza.zzc((JSONObject) obj);
                return null;
            }
        }, zzchg.zzf);
    }

    public final /* synthetic */ Void zzc(JSONObject jSONObject) {
        zzbjl.zzb(this.zzb, 1, jSONObject);
        this.zzc.edit().putLong("js_last_update", zzt.zzj().mo38787c()).apply();
        return null;
    }
}
