package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.OnPaidEventListener;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaap.class */
public final class zzaap extends zzyv {
    private final OnPaidEventListener zzcls;

    public zzaap(OnPaidEventListener onPaidEventListener) {
        this.zzcls = onPaidEventListener;
    }

    @Override // com.google.android.gms.internal.ads.zzyw
    public final void zza(zzvu zzvuVar) {
        if (this.zzcls != null) {
            this.zzcls.onPaidEvent(AdValue.zza(zzvuVar.zzadc, zzvuVar.zzadd, zzvuVar.zzade));
        }
    }
}
