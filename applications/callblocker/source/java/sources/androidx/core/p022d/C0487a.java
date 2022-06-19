package androidx.core.p022d;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
/* renamed from: androidx.core.d.a */
/* loaded from: classes-dex2jar.jar:androidx/core/d/a.class */
public final class C0487a {
    /* renamed from: a */
    public static boolean m20725a(ConnectivityManager connectivityManager) {
        boolean z;
        if (Build.VERSION.SDK_INT < 16) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            z = true;
            if (activeNetworkInfo != null) {
                z = true;
                switch (activeNetworkInfo.getType()) {
                    case 0:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        break;
                    case 1:
                    case 7:
                    case 9:
                        z = false;
                        break;
                    case 8:
                    default:
                        z = true;
                        break;
                }
            }
        } else {
            z = connectivityManager.isActiveNetworkMetered();
        }
        return z;
    }
}
