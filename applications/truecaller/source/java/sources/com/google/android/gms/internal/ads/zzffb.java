package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.ads.nonagon.signalgeneration.zze;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzffb.class */
public final class zzffb {
    private final HashMap<String, String> zza;
    private final zzffh zzb = new zzffh(zzt.zzj());

    private zzffb() {
        HashMap<String, String> hashMap = new HashMap<>();
        this.zza = hashMap;
        hashMap.put("new_csi", "1");
    }

    public static zzffb zza(String str) {
        zzffb zzffbVar = new zzffb();
        zzffbVar.zza.put("action", str);
        return zzffbVar;
    }

    public static zzffb zzb(String str) {
        zzffb zzffbVar = new zzffb();
        zzffbVar.zza.put("request_id", str);
        return zzffbVar;
    }

    public final zzffb zzc(String str, String str2) {
        this.zza.put(str, str2);
        return this;
    }

    public final zzffb zzd(String str) {
        this.zzb.zza(str);
        return this;
    }

    public final zzffb zze(String str, String str2) {
        this.zzb.zzb(str, str2);
        return this;
    }

    public final zzffb zzf(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.zza.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.zza.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
        return this;
    }

    public final zzffb zzg(zzfal zzfalVar, zzcgi zzcgiVar) {
        zzfak zzfakVar = zzfalVar.zzb;
        zzh(zzfakVar.zzb);
        if (!zzfakVar.zza.isEmpty()) {
            switch (zzfakVar.zza.get(0).zzb) {
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
                    if (zzcgiVar != null) {
                        this.zza.put("as", true != zzcgiVar.zzj() ? DtbConstants.NETWORK_TYPE_UNKNOWN : "1");
                        break;
                    }
                    break;
                default:
                    this.zza.put("ad_format", "unknown");
                    break;
            }
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfl)).booleanValue()) {
            boolean zza = zze.zza(zzfalVar);
            this.zza.put("scar", String.valueOf(zza));
            if (zza) {
                String zzb = zze.zzb(zzfalVar);
                if (!TextUtils.isEmpty(zzb)) {
                    this.zza.put("ragent", zzb);
                }
                String zzc = zze.zzc(zzfalVar);
                if (!TextUtils.isEmpty(zzc)) {
                    this.zza.put("rtype", zzc);
                }
            }
        }
        return this;
    }

    public final zzffb zzh(zzfac zzfacVar) {
        if (!TextUtils.isEmpty(zzfacVar.zzb)) {
            this.zza.put("gqi", zzfacVar.zzb);
        }
        return this;
    }

    public final zzffb zzi(zzezz zzezzVar) {
        this.zza.put("aai", zzezzVar.zzw);
        return this;
    }

    public final Map<String, String> zzj() {
        HashMap hashMap = new HashMap(this.zza);
        for (zzffg zzffgVar : this.zzb.zzc()) {
            hashMap.put(zzffgVar.zza, zzffgVar.zzb);
        }
        return hashMap;
    }
}
