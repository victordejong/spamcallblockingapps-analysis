package io.bidmachine;

import android.content.Context;
import io.bidmachine.core.AdvertisingIdClientInfo;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import java.util.concurrent.CountDownLatch;
/* renamed from: io.bidmachine.c */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/c.class */
public final class C17824c {
    public static final String DEFAULT_ADVERTISING_ID = "00000000-0000-0000-0000-000000000000";
    private static String deviceAdvertisingId;
    private static boolean deviceAdvertisingIdWasGenerated = false;
    private static boolean limitAdTrackingEnabled = false;

    C17824c() {
    }

    public static String getAdvertisingId(Context context, boolean z) {
        if (z) {
            return DEFAULT_ADVERTISING_ID;
        }
        String str = deviceAdvertisingId;
        if (str != null) {
            deviceAdvertisingIdWasGenerated = false;
            return str;
        }
        deviceAdvertisingIdWasGenerated = true;
        String advertisingUUID = Utils.getAdvertisingUUID(context);
        return advertisingUUID != null ? advertisingUUID : DEFAULT_ADVERTISING_ID;
    }

    public static boolean isDeviceAdvertisingIdWasGenerated() {
        return deviceAdvertisingIdWasGenerated;
    }

    public static boolean isLimitAdTrackingEnabled() {
        return limitAdTrackingEnabled;
    }

    public static void setDeviceAdvertisingId(String str) {
        deviceAdvertisingId = str;
    }

    public static void setLimitAdTrackingEnabled(boolean z) {
        limitAdTrackingEnabled = z;
    }

    public static void syncUpdateInfo(Context context) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        try {
            AdvertisingIdClientInfo.executeTask(context, new AdvertisingIdClientInfo.Closure() { // from class: io.bidmachine.c.1
                @Override // io.bidmachine.core.AdvertisingIdClientInfo.Closure
                public final void executed(AdvertisingIdClientInfo.AdvertisingProfile advertisingProfile) {
                    C17824c.setLimitAdTrackingEnabled(advertisingProfile.isLimitAdTrackingEnabled());
                    C17824c.setDeviceAdvertisingId(advertisingProfile.getId());
                    countDownLatch.countDown();
                }
            });
            countDownLatch.await();
        } catch (Exception e) {
            Logger.log(e);
            countDownLatch.countDown();
        }
    }
}
