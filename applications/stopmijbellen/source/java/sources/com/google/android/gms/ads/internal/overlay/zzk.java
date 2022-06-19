package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.google.android.gms.ads.internal.util.zzae;
import com.google.android.gms.ads.internal.util.zzb;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzk.class */
public final class zzk extends zzb {
    public final /* synthetic */ zzl zza;

    public /* synthetic */ zzk(zzl zzlVar, zzj zzjVar) {
        this.zza = zzlVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        Bitmap zza = zzt.zzu().zza(Integer.valueOf(this.zza.zzc.zzo.zzf));
        if (zza != null) {
            zzae zzq = zzt.zzq();
            zzl zzlVar = this.zza;
            Activity activity = zzlVar.zzb;
            zzj zzjVar = zzlVar.zzc.zzo;
            final Drawable zzc = zzq.zzc(activity, zza, zzjVar.zzd, zzjVar.zze);
            com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzi
                @Override // java.lang.Runnable
                public final void run() {
                    zzk zzkVar = zzk.this;
                    zzkVar.zza.zzb.getWindow().setBackgroundDrawable(zzc);
                }
            });
        }
    }
}
