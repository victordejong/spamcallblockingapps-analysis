package com.google.android.gms.ads.mediation.admob;

import android.os.Bundle;
import com.google.ads.mediation.e;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/mediation/admob/AdMobExtras.class */
public final class AdMobExtras implements e {
    private final Bundle extras;

    public AdMobExtras(Bundle bundle) {
        this.extras = bundle != null ? new Bundle(bundle) : null;
    }

    public final Bundle getExtras() {
        return this.extras;
    }
}
