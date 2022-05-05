package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbh.class */
public final class zzbh extends zzau {
    private final zzx zzsq = new zzx();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbh(zzaw zzawVar) {
        super(zzawVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzau
    protected final void zzag() {
        zzca().zzad().zzb(this.zzsq);
        zzdh zzce = zzce();
        String zzaj = zzce.zzaj();
        if (zzaj != null) {
            this.zzsq.setAppName(zzaj);
        }
        String zzak = zzce.zzak();
        if (zzak != null) {
            this.zzsq.setAppVersion(zzak);
        }
    }

    public final zzx zzdf() {
        zzcl();
        return this.zzsq;
    }
}
