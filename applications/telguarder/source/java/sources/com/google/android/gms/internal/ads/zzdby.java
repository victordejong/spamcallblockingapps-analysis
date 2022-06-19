package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.pubmatic.sdk.openwrap.core.POBConstants;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdby.class */
public final class zzdby implements zzdfj<Bundle> {
    private final double zzdyh;
    private final boolean zzdyi;

    public zzdby(double d, boolean z) {
        this.zzdyh = d;
        this.zzdyi = z;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle zza = zzdnz.zza(bundle2, POBConstants.KEY_DEVICE);
        bundle2.putBundle(POBConstants.KEY_DEVICE, zza);
        Bundle zza2 = zzdnz.zza(zza, "battery");
        zza.putBundle("battery", zza2);
        zza2.putBoolean("is_charging", this.zzdyi);
        zza2.putDouble("battery_level", this.zzdyh);
    }
}
