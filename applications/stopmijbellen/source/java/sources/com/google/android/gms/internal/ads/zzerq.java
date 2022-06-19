package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzerq.class */
public final class zzerq implements zzevm<Bundle> {
    public final double zza;
    public final boolean zzb;

    public zzerq(double d, boolean z) {
        this.zza = d;
        this.zzb = z;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle zza = zzfeq.zza(bundle2, "device");
        bundle2.putBundle("device", zza);
        Bundle zza2 = zzfeq.zza(zza, "battery");
        zza.putBundle("battery", zza2);
        zza2.putBoolean("is_charging", this.zzb);
        zza2.putDouble("battery_level", this.zza);
    }
}
