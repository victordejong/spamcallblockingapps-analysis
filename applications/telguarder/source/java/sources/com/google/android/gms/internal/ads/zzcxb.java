package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcxb.class */
public final class zzcxb implements zzg {
    private zzg zzgxe;

    public final void zza(zzg zzgVar) {
        synchronized (this) {
            this.zzgxe = zzgVar;
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzh(View view) {
        synchronized (this) {
            zzg zzgVar = this.zzgxe;
            if (zzgVar != null) {
                zzgVar.zzh(view);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkc() {
        synchronized (this) {
            zzg zzgVar = this.zzgxe;
            if (zzgVar != null) {
                zzgVar.zzkc();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkd() {
        synchronized (this) {
            zzg zzgVar = this.zzgxe;
            if (zzgVar != null) {
                zzgVar.zzkd();
            }
        }
    }
}
