package p131c.p372f.p373a.p374a.p375a.p385n;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
/* renamed from: c.f.a.a.a.n.f */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/n/f.class */
public class C6458f {
    /* renamed from: a */
    public static boolean m20820a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }
}
