package com.pubmatic.sdk.common.utility;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.SystemClock;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.pubmatic.sdk.common.log.PMLog;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBLocationDetector.class */
public class POBLocationDetector implements LocationListener {

    /* renamed from: a */
    private final Context f558a;

    /* renamed from: b */
    private Location f559b;

    /* renamed from: c */
    private LocationManager f560c;

    /* renamed from: d */
    private long f561d = 0;

    /* renamed from: e */
    private long f562e = 600000;

    /* renamed from: com.pubmatic.sdk.common.utility.POBLocationDetector$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBLocationDetector$a.class */
    public static /* synthetic */ class C1887a {

        /* renamed from: a */
        static final /* synthetic */ int[] f563a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC1888b.values().length];
            f563a = iArr;
            try {
                iArr[EnumC1888b.NETWORK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f563a[EnumC1888b.GPS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f563a[EnumC1888b.PASSIVE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.common.utility.POBLocationDetector$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBLocationDetector$b.class */
    public enum EnumC1888b {
        NETWORK("network"),
        GPS("gps"),
        PASSIVE("passive");
        

        /* renamed from: a */
        private final String f568a;

        EnumC1888b(String str) {
            this.f568a = str;
        }

        /* renamed from: a */
        boolean m987a(Context context) {
            int i = C1887a.f563a[ordinal()];
            boolean z = false;
            if (i != 1) {
                if (i != 2 && i != 3) {
                    return false;
                }
                return POBUtils.hasPermission(context, "android.permission.ACCESS_FINE_LOCATION");
            }
            if (POBUtils.hasPermission(context, "android.permission.ACCESS_FINE_LOCATION") || POBUtils.hasPermission(context, "android.permission.ACCESS_COARSE_LOCATION")) {
                z = true;
            }
            return z;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f568a;
        }
    }

    public POBLocationDetector(Context context) {
        this.f558a = context;
    }

    /* renamed from: a */
    private Location m991a(Context context, EnumC1888b enumC1888b) {
        LocationManager m992a;
        if (enumC1888b.m987a(context) && (m992a = m992a(context)) != null) {
            try {
                this.f559b = m992a.getLastKnownLocation(enumC1888b.toString());
            } catch (IllegalArgumentException e) {
                PMLog.error("PMLocationDetector", "Unable to fetch the location.", "Error : " + e.getLocalizedMessage());
            } catch (SecurityException e2) {
                PMLog.error("PMLocationDetector", "Unable to fetch the location as user has restricted/denied location access to this app.", new Object[0]);
            } catch (Exception e3) {
                PMLog.error("PMLocationDetector", "Unable to fetch the location due to unknown reason.", "Error : " + e3.getLocalizedMessage());
            }
        }
        return this.f559b;
    }

    /* renamed from: a */
    private Location m990a(Location location, Location location2) {
        if (location == null) {
            return location2;
        }
        if (location2 == null) {
            return location;
        }
        if (location.getTime() <= location2.getTime()) {
            location = location2;
        }
        return location;
    }

    /* renamed from: a */
    private LocationManager m992a(Context context) {
        if (this.f560c == null) {
            this.f560c = (LocationManager) context.getSystemService(FirebaseAnalytics.Param.LOCATION);
        }
        return this.f560c;
    }

    /* renamed from: a */
    private void m993a() {
        LocationManager m992a = m992a(this.f558a);
        if (m992a == null) {
            PMLog.info("PMLocationDetector", "Location Manager is not available to fetch GPS location", new Object[0]);
            return;
        }
        EnumC1888b enumC1888b = m992a.isProviderEnabled(EnumC1888b.NETWORK.toString()) ? EnumC1888b.NETWORK : EnumC1888b.GPS;
        if (!enumC1888b.m987a(this.f558a)) {
            PMLog.info("PMLocationDetector", "No permission to fetch GPS location", new Object[0]);
            return;
        }
        try {
            PMLog.info("PMLocationDetector", "Requesting %s location", enumC1888b.toString());
            m992a.requestLocationUpdates(enumC1888b.toString(), 0L, 0.0f, this);
        } catch (Exception e) {
            PMLog.info("PMLocationDetector", e.getLocalizedMessage(), new Object[0]);
        }
    }

    /* renamed from: b */
    private boolean m989b() {
        boolean z = true;
        if (this.f561d == 0) {
            return true;
        }
        if (SystemClock.elapsedRealtime() - this.f561d < this.f562e) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    private void m988c() {
        LocationManager m992a = m992a(this.f558a);
        if (m992a != null) {
            m992a.removeUpdates(this);
        }
    }

    public Location getLocation() {
        if (EnumC1888b.GPS.m987a(this.f558a) || EnumC1888b.NETWORK.m987a(this.f558a)) {
            if (m989b()) {
                m993a();
                Location m990a = m990a(m991a(this.f558a, EnumC1888b.GPS), m991a(this.f558a, EnumC1888b.NETWORK));
                this.f559b = m990a;
                if (m990a == null) {
                    this.f559b = m991a(this.f558a, EnumC1888b.PASSIVE);
                }
                if (this.f559b != null) {
                    this.f561d = SystemClock.elapsedRealtime();
                }
                m988c();
            }
            return this.f559b;
        }
        return null;
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        PMLog.info("PMLocationDetector", "On location changed : %s on time : %s", location.toString(), Long.valueOf(location.getTime()));
        this.f559b = location;
        m988c();
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
        PMLog.info("PMLocationDetector", "On location provider disabled", new Object[0]);
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
        PMLog.info("PMLocationDetector", "On location provider enabled", new Object[0]);
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i, Bundle bundle) {
        PMLog.info("PMLocationDetector", "On location provider status changed : %s", Integer.valueOf(i));
    }

    public void setLocationUpdateIntervalInMs(long j) {
        this.f562e = j;
    }
}
