package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.mopub.common.AdType;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckl.class */
public final class zzckl {
    private final zzayy zzebw;
    private ConcurrentHashMap<String, String> zzglq;

    public zzckl(zzckw zzckwVar, zzayy zzayyVar) {
        this.zzglq = new ConcurrentHashMap<>(zzckwVar.zzgls);
        this.zzebw = zzayyVar;
    }

    public final void zzc(zzdnl zzdnlVar) {
        String str;
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (zzdnlVar.zzhks.zzhkp.size() > 0) {
            switch (zzdnlVar.zzhks.zzhkp.get(0).zzhiy) {
                case 1:
                    concurrentHashMap = this.zzglq;
                    str = "banner";
                    concurrentHashMap.put("ad_format", str);
                    break;
                case 2:
                    concurrentHashMap = this.zzglq;
                    str = AdType.INTERSTITIAL;
                    concurrentHashMap.put("ad_format", str);
                    break;
                case 3:
                    concurrentHashMap = this.zzglq;
                    str = "native_express";
                    concurrentHashMap.put("ad_format", str);
                    break;
                case 4:
                    concurrentHashMap = this.zzglq;
                    str = "native_advanced";
                    concurrentHashMap.put("ad_format", str);
                    break;
                case 5:
                    concurrentHashMap = this.zzglq;
                    str = "rewarded";
                    concurrentHashMap.put("ad_format", str);
                    break;
                case 6:
                    this.zzglq.put("ad_format", "app_open_ad");
                    this.zzglq.put("as", this.zzebw.zzyf() ? "1" : "0");
                    break;
                default:
                    concurrentHashMap = this.zzglq;
                    str = "unknown";
                    concurrentHashMap.put("ad_format", str);
                    break;
            }
        }
        if (!TextUtils.isEmpty(zzdnlVar.zzhks.zzess.zzbvs)) {
            this.zzglq.put("gqi", zzdnlVar.zzhks.zzess.zzbvs);
        }
    }

    public final void zzi(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.zzglq.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.zzglq.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }

    public final Map<String, String> zzso() {
        return this.zzglq;
    }
}
