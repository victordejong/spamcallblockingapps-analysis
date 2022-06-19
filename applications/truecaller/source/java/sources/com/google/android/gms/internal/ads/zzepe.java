package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepe.class */
public final class zzepe implements zzerx<Bundle> {
    private final boolean zza;

    public zzepe(boolean z) {
        this.zza = z;
    }

    @Override // com.google.android.gms.internal.ads.zzerx
    public final /* bridge */ /* synthetic */ void zzf(Bundle bundle) {
        bundle.putBoolean("is_gbid", this.zza);
    }
}
