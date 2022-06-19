package com.google.android.gms.internal.ads;

import androidx.collection.ArrayMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcea.class */
public final class zzcea implements zzbse {
    private final zzccd zzgch;
    private final zzcch zzgdj;

    public zzcea(zzccd zzccdVar, zzcch zzcchVar) {
        this.zzgch = zzccdVar;
        this.zzgdj = zzcchVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final void onAdImpression() {
        if (this.zzgch.zzaob() == null) {
            return;
        }
        zzbeb zzaoa = this.zzgch.zzaoa();
        zzbeb zzanz = this.zzgch.zzanz();
        if (zzaoa != null) {
            zzanz = zzaoa;
        } else if (zzanz == null) {
            zzanz = null;
        }
        if (!this.zzgdj.zzanq() || zzanz == null) {
            return;
        }
        zzanz.zza("onSdkImpression", new ArrayMap());
    }
}
