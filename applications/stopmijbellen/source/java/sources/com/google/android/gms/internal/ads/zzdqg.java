package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzby;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdqg.class */
public final class zzdqg extends zzdqh {
    private final JSONObject zzb;
    private final boolean zzc;
    private final boolean zzd;
    private final boolean zze;
    private final boolean zzf;
    private final String zzg;

    public zzdqg(zzfdn zzfdnVar, JSONObject jSONObject) {
        super(zzfdnVar);
        this.zzb = zzby.zzg(jSONObject, "tracking_urls_and_actions", "active_view");
        boolean z = false;
        this.zzc = zzby.zzk(false, jSONObject, "allow_pub_owned_ad_view");
        this.zzd = zzby.zzk(false, jSONObject, "attribution", "allow_pub_rendering");
        this.zze = zzby.zzk(false, jSONObject, "enable_omid");
        this.zzg = zzby.zzb("", jSONObject, "watermark_overlay_png_base64");
        this.zzf = jSONObject.optJSONObject("overlay") != null ? true : z;
    }

    @Override // com.google.android.gms.internal.ads.zzdqh
    public final String zza() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzdqh
    public final JSONObject zzb() {
        JSONObject jSONObject = this.zzb;
        if (jSONObject != null) {
            return jSONObject;
        }
        try {
            return new JSONObject(this.zza.zzA);
        } catch (JSONException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqh
    public final boolean zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzdqh
    public final boolean zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzdqh
    public final boolean zze() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzdqh
    public final boolean zzf() {
        return this.zzf;
    }
}
