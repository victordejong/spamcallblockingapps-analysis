package com.appnext.core;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/appnext/core/AdsIDHelper.class */
public class AdsIDHelper {
    /* renamed from: a */
    public static String m42504a(Context context, boolean z) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return "";
        }
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context.getApplicationContext());
            if (advertisingIdInfo == null) {
                return "";
            }
            if (z && advertisingIdInfo.isLimitAdTrackingEnabled()) {
                return "";
            }
            return advertisingIdInfo.getId();
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException e) {
            return "";
        }
    }

    public static boolean isOptOut(Context context) {
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            if (advertisingIdInfo == null) {
                return false;
            }
            return advertisingIdInfo.isLimitAdTrackingEnabled();
        } catch (Throwable th) {
            return false;
        }
    }
}
