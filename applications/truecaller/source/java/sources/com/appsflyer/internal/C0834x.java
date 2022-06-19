package com.appsflyer.internal;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.razorpay.AnalyticsConstants;
/* renamed from: com.appsflyer.internal.x */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/x.class */
public final class C0834x {

    /* renamed from: com.appsflyer.internal.x$d */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/x$d.class */
    public static final class C0835d {
        public static final C0834x AFInAppEventType = new C0834x();
    }

    private static boolean AFKeystoreWrapper(@NonNull Context context, @NonNull String[] strArr) {
        for (String str : strArr) {
            if (C0714ac.AFKeystoreWrapper(context, str)) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    public final Location AFInAppEventType(@NonNull Context context) {
        Location location;
        try {
            LocationManager locationManager = (LocationManager) context.getSystemService("location");
            Location lastKnownLocation = AFKeystoreWrapper(context, new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"}) ? locationManager.getLastKnownLocation(AnalyticsConstants.NETWORK) : null;
            Location lastKnownLocation2 = AFKeystoreWrapper(context, new String[]{"android.permission.ACCESS_FINE_LOCATION"}) ? locationManager.getLastKnownLocation("gps") : null;
            if (lastKnownLocation2 == null && lastKnownLocation == null) {
                lastKnownLocation2 = null;
            } else if (lastKnownLocation2 == null && lastKnownLocation != null) {
                lastKnownLocation2 = lastKnownLocation;
            } else if (lastKnownLocation != null || lastKnownLocation2 == null) {
                if (DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL < lastKnownLocation.getTime() - lastKnownLocation2.getTime()) {
                    lastKnownLocation2 = lastKnownLocation;
                }
            }
            location = null;
            if (lastKnownLocation2 != null) {
                location = lastKnownLocation2;
            }
        } catch (Throwable th) {
            location = null;
        }
        return location;
    }
}
