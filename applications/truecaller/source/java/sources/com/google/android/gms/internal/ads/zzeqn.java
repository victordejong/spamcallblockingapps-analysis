package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeqn.class */
public final class zzeqn implements zzerx<Bundle> {
    private final Bundle zza;

    public zzeqn(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzerx
    public final /* bridge */ /* synthetic */ void zzf(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle bundle3 = this.zza;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
    }
}
