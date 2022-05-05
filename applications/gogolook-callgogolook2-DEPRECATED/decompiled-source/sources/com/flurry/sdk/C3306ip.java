package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import com.flurry.sdk.C3438kv;
import java.util.Timer;
import java.util.TimerTask;
@SuppressLint({"MissingPermission"})
/* renamed from: com.flurry.sdk.ip */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ip.class */
public class C3306ip implements C3438kv.AbstractC3439a {

    /* renamed from: a */
    public static final String f5597a = "ip";

    /* renamed from: b */
    public static int f5598b = -1;

    /* renamed from: c */
    public static int f5599c = -1;

    /* renamed from: d */
    public static int f5600d = -1;

    /* renamed from: e */
    public static C3306ip f5601e;

    /* renamed from: f */
    public boolean f5602f;

    /* renamed from: g */
    public Location f5603g;

    /* renamed from: k */
    public Location f5607k;

    /* renamed from: h */
    public long f5604h = 0;

    /* renamed from: l */
    public boolean f5608l = false;

    /* renamed from: m */
    public int f5609m = 0;

    /* renamed from: n */
    public Timer f5610n = null;

    /* renamed from: i */
    public LocationManager f5605i = (LocationManager) C3331jb.m32681a().f5679a.getSystemService("location");

    /* renamed from: j */
    public C3308a f5606j = new C3308a();

    /* renamed from: com.flurry.sdk.ip$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ip$a.class */
    public final class C3308a implements LocationListener {
        public C3308a() {
        }

        @Override // android.location.LocationListener
        public final void onLocationChanged(Location location) {
            if (location != null) {
                C3306ip.this.f5607k = location;
            }
            if (C3306ip.m32722c(C3306ip.this) >= 3) {
                C3356jq.m32615a(4, C3306ip.f5597a, "Max location reports reached, stopping");
                C3306ip.this.m32716i();
            }
        }

        @Override // android.location.LocationListener
        public final void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public final void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public final void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    public C3306ip() {
        C3437ku a = C3437ku.m32494a();
        this.f5602f = ((Boolean) a.m32493a("ReportLocation")).booleanValue();
        a.m32492a("ReportLocation", (C3438kv.AbstractC3439a) this);
        String str = f5597a;
        C3356jq.m32615a(4, str, "initSettings, ReportLocation = " + this.f5602f);
        this.f5603g = (Location) a.m32493a("ExplicitLocation");
        a.m32492a("ExplicitLocation", (C3438kv.AbstractC3439a) this);
        String str2 = f5597a;
        C3356jq.m32615a(4, str2, "initSettings, ExplicitLocation = " + this.f5603g);
    }

    /* renamed from: a */
    public static C3306ip m32731a() {
        C3306ip ipVar;
        synchronized (C3306ip.class) {
            try {
                if (f5601e == null) {
                    f5601e = new C3306ip();
                }
                ipVar = f5601e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ipVar;
    }

    /* renamed from: a */
    public static boolean m32730a(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0;
    }

    /* renamed from: b */
    public static int m32726b() {
        return f5598b;
    }

    /* renamed from: b */
    public static boolean m32725b(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0;
    }

    /* renamed from: c */
    public static int m32723c() {
        return f5599c;
    }

    /* renamed from: c */
    public static /* synthetic */ int m32722c(C3306ip ipVar) {
        int i = ipVar.f5609m + 1;
        ipVar.f5609m = i;
        return i;
    }

    /* renamed from: d */
    public static int m32721d() {
        return f5600d;
    }

    /* renamed from: a */
    public final Location m32727a(String str) {
        return !TextUtils.isEmpty(str) ? this.f5605i.getLastKnownLocation(str) : null;
    }

    @Override // com.flurry.sdk.C3438kv.AbstractC3439a
    /* renamed from: a */
    public final void mo32423a(String str, Object obj) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode != -864112343) {
            if (hashCode == -300729815 && str.equals("ExplicitLocation")) {
                c = 1;
            }
            c = 65535;
        } else {
            if (str.equals("ReportLocation")) {
                c = 0;
            }
            c = 65535;
        }
        if (c == 0) {
            this.f5602f = ((Boolean) obj).booleanValue();
            String str2 = f5597a;
            C3356jq.m32615a(4, str2, "onSettingUpdate, ReportLocation = " + this.f5602f);
        } else if (c != 1) {
            C3356jq.m32615a(6, f5597a, "LocationProvider internal error! Had to be LocationCriteria, ReportLocation or ExplicitLocation key.");
        } else {
            this.f5603g = (Location) obj;
            String str3 = f5597a;
            C3356jq.m32615a(4, str3, "onSettingUpdate, ExplicitLocation = " + this.f5603g);
        }
    }

    /* renamed from: e */
    public final void m32720e() {
        synchronized (this) {
            C3356jq.m32615a(4, f5597a, "Location update requested");
            if (this.f5609m < 3 && !this.f5608l && this.f5602f && this.f5603g == null) {
                Context context = C3331jb.m32681a().f5679a;
                if (context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0 || context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
                    this.f5609m = 0;
                    String str = m32730a(context) ? "passive" : m32725b(context) ? "network" : null;
                    if (!TextUtils.isEmpty(str)) {
                        this.f5605i.requestLocationUpdates(str, 10000L, 0.0f, this.f5606j, Looper.getMainLooper());
                    }
                    this.f5607k = m32727a(str);
                    this.f5604h = System.currentTimeMillis() + 90000;
                    if (this.f5610n != null) {
                        this.f5610n.cancel();
                        this.f5610n = null;
                    }
                    C3356jq.m32615a(4, f5597a, "Register location timer");
                    this.f5610n = new Timer();
                    this.f5610n.schedule(new TimerTask() { // from class: com.flurry.sdk.ip.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public final void run() {
                            if (C3306ip.this.f5604h > 0 && C3306ip.this.f5604h < System.currentTimeMillis()) {
                                C3356jq.m32615a(4, C3306ip.f5597a, "No location received in 90 seconds , stopping LocationManager");
                                C3306ip.this.m32716i();
                            }
                        }
                    }, 90000L);
                    this.f5608l = true;
                    C3356jq.m32615a(4, f5597a, "LocationProvider started");
                }
            }
        }
    }

    /* renamed from: f */
    public final void m32719f() {
        synchronized (this) {
            C3356jq.m32615a(4, f5597a, "Stop update location requested");
            m32716i();
        }
    }

    /* renamed from: g */
    public final Location m32718g() {
        Location location = this.f5603g;
        if (location != null) {
            return location;
        }
        Location location2 = null;
        if (this.f5602f) {
            Context context = C3331jb.m32681a().f5679a;
            if (!m32730a(context) && !m32725b(context)) {
                return null;
            }
            String str = m32730a(context) ? "passive" : m32725b(context) ? "network" : null;
            location2 = null;
            if (str != null) {
                Location a = m32727a(str);
                if (a != null) {
                    this.f5607k = a;
                }
                location2 = this.f5607k;
            }
        }
        C3356jq.m32615a(4, f5597a, "getLocation() = " + location2);
        return location2;
    }

    /* renamed from: i */
    public final void m32716i() {
        if (this.f5608l) {
            this.f5605i.removeUpdates(this.f5606j);
            this.f5609m = 0;
            this.f5604h = 0L;
            C3356jq.m32615a(4, f5597a, "Unregister location timer");
            Timer timer = this.f5610n;
            if (timer != null) {
                timer.cancel();
                this.f5610n = null;
            }
            this.f5608l = false;
            C3356jq.m32615a(4, f5597a, "LocationProvider stopped");
        }
    }
}
