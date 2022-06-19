package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.google.android.gms.ads.nonagon.signalgeneration.zze;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdve.class */
public final class zzdve {
    private final ConcurrentHashMap<String, String> zza;
    private final zzcgi zzb;

    public zzdve(zzdvn zzdvnVar, zzcgi zzcgiVar) {
        this.zza = new ConcurrentHashMap<>(zzdvnVar.zzb);
        this.zzb = zzcgiVar;
    }

    public final void zza(zzfal zzfalVar) {
        if (zzfalVar.zzb.zza.size() > 0) {
            switch (zzfalVar.zzb.zza.get(0).zzb) {
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
                    this.zza.put("as", true != this.zzb.zzj() ? DtbConstants.NETWORK_TYPE_UNKNOWN : "1");
                    break;
                default:
                    this.zza.put("ad_format", "unknown");
                    break;
            }
        }
        if (!TextUtils.isEmpty(zzfalVar.zzb.zzb.zzb)) {
            this.zza.put("gqi", zzfalVar.zzb.zzb.zzb);
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfl)).booleanValue()) {
            boolean zza = zze.zza(zzfalVar);
            this.zza.put("scar", String.valueOf(zza));
            if (!zza) {
                return;
            }
            String zzb = zze.zzb(zzfalVar);
            if (!TextUtils.isEmpty(zzb)) {
                this.zza.put("ragent", zzb);
            }
            String zzc = zze.zzc(zzfalVar);
            if (TextUtils.isEmpty(zzc)) {
                return;
            }
            this.zza.put("rtype", zzc);
        }
    }

    public final void zzb(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.zza.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.zza.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }

    public final Map<String, String> zzc() {
        return this.zza;
    }
}
