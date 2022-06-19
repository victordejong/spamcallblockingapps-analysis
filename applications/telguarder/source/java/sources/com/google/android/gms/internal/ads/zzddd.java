package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzddd.class */
public final class zzddd implements zzdfj<Bundle> {
    private final Boolean zzhcc;

    public zzddd(Boolean bool) {
        this.zzhcc = bool;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        Boolean bool = this.zzhcc;
        if (bool != null) {
            bundle2.putBoolean("hw_accel", bool.booleanValue());
        }
    }
}
