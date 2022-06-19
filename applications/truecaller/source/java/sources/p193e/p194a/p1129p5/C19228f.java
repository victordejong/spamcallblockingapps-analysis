package p193e.p194a.p1129p5;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkRequest;
import android.os.Build;
import androidx.lifecycle.LiveData;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.p5.f */
/* loaded from: classes15-dex2jar.jar:e/a/p5/f.class */
public final class C19228f extends LiveData<Boolean> {

    /* renamed from: l */
    public boolean f53591l;

    /* renamed from: m */
    public final C19226e f53592m = new C19226e(this);

    /* renamed from: n */
    public final ConnectivityManager f53593n;

    public C19228f(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        Object systemService = context.getApplicationContext().getSystemService("connectivity");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        l.e(connectivityManager, "connectivityManager");
        this.f53593n = connectivityManager;
    }

    @Override // androidx.lifecycle.LiveData
    /* renamed from: h */
    public void mo3056h() {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f53593n.registerDefaultNetworkCallback(this.f53592m);
            return;
        }
        this.f53593n.registerNetworkCallback(new NetworkRequest.Builder().addTransportType(0).addTransportType(1).build(), this.f53592m);
    }

    @Override // androidx.lifecycle.LiveData
    /* renamed from: i */
    public void mo3055i() {
        this.f53593n.unregisterNetworkCallback(this.f53592m);
    }
}
