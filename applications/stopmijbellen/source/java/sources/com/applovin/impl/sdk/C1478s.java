package com.applovin.impl.sdk;

import android.annotation.SuppressLint;
import android.location.Location;
import android.location.LocationManager;
import android.provider.Settings;
import androidx.recyclerview.widget.C0608b;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.C1492g;
import java.util.concurrent.TimeUnit;
/* renamed from: com.applovin.impl.sdk.s */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/s.class */
public class C1478s {

    /* renamed from: a */
    private final C1408l f5567a;

    /* renamed from: b */
    private final LocationManager f5568b;

    /* renamed from: c */
    private C1477r f5569c;

    public C1478s(C1408l c1408l) {
        this.f5567a = c1408l;
        this.f5568b = (LocationManager) c1408l.m5532K().getSystemService("location");
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: a */
    private Location m5125a(String str, String str2) {
        StringBuilder sb;
        Throwable th;
        C1479t c1479t;
        String str3;
        if (!C1492g.m5074a(str2, this.f5567a.m5532K())) {
            return null;
        }
        try {
            return this.f5568b.getLastKnownLocation(str);
        } catch (IllegalArgumentException e) {
            th = e;
            c1479t = this.f5567a.m5542A();
            sb = C0608b.m7624k("Failed to retrieve location from ", str);
            str3 = ": device does not support this location provider.";
            sb.append(str3);
            c1479t.m5115b("LocationManager", sb.toString(), th);
            return null;
        } catch (NullPointerException e2) {
            th = e2;
            c1479t = this.f5567a.m5542A();
            sb = C0608b.m7624k("Failed to retrieve location from ", str);
            str3 = ": location provider is not available.";
            sb.append(str3);
            c1479t.m5115b("LocationManager", sb.toString(), th);
            return null;
        } catch (SecurityException e3) {
            th = e3;
            c1479t = this.f5567a.m5542A();
            sb = C0608b.m7624k("Failed to retrieve location from ", str);
            str3 = ": access denied.";
            sb.append(str3);
            c1479t.m5115b("LocationManager", sb.toString(), th);
            return null;
        } catch (Throwable th2) {
            th = th2;
            c1479t = this.f5567a.m5542A();
            sb = C0608b.m7624k("Failed to retrieve location from ", str);
            str3 = ".";
            sb.append(str3);
            c1479t.m5115b("LocationManager", sb.toString(), th);
            return null;
        }
    }

    /* renamed from: a */
    public boolean m5126a() {
        return C1492g.m5074a("android.permission.ACCESS_COARSE_LOCATION", this.f5567a.m5532K());
    }

    /* renamed from: b */
    public boolean m5124b() {
        if (C1492g.m5068g()) {
            return this.f5568b.isLocationEnabled();
        }
        boolean z = true;
        if (C1492g.m5072c()) {
            z = Settings.Secure.getInt(this.f5567a.m5532K().getContentResolver(), "location_mode", 0) != 0;
        }
        return z;
    }

    /* renamed from: c */
    public C1477r m5123c() {
        if (this.f5567a.m5454p().isLocationCollectionEnabled() && ((Boolean) this.f5567a.m5511a(C1314b.f4897dV)).booleanValue()) {
            long millis = TimeUnit.MINUTES.toMillis(((Long) this.f5567a.m5511a(C1314b.f4898dW)).longValue());
            if (this.f5569c != null && System.currentTimeMillis() - this.f5569c.m5127c() < millis) {
                return this.f5569c;
            }
            Location m5125a = m5125a("gps", "android.permission.ACCESS_FINE_LOCATION");
            Location location = m5125a;
            if (m5125a == null) {
                location = m5125a("network", "android.permission.ACCESS_COARSE_LOCATION");
            }
            if (location != null) {
                this.f5569c = new C1477r(location.getLatitude(), location.getLongitude(), System.currentTimeMillis());
            }
            return this.f5569c;
        }
        return null;
    }
}
