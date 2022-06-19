package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* renamed from: com.google.android.gms.internal.consent_sdk.ab */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/ab.class */
final class C13171ab {

    /* renamed from: a */
    private final Application f50282a;

    public C13171ab(Application application) {
        this.f50282a = application;
    }

    /* renamed from: a */
    public final C13169a m13582a() {
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.f50282a);
            return new C13169a(advertisingIdInfo.getId(), advertisingIdInfo.isLimitAdTrackingEnabled());
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException e) {
            return null;
        }
    }
}
