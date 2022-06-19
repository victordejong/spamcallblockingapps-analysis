package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzf;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzenk.class */
public final class zzenk implements zzf {
    @GuardedBy("this")
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
