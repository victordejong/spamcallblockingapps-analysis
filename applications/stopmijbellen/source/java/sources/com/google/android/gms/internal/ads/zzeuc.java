package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeuc.class */
public final class zzeuc implements zzevm<Bundle> {
    private final Bundle zza;

    public zzeuc(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle bundle3 = this.zza;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
    }
}
