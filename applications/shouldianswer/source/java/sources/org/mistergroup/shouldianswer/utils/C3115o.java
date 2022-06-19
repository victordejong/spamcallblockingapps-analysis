package org.mistergroup.shouldianswer.utils;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.provider.Settings;
import android.view.View;
import android.view.WindowManager;
import androidx.core.p015a.C0409a;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
/* renamed from: org.mistergroup.shouldianswer.utils.o */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/o.class */
public final class C3115o {

    /* renamed from: a */
    public static final C3115o f9175a = new C3115o();

    /* renamed from: b */
    private static boolean f9176b;

    /* renamed from: c */
    private static boolean f9177c;

    /* renamed from: d */
    private static boolean f9178d;

    /* renamed from: e */
    private static boolean f9179e;

    /* renamed from: f */
    private static boolean f9180f;

    /* renamed from: g */
    private static boolean f9181g;

    /* renamed from: h */
    private static boolean f9182h;

    private C3115o() {
    }

    /* renamed from: a */
    private final boolean m122a(Context context, String str) {
        boolean z = false;
        try {
            if (C0409a.m6752a(context, str) == 0) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return false;
        }
    }

    /* renamed from: a */
    public final void m123a(Context context) {
        C1694h.m3117b(context, "context");
        try {
            if (m121b()) {
                context.startActivity(new Intent("android.settings.MANAGE_DEFAULT_APPS_SETTINGS"));
            } else {
                context.startActivity(new Intent("android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"));
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: a */
    public final boolean m124a() {
        return Build.VERSION.SDK_INT == 23;
    }

    /* renamed from: b */
    public final boolean m121b() {
        return Build.VERSION.SDK_INT >= 24;
    }

    /* renamed from: c */
    public final boolean m120c() {
        return Build.VERSION.SDK_INT >= 26;
    }

    /* renamed from: d */
    public final Context m119d() {
        MyApp myApp;
        if (m121b()) {
            myApp = MyApp.f5480c.m1802a().createDeviceProtectedStorageContext();
            C1694h.m3122a((Object) myApp, "MyApp.instance.createDev…ProtectedStorageContext()");
        } else {
            myApp = MyApp.f5480c.m1802a();
        }
        return myApp;
    }

    /* renamed from: e */
    public final boolean m118e() {
        if (!f9176b) {
            f9176b = m122a(MyApp.f5480c.m1802a(), "android.permission.CALL_PHONE");
        }
        return f9176b;
    }

    /* renamed from: f */
    public final boolean m117f() {
        if (!f9177c) {
            f9177c = m122a(MyApp.f5480c.m1802a(), "android.permission.READ_CALL_LOG");
        }
        return f9177c;
    }

    /* renamed from: g */
    public final boolean m116g() {
        if (!f9178d) {
            f9178d = m122a(MyApp.f5480c.m1802a(), "android.permission.WRITE_CALL_LOG");
        }
        return f9178d;
    }

    /* renamed from: h */
    public final boolean m115h() {
        if (!f9179e) {
            f9179e = m122a(MyApp.f5480c.m1802a(), "android.permission.READ_PHONE_STATE");
        }
        return f9179e;
    }

    /* renamed from: i */
    public final boolean m114i() {
        if (!f9180f) {
            f9180f = m122a(MyApp.f5480c.m1802a(), "android.permission.PROCESS_OUTGOING_CALLS");
        }
        return f9180f;
    }

    /* renamed from: j */
    public final boolean m113j() {
        if (!f9181g) {
            f9181g = m122a(MyApp.f5480c.m1802a(), "android.permission.READ_CONTACTS");
        }
        return f9181g;
    }

    /* renamed from: k */
    public final boolean m112k() {
        if (!f9182h) {
            f9182h = m122a(MyApp.f5480c.m1802a(), "android.permission.WRITE_CONTACTS");
        }
        return f9182h;
    }

    /* renamed from: l */
    public final boolean m111l() {
        boolean z = false;
        try {
            boolean canDrawOverlays = Settings.canDrawOverlays(MyApp.f5480c.m1802a());
            z = canDrawOverlays;
            if (!canDrawOverlays) {
                z = canDrawOverlays;
                if (m120c()) {
                    try {
                        WindowManager m17g = C3135y.f9272b.m17g();
                        View view = new View(MyApp.f5480c.m1802a());
                        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(0, 0, 2038, 24, -2);
                        view.setLayoutParams(layoutParams);
                        m17g.addView(view, layoutParams);
                        m17g.removeView(view);
                        z = true;
                    } catch (Exception e) {
                        z = canDrawOverlays;
                        e.printStackTrace();
                        z = canDrawOverlays;
                    }
                }
            }
        } catch (Exception e2) {
            C3104j.m158a(C3104j.f9124a, e2, (String) null, 2, (Object) null);
        }
        return z;
    }

    /* renamed from: m */
    public final boolean m110m() {
        return f9175a.m118e() && f9175a.m114i() && f9175a.m117f() && f9175a.m115h();
    }
}
