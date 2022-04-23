package p081h.p203i.p204a.p224e.p259j.p269j;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.NonNull;
import java.net.MalformedURLException;
import java.net.URL;
/* renamed from: h.i.a.e.j.j.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/e.class */
public final class C7790e {

    /* renamed from: a */
    public static Boolean f18219a;

    /* renamed from: a */
    public static int m19478a(@NonNull byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < 4 && i2 < bArr.length; i2++) {
            i |= (bArr[i2] & 255) << (i2 << 3);
        }
        return i;
    }

    /* renamed from: a */
    public static String m19480a(@NonNull String str) {
        String str2;
        String userInfo;
        try {
            URL url = new URL(str);
            String query = url.getQuery();
            str2 = str;
            if (query != null) {
                str2 = str.substring(0, str.indexOf(query) - 1);
            }
            userInfo = url.getUserInfo();
        } catch (MalformedURLException e) {
        }
        if (userInfo == null) {
            return str2;
        }
        str = str2.replace(String.valueOf(userInfo).concat("@"), "");
        return str;
    }

    /* renamed from: a */
    public static String m19479a(String str, int i) {
        int lastIndexOf;
        if (str.length() <= 2000) {
            return str;
        }
        if (str.charAt(2000) == '/') {
            return str.substring(0, 2000);
        }
        try {
            return (new URL(str).getPath().lastIndexOf(47) < 0 || (lastIndexOf = str.lastIndexOf(47, 1999)) < 0) ? str.substring(0, 2000) : str.substring(0, lastIndexOf);
        } catch (MalformedURLException e) {
            return str.substring(0, 2000);
        }
    }

    /* renamed from: a */
    public static boolean m19481a(@NonNull Context context) {
        Boolean bool = f18219a;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            Boolean valueOf = Boolean.valueOf(context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("firebase_performance_logcat_enabled", false));
            f18219a = valueOf;
            return valueOf.booleanValue();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            String valueOf2 = String.valueOf(e.getMessage());
            if (valueOf2.length() != 0) {
                "No perf logcat meta data found ".concat(valueOf2);
                return false;
            }
            new String("No perf logcat meta data found ");
            return false;
        }
    }
}
