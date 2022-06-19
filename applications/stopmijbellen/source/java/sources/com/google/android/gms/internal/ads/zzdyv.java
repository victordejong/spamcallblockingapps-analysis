package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.nonagon.signalgeneration.zze;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdyv.class */
public final class zzdyv {
    private final ConcurrentHashMap<String, String> zza;
    private final zzcio zzb;

    public zzdyv(zzdze zzdzeVar, zzcio zzcioVar) {
        this.zza = new ConcurrentHashMap<>(zzdzeVar.zzb);
        this.zzb = zzcioVar;
    }

    public final Map<String, String> zza() {
        return this.zza;
    }

    public final void zzb(zzfdz zzfdzVar) {
        if (zzfdzVar.zzb.zza.size() > 0) {
            switch (zzfdzVar.zzb.zza.get(0).zzb) {
                case 1:
                    this.zza.put("ad_format", "banner");
                    break;
                case 2:
                    this.zza.put("ad_format", "interstitial");
                    break;
                case 3:
                    this.zza.put("ad_format", "native_express");
                    break;
                case 4:
                    this.zza.put("ad_format", "native_advanced");
                    break;
                case 5:
                    this.zza.put("ad_format", "rewarded");
                    break;
                case 6:
                    this.zza.put("ad_format", "app_open_ad");
                    this.zza.put("as", true != this.zzb.zzj() ? "0" : "1");
                    break;
                default:
                    this.zza.put("ad_format", "unknown");
                    break;
            }
        }
        if (!TextUtils.isEmpty(zzfdzVar.zzb.zzb.zzb)) {
            this.zza.put("gqi", zzfdzVar.zzb.zzb.zzb);
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfs)).booleanValue()) {
            boolean zzd = zze.zzd(zzfdzVar);
            this.zza.put("scar", String.valueOf(zzd));
            if (!zzd) {
                return;
            }
            String zzb = zze.zzb(zzfdzVar);
            if (!TextUtils.isEmpty(zzb)) {
                this.zza.put("ragent", zzb);
            }
            String zza = zze.zza(zzfdzVar);
            if (TextUtils.isEmpty(zza)) {
                return;
            }
            this.zza.put("rtype", zza);
        }
    }

    public final void zzc(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.zza.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.zza.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }
}
