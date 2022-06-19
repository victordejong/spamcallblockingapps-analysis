package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdcv.class */
public final class zzdcv implements zzdfj<Bundle> {
    private final Bundle zzhby;

    public zzdcv(Bundle bundle) {
        this.zzhby = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        bundle.putBundle("content_info", this.zzhby);
    }
}
