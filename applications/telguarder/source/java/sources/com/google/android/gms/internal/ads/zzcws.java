package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcws.class */
public final class zzcws implements zzg {
    private final zzbye zzfuq;
    private final zzbsd zzgci;
    private final zzbrl zzgcj;
    private final zzbjz zzgck;
    private final zzbxz zzgcm;
    private AtomicBoolean zzgwt = new AtomicBoolean(false);

    public zzcws(zzbrl zzbrlVar, zzbsd zzbsdVar, zzbye zzbyeVar, zzbxz zzbxzVar, zzbjz zzbjzVar) {
        this.zzgcj = zzbrlVar;
        this.zzgci = zzbsdVar;
        this.zzfuq = zzbyeVar;
        this.zzgcm = zzbxzVar;
        this.zzgck = zzbjzVar;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzh(View view) {
        synchronized (this) {
            if (!this.zzgwt.compareAndSet(false, true)) {
                return;
            }
            this.zzgck.onAdImpression();
            this.zzgcm.zzv(view);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkc() {
        if (this.zzgwt.get()) {
            this.zzgcj.onAdClicked();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkd() {
        if (this.zzgwt.get()) {
            this.zzgci.onAdImpression();
            this.zzfuq.zzamr();
        }
    }
}
