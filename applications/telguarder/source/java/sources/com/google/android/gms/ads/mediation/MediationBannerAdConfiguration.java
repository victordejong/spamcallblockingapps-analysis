package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.AdSize;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationBannerAdConfiguration.class */
public class MediationBannerAdConfiguration extends MediationAdConfiguration {
    private final AdSize zzdu;

    public MediationBannerAdConfiguration(Context context, String str, Bundle bundle, Bundle bundle2, boolean z, Location location, int i, int i2, String str2, AdSize adSize, String str3) {
        super(context, str, bundle, bundle2, z, location, i, i2, str2, str3);
        this.zzdu = adSize;
    }

    public AdSize getAdSize() {
        return this.zzdu;
    }
}
