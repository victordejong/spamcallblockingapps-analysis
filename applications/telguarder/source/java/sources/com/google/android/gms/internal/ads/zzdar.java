package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.applinks.AppLinkData;
import com.google.android.gms.common.internal.Preconditions;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdar.class */
public final class zzdar implements zzdfj<Bundle> {
    private final zzdnp zzfwy;

    public zzdar(zzdnp zzdnpVar) {
        Preconditions.checkNotNull(zzdnpVar, "the targeting must not be null");
        this.zzfwy = zzdnpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzvl zzvlVar = this.zzfwy.zzhkw;
        bundle2.putInt("http_timeout_millis", this.zzfwy.zzhkw.zzcic);
        bundle2.putString("slotname", this.zzfwy.zzhkx);
        int i = zzdaq.zzgju[this.zzfwy.zzhle.zzhki - 1];
        if (i == 1) {
            bundle2.putBoolean("is_new_rewarded", true);
        } else if (i == 2) {
            bundle2.putBoolean("is_rewarded_interstitial", true);
        }
        zzdnz.zza(bundle2, "cust_age", new SimpleDateFormat("yyyyMMdd", Locale.US).format(new Date(zzvlVar.zzchn)), zzvlVar.zzchn != -1);
        zzdnz.zza(bundle2, AppLinkData.ARGUMENTS_EXTRAS_KEY, zzvlVar.extras);
        zzdnz.zza(bundle2, "cust_gender", Integer.valueOf(zzvlVar.zzcho), zzvlVar.zzcho != -1);
        zzdnz.zza(bundle2, "kw", zzvlVar.zzchp);
        zzdnz.zza(bundle2, "tag_for_child_directed_treatment", Integer.valueOf(zzvlVar.zzado), zzvlVar.zzado != -1);
        if (zzvlVar.zzchq) {
            bundle2.putBoolean("test_request", zzvlVar.zzchq);
        }
        zzdnz.zza(bundle2, "d_imp_hdr", (Integer) 1, zzvlVar.versionCode >= 2 && zzvlVar.zzbni);
        zzdnz.zza(bundle2, "ppid", zzvlVar.zzchr, zzvlVar.versionCode >= 2 && !TextUtils.isEmpty(zzvlVar.zzchr));
        if (zzvlVar.zznb != null) {
            Location location = zzvlVar.zznb;
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
        zzdnz.zza(bundle2, "url", zzvlVar.zzcht);
        zzdnz.zza(bundle2, "neighboring_content_urls", zzvlVar.zzcib);
        zzdnz.zza(bundle2, "custom_targeting", zzvlVar.zzchv);
        zzdnz.zza(bundle2, "category_exclusions", zzvlVar.zzchw);
        zzdnz.zza(bundle2, "request_agent", zzvlVar.zzchx);
        zzdnz.zza(bundle2, "request_pkg", zzvlVar.zzchy);
        zzdnz.zza(bundle2, "is_designed_for_families", Boolean.valueOf(zzvlVar.zzchz), zzvlVar.versionCode >= 7);
        if (zzvlVar.versionCode >= 8) {
            zzdnz.zza(bundle2, "tag_for_under_age_of_consent", Integer.valueOf(zzvlVar.zzadp), zzvlVar.zzadp != -1);
            zzdnz.zza(bundle2, "max_ad_content_rating", zzvlVar.zzadq);
        }
    }
}
