package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.common.internal.Preconditions;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeqa.class */
public final class zzeqa implements zzevm<Bundle> {
    public final zzfef zza;
    private final long zzb;

    public zzeqa(zzfef zzfefVar, long j) {
        Preconditions.checkNotNull(zzfefVar, "the targeting must not be null");
        this.zza = zzfefVar;
        this.zzb = j;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzbfd zzbfdVar = this.zza.zzd;
        bundle2.putInt("http_timeout_millis", zzbfdVar.zzw);
        bundle2.putString("slotname", this.zza.zzf);
        int i = this.zza.zzo.zza;
        int i2 = i - 1;
        if (i != 0) {
            if (i2 == 1) {
                bundle2.putBoolean("is_new_rewarded", true);
            } else if (i2 == 2) {
                bundle2.putBoolean("is_rewarded_interstitial", true);
            }
            bundle2.putLong("start_signals_timestamp", this.zzb);
            zzfeq.zzg(bundle2, "cust_age", new SimpleDateFormat("yyyyMMdd", Locale.US).format(new Date(zzbfdVar.zzb)), zzbfdVar.zzb != -1);
            zzfeq.zzb(bundle2, "extras", zzbfdVar.zzc);
            zzfeq.zzf(bundle2, "cust_gender", Integer.valueOf(zzbfdVar.zzd), zzbfdVar.zzd != -1);
            zzfeq.zzd(bundle2, "kw", zzbfdVar.zze);
            zzfeq.zzf(bundle2, "tag_for_child_directed_treatment", Integer.valueOf(zzbfdVar.zzg), zzbfdVar.zzg != -1);
            if (zzbfdVar.zzf) {
                bundle2.putBoolean("test_request", true);
            }
            zzfeq.zzf(bundle2, "d_imp_hdr", 1, zzbfdVar.zza >= 2 && zzbfdVar.zzh);
            String str = zzbfdVar.zzi;
            zzfeq.zzg(bundle2, "ppid", str, zzbfdVar.zza >= 2 && !TextUtils.isEmpty(str));
            Location location = zzbfdVar.zzk;
            if (location != null) {
                float accuracy = location.getAccuracy();
                long time = location.getTime();
                long latitude = (long) (location.getLatitude() * 1.0E7d);
                long longitude = (long) (location.getLongitude() * 1.0E7d);
                Bundle bundle3 = new Bundle();
                bundle3.putFloat("radius", Float.valueOf(accuracy * 1000.0f).floatValue());
                bundle3.putLong("lat", Long.valueOf(latitude).longValue());
                bundle3.putLong("long", Long.valueOf(longitude).longValue());
                bundle3.putLong("time", Long.valueOf(time * 1000).longValue());
                bundle2.putBundle("uule", bundle3);
            }
            zzfeq.zzc(bundle2, ImagesContract.URL, zzbfdVar.zzl);
            zzfeq.zzd(bundle2, "neighboring_content_urls", zzbfdVar.zzv);
            zzfeq.zzb(bundle2, "custom_targeting", zzbfdVar.zzn);
            zzfeq.zzd(bundle2, "category_exclusions", zzbfdVar.zzo);
            zzfeq.zzc(bundle2, "request_agent", zzbfdVar.zzp);
            zzfeq.zzc(bundle2, "request_pkg", zzbfdVar.zzq);
            zzfeq.zze(bundle2, "is_designed_for_families", Boolean.valueOf(zzbfdVar.zzr), zzbfdVar.zza >= 7);
            if (zzbfdVar.zza < 8) {
                return;
            }
            zzfeq.zzf(bundle2, "tag_for_under_age_of_consent", Integer.valueOf(zzbfdVar.zzt), zzbfdVar.zzt != -1);
            zzfeq.zzc(bundle2, "max_ad_content_rating", zzbfdVar.zzu);
            return;
        }
        throw null;
    }
}
