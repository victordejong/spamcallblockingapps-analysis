package p124i4;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.play.core.install.InstallException;
import java.util.HashMap;
import java.util.Map;
import p029c4.C0821e;
import p156l4.C3495a;
import p189o4.C3873j;
import p189o4.C3875l;
import p201p6.C4018c;
import p220r4.C4206o;
/* renamed from: i4.r */
/* loaded from: classes-dex2jar.jar:i4/r.class */
public final class C3116r {

    /* renamed from: e */
    public static final C4018c f10544e = new C4018c("AppUpdateService");

    /* renamed from: f */
    public static final Intent f10545f = new Intent("com.google.android.play.core.install.BIND_UPDATE_SERVICE").setPackage("com.android.vending");

    /* renamed from: a */
    public C3873j f10546a;

    /* renamed from: b */
    public final String f10547b;

    /* renamed from: c */
    public final Context f10548c;

    /* renamed from: d */
    public final C3118t f10549d;

    public C3116r(Context context, C3118t c3118t) {
        this.f10547b = context.getPackageName();
        this.f10548c = context;
        this.f10549d = c3118t;
        if (C3875l.m1743b(context)) {
            Context applicationContext = context.getApplicationContext();
            this.f10546a = new C3873j(applicationContext != null ? applicationContext : context, f10544e, "AppUpdateService", f10545f, C0821e.f3001b, null);
        }
    }

    /* renamed from: a */
    public static /* bridge */ /* synthetic */ Bundle m2604a(C3116r c3116r, String str) {
        Integer num;
        Bundle bundle = new Bundle();
        bundle.putAll(m2603b());
        bundle.putString("package.name", str);
        try {
            num = Integer.valueOf(c3116r.f10548c.getPackageManager().getPackageInfo(c3116r.f10548c.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException e) {
            f10544e.m1509c("The current version of the app could not be retrieved", new Object[0]);
            num = null;
        }
        if (num != null) {
            bundle.putInt("app.version.code", num.intValue());
        }
        return bundle;
    }

    /* renamed from: b */
    public static Bundle m2603b() {
        Map map;
        Bundle bundle = new Bundle();
        Map map2 = C3495a.f11607a;
        Bundle bundle2 = new Bundle();
        synchronized (C3495a.class) {
            try {
                Map map3 = C3495a.f11607a;
                if (!((HashMap) map3).containsKey("app_update")) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("java", 11003);
                    ((HashMap) map3).put("app_update", hashMap);
                }
                map = (Map) ((HashMap) map3).get("app_update");
            } catch (Throwable th) {
                throw th;
            }
        }
        bundle2.putInt("playcore_version_code", ((Integer) map.get("java")).intValue());
        if (map.containsKey("native")) {
            bundle2.putInt("playcore_native_version", ((Integer) map.get("native")).intValue());
        }
        if (map.containsKey("unity")) {
            bundle2.putInt("playcore_unity_version", ((Integer) map.get("unity")).intValue());
        }
        bundle.putAll(bundle2);
        bundle.putInt("playcore.version.code", 11003);
        return bundle;
    }

    /* renamed from: c */
    public static C4206o m2602c() {
        f10544e.m1509c("onError(%d)", -9);
        InstallException installException = new InstallException(-9);
        C4206o c4206o = new C4206o();
        c4206o.m1289d(installException);
        return c4206o;
    }
}
