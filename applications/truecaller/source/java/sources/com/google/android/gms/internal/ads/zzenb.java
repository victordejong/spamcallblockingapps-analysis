package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzenb.class */
public final class zzenb implements zzerx<Bundle> {
    private final Bundle zza;

    @Override // com.google.android.gms.internal.ads.zzerx
    public final /* bridge */ /* synthetic */ void zzf(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (!this.zza.isEmpty()) {
            bundle2.putBundle("installed_adapter_data", this.zza);
        }
    }
}
