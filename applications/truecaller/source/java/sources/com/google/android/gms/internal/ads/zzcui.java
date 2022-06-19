package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcui.class */
public final class zzcui {
    private final zzffc zza;
    private final zzdvi zzb;
    private final zzfal zzc;

    public zzcui(zzdvi zzdviVar, zzfal zzfalVar, zzffc zzffcVar) {
        this.zza = zzffcVar;
        this.zzb = zzdviVar;
        this.zzc = zzfalVar;
    }

    private static String zzb(int i) {
        int i2 = i - 1;
        return i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "u" : "ac" : "cb" : "cc" : "bb" : "h";
    }

    public final void zza(long j, int i) {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgi)).booleanValue()) {
            zzffc zzffcVar = this.zza;
            zzffb zza = zzffb.zza("ad_closed");
            zza.zzh(this.zzc.zzb.zzb);
            zza.zzc("show_time", String.valueOf(j));
            zza.zzc("ad_format", "app_open_ad");
            zza.zzc("acr", zzb(i));
            zzffcVar.zza(zza);
            return;
        }
        zzdvh zzd = this.zzb.zzd();
        zzd.zzb(this.zzc.zzb.zzb);
        zzd.zzd("action", "ad_closed");
        zzd.zzd("show_time", String.valueOf(j));
        zzd.zzd("ad_format", "app_open_ad");
        zzd.zzd("acr", zzb(i));
        zzd.zze();
    }
}
