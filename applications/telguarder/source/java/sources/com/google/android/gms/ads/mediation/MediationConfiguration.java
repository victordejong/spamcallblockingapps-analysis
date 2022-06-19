package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import com.google.android.gms.ads.AdFormat;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationConfiguration.class */
public class MediationConfiguration {
    private final Bundle zzeup;
    private final AdFormat zzeut;

    public MediationConfiguration(AdFormat adFormat, Bundle bundle) {
        this.zzeut = adFormat;
        this.zzeup = bundle;
    }

    public AdFormat getFormat() {
        return this.zzeut;
    }

    public Bundle getServerParameters() {
        return this.zzeup;
    }
}
