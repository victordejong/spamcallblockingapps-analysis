package p459j.p460a.p521j0.p522u.p523d;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import gogolook.callgogolook2.MyApplication;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14031j;
import p459j.p460a.p582w0.C14217x3;
import p626l.C14986p;
/* renamed from: j.a.j0.u.d.k0 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/k0.class */
public final class C12629k0 {

    /* renamed from: a */
    public static int f28455a;

    /* renamed from: b */
    public static int f28456b;

    /* renamed from: c */
    public static int f28457c;

    /* renamed from: d */
    public static int f28458d;

    /* renamed from: e */
    public static int f28459e;

    /* renamed from: f */
    public static final C12629k0 f28460f = new C12629k0();

    /* renamed from: b */
    public static final int m5713b() {
        f28460f.m5714a();
        return f28459e;
    }

    /* renamed from: c */
    public static final int m5712c() {
        f28460f.m5714a();
        return f28458d;
    }

    /* renamed from: d */
    public static final int m5711d() {
        return C13915b3.m3066a("calldialog_landscape_y", m5713b());
    }

    /* renamed from: e */
    public static final int m5710e() {
        return C13915b3.m3066a("calldialog_portrait_y", m5712c());
    }

    /* renamed from: f */
    public static final int m5709f() {
        f28460f.m5714a();
        return f28455a;
    }

    /* renamed from: g */
    public static final int m5708g() {
        f28460f.m5714a();
        return f28457c;
    }

    /* renamed from: h */
    public static final int m5707h() {
        return C14031j.m2744a("search_slow_test");
    }

    /* renamed from: i */
    public static final boolean m5706i() {
        return (m5710e() == m5712c() && m5711d() == m5713b()) ? false : true;
    }

    /* renamed from: a */
    public final void m5714a() {
        if (f28455a == 0 || f28456b == 0 || f28457c == 0 || f28458d == 0 || f28459e == 0) {
            Context o = MyApplication.m29013o();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            Object systemService = o.getSystemService("window");
            if (systemService != null) {
                ((WindowManager) systemService).getDefaultDisplay().getMetrics(displayMetrics);
                int i = displayMetrics.widthPixels;
                int i2 = displayMetrics.heightPixels;
                if (i >= i2) {
                    i = i2;
                }
                int i3 = displayMetrics.widthPixels;
                int i4 = displayMetrics.heightPixels;
                if (i3 < i4) {
                    i3 = i4;
                }
                f28455a = i;
                float f = i;
                f28456b = (int) (0.96f * f);
                f28457c = (int) (f * 0.8f);
                int n = C14217x3.m2122n();
                f28458d = ((int) (i3 * 0.35d)) - n;
                f28459e = ((int) (i * 0.5d)) - n;
                return;
            }
            throw new C14986p("null cannot be cast to non-null type android.view.WindowManager");
        }
    }
}
