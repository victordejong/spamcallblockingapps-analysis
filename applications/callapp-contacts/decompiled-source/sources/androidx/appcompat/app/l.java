package androidx.appcompat.app;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/l.class */
final class l {

    /* renamed from: c  reason: collision with root package name */
    private static l f683c;

    /* renamed from: a  reason: collision with root package name */
    final Context f684a;

    /* renamed from: b  reason: collision with root package name */
    final a f685b = new a();

    /* renamed from: d  reason: collision with root package name */
    private final LocationManager f686d;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/l$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f687a;

        /* renamed from: b  reason: collision with root package name */
        long f688b;

        /* renamed from: c  reason: collision with root package name */
        long f689c;

        /* renamed from: d  reason: collision with root package name */
        long f690d;
        long e;
        long f;

        a() {
        }
    }

    l(Context context, LocationManager locationManager) {
        this.f684a = context;
        this.f686d = locationManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l a(Context context) {
        if (f683c == null) {
            Context applicationContext = context.getApplicationContext();
            f683c = new l(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f683c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Location a(String str) {
        try {
            if (this.f686d.isProviderEnabled(str)) {
                return this.f686d.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }
}
