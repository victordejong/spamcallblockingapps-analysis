package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeob.class */
public final class zzeob implements zzerx<Bundle> {
    public final double zza;
    public final boolean zzb;

    public zzeob(double d, boolean z) {
        this.zza = d;
        this.zzb = z;
    }

    @Override // com.google.android.gms.internal.ads.zzerx
    public final /* bridge */ /* synthetic */ void zzf(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle zza = zzfbd.zza(bundle2, AnalyticsConstants.DEVICE);
        bundle2.putBundle(AnalyticsConstants.DEVICE, zza);
        Bundle zza2 = zzfbd.zza(zza, "battery");
        zza.putBundle("battery", zza2);
        zza2.putBoolean("is_charging", this.zzb);
        zza2.putDouble("battery_level", this.zza);
    }
}
