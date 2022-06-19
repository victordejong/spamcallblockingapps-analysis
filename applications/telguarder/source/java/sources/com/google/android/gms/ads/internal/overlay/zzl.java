package com.google.android.gms.ads.internal.overlay;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.google.android.gms.ads.internal.util.zza;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzl.class */
public final class zzl extends zza {
    final /* synthetic */ zzc zzdsn;

    /* JADX INFO: Access modifiers changed from: private */
    public zzl(zzc zzcVar) {
        this.zzdsn = zzcVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwe() {
        Bitmap zza = zzr.zzlk().zza(Integer.valueOf(this.zzdsn.zzdrl.zzdtc.zzbpj));
        if (zza != null) {
            zzj.zzeen.post(new Runnable(this, zzr.zzkt().zza(this.zzdsn.zzaas, zza, this.zzdsn.zzdrl.zzdtc.zzbph, this.zzdsn.zzdrl.zzdtc.zzbpi)) { // from class: com.google.android.gms.ads.internal.overlay.zzk
                private final zzl zzdsl;
                private final Drawable zzdsm;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzdsl = this;
                    this.zzdsm = zza2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzl zzlVar = this.zzdsl;
                    zzlVar.zzdsn.zzaas.getWindow().setBackgroundDrawable(this.zzdsm);
                }
            });
        }
    }
}
