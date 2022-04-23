package com.moat.analytics.mobile.mpub;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p012b.p042i.p044i.C0869a;
/* renamed from: com.moat.analytics.mobile.mpub.o */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/o.class */
public class C8649o implements LocationListener {

    /* renamed from: a */
    public static C8649o f33543a;

    /* renamed from: b */
    public ScheduledExecutorService f33544b;

    /* renamed from: c */
    public ScheduledFuture<?> f33545c;

    /* renamed from: d */
    public ScheduledFuture<?> f33546d;

    /* renamed from: e */
    public LocationManager f33547e;

    /* renamed from: f */
    public boolean f33548f;

    /* renamed from: g */
    public Location f33549g;

    /* renamed from: h */
    public boolean f33550h;

    public C8649o() {
        String str;
        try {
            boolean z = ((C8641k) MoatAnalytics.getInstance()).f33520c;
            this.f33548f = z;
            if (z) {
                str = "Moat location services disabled";
            } else {
                this.f33544b = Executors.newScheduledThreadPool(1);
                LocationManager locationManager = (LocationManager) C8612a.m4997a().getSystemService("location");
                this.f33547e = locationManager;
                if (locationManager.getAllProviders().size() == 0) {
                    str = "Device has no location providers";
                } else {
                    m4858e();
                }
            }
            C8652p.m4848a(3, "LocationManager", this, str);
        } catch (Exception e) {
            C8643m.m4879a(e);
        }
    }

    /* renamed from: a */
    public static C8649o m4870a() {
        if (f33543a == null) {
            f33543a = new C8649o();
        }
        return f33543a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4864a(boolean z) {
        try {
            C8652p.m4848a(3, "LocationManager", this, "stopping location fetch");
            m4855h();
            m4854i();
            if (z) {
                m4852k();
            } else {
                m4853j();
            }
        } catch (Exception e) {
            C8643m.m4879a(e);
        }
    }

    /* renamed from: a */
    public static boolean m4869a(Location location) {
        boolean z = false;
        if (location != null && (!(location.getLatitude() == 0.0d && location.getLongitude() == 0.0d) && location.getAccuracy() >= 0.0f && m4862b(location) < 600.0f)) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m4868a(Location location, Location location2) {
        if (location == location2) {
            return true;
        }
        return (location == null || location2 == null || location.getTime() != location2.getTime()) ? false : true;
    }

    /* renamed from: a */
    public static boolean m4865a(String str) {
        return C0869a.m35690a(C8612a.m4997a().getApplicationContext(), str) == 0;
    }

    /* renamed from: b */
    public static float m4862b(Location location) {
        return (float) ((System.currentTimeMillis() - location.getTime()) / 1000);
    }

    /* renamed from: b */
    public static Location m4861b(Location location, Location location2) {
        boolean a = m4869a(location);
        boolean a2 = m4869a(location2);
        if (!a) {
            if (!a2) {
                return null;
            }
            return location2;
        } else if (!a2) {
            return location;
        } else {
            if (location.getAccuracy() >= location.getAccuracy()) {
                location = location2;
            }
            return location;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m4858e() {
        try {
            if (!this.f33548f && this.f33547e != null) {
                if (this.f33550h) {
                    C8652p.m4848a(3, "LocationManager", this, "already updating location");
                }
                C8652p.m4848a(3, "LocationManager", this, "starting location fetch");
                Location b = m4861b(this.f33549g, m4857f());
                this.f33549g = b;
                if (b != null) {
                    C8652p.m4848a(3, "LocationManager", this, "Have a valid location, won't fetch = " + this.f33549g.toString());
                    m4852k();
                    return;
                }
                m4856g();
            }
        } catch (Exception e) {
            C8643m.m4879a(e);
        }
    }

    /* renamed from: f */
    private Location m4857f() {
        Location location;
        try {
            boolean l = m4851l();
            boolean m = m4850m();
            if (l && m) {
                location = m4861b(this.f33547e.getLastKnownLocation("gps"), this.f33547e.getLastKnownLocation("network"));
            } else if (l) {
                location = this.f33547e.getLastKnownLocation("gps");
            } else {
                location = null;
                if (m) {
                    location = this.f33547e.getLastKnownLocation("network");
                }
            }
        } catch (SecurityException e) {
            C8643m.m4879a(e);
            location = null;
        }
        return location;
    }

    /* renamed from: g */
    private void m4856g() {
        try {
            if (!this.f33550h) {
                C8652p.m4848a(3, "LocationManager", this, "Attempting to start update");
                if (m4851l()) {
                    C8652p.m4848a(3, "LocationManager", this, "start updating gps location");
                    this.f33547e.requestLocationUpdates("gps", 0L, 0.0f, this, Looper.getMainLooper());
                    this.f33550h = true;
                }
                if (m4850m()) {
                    C8652p.m4848a(3, "LocationManager", this, "start updating network location");
                    this.f33547e.requestLocationUpdates("network", 0L, 0.0f, this, Looper.getMainLooper());
                    this.f33550h = true;
                }
                if (this.f33550h) {
                    m4854i();
                    this.f33546d = this.f33544b.schedule(new Runnable() { // from class: com.moat.analytics.mobile.mpub.o.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                C8652p.m4848a(3, "LocationManager", this, "fetchTimedOut");
                                C8649o.this.m4864a(true);
                            } catch (Exception e) {
                                C8643m.m4879a(e);
                            }
                        }
                    }, 60L, TimeUnit.SECONDS);
                }
            }
        } catch (SecurityException e) {
            C8643m.m4879a(e);
        }
    }

    /* renamed from: h */
    private void m4855h() {
        try {
            C8652p.m4848a(3, "LocationManager", this, "Stopping to update location");
            if (m4849n() && this.f33547e != null) {
                this.f33547e.removeUpdates(this);
                this.f33550h = false;
            }
        } catch (SecurityException e) {
            C8643m.m4879a(e);
        }
    }

    /* renamed from: i */
    private void m4854i() {
        ScheduledFuture<?> scheduledFuture = this.f33546d;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.f33546d.cancel(true);
            this.f33546d = null;
        }
    }

    /* renamed from: j */
    private void m4853j() {
        ScheduledFuture<?> scheduledFuture = this.f33545c;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.f33545c.cancel(true);
            this.f33545c = null;
        }
    }

    /* renamed from: k */
    private void m4852k() {
        C8652p.m4848a(3, "LocationManager", this, "Resetting fetch timer");
        m4853j();
        Location location = this.f33549g;
        float f = 600.0f;
        if (location != null) {
            f = Math.max(600.0f - m4862b(location), 0.0f);
        }
        this.f33545c = this.f33544b.schedule(new Runnable() { // from class: com.moat.analytics.mobile.mpub.o.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    C8652p.m4848a(3, "LocationManager", this, "fetchTimerCompleted");
                    C8649o.this.m4858e();
                } catch (Exception e) {
                    C8643m.m4879a(e);
                }
            }
        }, f, TimeUnit.SECONDS);
    }

    /* renamed from: l */
    private boolean m4851l() {
        return m4865a("android.permission.ACCESS_FINE_LOCATION") && this.f33547e.getProvider("gps") != null && this.f33547e.isProviderEnabled("gps");
    }

    /* renamed from: m */
    private boolean m4850m() {
        return m4849n() && this.f33547e.getProvider("network") != null && this.f33547e.isProviderEnabled("network");
    }

    /* renamed from: n */
    public static boolean m4849n() {
        return m4865a("android.permission.ACCESS_FINE_LOCATION") || m4865a("android.permission.ACCESS_COARSE_LOCATION");
    }

    /* renamed from: b */
    public Location m4863b() {
        if (this.f33548f || this.f33547e == null) {
            return null;
        }
        return this.f33549g;
    }

    /* renamed from: c */
    public void m4860c() {
        m4858e();
    }

    /* renamed from: d */
    public void m4859d() {
        m4864a(false);
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        try {
            C8652p.m4848a(3, "LocationManager", this, "Received an updated location = " + location.toString());
            float b = m4862b(location);
            if (location.hasAccuracy() && location.getAccuracy() <= 100.0f && b < 600.0f) {
                this.f33549g = m4861b(this.f33549g, location);
                C8652p.m4848a(3, "LocationManager", this, "fetchCompleted");
                m4864a(true);
            }
        } catch (Exception e) {
            C8643m.m4879a(e);
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
