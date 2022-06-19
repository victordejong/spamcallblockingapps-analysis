package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.internal.ads.zzblv;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/MediationNativeAdConfiguration.class */
public class MediationNativeAdConfiguration extends MediationAdConfiguration {
    private final zzblv zza;

    public MediationNativeAdConfiguration(Context context, String str, Bundle bundle, Bundle bundle2, boolean z, Location location, int i, int i2, String str2, String str3, zzblv zzblvVar) {
        super(context, str, bundle, bundle2, z, location, i, i2, str2, str3);
        this.zza = zzblvVar;
    }

    @RecentlyNonNull
    public NativeAdOptions getNativeAdOptions() {
        return zzblv.zza(this.zza);
    }
}
