package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.applovin.sdk.AppLovinEventParameters;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeky.class */
public abstract class zzeky<AdT> implements zzeht<AdT> {
    private static Bundle zzd(Bundle bundle) {
        return bundle == null ? new Bundle() : new Bundle(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final zzfxa<AdT> zza(zzfdz zzfdzVar, zzfdn zzfdnVar) {
        String optString = zzfdnVar.zzw.optString("pubid", "");
        zzfef zzfefVar = zzfdzVar.zza.zza;
        zzfed zzfedVar = new zzfed();
        zzfedVar.zzp(zzfefVar);
        zzfedVar.zzs(optString);
        Bundle zzd = zzd(zzfefVar.zzd.zzm);
        Bundle zzd2 = zzd(zzd.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        zzd2.putInt("gw", 1);
        String optString2 = zzfdnVar.zzw.optString(AdMobAdapter.HOUSE_ADS_PARAMETER, null);
        if (optString2 != null) {
            zzd2.putString(AdMobAdapter.HOUSE_ADS_PARAMETER, optString2);
        }
        String optString3 = zzfdnVar.zzw.optString(AdMobAdapter.AD_JSON_PARAMETER, null);
        if (optString3 != null) {
            zzd2.putString(AdMobAdapter.AD_PARAMETER, optString3);
        }
        zzd2.putBoolean("_noRefresh", true);
        Iterator<String> keys = zzfdnVar.zzE.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString4 = zzfdnVar.zzE.optString(next, null);
            if (next != null) {
                zzd2.putString(next, optString4);
            }
        }
        zzd.putBundle("com.google.ads.mediation.admob.AdMobAdapter", zzd2);
        zzbfd zzbfdVar = zzfefVar.zzd;
        zzfedVar.zzD(new zzbfd(zzbfdVar.zza, zzbfdVar.zzb, zzd2, zzbfdVar.zzd, zzbfdVar.zze, zzbfdVar.zzf, zzbfdVar.zzg, zzbfdVar.zzh, zzbfdVar.zzi, zzbfdVar.zzj, zzbfdVar.zzk, zzbfdVar.zzl, zzd, zzbfdVar.zzn, zzbfdVar.zzo, zzbfdVar.zzp, zzbfdVar.zzq, zzbfdVar.zzr, zzbfdVar.zzs, zzbfdVar.zzt, zzbfdVar.zzu, zzbfdVar.zzv, zzbfdVar.zzw, zzbfdVar.zzx));
        zzfef zzF = zzfedVar.zzF();
        Bundle bundle = new Bundle();
        zzfdq zzfdqVar = zzfdzVar.zzb.zzb;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList<>(zzfdqVar.zza));
        bundle2.putInt("refresh_interval", zzfdqVar.zzc);
        bundle2.putString("gws_query_id", zzfdqVar.zzb);
        bundle.putBundle("parent_common_config", bundle2);
        String str = zzfdzVar.zza.zza.zzf;
        Bundle bundle3 = new Bundle();
        bundle3.putString("initial_ad_unit_id", str);
        bundle3.putString("allocation_id", zzfdnVar.zzx);
        bundle3.putStringArrayList("click_urls", new ArrayList<>(zzfdnVar.zzc));
        bundle3.putStringArrayList("imp_urls", new ArrayList<>(zzfdnVar.zzd));
        bundle3.putStringArrayList("manual_tracking_urls", new ArrayList<>(zzfdnVar.zzq));
        bundle3.putStringArrayList("fill_urls", new ArrayList<>(zzfdnVar.zzn));
        bundle3.putStringArrayList("video_start_urls", new ArrayList<>(zzfdnVar.zzh));
        bundle3.putStringArrayList("video_reward_urls", new ArrayList<>(zzfdnVar.zzi));
        bundle3.putStringArrayList("video_complete_urls", new ArrayList<>(zzfdnVar.zzj));
        bundle3.putString(AppLovinEventParameters.CHECKOUT_TRANSACTION_IDENTIFIER, zzfdnVar.zzk);
        bundle3.putString("valid_from_timestamp", zzfdnVar.zzl);
        bundle3.putBoolean("is_closable_area_disabled", zzfdnVar.zzM);
        if (zzfdnVar.zzm != null) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt("rb_amount", zzfdnVar.zzm.zzb);
            bundle4.putString("rb_type", zzfdnVar.zzm.zza);
            bundle3.putParcelableArray("rewards", new Bundle[]{bundle4});
        }
        bundle.putBundle("parent_ad_config", bundle3);
        return zzc(zzF, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final boolean zzb(zzfdz zzfdzVar, zzfdn zzfdnVar) {
        return !TextUtils.isEmpty(zzfdnVar.zzw.optString("pubid", ""));
    }

    public abstract zzfxa<AdT> zzc(zzfef zzfefVar, Bundle bundle);
}
