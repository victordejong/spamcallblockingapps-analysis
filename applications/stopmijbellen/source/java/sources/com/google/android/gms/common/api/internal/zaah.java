package com.google.android.gms.common.api.internal;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaah.class */
public final class zaah implements Runnable {
    public final /* synthetic */ zaar zaa;

    public zaah(zaar zaarVar) {
        this.zaa = zaarVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GoogleApiAvailabilityLight googleApiAvailabilityLight;
        Context context;
        googleApiAvailabilityLight = this.zaa.zad;
        context = this.zaa.zac;
        googleApiAvailabilityLight.cancelAvailabilityErrorNotifications(context);
    }
}
