package p193e.p194a.p1129p5;

import android.net.ConnectivityManager;
import android.net.Network;
import com.razorpay.AnalyticsConstants;
import s1.z.c.l;
/* renamed from: e.a.p5.e */
/* loaded from: classes15-dex2jar.jar:e/a/p5/e.class */
public final class C19226e extends ConnectivityManager.NetworkCallback {

    /* renamed from: a */
    public final /* synthetic */ C19228f f53590a;

    public C19226e(C19228f c19228f) {
        this.f53590a = c19228f;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        l.e(network, AnalyticsConstants.NETWORK);
        C19228f c19228f = this.f53590a;
        if (!c19228f.f53591l) {
            c19228f.f53591l = true;
        } else {
            c19228f.mo1001j(Boolean.TRUE);
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        l.e(network, AnalyticsConstants.NETWORK);
        C19228f c19228f = this.f53590a;
        if (!c19228f.f53591l) {
            c19228f.f53591l = true;
        } else {
            c19228f.mo1001j(Boolean.FALSE);
        }
    }
}
