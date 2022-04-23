package p131c.p431l.p432a.p467m;

import android.content.SharedPreferences;
import p131c.p431l.p432a.p468n.C6854m;
/* renamed from: c.l.a.m.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/m/a.class */
public class C6838a {

    /* renamed from: a */
    public static final SharedPreferences f21039a = C6854m.m19559a("Setting");

    /* renamed from: a */
    public static long m19616a() {
        return ((Long) C6854m.m19560a(f21039a, "ENTER_SPLASH_TIME", 0L)).longValue();
    }

    /* renamed from: a */
    public static void m19615a(int i) {
        C6854m.m19557b(f21039a, "ENTER_SPLASH_TIMES", Integer.valueOf(i));
    }

    /* renamed from: a */
    public static void m19614a(boolean z) {
        C6854m.m19557b(f21039a, "FIRST_ENTER_SPLASH", Boolean.valueOf(z));
    }

    /* renamed from: b */
    public static int m19613b() {
        return ((Integer) C6854m.m19560a(f21039a, "ENTER_SPLASH_TIMES", 0)).intValue();
    }

    /* renamed from: c */
    public static boolean m19612c() {
        return ((Boolean) C6854m.m19560a(f21039a, "FIRST_ENTER_SPLASH", true)).booleanValue();
    }

    /* renamed from: d */
    public static void m19611d() {
        C6854m.m19557b(f21039a, "ENTER_SPLASH_TIME", Long.valueOf(System.currentTimeMillis()));
    }
}
