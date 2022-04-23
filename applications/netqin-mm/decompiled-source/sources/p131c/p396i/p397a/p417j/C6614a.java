package p131c.p396i.p397a.p417j;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.library.p518ad.core.BaseAdResult;
import java.util.Arrays;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p398e.C6520j;
/* renamed from: c.i.a.j.a */
/* loaded from: classes2-dex2jar.jar:c/i/a/j/a.class */
public class C6614a {

    /* renamed from: a */
    public static boolean f20428a = true;

    /* renamed from: b */
    public static final Handler f20429b = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    public static String m20365a(Object... objArr) {
        String str;
        Object[] objArr2 = new Object[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            if (!(obj instanceof AbstractC6508d) && !(obj instanceof C6520j)) {
                str = obj;
                if (!(obj instanceof BaseAdResult)) {
                    objArr2[i] = str;
                }
            }
            str = obj.getClass().getSimpleName() + '@' + obj.hashCode();
            objArr2[i] = str;
        }
        String arrays = Arrays.toString(objArr2);
        String str2 = arrays;
        try {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[4];
            String className = stackTraceElement.getClassName();
            String substring = className.substring(className.lastIndexOf(".") + 1);
            String str3 = substring;
            if (className.indexOf("$") != -1) {
                str3 = substring.substring(0, substring.indexOf("$"));
            }
            String format = String.format("%s.%s(%s:%s):%s", str3, stackTraceElement.getMethodName(), stackTraceElement.getFileName(), Integer.valueOf(stackTraceElement.getLineNumber()), arrays);
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append(Thread.currentThread().getName());
            sb.append("] ");
            sb.append(format);
            str2 = format;
            str2 = sb.toString();
        } catch (Exception e) {
            Log.e("GA_AD", e.toString());
        }
        return str2;
    }

    /* renamed from: a */
    public static void m20367a(Runnable runnable) {
        f20429b.post(runnable);
    }

    /* renamed from: a */
    public static void m20366a(Runnable runnable, long j) {
        f20429b.postDelayed(runnable, j);
    }

    /* renamed from: a */
    public static boolean m20369a() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) C6489a.m20718b().getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* renamed from: a */
    public static boolean m20368a(Context context, String str) {
        try {
            return context.getPackageManager().getApplicationInfo(str, 0) != null;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* renamed from: b */
    public static void m20364b(Runnable runnable) {
        f20429b.removeCallbacks(runnable);
    }

    /* renamed from: b */
    public static void m20363b(Object... objArr) {
        if (f20428a) {
            Log.d("GA_AD", m20365a(objArr));
        }
    }
}
