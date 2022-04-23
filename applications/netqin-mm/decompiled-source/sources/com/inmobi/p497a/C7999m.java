package com.inmobi.p497a;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.HandlerThread;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationServices;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.core.p513e.C8376f;
import com.inmobi.commons.core.utilities.C8408e;
import com.inmobi.commons.core.utilities.p516b.C8404g;
import com.inmobi.commons.p508a.C8326a;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* renamed from: com.inmobi.a.m */
/* loaded from: classes2-dex2jar.jar:com/inmobi/a/m.class */
public class C7999m implements LocationListener {

    /* renamed from: f */
    public static C7999m f31225f;

    /* renamed from: b */
    public LocationManager f31228b = (LocationManager) C8326a.m5891b().getSystemService("location");

    /* renamed from: c */
    public HandlerThread f31229c;

    /* renamed from: d */
    public GoogleApiClient f31230d;

    /* renamed from: e */
    public static final String f31224e = C7999m.class.getSimpleName();

    /* renamed from: g */
    public static final Object f31226g = new Object();

    /* renamed from: a */
    public static boolean f31223a = false;

    /* renamed from: h */
    public static boolean f31227h = false;

    public C7999m() {
        HandlerThread handlerThread = new HandlerThread("LThread");
        this.f31229c = handlerThread;
        handlerThread.start();
    }

    /* renamed from: a */
    public static Location m6763a(Location location, Location location2) {
        if (location == null && location2 == null) {
            try {
                C8366b.m5794a().m5792a(new C8376f("signals", "LocationFixFailed"));
                return null;
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                sb.append(e.getMessage());
                sb.append(")");
                return null;
            }
        } else if (location == null) {
            StringBuilder sb2 = new StringBuilder("Location info provided by Android Api client:");
            sb2.append(location2);
            sb2.append(" ts : ");
            sb2.append(location2.getTime());
            return location2;
        } else if (location2 == null) {
            StringBuilder sb3 = new StringBuilder("Location info provided by Google Api client:");
            sb3.append(location);
            sb3.append(" ts : ");
            sb3.append(location.getTime());
            return location;
        } else {
            long time = location.getTime() - location2.getTime();
            boolean z = true;
            boolean z2 = time > 120000;
            boolean z3 = time < -120000;
            boolean z4 = time > 0;
            if (z2) {
                StringBuilder sb4 = new StringBuilder("Location info provided by Google Api client:");
                sb4.append(location);
                sb4.append(" ts : ");
                sb4.append(location.getTime());
                return location;
            } else if (z3) {
                StringBuilder sb5 = new StringBuilder("Location info provided by Android Api client:");
                sb5.append(location2);
                sb5.append(" ts : ");
                sb5.append(location2.getTime());
                return location2;
            } else {
                int accuracy = (int) (location.getAccuracy() - location2.getAccuracy());
                boolean z5 = accuracy > 0;
                boolean z6 = accuracy < 0;
                if (accuracy <= 200) {
                    z = false;
                }
                if (z6 || (z4 && (!z5 || !z))) {
                    StringBuilder sb6 = new StringBuilder("Location info provided by Google Api client:");
                    sb6.append(location);
                    sb6.append(" ts : ");
                    sb6.append(location.getTime());
                    return location;
                }
                StringBuilder sb7 = new StringBuilder("Location info provided by Android Api client:");
                sb7.append(location2);
                sb7.append(" ts : ");
                sb7.append(location2.getTime());
                return location2;
            }
        }
    }

    /* renamed from: a */
    public static C7999m m6764a() {
        C7999m mVar = f31225f;
        C7999m mVar2 = mVar;
        if (mVar == null) {
            synchronized (f31226g) {
                C7999m mVar3 = f31225f;
                mVar2 = mVar3;
                if (mVar3 == null) {
                    mVar2 = new C7999m();
                    f31225f = mVar2;
                }
            }
        }
        return mVar2;
    }

    /* renamed from: a */
    private HashMap<String, Object> m6762a(Location location, boolean z) {
        HashMap<String, Object> hashMap = new HashMap<>();
        Context b = C8326a.m5891b();
        if (b == null) {
            return hashMap;
        }
        if (location != null) {
            if (location.getTime() > 0) {
                hashMap.put("u-ll-ts", Long.valueOf(location.getTime()));
            }
            hashMap.put("u-latlong-accu", location.getLatitude() + "," + location.getLongitude() + "," + ((int) location.getAccuracy()));
            hashMap.put("sdk-collected", Integer.valueOf(z ? 1 : 0));
        }
        if (f31223a) {
            hashMap.put("loc-allowed", Integer.valueOf(m6754g() ? 1 : 0));
        }
        if (!m6754g() || !m6758c()) {
            hashMap.put("loc-granularity", "none");
        } else {
            if (C8408e.m5641a(b, "signals", "android.permission.ACCESS_COARSE_LOCATION")) {
                hashMap.put("loc-granularity", "coarse");
            }
            if (C8408e.m5641a(b, "signals", "android.permission.ACCESS_FINE_LOCATION")) {
                hashMap.put("loc-granularity", "fine");
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public static void m6761a(boolean z) {
        f31223a = z;
    }

    /* renamed from: b */
    public static boolean m6760b() {
        return false;
    }

    /* renamed from: c */
    public static boolean m6758c() {
        try {
            if (!C8408e.m5641a(C8326a.m5891b(), "signals", "android.permission.ACCESS_FINE_LOCATION")) {
                return C8408e.m5641a(C8326a.m5891b(), "signals", "android.permission.ACCESS_COARSE_LOCATION");
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: i */
    private Location m6752i() {
        Exception e;
        Location location = null;
        Location location2 = null;
        try {
            if (!f31223a || !m6754g() || !m6758c()) {
                location2 = null;
            } else {
                location = f31227h ? m6750k() : null;
                try {
                    if (this.f31228b != null) {
                        location2 = m6751j();
                    }
                } catch (Exception e2) {
                    e = e2;
                    new StringBuilder("SDK encountered unexpected error in getting a location fix; ").append(e.getMessage());
                    location2 = null;
                    return m6763a(location, location2);
                }
            }
        } catch (Exception e3) {
            e = e3;
            location = null;
        }
        return m6763a(location, location2);
    }

    /* renamed from: j */
    private Location m6751j() {
        Criteria criteria = new Criteria();
        boolean z = true;
        if (C8408e.m5641a(C8326a.m5891b(), "signals", "android.permission.ACCESS_FINE_LOCATION")) {
            criteria.setAccuracy(1);
        } else if (C8408e.m5641a(C8326a.m5891b(), "signals", "android.permission.ACCESS_COARSE_LOCATION")) {
            criteria.setAccuracy(2);
        }
        criteria.setCostAllowed(false);
        String bestProvider = this.f31228b.getBestProvider(criteria, true);
        Location location = null;
        Location location2 = null;
        if (bestProvider != null) {
            try {
                location2 = this.f31228b.getLastKnownLocation(bestProvider);
            } catch (Exception e) {
                try {
                    HashMap hashMap = new HashMap();
                    hashMap.put("type", "SecurityException");
                    hashMap.put(AvidVideoPlaybackListenerImpl.MESSAGE, e.getMessage());
                    C8366b.m5794a();
                    C8366b.m5789a("signals", "ExceptionCaught", hashMap);
                } catch (Exception e2) {
                    StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                    sb.append(e2.getMessage());
                    sb.append(")");
                }
            }
            location = location2;
            if (location2 == null) {
                location = m6749l();
            }
        }
        StringBuilder sb2 = new StringBuilder("Location info provided by Location manager:");
        if (location == null) {
            z = false;
        }
        sb2.append(z);
        return location;
    }

    /* renamed from: k */
    public static Location m6750k() {
        try {
            return LocationServices.m9411a(C8326a.m5891b()).m9416f().mo8606b();
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: l */
    private Location m6749l() {
        LocationManager locationManager = this.f31228b;
        Location location = null;
        Location location2 = null;
        if (locationManager != null) {
            List<String> providers = locationManager.getProviders(true);
            int size = providers.size() - 1;
            while (true) {
                location = location2;
                if (size < 0) {
                    break;
                }
                String str = providers.get(size);
                location2 = location2;
                if (this.f31228b.isProviderEnabled(str)) {
                    try {
                        location2 = this.f31228b.getLastKnownLocation(str);
                    } catch (SecurityException e) {
                        try {
                            HashMap hashMap = new HashMap();
                            hashMap.put("type", "SecurityException");
                            hashMap.put(AvidVideoPlaybackListenerImpl.MESSAGE, e.getMessage());
                            C8366b.m5794a();
                            C8366b.m5789a("signals", "ExceptionCaught", hashMap);
                        } catch (Exception e2) {
                            StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                            sb.append(e2.getMessage());
                            sb.append(")");
                        }
                    }
                    location = location2;
                    if (location2 != null) {
                        break;
                    }
                    location2 = location2;
                }
                size--;
            }
        }
        return location;
    }

    /* renamed from: d */
    public final HashMap<String, Object> m6757d() {
        HashMap<String, Object> a;
        synchronized (this) {
            a = m6762a(m6752i(), true);
        }
        return a;
    }

    /* renamed from: e */
    public final HashMap<String, String> m6756e() {
        HashMap<String, String> hashMap = new HashMap<>();
        String str = "DENIED";
        if (m6758c()) {
            str = "DENIED";
            if (m6754g()) {
                str = "AUTHORISED";
            }
        }
        hashMap.put("loc-consent-status", str.toLowerCase(Locale.ENGLISH));
        return hashMap;
    }

    /* renamed from: f */
    public final HashMap<String, String> m6755f() {
        HashMap<String, String> hashMap;
        synchronized (this) {
            hashMap = new HashMap<>();
            Location i = m6752i();
            for (Map.Entry<String, Object> entry : (i != null ? m6762a(i, true) : m6762a(C8404g.m5665c(), false)).entrySet()) {
                hashMap.put(entry.getKey(), entry.getValue().toString());
            }
        }
        return hashMap;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0099 A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m6754g() {
        /*
            r4 = this;
            android.content.Context r0 = com.inmobi.commons.p508a.C8326a.m5891b()
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x000a
            r0 = 0
            return r0
        L_0x000a:
            int r0 = android.os.Build.VERSION.SDK_INT
            r6 = r0
            r0 = r6
            r1 = 28
            if (r0 < r1) goto L_0x0024
            r0 = r4
            android.location.LocationManager r0 = r0.f31228b
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0022
            r0 = r5
            boolean r0 = r0.isLocationEnabled()
            return r0
        L_0x0022:
            r0 = 0
            return r0
        L_0x0024:
            r0 = r6
            r1 = 19
            if (r0 < r1) goto L_0x0049
            r0 = r6
            r1 = 28
            if (r0 >= r1) goto L_0x0049
            r0 = r5
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: SettingNotFoundException -> 0x003e
            java.lang.String r1 = "location_mode"
            int r0 = android.provider.Settings.Secure.getInt(r0, r1)     // Catch: SettingNotFoundException -> 0x003e
            r6 = r0
            goto L_0x0041
        L_0x003e:
            r5 = move-exception
            r0 = 0
            r6 = r0
        L_0x0041:
            r0 = r6
            if (r0 == 0) goto L_0x0047
            r0 = 1
            return r0
        L_0x0047:
            r0 = 0
            return r0
        L_0x0049:
            r0 = r4
            android.location.LocationManager r0 = r0.f31228b
            if (r0 == 0) goto L_0x009b
            r0 = r5
            java.lang.String r1 = "signals"
            java.lang.String r2 = "android.permission.ACCESS_FINE_LOCATION"
            boolean r0 = com.inmobi.commons.core.utilities.C8408e.m5641a(r0, r1, r2)     // Catch: Exception -> 0x009d
            if (r0 == 0) goto L_0x006c
            r0 = r4
            android.location.LocationManager r0 = r0.f31228b     // Catch: Exception -> 0x009d
            java.lang.String r1 = "gps"
            boolean r0 = r0.isProviderEnabled(r1)     // Catch: Exception -> 0x009d
            r7 = r0
            r0 = 0
            r8 = r0
            goto L_0x008b
        L_0x006c:
            r0 = r5
            java.lang.String r1 = "signals"
            java.lang.String r2 = "android.permission.ACCESS_COARSE_LOCATION"
            boolean r0 = com.inmobi.commons.core.utilities.C8408e.m5641a(r0, r1, r2)     // Catch: Exception -> 0x009d
            if (r0 == 0) goto L_0x0086
            r0 = r4
            android.location.LocationManager r0 = r0.f31228b     // Catch: Exception -> 0x009d
            java.lang.String r1 = "network"
            boolean r0 = r0.isProviderEnabled(r1)     // Catch: Exception -> 0x009d
            r8 = r0
            goto L_0x0089
        L_0x0086:
            r0 = 0
            r8 = r0
        L_0x0089:
            r0 = 0
            r7 = r0
        L_0x008b:
            r0 = r8
            if (r0 != 0) goto L_0x0099
            r0 = r7
            if (r0 == 0) goto L_0x0097
            goto L_0x0099
        L_0x0097:
            r0 = 0
            return r0
        L_0x0099:
            r0 = 1
            return r0
        L_0x009b:
            r0 = 0
            return r0
        L_0x009d:
            r5 = move-exception
            goto L_0x0086
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.p497a.C7999m.m6754g():boolean");
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        if (location != null) {
            try {
                StringBuilder sb = new StringBuilder("location changed. ts:");
                sb.append(location.getTime());
                sb.append(" lat:");
                sb.append(location.getLatitude());
                sb.append(":");
                sb.append(location.getLongitude());
                sb.append(" accu:");
                sb.append(location.getAccuracy());
            } catch (Exception e) {
                C8328a.m5878a().m5875a(new C8365a(e));
                return;
            }
        }
        if (m6758c()) {
            this.f31228b.removeUpdates(this);
        }
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i, Bundle bundle) {
    }
}
