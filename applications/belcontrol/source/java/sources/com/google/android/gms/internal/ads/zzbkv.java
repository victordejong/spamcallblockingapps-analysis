package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbkv.class */
public final class zzbkv {
    private final zzckn zzdib;
    private final zzdrz zzdic;
    private final zzdnl zzeyz;

    public zzbkv(zzckn zzcknVar, zzdnl zzdnlVar, zzdrz zzdrzVar) {
        this.zzdic = zzdrzVar;
        this.zzdib = zzcknVar;
        this.zzeyz = zzdnlVar;
    }

    private static String zzdw(int i) {
        int i2 = zzbky.zzftz[i - 1];
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? "u" : "cb" : "ac" : "cc" : "h" : "bb";
    }

    public final void zzb(long j, int i) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue()) {
            this.zzdic.zzb(zzdsa.zzgx("ad_closed").zzb(this.zzeyz.zzhks.zzess).zzu("show_time", String.valueOf(j)).zzu("ad_format", "app_open_ad").zzu("acr", zzdw(i)));
        } else {
            this.zzdib.zzaqr().zza(this.zzeyz.zzhks.zzess).zzr("action", "ad_closed").zzr("show_time", String.valueOf(j)).zzr("ad_format", "app_open_ad").zzr("acr", zzdw(i)).zzaqt();
        }
    }
}
