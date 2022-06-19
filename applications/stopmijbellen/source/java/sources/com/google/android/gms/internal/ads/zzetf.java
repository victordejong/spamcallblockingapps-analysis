package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzetf.class */
public final class zzetf implements zzevm<Bundle> {
    public final Bundle zza;

    public zzetf(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle zza = zzfeq.zza(bundle2, "device");
        zza.putBundle("android_mem_info", this.zza);
        bundle2.putBundle("device", zza);
    }
}
