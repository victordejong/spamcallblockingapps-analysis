package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzetb.class */
public final class zzetb implements zzevm<Bundle> {
    private final String zza;
    private final boolean zzb;
    private final boolean zzc;

    public zzetb(String str, boolean z, boolean z2) {
        this.zza = str;
        this.zzb = z;
        this.zzc = z2;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (!this.zza.isEmpty()) {
            bundle2.putString("inspector_extras", this.zza);
        }
        bundle2.putInt("test_mode", this.zzb ? 1 : 0);
        bundle2.putInt("linked_device", this.zzc ? 1 : 0);
    }
}
