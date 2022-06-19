package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejt.class */
public final class zzejt implements zzf {
    private zzf zza;

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zza(View view) {
        synchronized (this) {
            zzf zzfVar = this.zza;
            if (zzfVar != null) {
                zzfVar.zza(view);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzb() {
        synchronized (this) {
            zzf zzfVar = this.zza;
            if (zzfVar != null) {
                zzfVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzc() {
        synchronized (this) {
            zzf zzfVar = this.zza;
            if (zzfVar != null) {
                zzfVar.zzc();
            }
        }
    }

    public final void zzd(zzf zzfVar) {
        synchronized (this) {
            this.zza = zzfVar;
        }
    }
}
