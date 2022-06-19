package p180n6;

import android.content.Context;
import android.content.pm.PackageManager;
import android.support.p012v4.media.C0082b;
import com.google.android.gms.common.api.Api;
import p104g6.C2905a;
/* renamed from: n6.f */
/* loaded from: classes-dex2jar.jar:n6/f.class */
public class C3731f {

    /* renamed from: a */
    public static Boolean f12121a;

    /* renamed from: a */
    public static boolean m1837a(Context context) {
        Boolean bool = f12121a;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            Boolean valueOf = Boolean.valueOf(context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("firebase_performance_logcat_enabled", false));
            f12121a = valueOf;
            return valueOf.booleanValue();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            C2905a m2869b = C2905a.m2869b();
            StringBuilder m8752j = C0082b.m8752j("No perf logcat meta data found ");
            m8752j.append(e.getMessage());
            m2869b.m2870a(m8752j.toString());
            return false;
        }
    }

    /* renamed from: b */
    public static int m1836b(long j) {
        if (j > 2147483647L) {
            return Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        if (j >= -2147483648L) {
            return (int) j;
        }
        return Integer.MIN_VALUE;
    }
}
