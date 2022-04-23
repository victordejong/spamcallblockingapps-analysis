package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.internal.ads.zzaei;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/mediation/MediationNativeAdConfiguration.class */
public class MediationNativeAdConfiguration extends MediationAdConfiguration {
    private final zzaei zzdpr;

    public MediationNativeAdConfiguration(Context context, String str, Bundle bundle, Bundle bundle2, boolean z, Location location, int i, int i2, String str2, String str3, zzaei zzaeiVar) {
        super(context, str, bundle, bundle2, z, location, i, i2, str2, str3);
        this.zzdpr = zzaeiVar;
    }

    public NativeAdOptions getNativeAdOptions() {
        return zzaei.zzb(this.zzdpr);
    }
}
