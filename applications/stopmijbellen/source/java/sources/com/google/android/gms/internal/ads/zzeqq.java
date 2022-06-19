package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeqq.class */
public final class zzeqq implements zzevm<Bundle> {
    private final Bundle zza;

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (!this.zza.isEmpty()) {
            bundle2.putBundle("installed_adapter_data", this.zza);
        }
    }
}
