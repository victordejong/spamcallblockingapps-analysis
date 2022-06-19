package com.mopub.common;

import android.content.Context;
import android.location.Location;
import android.os.SystemClock;
import com.mopub.common.MoPub;
import com.razorpay.AnalyticsConstants;
import java.math.BigDecimal;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/LocationService.class */
public class LocationService {

    /* renamed from: f */
    public static volatile LocationService f8512f;
    @VisibleForTesting

    /* renamed from: a */
    public Location f8513a;
    @VisibleForTesting

    /* renamed from: b */
    public long f8514b;

    /* renamed from: c */
    public volatile MoPub.LocationAwareness f8515c = MoPub.LocationAwareness.NORMAL;

    /* renamed from: d */
    public volatile int f8516d = 6;

    /* renamed from: e */
    public volatile long f8517e = 600000;

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
        NETWORK(AnalyticsConstants.NETWORK),
        GPS("gps");
        

        /* renamed from: a */
        public final String f8520a;

        ValidLocationProvider(String str) {
            this.f8520a = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f8520a;
        }
    }

    private LocationService() {
    }

    @VisibleForTesting
    /* renamed from: a */
    public static LocationService m36309a() {
        LocationService locationService = f8512f;
        LocationService locationService2 = locationService;
        if (locationService == null) {
            synchronized (LocationService.class) {
                try {
                    LocationService locationService3 = f8512f;
                    locationService2 = locationService3;
                    if (locationService3 == null) {
                        locationService2 = new LocationService();
                        f8512f = locationService2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return locationService2;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004d  */
    @com.mopub.common.VisibleForTesting
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.location.Location m36308b(android.content.Context r6, com.mopub.common.LocationService.ValidLocationProvider r7) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.common.LocationService.m36308b(android.content.Context, com.mopub.common.LocationService$ValidLocationProvider):android.location.Location");
    }

    @Deprecated
    @VisibleForTesting
    public static void clearLastKnownLocation() {
        m36309a().f8513a = null;
    }

    public static Location getLastKnownLocation(Context context) {
        if (!MoPub.canCollectPersonalInformation()) {
            return null;
        }
        LocationService m36309a = m36309a();
        MoPub.LocationAwareness locationAwareness = m36309a.f8515c;
        int i = m36309a.f8516d;
        if (locationAwareness == MoPub.LocationAwareness.DISABLED) {
            return null;
        }
        LocationService m36309a2 = m36309a();
        boolean z = false;
        if (m36309a2.f8513a != null && SystemClock.elapsedRealtime() - m36309a2.f8514b <= m36309a2.f8517e) {
            z = true;
        }
        if (z) {
            return m36309a.f8513a;
        }
        if (context == null) {
            return null;
        }
        Location m36308b = m36308b(context, ValidLocationProvider.GPS);
        Location location = m36308b;
        if (m36308b == null) {
            location = m36308b(context, ValidLocationProvider.NETWORK);
        }
        if (locationAwareness == MoPub.LocationAwareness.TRUNCATED && location != null && i >= 0) {
            location.setLatitude(BigDecimal.valueOf(location.getLatitude()).setScale(i, 5).doubleValue());
            location.setLongitude(BigDecimal.valueOf(location.getLongitude()).setScale(i, 5).doubleValue());
        }
        if (location != null) {
            LocationService m36309a3 = m36309a();
            m36309a3.f8513a = location;
            m36309a3.f8514b = SystemClock.elapsedRealtime();
        }
        return m36309a.f8513a;
    }
}
