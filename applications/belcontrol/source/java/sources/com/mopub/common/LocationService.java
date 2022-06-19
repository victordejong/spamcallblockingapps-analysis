package com.mopub.common;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.os.SystemClock;
import com.mopub.common.MoPub;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import java.math.BigDecimal;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/LocationService.class */
public class LocationService {

    /* renamed from: f */
    public static volatile LocationService f4250f;
    @VisibleForTesting

    /* renamed from: a */
    public Location f4251a;
    @VisibleForTesting

    /* renamed from: b */
    public long f4252b;

    /* renamed from: c */
    public volatile MoPub.LocationAwareness f4253c = MoPub.LocationAwareness.NORMAL;

    /* renamed from: d */
    public volatile int f4254d = 6;

    /* renamed from: e */
    public volatile long f4255e = 600000;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/LocationService$LocationAwareness.class */
    public enum LocationAwareness {
        NORMAL,
        TRUNCATED,
        DISABLED;

        @Deprecated
        public static LocationAwareness fromMoPubLocationAwareness(MoPub.LocationAwareness locationAwareness) {
            return locationAwareness == MoPub.LocationAwareness.DISABLED ? DISABLED : locationAwareness == MoPub.LocationAwareness.TRUNCATED ? TRUNCATED : NORMAL;
        }

        @Deprecated
        public MoPub.LocationAwareness getNewLocationAwareness() {
            return this == TRUNCATED ? MoPub.LocationAwareness.TRUNCATED : this == DISABLED ? MoPub.LocationAwareness.DISABLED : MoPub.LocationAwareness.NORMAL;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/LocationService$ValidLocationProvider.class */
    public enum ValidLocationProvider {
        NETWORK("network"),
        GPS("gps");
        

        /* renamed from: a */
        public final String f4258a;

        ValidLocationProvider(String str) {
            this.f4258a = str;
        }

        /* renamed from: b */
        public final boolean m3945b(Context context) {
            int i = C1011a.f4259a[ordinal()];
            boolean z = false;
            if (i != 1) {
                if (i == 2) {
                    return DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_FINE_LOCATION");
                }
                return false;
            }
            if (DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_FINE_LOCATION") || DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_COARSE_LOCATION")) {
                z = true;
            }
            return z;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f4258a;
        }
    }

    /* renamed from: com.mopub.common.LocationService$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/LocationService$a.class */
    public static /* synthetic */ class C1011a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f4259a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ValidLocationProvider.values().length];
            f4259a = iArr;
            try {
                iArr[ValidLocationProvider.NETWORK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4259a[ValidLocationProvider.GPS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    private LocationService() {
    }

    @VisibleForTesting
    /* renamed from: a */
    public static LocationService m3957a() {
        LocationService locationService = f4250f;
        LocationService locationService2 = locationService;
        if (locationService == null) {
            synchronized (LocationService.class) {
                try {
                    LocationService locationService3 = f4250f;
                    locationService2 = locationService3;
                    if (locationService3 == null) {
                        locationService2 = new LocationService();
                        f4250f = locationService2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return locationService2;
    }

    @VisibleForTesting
    /* renamed from: c */
    public static Location m3955c(Context context, ValidLocationProvider validLocationProvider) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(validLocationProvider);
        if (MoPub.canCollectPersonalInformation() && validLocationProvider.m3945b(context)) {
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

    @Deprecated
    @VisibleForTesting
    public static void clearLastKnownLocation() {
        m3957a().f4251a = null;
    }

    /* renamed from: f */
    public static boolean m3952f() {
        LocationService m3957a = m3957a();
        boolean z = false;
        if (m3957a.f4251a == null) {
            return false;
        }
        if (SystemClock.elapsedRealtime() - m3957a.f4252b <= m3957a.m3953e()) {
            z = true;
        }
        return z;
    }

    public static Location getLastKnownLocation(Context context) {
        if (!MoPub.canCollectPersonalInformation()) {
            return null;
        }
        LocationService m3957a = m3957a();
        MoPub.LocationAwareness locationAwareness = m3957a.f4253c;
        int i = m3957a.f4254d;
        if (locationAwareness == MoPub.LocationAwareness.DISABLED) {
            return null;
        }
        if (m3952f()) {
            return m3957a.f4251a;
        }
        if (context == null) {
            return null;
        }
        Location m3955c = m3955c(context, ValidLocationProvider.GPS);
        Location location = m3955c;
        if (m3955c == null) {
            location = m3955c(context, ValidLocationProvider.NETWORK);
        }
        if (locationAwareness == MoPub.LocationAwareness.TRUNCATED) {
            m3947k(location, i);
        }
        if (location != null) {
            m3957a.m3951g(location);
        }
        return m3957a.f4251a;
    }

    @VisibleForTesting
    /* renamed from: k */
    public static void m3947k(Location location, int i) {
        if (location == null || i < 0) {
            return;
        }
        location.setLatitude(BigDecimal.valueOf(location.getLatitude()).setScale(i, 5).doubleValue());
        location.setLongitude(BigDecimal.valueOf(location.getLongitude()).setScale(i, 5).doubleValue());
    }

    /* renamed from: b */
    public MoPub.LocationAwareness m3956b() {
        return this.f4253c;
    }

    /* renamed from: d */
    public int m3954d() {
        return this.f4254d;
    }

    /* renamed from: e */
    public long m3953e() {
        return this.f4255e;
    }

    /* renamed from: g */
    public void m3951g(Location location) {
        if (location == null) {
            return;
        }
        LocationService m3957a = m3957a();
        m3957a.f4251a = location;
        m3957a.f4252b = SystemClock.elapsedRealtime();
    }

    /* renamed from: h */
    public void m3950h(MoPub.LocationAwareness locationAwareness) {
        Preconditions.checkNotNull(locationAwareness);
        this.f4253c = locationAwareness;
    }

    /* renamed from: i */
    public void m3949i(int i) {
        this.f4254d = Math.min(Math.max(0, i), 6);
    }

    /* renamed from: j */
    public void m3948j(long j) {
        this.f4255e = j;
    }
}
