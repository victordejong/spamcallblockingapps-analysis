package androidx.appcompat.app;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import androidx.core.p015a.C0425b;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Calendar;
/* renamed from: androidx.appcompat.app.n */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/n.class */
class C0127n {

    /* renamed from: a */
    private static C0127n f390a;

    /* renamed from: b */
    private final Context f391b;

    /* renamed from: c */
    private final LocationManager f392c;

    /* renamed from: d */
    private final C0128a f393d = new C0128a();

    /* renamed from: androidx.appcompat.app.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/n$a.class */
    public static class C0128a {

        /* renamed from: a */
        boolean f394a;

        /* renamed from: b */
        long f395b;

        /* renamed from: c */
        long f396c;

        /* renamed from: d */
        long f397d;

        /* renamed from: e */
        long f398e;

        /* renamed from: f */
        long f399f;

        C0128a() {
        }
    }

    C0127n(Context context, LocationManager locationManager) {
        this.f391b = context;
        this.f392c = locationManager;
    }

    /* renamed from: a */
    private Location m7771a(String str) {
        try {
            if (!this.f392c.isProviderEnabled(str)) {
                return null;
            }
            return this.f392c.getLastKnownLocation(str);
        } catch (Exception e) {
            Log.d("TwilightManager", "Failed to get last known location", e);
            return null;
        }
    }

    /* renamed from: a */
    public static C0127n m7773a(Context context) {
        if (f390a == null) {
            Context applicationContext = context.getApplicationContext();
            f390a = new C0127n(applicationContext, (LocationManager) applicationContext.getSystemService(FirebaseAnalytics.Param.LOCATION));
        }
        return f390a;
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* renamed from: a */
    private void m7772a(Location location) {
        char c;
        C0128a c0128a = this.f393d;
        long currentTimeMillis = System.currentTimeMillis();
        C0126m m7776a = C0126m.m7776a();
        m7776a.m7775a(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j = m7776a.f387a;
        m7776a.m7775a(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = true;
        if (m7776a.f389c != 1) {
            z = false;
        }
        long j2 = m7776a.f388b;
        long j3 = m7776a.f387a;
        m7776a.m7775a(86400000 + currentTimeMillis, location.getLatitude(), location.getLongitude());
        long j4 = m7776a.f388b;
        if (j2 == -1 || j3 == -1) {
            c = 43200000 + currentTimeMillis;
        } else {
            c = (currentTimeMillis > j3 ? 0 + j4 : currentTimeMillis > j2 ? 0 + j3 : 0 + j2) + 60000;
        }
        c0128a.f394a = z;
        c0128a.f395b = j;
        c0128a.f396c = j2;
        c0128a.f397d = j3;
        c0128a.f398e = j4;
        c0128a.f399f = c;
    }

    /* renamed from: b */
    private Location m7770b() {
        Location location = null;
        Location m7771a = C0425b.m6684a(this.f391b, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? m7771a("network") : null;
        if (C0425b.m6684a(this.f391b, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            location = m7771a("gps");
        }
        if (location == null || m7771a == null) {
            if (location != null) {
                m7771a = location;
            }
            return m7771a;
        }
        Location location2 = m7771a;
        if (location.getTime() > m7771a.getTime()) {
            location2 = location;
        }
        return location2;
    }

    /* renamed from: c */
    private boolean m7769c() {
        return this.f393d.f399f > System.currentTimeMillis();
    }

    /* renamed from: a */
    public boolean m7774a() {
        C0128a c0128a = this.f393d;
        if (m7769c()) {
            return c0128a.f394a;
        }
        Location m7770b = m7770b();
        if (m7770b != null) {
            m7772a(m7770b);
            return c0128a.f394a;
        }
        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i = Calendar.getInstance().get(11);
        return i < 6 || i >= 22;
    }
}
