package p000;

import android.annotation.TargetApi;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
@TargetApi(23)
/* renamed from: k91 */
/* loaded from: classes3-dex2jar.jar:k91.class */
public class k91 {

    /* renamed from: a */
    public static ConnectivityManager f6851a;

    /* renamed from: b */
    public static ConnectivityManager.NetworkCallback f6852b = null;

    static {
        new Handler(Looper.getMainLooper());
    }

    /* renamed from: a */
    public static void m1424a() {
        ConnectivityManager.NetworkCallback networkCallback;
        if (Build.VERSION.SDK_INT < 23) {
            l91.m1309b();
            return;
        }
        ConnectivityManager connectivityManager = f6851a;
        if (connectivityManager == null || (networkCallback = f6852b) == null) {
            return;
        }
        try {
            connectivityManager.unregisterNetworkCallback(networkCallback);
            f6852b = null;
        } catch (Throwable th) {
        }
    }
}
