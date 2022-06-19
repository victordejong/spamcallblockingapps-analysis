package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import androidx.core.content.C0594c;
import java.util.Calendar;
/* renamed from: androidx.appcompat.app.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/i.class */
class C0157i {

    /* renamed from: a */
    private static C0157i f459a;

    /* renamed from: b */
    private final Context f460b;

    /* renamed from: c */
    private final LocationManager f461c;

    /* renamed from: d */
    private final C0158a f462d = new C0158a();

    /* renamed from: androidx.appcompat.app.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/i$a.class */
    public static class C0158a {

        /* renamed from: a */
        boolean f463a;

        /* renamed from: b */
        long f464b;

        /* renamed from: c */
        long f465c;

        /* renamed from: d */
        long f466d;

        /* renamed from: e */
        long f467e;

        /* renamed from: f */
        long f468f;

        C0158a() {
        }
    }

    C0157i(Context context, LocationManager locationManager) {
        this.f460b = context;
        this.f461c = locationManager;
    }

    /* renamed from: a */
    public static C0157i m35488a(Context context) {
        if (f459a == null) {
            Context applicationContext = context.getApplicationContext();
            f459a = new C0157i(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f459a;
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: b */
    private Location m35487b() {
        Location location = null;
        Location m35486c = C0594c.m33324b(this.f460b, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? m35486c("network") : null;
        if (C0594c.m33324b(this.f460b, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            location = m35486c("gps");
        }
        if (location == null || m35486c == null) {
            if (location != null) {
                m35486c = location;
            }
            return m35486c;
        }
        Location location2 = m35486c;
        if (location.getTime() > m35486c.getTime()) {
            location2 = location;
        }
        return location2;
    }

    /* renamed from: c */
    private Location m35486c(String str) {
        try {
            if (!this.f461c.isProviderEnabled(str)) {
                return null;
            }
            return this.f461c.getLastKnownLocation(str);
        } catch (Exception e) {
            Log.d("TwilightManager", "Failed to get last known location", e);
            return null;
        }
    }

    /* renamed from: e */
    private boolean m35484e() {
        return this.f462d.f468f > System.currentTimeMillis();
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* renamed from: f */
    private void m35483f(Location location) {
        char c;
        C0158a c0158a = this.f462d;
        long currentTimeMillis = System.currentTimeMillis();
        C0156h m35489b = C0156h.m35489b();
        m35489b.m35490a(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j = m35489b.f456b;
        m35489b.m35490a(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = m35489b.f458d == 1;
        long j2 = m35489b.f457c;
        long j3 = m35489b.f456b;
        m35489b.m35490a(86400000 + currentTimeMillis, location.getLatitude(), location.getLongitude());
        long j4 = m35489b.f457c;
        if (j2 == -1 || j3 == -1) {
            c = 43200000 + currentTimeMillis;
        } else {
            c = (currentTimeMillis > j3 ? 0 + j4 : currentTimeMillis > j2 ? 0 + j3 : 0 + j2) + 60000;
        }
        c0158a.f463a = z;
        c0158a.f464b = j;
        c0158a.f465c = j2;
        c0158a.f466d = j3;
        c0158a.f467e = j4;
        c0158a.f468f = c;
    }

    /* renamed from: d */
    public boolean m35485d() {
        C0158a c0158a = this.f462d;
        if (m35484e()) {
            return c0158a.f463a;
        }
        Location m35487b = m35487b();
        if (m35487b != null) {
            m35483f(m35487b);
            return c0158a.f463a;
        }
        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i = Calendar.getInstance().get(11);
        return i < 6 || i >= 22;
    }
}
