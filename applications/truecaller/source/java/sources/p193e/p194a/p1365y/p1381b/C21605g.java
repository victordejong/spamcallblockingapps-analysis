package p193e.p194a.p1365y.p1381b;

import android.content.Context;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.y.b.g */
/* loaded from: classes9-dex2jar.jar:e/a/y/b/g.class */
public final class C21605g implements AbstractC21603f {

    /* renamed from: a */
    public final Context f60261a;

    public C21605g(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f60261a = context;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21603f
    /* renamed from: a */
    public boolean mo9384a() {
        return C26467a.m1801a(this.f60261a, "android.permission.READ_CONTACTS") == 0;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21603f
    /* renamed from: b */
    public boolean mo9383b() {
        NetworkInfo networkInfo = null;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f60261a.getSystemService("connectivity");
            if (connectivityManager != null) {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            }
        } catch (SecurityException e) {
        }
        return networkInfo != null && networkInfo.isConnected();
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21603f
    /* renamed from: c */
    public boolean mo9382c() {
        boolean z;
        boolean z2;
        Object systemService = this.f60261a.getSystemService("location");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.location.LocationManager");
        LocationManager locationManager = (LocationManager) systemService;
        try {
            z = locationManager.isProviderEnabled("gps");
        } catch (SecurityException e) {
            C10480a.m26061I1(e);
            z = false;
        }
        try {
            z2 = locationManager.isProviderEnabled(AnalyticsConstants.NETWORK);
        } catch (SecurityException e2) {
            C10480a.m26061I1(e2);
            z2 = false;
        }
        boolean z3 = false;
        if (!z) {
            z3 = false;
            if (!z2) {
                z3 = true;
            }
        }
        return z3;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21603f
    /* renamed from: d */
    public boolean mo9381d() {
        return C26467a.m1801a(this.f60261a, "android.permission.CALL_PHONE") == 0;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21603f
    /* renamed from: e */
    public boolean mo9380e() {
        return C26467a.m1801a(this.f60261a, "android.permission.ACCESS_FINE_LOCATION") == 0 && C26467a.m1801a(this.f60261a, "android.permission.ACCESS_COARSE_LOCATION") == 0;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21603f
    /* renamed from: f */
    public boolean mo9379f() {
        return Build.VERSION.SDK_INT >= 26;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21603f
    /* renamed from: g */
    public boolean mo9378g() {
        return Build.VERSION.SDK_INT >= 29;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21603f
    /* renamed from: h */
    public boolean mo9377h() {
        return C26467a.m1801a(this.f60261a, "android.permission.WRITE_EXTERNAL_STORAGE") == 0 && C26467a.m1801a(this.f60261a, "android.permission.READ_EXTERNAL_STORAGE") == 0;
    }
}
