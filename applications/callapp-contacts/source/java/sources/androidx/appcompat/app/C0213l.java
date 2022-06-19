package androidx.appcompat.app;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
/* renamed from: androidx.appcompat.app.l */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/l.class */
final class C0213l {

    /* renamed from: c */
    private static C0213l f558c;

    /* renamed from: a */
    final Context f559a;

    /* renamed from: b */
    final C0214a f560b = new C0214a();

    /* renamed from: d */
    private final LocationManager f561d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.app.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/l$a.class */
    public static final class C0214a {

        /* renamed from: a */
        boolean f562a;

        /* renamed from: b */
        long f563b;

        /* renamed from: c */
        long f564c;

        /* renamed from: d */
        long f565d;

        /* renamed from: e */
        long f566e;

        /* renamed from: f */
        long f567f;

        C0214a() {
        }
    }

    C0213l(Context context, LocationManager locationManager) {
        this.f559a = context;
        this.f561d = locationManager;
    }

    /* renamed from: a */
    public static C0213l m46248a(Context context) {
        if (f558c == null) {
            Context applicationContext = context.getApplicationContext();
            f558c = new C0213l(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f558c;
    }

    /* renamed from: a */
    public final Location m46247a(String str) {
        try {
            if (!this.f561d.isProviderEnabled(str)) {
                return null;
            }
            return this.f561d.getLastKnownLocation(str);
        } catch (Exception e) {
            return null;
        }
    }
}
