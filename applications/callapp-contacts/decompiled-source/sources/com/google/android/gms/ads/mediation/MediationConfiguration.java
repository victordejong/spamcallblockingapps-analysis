package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import com.google.android.gms.ads.AdFormat;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/mediation/MediationConfiguration.class */
public class MediationConfiguration {
    private final Bundle zzewv;
    private final AdFormat zzewz;

    public MediationConfiguration(AdFormat adFormat, Bundle bundle) {
        this.zzewz = adFormat;
        this.zzewv = bundle;
    }

    public AdFormat getFormat() {
        return this.zzewz;
    }

    public Bundle getServerParameters() {
        return this.zzewv;
    }
}
