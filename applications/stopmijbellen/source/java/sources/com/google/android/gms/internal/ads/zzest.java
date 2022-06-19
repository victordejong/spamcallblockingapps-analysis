package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzest.class */
public final class zzest implements zzevm<Bundle> {
    private final boolean zza;

    public zzest(boolean z) {
        this.zza = z;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Bundle bundle) {
        bundle.putBoolean("is_gbid", this.zza);
    }
}
