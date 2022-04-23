package p131c.p161d.p282e.p340u.p349l;

import android.content.Context;
import android.content.pm.PackageManager;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p599h.C10236s;
/* renamed from: c.d.e.u.l.f */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/l/f.class */
public class C5998f {

    /* renamed from: a */
    public static Boolean f19478a;

    /* renamed from: a */
    public static int m22360a(long j) {
        if (j > 2147483647L) {
            return MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        }
        if (j < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j;
    }

    /* renamed from: a */
    public static String m22358a(String str) {
        C10236s e = C10236s.m937e(str);
        if (e != null) {
            C10236s.C10237a i = e.m932i();
            i.m903i("");
            i.m907f("");
            i.m905g(null);
            i.m917b(null);
            str = i.toString();
        }
        return str;
    }

    /* renamed from: a */
    public static String m22357a(String str, int i) {
        C10236s e;
        int lastIndexOf;
        if (str.length() <= i) {
            return str;
        }
        if (!(str.charAt(i) == '/' || (e = C10236s.m937e(str)) == null)) {
            return (e.m942c().lastIndexOf(47) < 0 || (lastIndexOf = str.lastIndexOf(47, i - 1)) < 0) ? str.substring(0, i) : str.substring(0, lastIndexOf);
        }
        return str.substring(0, i);
    }

    /* renamed from: a */
    public static void m22356a(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    /* renamed from: a */
    public static boolean m22359a(Context context) {
        Boolean bool = f19478a;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            Boolean valueOf = Boolean.valueOf(context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("firebase_performance_logcat_enabled", false));
            f19478a = valueOf;
            return valueOf.booleanValue();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            C5969a a = C5969a.m22496a();
            a.m22495a("No perf logcat meta data found " + e.getMessage(), new Object[0]);
            return false;
        }
    }
}
