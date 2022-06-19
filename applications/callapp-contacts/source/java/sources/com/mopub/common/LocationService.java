package com.mopub.common;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.os.SystemClock;
import com.mopub.common.MoPub;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import java.math.BigDecimal;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/LocationService.class */
public class LocationService {

    /* renamed from: f */
    private static volatile LocationService f58748f;

    /* renamed from: a */
    Location f58749a;

    /* renamed from: b */
    long f58750b;

    /* renamed from: c */
    volatile MoPub.LocationAwareness f58751c = MoPub.LocationAwareness.NORMAL;

    /* renamed from: d */
    volatile int f58752d = 6;

    /* renamed from: e */
    volatile long f58753e = 600000;

    /* renamed from: com.mopub.common.LocationService$1 */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/LocationService$1.class */
    public static final /* synthetic */ class C166841 {

        /* renamed from: a */
        static final /* synthetic */ int[] f58754a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ValidLocationProvider.values().length];
            f58754a = iArr;
            try {
                iArr[ValidLocationProvider.NETWORK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f58754a[ValidLocationProvider.GPS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/LocationService$LocationAwareness.class */
    public enum LocationAwareness {
        NORMAL,
        TRUNCATED,
        DISABLED;

        @Deprecated
        public static LocationAwareness fromMoPubLocationAwareness(MoPub.LocationAwareness locationAwareness) {
            return locationAwareness == MoPub.LocationAwareness.DISABLED ? DISABLED : locationAwareness == MoPub.LocationAwareness.TRUNCATED ? TRUNCATED : NORMAL;
        }

        @Deprecated
        public final MoPub.LocationAwareness getNewLocationAwareness() {
            return this == TRUNCATED ? MoPub.LocationAwareness.TRUNCATED : this == DISABLED ? MoPub.LocationAwareness.DISABLED : MoPub.LocationAwareness.NORMAL;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/LocationService$ValidLocationProvider.class */
    public enum ValidLocationProvider {
        NETWORK("network"),
        GPS("gps");
        
        final String name;

        ValidLocationProvider(String str) {
            this.name = str;
        }

        public boolean hasRequiredPermissions(Context context) {
            int i = C166841.f58754a[ordinal()];
            if (i == 1) {
                return DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_FINE_LOCATION") || DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_COARSE_LOCATION");
            } else if (i == 2) {
                return DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_FINE_LOCATION");
            } else {
                return false;
            }
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.name;
        }
    }

    private LocationService() {
    }

    /* renamed from: a */
    private static Location m6738a(Context context, ValidLocationProvider validLocationProvider) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(validLocationProvider);
        if (MoPub.canCollectPersonalInformation() && validLocationProvider.hasRequiredPermissions(context)) {
            try {
                return ((LocationManager) context.getSystemService("location")).getLastKnownLocation(validLocationProvider.toString());
            } catch (IllegalArgumentException e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "Failed to retrieve location: device has no " + validLocationProvider.toString() + " location provider.");
                return null;
            } catch (NullPointerException e2) {
                MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent2, "Failed to retrieve location: device has no " + validLocationProvider.toString() + " location provider.");
                return null;
            } catch (SecurityException e3) {
                MoPubLog.SdkLogEvent sdkLogEvent3 = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent3, "Failed to retrieve location from " + validLocationProvider.toString() + " provider: access appears to be disabled.");
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static LocationService m6739a() {
        LocationService locationService = f58748f;
        LocationService locationService2 = locationService;
        if (locationService == null) {
            synchronized (LocationService.class) {
                try {
                    LocationService locationService3 = f58748f;
                    locationService2 = locationService3;
                    if (locationService3 == null) {
                        locationService2 = new LocationService();
                        f58748f = locationService2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return locationService2;
    }

    @Deprecated
    public static void clearLastKnownLocation() {
        m6739a().f58749a = null;
    }

    public static Location getLastKnownLocation(Context context) {
        if (!MoPub.canCollectPersonalInformation()) {
            return null;
        }
        LocationService m6739a = m6739a();
        MoPub.LocationAwareness locationAwareness = m6739a.f58751c;
        int i = m6739a.f58752d;
        if (locationAwareness == MoPub.LocationAwareness.DISABLED) {
            return null;
        }
        LocationService m6739a2 = m6739a();
        if (m6739a2.f58749a != null && SystemClock.elapsedRealtime() - m6739a2.f58750b <= m6739a2.f58753e) {
            return m6739a.f58749a;
        }
        if (context == null) {
            return null;
        }
        Location m6738a = m6738a(context, ValidLocationProvider.GPS);
        Location location = m6738a;
        if (m6738a == null) {
            location = m6738a(context, ValidLocationProvider.NETWORK);
        }
        if (locationAwareness == MoPub.LocationAwareness.TRUNCATED && location != null && i >= 0) {
            location.setLatitude(BigDecimal.valueOf(location.getLatitude()).setScale(i, 5).doubleValue());
            location.setLongitude(BigDecimal.valueOf(location.getLongitude()).setScale(i, 5).doubleValue());
        }
        if (location != null && location != null) {
            LocationService m6739a3 = m6739a();
            m6739a3.f58749a = location;
            m6739a3.f58750b = SystemClock.elapsedRealtime();
        }
        return m6739a.f58749a;
    }
}
