package com.mopub.common;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.work.impl.background.systemalarm.CommandHandler;
import com.mopub.common.MoPub;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import java.math.BigDecimal;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/LocationService.class */
public class LocationService {

    /* renamed from: f */
    public static volatile LocationService f8094f;
    @Nullable
    @VisibleForTesting

    /* renamed from: a */
    public Location f8095a;
    @VisibleForTesting

    /* renamed from: b */
    public long f8096b;
    @NonNull

    /* renamed from: c */
    public volatile MoPub.LocationAwareness f8097c = MoPub.LocationAwareness.NORMAL;

    /* renamed from: d */
    public volatile int f8098d = 6;

    /* renamed from: e */
    public volatile long f8099e = CommandHandler.WORK_PROCESSING_TIME_IN_MS;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/LocationService$LocationAwareness.class */
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

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/LocationService$ValidLocationProvider.class */
    public enum ValidLocationProvider {
        NETWORK("network"),
        GPS("gps");
        
        @NonNull

        /* renamed from: a */
        public final String f8102a;

        ValidLocationProvider(@NonNull String str) {
            this.f8102a = str;
        }

        /* renamed from: a */
        public final boolean m30786a(@NonNull Context context) {
            int i = C3762a.f8103a[ordinal()];
            boolean z = false;
            if (i == 1) {
                if (DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_FINE_LOCATION") || DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_COARSE_LOCATION")) {
                    z = true;
                }
                return z;
            } else if (i != 2) {
                return false;
            } else {
                return DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_FINE_LOCATION");
            }
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f8102a;
        }
    }

    /* renamed from: com.mopub.common.LocationService$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/LocationService$a.class */
    public static /* synthetic */ class C3762a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8103a = new int[ValidLocationProvider.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                f8103a[ValidLocationProvider.NETWORK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f8103a[ValidLocationProvider.GPS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    @Nullable
    @VisibleForTesting
    /* renamed from: a */
    public static Location m30793a(@NonNull Context context, @NonNull ValidLocationProvider validLocationProvider) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(validLocationProvider);
        if (!MoPub.canCollectPersonalInformation() || !validLocationProvider.m30786a(context)) {
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

    @VisibleForTesting
    /* renamed from: a */
    public static void m30792a(@Nullable Location location, int i) {
        if (location != null && i >= 0) {
            location.setLatitude(BigDecimal.valueOf(location.getLatitude()).setScale(i, 5).doubleValue());
            location.setLongitude(BigDecimal.valueOf(location.getLongitude()).setScale(i, 5).doubleValue());
        }
    }

    @Deprecated
    @VisibleForTesting
    public static void clearLastKnownLocation() {
        m30788d().f8095a = null;
    }

    @NonNull
    @VisibleForTesting
    /* renamed from: d */
    public static LocationService m30788d() {
        LocationService locationService = f8094f;
        LocationService locationService2 = locationService;
        if (locationService == null) {
            synchronized (LocationService.class) {
                try {
                    LocationService locationService3 = f8094f;
                    locationService2 = locationService3;
                    if (locationService3 == null) {
                        locationService2 = new LocationService();
                        f8094f = locationService2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return locationService2;
    }

    /* renamed from: e */
    public static boolean m30787e() {
        LocationService d = m30788d();
        boolean z = false;
        if (d.f8095a == null) {
            return false;
        }
        if (SystemClock.elapsedRealtime() - d.f8096b <= MoPub.getMinimumLocationRefreshTimeMillis()) {
            z = true;
        }
        return z;
    }

    @Nullable
    public static Location getLastKnownLocation(@NonNull Context context, int i, @NonNull MoPub.LocationAwareness locationAwareness) {
        if (!MoPub.canCollectPersonalInformation()) {
            return null;
        }
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(locationAwareness);
        if (locationAwareness == MoPub.LocationAwareness.DISABLED) {
            return null;
        }
        LocationService d = m30788d();
        if (m30787e()) {
            return d.f8095a;
        }
        Location a = m30793a(context, ValidLocationProvider.GPS);
        Location location = a;
        if (a == null) {
            location = m30793a(context, ValidLocationProvider.NETWORK);
        }
        if (locationAwareness == MoPub.LocationAwareness.TRUNCATED) {
            m30792a(location, i);
        }
        if (location != null) {
            d.f8095a = location;
            d.f8096b = SystemClock.elapsedRealtime();
        }
        return d.f8095a;
    }

    @NonNull
    /* renamed from: a */
    public MoPub.LocationAwareness m30796a() {
        return this.f8097c;
    }

    /* renamed from: a */
    public void m30795a(int i) {
        this.f8098d = Math.min(Math.max(0, i), 6);
    }

    /* renamed from: a */
    public void m30794a(long j) {
        this.f8099e = j;
    }

    /* renamed from: a */
    public void m30791a(@NonNull MoPub.LocationAwareness locationAwareness) {
        Preconditions.checkNotNull(locationAwareness);
        this.f8097c = locationAwareness;
    }

    /* renamed from: b */
    public int m30790b() {
        return this.f8098d;
    }

    /* renamed from: c */
    public long m30789c() {
        return this.f8099e;
    }
}
