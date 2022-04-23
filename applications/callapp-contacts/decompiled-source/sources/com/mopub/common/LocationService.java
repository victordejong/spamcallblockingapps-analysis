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
    private static volatile LocationService f;

    /* renamed from: a  reason: collision with root package name */
    Location f33830a;

    /* renamed from: b  reason: collision with root package name */
    long f33831b;

    /* renamed from: c  reason: collision with root package name */
    volatile MoPub.LocationAwareness f33832c = MoPub.LocationAwareness.NORMAL;

    /* renamed from: d  reason: collision with root package name */
    volatile int f33833d = 6;
    volatile long e = 600000;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.common.LocationService$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/LocationService$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33834a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ValidLocationProvider.values().length];
            f33834a = iArr;
            try {
                iArr[ValidLocationProvider.NETWORK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33834a[ValidLocationProvider.GPS.ordinal()] = 2;
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

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasRequiredPermissions(Context context) {
            int i = AnonymousClass1.f33834a[ordinal()];
            if (i == 1) {
                return DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_FINE_LOCATION") || DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_COARSE_LOCATION");
            }
            if (i != 2) {
                return false;
            }
            return DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_FINE_LOCATION");
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.name;
        }
    }

    private LocationService() {
    }

    private static Location a(Context context, ValidLocationProvider validLocationProvider) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(validLocationProvider);
        if (!MoPub.canCollectPersonalInformation() || !validLocationProvider.hasRequiredPermissions(context)) {
            return null;
        }
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static LocationService a() {
        LocationService locationService = f;
        LocationService locationService2 = locationService;
        if (locationService == null) {
            synchronized (LocationService.class) {
                try {
                    LocationService locationService3 = f;
                    locationService2 = locationService3;
                    if (locationService3 == null) {
                        locationService2 = new LocationService();
                        f = locationService2;
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
        a().f33830a = null;
    }

    public static Location getLastKnownLocation(Context context) {
        if (!MoPub.canCollectPersonalInformation()) {
            return null;
        }
        LocationService a2 = a();
        MoPub.LocationAwareness locationAwareness = a2.f33832c;
        int i = a2.f33833d;
        if (locationAwareness == MoPub.LocationAwareness.DISABLED) {
            return null;
        }
        LocationService a3 = a();
        if (a3.f33830a != null && SystemClock.elapsedRealtime() - a3.f33831b <= a3.e) {
            return a2.f33830a;
        }
        if (context == null) {
            return null;
        }
        Location a4 = a(context, ValidLocationProvider.GPS);
        Location location = a4;
        if (a4 == null) {
            location = a(context, ValidLocationProvider.NETWORK);
        }
        if (locationAwareness == MoPub.LocationAwareness.TRUNCATED && location != null && i >= 0) {
            location.setLatitude(BigDecimal.valueOf(location.getLatitude()).setScale(i, 5).doubleValue());
            location.setLongitude(BigDecimal.valueOf(location.getLongitude()).setScale(i, 5).doubleValue());
        }
        if (!(location == null || location == null)) {
            LocationService a5 = a();
            a5.f33830a = location;
            a5.f33831b = SystemClock.elapsedRealtime();
        }
        return a2.f33830a;
    }
}
