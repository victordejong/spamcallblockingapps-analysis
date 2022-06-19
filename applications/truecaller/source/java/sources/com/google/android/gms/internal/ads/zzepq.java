package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepq.class */
public final class zzepq implements zzerx<Bundle> {
    public final Bundle zza;

    public zzepq(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzerx
    public final /* bridge */ /* synthetic */ void zzf(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle zza = zzfbd.zza(bundle2, AnalyticsConstants.DEVICE);
        zza.putBundle("android_mem_info", this.zza);
        bundle2.putBundle(AnalyticsConstants.DEVICE, zza);
    }
}
