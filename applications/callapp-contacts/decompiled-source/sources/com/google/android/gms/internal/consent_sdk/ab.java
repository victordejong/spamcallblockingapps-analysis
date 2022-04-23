package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/ab.class */
final class ab {

    /* renamed from: a  reason: collision with root package name */
    private final Application f28684a;

    public ab(Application application) {
        this.f28684a = application;
    }

    public final a a() {
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.f28684a);
            return new a(advertisingIdInfo.getId(), advertisingIdInfo.isLimitAdTrackingEnabled());
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException e) {
            return null;
        }
    }
}
