package p000;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import p000.r71;
@TargetApi(24)
/* renamed from: sa1 */
/* loaded from: classes3-dex2jar.jar:sa1.class */
public class sa1 extends ConnectivityManager.NetworkCallback {

    /* renamed from: a */
    public static boolean f8096a = true;

    /* renamed from: a */
    public void m603a(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null) {
            connectivityManager.unregisterNetworkCallback(this);
        }
    }

    /* renamed from: b */
    public void m602b(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null) {
            connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addTransportType(0).addTransportType(1).build(), this);
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        Context m1839k;
        Context m1839k2;
        if (f8096a) {
            f8096a = false;
            j61.m1539d();
            if (r71.m709m().length > 0 && (m1839k2 = fa1.m1839k()) != null) {
                nf.b(m1839k2).d(new Intent("com.kedlin.cch.intent.INTENT_ACTION_CHECK_ADV_ID"));
            }
            if (!r71.EnumC1638a.f7926V.m695a() || (m1839k = fa1.m1839k()) == null) {
                return;
            }
            nf.b(m1839k).d(new Intent(aa1.f215h));
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        f8096a = true;
        super.onLost(network);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onUnavailable() {
        f8096a = true;
        super.onUnavailable();
    }
}
