package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.ads.nonagon.signalgeneration.zze;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfin.class */
public final class zzfin {
    private final HashMap<String, String> zza;
    private final zzfiu zzb = new zzfiu(zzt.zzA());

    private zzfin() {
        HashMap<String, String> hashMap = new HashMap<>();
        this.zza = hashMap;
        hashMap.put("new_csi", "1");
    }

    public static zzfin zzb(String str) {
        zzfin zzfinVar = new zzfin();
        zzfinVar.zza.put("action", str);
        return zzfinVar;
    }

    public static zzfin zzc(String str) {
        zzfin zzfinVar = new zzfin();
        zzfinVar.zza.put("request_id", str);
        return zzfinVar;
    }

    public final zzfin zza(String str, String str2) {
        this.zza.put(str, str2);
        return this;
    }

    public final zzfin zzd(String str) {
        this.zzb.zzb(str);
        return this;
    }

    public final zzfin zze(String str, String str2) {
        this.zzb.zzc(str, str2);
        return this;
    }

    public final zzfin zzf(zzfdn zzfdnVar) {
        this.zza.put("aai", zzfdnVar.zzx);
        return this;
    }

    public final zzfin zzg(zzfdq zzfdqVar) {
        if (!TextUtils.isEmpty(zzfdqVar.zzb)) {
            this.zza.put("gqi", zzfdqVar.zzb);
        }
        return this;
    }

    public final zzfin zzh(zzfdz zzfdzVar, zzcio zzcioVar) {
        zzfdy zzfdyVar = zzfdzVar.zzb;
        zzg(zzfdyVar.zzb);
        if (!zzfdyVar.zza.isEmpty()) {
            switch (zzfdyVar.zza.get(0).zzb) {
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
                    if (zzcioVar != null) {
                        this.zza.put("as", true != zzcioVar.zzj() ? "0" : "1");
                        break;
                    }
                    break;
                default:
                    this.zza.put("ad_format", "unknown");
                    break;
            }
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfs)).booleanValue()) {
            boolean zzd = zze.zzd(zzfdzVar);
            this.zza.put("scar", String.valueOf(zzd));
            if (zzd) {
                String zzb = zze.zzb(zzfdzVar);
                if (!TextUtils.isEmpty(zzb)) {
                    this.zza.put("ragent", zzb);
                }
                String zza = zze.zza(zzfdzVar);
                if (!TextUtils.isEmpty(zza)) {
                    this.zza.put("rtype", zza);
                }
            }
        }
        return this;
    }

    public final zzfin zzi(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.zza.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.zza.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
        return this;
    }

    public final Map<String, String> zzj() {
        HashMap hashMap = new HashMap(this.zza);
        for (zzfit zzfitVar : this.zzb.zza()) {
            hashMap.put(zzfitVar.zza, zzfitVar.zzb);
        }
        return hashMap;
    }
}
