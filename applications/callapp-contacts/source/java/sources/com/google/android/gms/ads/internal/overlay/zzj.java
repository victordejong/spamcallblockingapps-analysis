package com.google.android.gms.ads.internal.overlay;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.google.android.gms.ads.internal.util.zza;
import com.google.android.gms.ads.internal.zzr;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzj.class */
public final class zzj extends zza {
    final /* synthetic */ zze zzdtu;

    /* JADX INFO: Access modifiers changed from: private */
    public zzj(zze zzeVar) {
        this.zzdtu = zzeVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwp() {
        Bitmap zza = zzr.zzlo().zza(Integer.valueOf(this.zzdtu.zzdtb.zzdum.zzbpt));
        if (zza != null) {
            com.google.android.gms.ads.internal.util.zzj.zzegq.post(new Runnable(this, zzr.zzkx().zza(this.zzdtu.zzaax, zza, this.zzdtu.zzdtb.zzdum.zzbpr, this.zzdtu.zzdtb.zzdum.zzbps)) { // from class: com.google.android.gms.ads.internal.overlay.zzm
                private final zzj zzduc;
                private final Drawable zzdud;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzduc = this;
                    this.zzdud = zza2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzj zzjVar = this.zzduc;
                    zzjVar.zzdtu.zzaax.getWindow().setBackgroundDrawable(this.zzdud);
                }
            });
        }
    }
}
