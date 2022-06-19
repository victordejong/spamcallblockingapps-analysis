package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxi.class */
public final class zzdxi implements zzfrz<String> {
    public final /* synthetic */ zzdxk zza;

    public zzdxi(zzdxk zzdxkVar) {
        this.zza = zzdxkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        long j;
        zzchl zzchlVar;
        synchronized (this) {
            this.zza.zzc = true;
            zzdxk zzdxkVar = this.zza;
            long mo38789a = zzt.zzj().mo38789a();
            j = this.zza.zzd;
            zzdxkVar.zzu("com.google.android.gms.ads.MobileAds", false, "Internal Error.", (int) (mo38789a - j));
            zzchlVar = this.zza.zze;
            zzchlVar.zzd(new Exception());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(String str) {
        long j;
        Executor executor;
        String str2 = str;
        synchronized (this) {
            this.zza.zzc = true;
            zzdxk zzdxkVar = this.zza;
            long mo38789a = zzt.zzj().mo38789a();
            j = this.zza.zzd;
            zzdxkVar.zzu("com.google.android.gms.ads.MobileAds", true, "", (int) (mo38789a - j));
            executor = this.zza.zzi;
            executor.execute(new Runnable(this, str2) { // from class: com.google.android.gms.internal.ads.zzdxh
                private final zzdxi zza;
                private final String zzb;

                {
                    this.zza = this;
                    this.zzb = str2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzdxi zzdxiVar = this.zza;
                    zzdxk.zzk(zzdxiVar.zza, this.zzb);
                }
            });
        }
    }
}
