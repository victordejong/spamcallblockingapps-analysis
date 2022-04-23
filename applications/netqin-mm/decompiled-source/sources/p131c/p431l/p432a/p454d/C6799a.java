package p131c.p431l.p432a.p454d;

import android.content.SharedPreferences;
import com.netqin.p525cm.permission.CBPermissionsHelper;
import p131c.p431l.p432a.p468n.C6854m;
/* renamed from: c.l.a.d.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/d/a.class */
public class C6799a {

    /* renamed from: a */
    public static final SharedPreferences f20934a = C6854m.m19559a("cb_caller");

    /* renamed from: a */
    public static int m19767a() {
        return ((Integer) C6854m.m19560a(f20934a, "CALLER_SWITCH", 0)).intValue();
    }

    /* renamed from: a */
    public static void m19766a(int i) {
        C6854m.m19557b(f20934a, "CALLER_SWITCH", Integer.valueOf(i));
    }

    /* renamed from: a */
    public static void m19765a(boolean z) {
        C6854m.m19557b(f20934a, "BLOCKED_CALL_IS_SUCCESS", Boolean.valueOf(z));
    }

    /* renamed from: b */
    public static boolean m19764b() {
        int a = m19767a();
        boolean z = true;
        if (!(a == 1 || a == 3) || !CBPermissionsHelper.m3287b()) {
            z = false;
        }
        return z;
    }
}
