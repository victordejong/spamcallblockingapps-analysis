package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzevw.class */
public final class zzevw implements zzevm<Bundle> {
    public final String zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final boolean zze;
    public final int zzf;

    public zzevw(String str, int i, int i2, int i3, boolean z, int i4) {
        this.zza = str;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = z;
        this.zzf = i4;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Bundle bundle) {
        String str;
        Bundle bundle2 = bundle;
        boolean z = true;
        zzfeq.zzg(bundle2, "carrier", this.zza, !TextUtils.isEmpty(str));
        int i = this.zzb;
        if (this.zzb == -2) {
            z = false;
        }
        zzfeq.zzf(bundle2, "cnt", Integer.valueOf(i), z);
        bundle2.putInt("gnt", this.zzc);
        bundle2.putInt("pt", this.zzd);
        Bundle zza = zzfeq.zza(bundle2, "device");
        bundle2.putBundle("device", zza);
        Bundle zza2 = zzfeq.zza(zza, "network");
        zza.putBundle("network", zza2);
        zza2.putInt("active_network_state", this.zzf);
        zza2.putBoolean("active_network_metered", this.zze);
    }
}
