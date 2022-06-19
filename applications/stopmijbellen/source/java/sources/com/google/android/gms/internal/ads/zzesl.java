package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzesl.class */
public final class zzesl implements zzevm<Bundle> {
    public final Bundle zza;

    public zzesl(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Bundle bundle) {
        bundle.putBundle("content_info", this.zza);
    }
}
