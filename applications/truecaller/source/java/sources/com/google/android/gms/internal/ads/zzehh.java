package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.huawei.hms.adapter.internal.CommonCode;
import java.util.ArrayList;
import java.util.Iterator;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehh.class */
public abstract class zzehh<AdT> implements zzeec<AdT> {
    private static Bundle zzd(Bundle bundle) {
        return bundle == null ? new Bundle() : new Bundle(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final boolean zza(zzfal zzfalVar, zzezz zzezzVar) {
        return !TextUtils.isEmpty(zzezzVar.zzv.optString("pubid", ""));
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final zzfsm<AdT> zzb(zzfal zzfalVar, zzezz zzezzVar) {
        String optString = zzezzVar.zzv.optString("pubid", "");
        zzfar zzfarVar = zzfalVar.zza.zza;
        zzfap zzfapVar = new zzfap();
        zzfapVar.zzK(zzfarVar);
        zzfapVar.zzw(optString);
        Bundle zzd = zzd(zzfarVar.zzd.zzm);
        Bundle zzd2 = zzd(zzd.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        zzd2.putInt("gw", 1);
        String optString2 = zzezzVar.zzv.optString(AdMobAdapter.HOUSE_ADS_PARAMETER, null);
        if (optString2 != null) {
            zzd2.putString(AdMobAdapter.HOUSE_ADS_PARAMETER, optString2);
        }
        String optString3 = zzezzVar.zzv.optString(AdMobAdapter.AD_JSON_PARAMETER, null);
        if (optString3 != null) {
            zzd2.putString(AdMobAdapter.AD_PARAMETER, optString3);
        }
        zzd2.putBoolean("_noRefresh", true);
        Iterator<String> keys = zzezzVar.zzD.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString4 = zzezzVar.zzD.optString(next, null);
            if (next != null) {
                zzd2.putString(next, optString4);
            }
        }
        zzd.putBundle("com.google.ads.mediation.admob.AdMobAdapter", zzd2);
        zzbdg zzbdgVar = zzfarVar.zzd;
        zzfapVar.zzr(new zzbdg(zzbdgVar.zza, zzbdgVar.zzb, zzd2, zzbdgVar.zzd, zzbdgVar.zze, zzbdgVar.zzf, zzbdgVar.zzg, zzbdgVar.zzh, zzbdgVar.zzi, zzbdgVar.zzj, zzbdgVar.zzk, zzbdgVar.zzl, zzd, zzbdgVar.zzn, zzbdgVar.zzo, zzbdgVar.zzp, zzbdgVar.zzq, zzbdgVar.zzr, zzbdgVar.zzs, zzbdgVar.zzt, zzbdgVar.zzu, zzbdgVar.zzv, zzbdgVar.zzw, zzbdgVar.zzx));
        zzfar zzL = zzfapVar.zzL();
        Bundle bundle = new Bundle();
        zzfac zzfacVar = zzfalVar.zzb.zzb;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList<>(zzfacVar.zza));
        bundle2.putInt("refresh_interval", zzfacVar.zzc);
        bundle2.putString("gws_query_id", zzfacVar.zzb);
        bundle.putBundle("parent_common_config", bundle2);
        Bundle m8654X0 = C22128a.m8654X0("initial_ad_unit_id", zzfalVar.zza.zza.zzf);
        m8654X0.putString("allocation_id", zzezzVar.zzw);
        m8654X0.putStringArrayList("click_urls", new ArrayList<>(zzezzVar.zzc));
        m8654X0.putStringArrayList("imp_urls", new ArrayList<>(zzezzVar.zzd));
        m8654X0.putStringArrayList("manual_tracking_urls", new ArrayList<>(zzezzVar.zzp));
        m8654X0.putStringArrayList("fill_urls", new ArrayList<>(zzezzVar.zzn));
        m8654X0.putStringArrayList("video_start_urls", new ArrayList<>(zzezzVar.zzh));
        m8654X0.putStringArrayList("video_reward_urls", new ArrayList<>(zzezzVar.zzi));
        m8654X0.putStringArrayList("video_complete_urls", new ArrayList<>(zzezzVar.zzj));
        m8654X0.putString(CommonCode.MapKey.TRANSACTION_ID, zzezzVar.zzk);
        m8654X0.putString("valid_from_timestamp", zzezzVar.zzl);
        m8654X0.putBoolean("is_closable_area_disabled", zzezzVar.zzL);
        if (zzezzVar.zzm != null) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt("rb_amount", zzezzVar.zzm.zzb);
            bundle3.putString("rb_type", zzezzVar.zzm.zza);
            m8654X0.putParcelableArray("rewards", new Bundle[]{bundle3});
        }
        bundle.putBundle("parent_ad_config", m8654X0);
        return zzc(zzL, bundle);
    }

    public abstract zzfsm<AdT> zzc(zzfar zzfarVar, Bundle bundle);
}
