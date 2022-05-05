package com.apptentive.android.sdk.util;

import android.content.Context;
import androidx.annotation.Nullable;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.notifications.ApptentiveNotificationCenter;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/AdvertiserManager.class */
public class AdvertiserManager {
    private static AdvertisingIdClientInfo cachedClientInfo;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo.class */
    public static class AdvertisingIdClientInfo {

        /* renamed from: id */
        private final String f6464id;
        private final boolean limitAdTrackingEnabled;

        public AdvertisingIdClientInfo(String str, boolean z) {
            this.f6464id = str;
            this.limitAdTrackingEnabled = z;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || AdvertisingIdClientInfo.class != obj.getClass()) {
                return false;
            }
            AdvertisingIdClientInfo advertisingIdClientInfo = (AdvertisingIdClientInfo) obj;
            if (this.limitAdTrackingEnabled != advertisingIdClientInfo.limitAdTrackingEnabled || !StringUtils.equal(this.f6464id, advertisingIdClientInfo.f6464id)) {
                z = false;
            }
            return z;
        }

        public String getId() {
            return this.f6464id;
        }

        public final boolean isLimitAdTrackingEnabled() {
            return this.limitAdTrackingEnabled;
        }

        public String toString() {
            return StringUtils.format("%s: id=%s limited=%b", AdvertisingIdClientInfo.class.getSimpleName(), ApptentiveLog.hideIfSanitized(this.f6464id), Boolean.valueOf(this.limitAdTrackingEnabled));
        }
    }

    @Nullable
    public static AdvertisingIdClientInfo getAdvertisingIdClientInfo() {
        AdvertisingIdClientInfo advertisingIdClientInfo;
        synchronized (AdvertiserManager.class) {
            try {
                advertisingIdClientInfo = cachedClientInfo;
            } catch (Throwable th) {
                throw th;
            }
        }
        return advertisingIdClientInfo;
    }

    private static void notifyClientInfoChanged(AdvertisingIdClientInfo advertisingIdClientInfo) {
        ApptentiveNotificationCenter defaultCenter = ApptentiveNotificationCenter.defaultCenter();
        boolean z = false;
        if (advertisingIdClientInfo != null) {
            z = true;
        }
        defaultCenter.postNotification("ADVERTISER_ID_DID_RESOLVE", "successful", Boolean.valueOf(z), "clientInfo", advertisingIdClientInfo);
    }

    @Nullable
    private static AdvertisingIdClientInfo resolveAdvertisingIdClientInfo(Context context) {
        try {
            Object invokeMethod = Invocation.fromClass("com.google.android.gms.ads.identifier.AdvertisingIdClient").invokeMethod("getAdvertisingIdInfo", new Class[]{Context.class}, new Object[]{context});
            if (invokeMethod == null) {
                ApptentiveLog.m15633w("Unable to resolve advertising ID: '%s' did not return a valid value", "getAdvertisingIdInfo");
                return null;
            }
            Invocation fromObject = Invocation.fromObject(invokeMethod);
            return new AdvertisingIdClientInfo(fromObject.invokeStringMethod("getId"), fromObject.invokeBooleanMethod("isLimitAdTrackingEnabled"));
        } catch (Exception e) {
            Throwable cause = e.getCause();
            if (cause != null) {
                if (StringUtils.equal(cause.getClass().getSimpleName(), "GooglePlayServicesNotAvailableException")) {
                    ApptentiveLog.m15641e(e, "Unable to resolve advertising ID: Google Play is not installed on this device", new Object[0]);
                    return null;
                } else if (StringUtils.equal(cause.getClass().getSimpleName(), "GooglePlayServicesRepairableException")) {
                    ApptentiveLog.m15641e(e, "Unable to resolve advertising ID: error connecting to Google Play Services", new Object[0]);
                    return null;
                }
            }
            ApptentiveLog.m15641e(e, "Unable to resolve advertising ID", new Object[0]);
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public static boolean updateAdvertisingIdClientInfo(Context context) {
        synchronized (AdvertiserManager.class) {
            try {
                ApptentiveLog.m15638v(ApptentiveLogTag.ADVERTISER_ID, "Updating advertiser ID client info...", new Object[0]);
                AdvertisingIdClientInfo resolveAdvertisingIdClientInfo = resolveAdvertisingIdClientInfo(context);
                if (resolveAdvertisingIdClientInfo != null && resolveAdvertisingIdClientInfo.equals(cachedClientInfo)) {
                    return false;
                }
                ApptentiveLog.m15638v(ApptentiveLogTag.ADVERTISER_ID, "Advertiser ID client info changed: %s", resolveAdvertisingIdClientInfo);
                cachedClientInfo = resolveAdvertisingIdClientInfo;
                notifyClientInfoChanged(resolveAdvertisingIdClientInfo);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
