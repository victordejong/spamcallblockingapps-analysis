package com.amazon.device.ads;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbGeoLocation.class */
public class DtbGeoLocation {

    /* renamed from: a */
    private static final String f11877a = "DtbGeoLocation";

    public DtbGeoLocation() {
        if (AdRegistration.m39071d() != null) {
            return;
        }
        DtbLog.m38824b("unable to initialize DtbGeoLocation without setting app context");
        throw new IllegalArgumentException("unable to initialize DtbGeoLocation without setting app context");
    }

    /* renamed from: a */
    public static Location m38846a() {
        Context m39071d = AdRegistration.m39071d();
        Location location = null;
        if (!m38845a(m39071d)) {
            return null;
        }
        Location m38844a = m38844a(m39071d, "gps");
        Location m38844a2 = m38844a(m39071d, "network");
        if (m38844a == null || m38844a2 == null) {
            if (m38844a != null) {
                DtbLog.m38825b();
                location = m38844a;
            } else if (m38844a2 != null) {
                DtbLog.m38825b();
                location = m38844a2;
            }
        } else if (m38844a.distanceTo(m38844a2) / 1000.0f <= 3.0f) {
            float f = Float.MAX_VALUE;
            float accuracy = m38844a.hasAccuracy() ? m38844a.getAccuracy() : Float.MAX_VALUE;
            if (m38844a2.hasAccuracy()) {
                f = m38844a2.getAccuracy();
            }
            if (accuracy < f) {
                DtbLog.m38825b();
                location = m38844a;
            } else {
                DtbLog.m38825b();
                location = m38844a2;
            }
        } else if (m38844a.getTime() > m38844a2.getTime()) {
            DtbLog.m38825b();
            location = m38844a;
        } else {
            DtbLog.m38825b();
            location = m38844a2;
        }
        return location;
    }

    /* renamed from: a */
    private static Location m38844a(Context context, String str) {
        Location location;
        try {
            location = ((LocationManager) context.getSystemService("location")).getLastKnownLocation(str);
        } catch (IllegalArgumentException e) {
            DtbLog.m38828a("Failed to retrieve location: " + str + "not found");
            location = null;
            return location;
        } catch (SecurityException e2) {
            DtbLog.m38828a("Failed to retrieve location: No permissions to access ".concat(String.valueOf(str)));
            location = null;
            return location;
        }
        return location;
    }

    /* renamed from: a */
    private static boolean m38845a(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0 || context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0;
    }
}
