package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzesh.class */
public final class zzesh implements zzerx<Bundle> {
    public final String zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final boolean zze;
    public final int zzf;

    public zzesh(String str, int i, int i2, int i3, boolean z, int i4) {
        this.zza = str;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = z;
        this.zzf = i4;
    }

    @Override // com.google.android.gms.internal.ads.zzerx
    public final /* bridge */ /* synthetic */ void zzf(Bundle bundle) {
        String str;
        Bundle bundle2 = bundle;
        boolean z = true;
        zzfbd.zzb(bundle2, AnalyticsConstants.CARRIER, this.zza, !TextUtils.isEmpty(str));
        int i = this.zzb;
        if (this.zzb == -2) {
            z = false;
        }
        zzfbd.zzc(bundle2, "cnt", Integer.valueOf(i), z);
        bundle2.putInt("gnt", this.zzc);
        bundle2.putInt("pt", this.zzd);
        Bundle zza = zzfbd.zza(bundle2, AnalyticsConstants.DEVICE);
        bundle2.putBundle(AnalyticsConstants.DEVICE, zza);
        Bundle zza2 = zzfbd.zza(zza, AnalyticsConstants.NETWORK);
        zza.putBundle(AnalyticsConstants.NETWORK, zza2);
        zza2.putInt("active_network_state", this.zzf);
        zza2.putBoolean("active_network_metered", this.zze);
    }
}
