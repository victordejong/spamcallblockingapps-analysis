package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzauc.class */
public final class zzauc extends zzaue {
    private final Object lock = new Object();
    private final Context zzaad;
    private SharedPreferences zzdyx;
    private final zzamb<JSONObject, JSONObject> zzdyy;

    public zzauc(Context context, zzamb<JSONObject, JSONObject> zzambVar) {
        this.zzaad = context.getApplicationContext();
        this.zzdyy = zzambVar;
    }

    public static JSONObject zzw(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("js", zzazn.zzaab().zzbrp);
            jSONObject.put("mf", zzadi.zzddw.get());
            jSONObject.put("cl", "350251165");
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

    public final /* synthetic */ Void zzf(JSONObject jSONObject) {
        zzabp.zza(this.zzaad, 1, jSONObject);
        this.zzdyx.edit().putLong("js_last_update", zzr.zzky().currentTimeMillis()).apply();
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaue
    public final zzdzw<Void> zzwt() {
        synchronized (this.lock) {
            if (this.zzdyx == null) {
                this.zzdyx = this.zzaad.getSharedPreferences("google_ads_flags_meta", 0);
            }
        }
        if (zzr.zzky().currentTimeMillis() - this.zzdyx.getLong("js_last_update", 0L) < zzadi.zzddx.get().longValue()) {
            return zzdzk.zzag(null);
        }
        return zzdzk.zzb(this.zzdyy.zzh(zzw(this.zzaad)), new zzdvz(this) { // from class: com.google.android.gms.internal.ads.zzauf
            private final zzauc zzdzb;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdzb = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdvz
            public final Object apply(Object obj) {
                return this.zzdzb.zzf((JSONObject) obj);
            }
        }, zzazp.zzeih);
    }
}
