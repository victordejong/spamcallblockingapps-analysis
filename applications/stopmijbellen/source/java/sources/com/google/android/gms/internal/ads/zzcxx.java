package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxx.class */
public final class zzcxx {
    private final zzfio zza;
    private final zzdyz zzb;
    private final zzfdz zzc;

    public zzcxx(zzdyz zzdyzVar, zzfdz zzfdzVar, zzfio zzfioVar) {
        this.zza = zzfioVar;
        this.zzb = zzdyzVar;
        this.zzc = zzfdzVar;
    }

    private static String zzb(int i) {
        int i2 = i - 1;
        return i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "u" : "ac" : "cb" : "cc" : "bb" : "h";
    }

    public final void zza(long j, int i) {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgq)).booleanValue()) {
            zzfio zzfioVar = this.zza;
            zzfin zzb = zzfin.zzb("ad_closed");
            zzb.zzg(this.zzc.zzb.zzb);
            zzb.zza("show_time", String.valueOf(j));
            zzb.zza("ad_format", "app_open_ad");
            zzb.zza("acr", zzb(i));
            zzfioVar.zzb(zzb);
            return;
        }
        zzdyy zza = this.zzb.zza();
        zza.zzd(this.zzc.zzb.zzb);
        zza.zzb("action", "ad_closed");
        zza.zzb("show_time", String.valueOf(j));
        zza.zzb("ad_format", "app_open_ad");
        zza.zzb("acr", zzb(i));
        zza.zzf();
    }
}
