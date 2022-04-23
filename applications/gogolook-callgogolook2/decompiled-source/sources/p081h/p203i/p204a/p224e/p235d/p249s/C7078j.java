package p081h.p203i.p204a.p224e.p235d.p249s;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
/* renamed from: h.i.a.e.d.s.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/s/j.class */
public final class C7078j {

    /* renamed from: a */
    public static Boolean f17185a;

    /* renamed from: b */
    public static Boolean f17186b;

    /* renamed from: c */
    public static Boolean f17187c;

    /* renamed from: a */
    public static boolean m21147a() {
        return "user".equals(Build.TYPE);
    }

    @TargetApi(21)
    /* renamed from: a */
    public static boolean m21146a(Context context) {
        return m21142d(context);
    }

    @TargetApi(20)
    /* renamed from: a */
    public static boolean m21145a(PackageManager packageManager) {
        if (f17185a == null) {
            f17185a = Boolean.valueOf(C7083o.m21125g() && packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        return f17185a.booleanValue();
    }

    @TargetApi(20)
    /* renamed from: b */
    public static boolean m21144b(Context context) {
        return m21145a(context.getPackageManager());
    }

    @TargetApi(26)
    /* renamed from: c */
    public static boolean m21143c(Context context) {
        if (!m21144b(context)) {
            return false;
        }
        if (C7083o.m21123i()) {
            return m21142d(context) && !C7083o.m21122j();
        }
        return true;
    }

    @TargetApi(21)
    /* renamed from: d */
    public static boolean m21142d(Context context) {
        if (f17186b == null) {
            f17186b = Boolean.valueOf(C7083o.m21124h() && context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return f17186b.booleanValue();
    }

    /* renamed from: e */
    public static boolean m21141e(Context context) {
        if (f17187c == null) {
            f17187c = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
        }
        return f17187c.booleanValue();
    }
}
