package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.google.android.gms.ads.internal.util.zzad;
import com.google.android.gms.ads.internal.util.zzb;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzk.class */
public final class zzk extends zzb {
    public final /* synthetic */ zzl zza;

    public /* synthetic */ zzk(zzl zzlVar, zzi zziVar) {
        this.zza = zzlVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        Bitmap zza = zzt.zzv().zza(Integer.valueOf(this.zza.zzc.zzo.zzf));
        if (zza != null) {
            zzad zze = zzt.zze();
            zzl zzlVar = this.zza;
            Activity activity = zzlVar.zzb;
            zzj zzjVar = zzlVar.zzc.zzo;
            zzs.zza.post(new Runnable(this, zze.zzd(activity, zza, zzjVar.zzd, zzjVar.zze)) { // from class: com.google.android.gms.ads.internal.overlay.zzj
                private final zzk zza;
                private final Drawable zzb;

                {
                    this.zza = this;
                    this.zzb = zzd;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzk zzkVar = this.zza;
                    zzkVar.zza.zzb.getWindow().setBackgroundDrawable(this.zzb);
                }
            });
        }
    }
}
