package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import androidx.core.content.C0266b;
import java.util.Calendar;
/* renamed from: androidx.appcompat.app.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h.class */
class C0091h {

    /* renamed from: d */
    private static C0091h f294d;

    /* renamed from: a */
    private final Context f295a;

    /* renamed from: b */
    private final LocationManager f296b;

    /* renamed from: c */
    private final C0092a f297c = new C0092a();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.app.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h$a.class */
    public static class C0092a {

        /* renamed from: a */
        boolean f298a;

        /* renamed from: b */
        long f299b;

        /* renamed from: c */
        long f300c;

        /* renamed from: d */
        long f301d;

        /* renamed from: e */
        long f302e;

        /* renamed from: f */
        long f303f;

        C0092a() {
        }
    }

    C0091h(Context context, LocationManager locationManager) {
        this.f295a = context;
        this.f296b = locationManager;
    }

    /* renamed from: a */
    static C0091h m14858a(Context context) {
        if (f294d == null) {
            Context applicationContext = context.getApplicationContext();
            f294d = new C0091h(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f294d;
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: b */
    private Location m14857b() {
        Location location = null;
        Location c = C0266b.m13543b(this.f295a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? m14856c("network") : null;
        if (C0266b.m13543b(this.f295a, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            location = m14856c("gps");
        }
        if (location == null || c == null) {
            if (location != null) {
                c = location;
            }
            return c;
        }
        Location location2 = c;
        if (location.getTime() > c.getTime()) {
            location2 = location;
        }
        return location2;
    }

    /* renamed from: c */
    private Location m14856c(String str) {
        try {
            if (this.f296b.isProviderEnabled(str)) {
                return this.f296b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e) {
            Log.d("TwilightManager", "Failed to get last known location", e);
            return null;
        }
    }

    /* renamed from: e */
    private boolean m14854e() {
        return this.f297c.f303f > System.currentTimeMillis();
    }

    /* renamed from: f */
    private void m14853f(Location location) {
        long j;
        C0092a aVar = this.f297c;
        long currentTimeMillis = System.currentTimeMillis();
        C0090g b = C0090g.m14859b();
        b.m14860a(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j2 = b.f291a;
        b.m14860a(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = b.f293c == 1;
        long j3 = b.f292b;
        long j4 = b.f291a;
        b.m14860a(86400000 + currentTimeMillis, location.getLatitude(), location.getLongitude());
        long j5 = b.f292b;
        if (j3 == -1 || j4 == -1) {
            j = 43200000 + currentTimeMillis;
        } else {
            j = (currentTimeMillis > j4 ? 0 + j5 : currentTimeMillis > j3 ? 0 + j4 : 0 + j3) + 60000;
        }
        aVar.f298a = z;
        aVar.f299b = j2;
        aVar.f300c = j3;
        aVar.f301d = j4;
        aVar.f302e = j5;
        aVar.f303f = j;
    }

    /* renamed from: d */
    boolean m14855d() {
        C0092a aVar = this.f297c;
        if (m14854e()) {
            return aVar.f298a;
        }
        Location b = m14857b();
        if (b != null) {
            m14853f(b);
            return aVar.f298a;
        }
        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i = Calendar.getInstance().get(11);
        return i < 6 || i >= 22;
    }
}
