package com.google.android.gms.common.api.internal;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaal.class */
public final class zaal implements Runnable {
    private final /* synthetic */ zaak zagj;

    public zaal(zaak zaakVar) {
        this.zagj = zaakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GoogleApiAvailabilityLight googleApiAvailabilityLight;
        Context context;
        googleApiAvailabilityLight = this.zagj.zaey;
        context = this.zagj.mContext;
        googleApiAvailabilityLight.cancelAvailabilityErrorNotifications(context);
    }
}
