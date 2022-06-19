package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzevg.class */
public final class zzevg implements zzevn<zzevm<Bundle>> {
    private final boolean zza;

    public zzevg(zzfbi zzfbiVar) {
        this.zza = zzfbiVar != null;
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzevm<Bundle>> zzb() {
        return zzfwq.zzi(this.zza ? zzevf.zza : null);
    }
}
