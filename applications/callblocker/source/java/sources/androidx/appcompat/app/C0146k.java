package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import androidx.core.p017a.C0454b;
import java.util.Calendar;
/* renamed from: androidx.appcompat.app.k */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/k.class */
class C0146k {

    /* renamed from: a */
    private static C0146k f455a;

    /* renamed from: b */
    private final Context f456b;

    /* renamed from: c */
    private final LocationManager f457c;

    /* renamed from: d */
    private final C0147a f458d = new C0147a();

    /* renamed from: androidx.appcompat.app.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/k$a.class */
    public static class C0147a {

        /* renamed from: a */
        boolean f459a;

        /* renamed from: b */
        long f460b;

        /* renamed from: c */
        long f461c;

        /* renamed from: d */
        long f462d;

        /* renamed from: e */
        long f463e;

        /* renamed from: f */
        long f464f;

        C0147a() {
        }
    }

    C0146k(Context context, LocationManager locationManager) {
        this.f456b = context;
        this.f457c = locationManager;
    }

    /* renamed from: a */
    private Location m22094a(String str) {
        Location location;
        try {
        } catch (Exception e) {
            Log.d("TwilightManager", "Failed to get last known location", e);
        }
        if (this.f457c.isProviderEnabled(str)) {
            location = this.f457c.getLastKnownLocation(str);
            return location;
        }
        location = null;
        return location;
    }

    /* renamed from: a */
    public static C0146k m22096a(Context context) {
        if (f455a == null) {
            Context applicationContext = context.getApplicationContext();
            f455a = new C0146k(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f455a;
    }

    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* renamed from: a */
    private void m22095a(Location location) {
        char c;
        C0147a c0147a = this.f458d;
        long currentTimeMillis = System.currentTimeMillis();
        C0145j m22099a = C0145j.m22099a();
        m22099a.m22098a(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j = m22099a.f452a;
        m22099a.m22098a(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = m22099a.f454c == 1;
        long j2 = m22099a.f453b;
        long j3 = m22099a.f452a;
        m22099a.m22098a(86400000 + currentTimeMillis, location.getLatitude(), location.getLongitude());
        long j4 = m22099a.f453b;
        if (j2 == -1 || j3 == -1) {
            c = 43200000 + currentTimeMillis;
        } else {
            c = (currentTimeMillis > j3 ? 0 + j4 : currentTimeMillis > j2 ? 0 + j3 : 0 + j2) + 60000;
        }
        c0147a.f459a = z;
        c0147a.f460b = j;
        c0147a.f461c = j2;
        c0147a.f462d = j3;
        c0147a.f463e = j4;
        c0147a.f464f = c;
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: b */
    private Location m22093b() {
        Location location;
        Location location2 = null;
        Location m22094a = C0454b.m20828a(this.f456b, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? m22094a("network") : null;
        if (C0454b.m20828a(this.f456b, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            location2 = m22094a("gps");
        }
        if (location2 == null || m22094a == null) {
            if (location2 == null) {
                location2 = m22094a;
            }
            location = location2;
        } else {
            location = m22094a;
            if (location2.getTime() > m22094a.getTime()) {
                location = location2;
            }
        }
        return location;
    }

    /* renamed from: c */
    private boolean m22092c() {
        return this.f458d.f464f > System.currentTimeMillis();
    }

    /* renamed from: a */
    public boolean m22097a() {
        boolean z;
        C0147a c0147a = this.f458d;
        if (m22092c()) {
            z = c0147a.f459a;
        } else {
            Location m22093b = m22093b();
            if (m22093b != null) {
                m22095a(m22093b);
                z = c0147a.f459a;
            } else {
                Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                int i = Calendar.getInstance().get(11);
                z = i < 6 || i >= 22;
            }
        }
        return z;
    }
}
