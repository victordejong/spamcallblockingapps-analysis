package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.google.android.gms.ads.internal.zzr;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdsa.class */
public final class zzdsa {
    private final HashMap<String, String> zzhrj = new HashMap<>();
    private final zzdsd zzhrk = new zzdsd(zzr.zzky());

    private zzdsa() {
    }

    public static zzdsa zzgx(String str) {
        zzdsa zzdsaVar = new zzdsa();
        zzdsaVar.zzhrj.put("action", str);
        return zzdsaVar;
    }

    public static zzdsa zzgy(String str) {
        zzdsa zzdsaVar = new zzdsa();
        zzdsaVar.zzu(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, str);
        return zzdsaVar;
    }

    public final zzdsa zza(zzdnl zzdnlVar, zzayy zzayyVar) {
        if (zzdnlVar.zzhks == null) {
            return this;
        }
        zzdnj zzdnjVar = zzdnlVar.zzhks;
        if (zzdnjVar.zzess != null) {
            zzb(zzdnjVar.zzess);
        }
        if (!zzdnjVar.zzhkp.isEmpty()) {
            switch (zzdnjVar.zzhkp.get(0).zzhiy) {
                case 1:
                    this.zzhrj.put(FirebaseAnalytics.Param.AD_FORMAT, POBConstants.KEY_BANNER);
                    break;
                case 2:
                    this.zzhrj.put(FirebaseAnalytics.Param.AD_FORMAT, POBCommonConstants.INTERSTITIAL_PLACEMENT_TYPE);
                    break;
                case 3:
                    this.zzhrj.put(FirebaseAnalytics.Param.AD_FORMAT, "native_express");
                    break;
                case 4:
                    this.zzhrj.put(FirebaseAnalytics.Param.AD_FORMAT, "native_advanced");
                    break;
                case 5:
                    this.zzhrj.put(FirebaseAnalytics.Param.AD_FORMAT, "rewarded");
                    break;
                case 6:
                    this.zzhrj.put(FirebaseAnalytics.Param.AD_FORMAT, "app_open_ad");
                    if (zzayyVar != null) {
                        this.zzhrj.put("as", zzayyVar.zzyf() ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
                        break;
                    }
                    break;
                default:
                    this.zzhrj.put(FirebaseAnalytics.Param.AD_FORMAT, "unknown");
                    break;
            }
        }
        return this;
    }

    public final zzdsa zzb(zzdnb zzdnbVar) {
        if (!TextUtils.isEmpty(zzdnbVar.zzbvs)) {
            this.zzhrj.put("gqi", zzdnbVar.zzbvs);
        }
        return this;
    }

    public final zzdsa zzf(zzdmw zzdmwVar) {
        this.zzhrj.put("aai", zzdmwVar.zzdlu);
        return this;
    }

    public final zzdsa zzgz(String str) {
        this.zzhrk.zzha(str);
        return this;
    }

    public final Map<String, String> zzls() {
        HashMap hashMap = new HashMap(this.zzhrj);
        for (zzdsg zzdsgVar : this.zzhrk.zzaxl()) {
            hashMap.put(zzdsgVar.label, zzdsgVar.value);
        }
        return hashMap;
    }

    public final zzdsa zzq(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.zzhrj.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.zzhrj.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
        return this;
    }

    public final zzdsa zzu(String str, String str2) {
        this.zzhrj.put(str, str2);
        return this;
    }

    public final zzdsa zzv(String str, String str2) {
        this.zzhrk.zzw(str, str2);
        return this;
    }
}
