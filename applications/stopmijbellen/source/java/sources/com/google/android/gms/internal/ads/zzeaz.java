package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeaz.class */
public final class zzeaz implements zzfwm<String> {
    public final /* synthetic */ zzebb zza;

    public zzeaz(zzebb zzebbVar) {
        this.zza = zzebbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        long j;
        zzcjr zzcjrVar;
        synchronized (this) {
            this.zza.zzc = true;
            zzebb zzebbVar = this.zza;
            long elapsedRealtime = zzt.zzA().elapsedRealtime();
            j = this.zza.zzd;
            zzebbVar.zzu("com.google.android.gms.ads.MobileAds", false, "Internal Error.", (int) (elapsedRealtime - j));
            zzcjrVar = this.zza.zze;
            zzcjrVar.zze(new Exception());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(@Nullable String str) {
        long j;
        Executor executor;
        final String str2 = str;
        synchronized (this) {
            this.zza.zzc = true;
            zzebb zzebbVar = this.zza;
            long elapsedRealtime = zzt.zzA().elapsedRealtime();
            j = this.zza.zzd;
            zzebbVar.zzu("com.google.android.gms.ads.MobileAds", true, "", (int) (elapsedRealtime - j));
            executor = this.zza.zzi;
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeay
                @Override // java.lang.Runnable
                public final void run() {
                    zzeaz zzeazVar = zzeaz.this;
                    zzebb.zzi(zzeazVar.zza, str2);
                }
            });
        }
    }
}
