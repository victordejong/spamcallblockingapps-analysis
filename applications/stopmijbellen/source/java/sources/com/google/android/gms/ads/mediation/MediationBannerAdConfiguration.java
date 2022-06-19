package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.ads.AdSize;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationBannerAdConfiguration.class */
public class MediationBannerAdConfiguration extends MediationAdConfiguration {
    private final AdSize zza;

    public MediationBannerAdConfiguration(@RecentlyNonNull Context context, @RecentlyNonNull String str, @RecentlyNonNull Bundle bundle, @RecentlyNonNull Bundle bundle2, boolean z, Location location, int i, int i2, @RecentlyNonNull String str2, AdSize adSize, @RecentlyNonNull String str3) {
        super(context, str, bundle, bundle2, z, location, i, i2, str2, str3);
        this.zza = adSize;
    }

    @RecentlyNullable
    public AdSize getAdSize() {
        return this.zza;
    }
}
