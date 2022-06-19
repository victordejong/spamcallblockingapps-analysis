package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AdFormat;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/MediationConfiguration.class */
public class MediationConfiguration {
    private final AdFormat zza;
    private final Bundle zzb;

    public MediationConfiguration(@RecentlyNonNull AdFormat adFormat, @RecentlyNonNull Bundle bundle) {
        this.zza = adFormat;
        this.zzb = bundle;
    }

    @RecentlyNonNull
    public AdFormat getFormat() {
        return this.zza;
    }

    @RecentlyNonNull
    public Bundle getServerParameters() {
        return this.zzb;
    }
}
