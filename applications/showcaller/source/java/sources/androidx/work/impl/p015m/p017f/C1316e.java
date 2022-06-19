package androidx.work.impl.p015m.p017f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import androidx.core.net.C0621a;
import androidx.work.AbstractC1404j;
import androidx.work.impl.p015m.C1298b;
import androidx.work.impl.utils.p019o.AbstractC1399a;
/* renamed from: androidx.work.impl.m.f.e */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/m/f/e.class */
public class C1316e extends AbstractC1314d<C1298b> {

    /* renamed from: g */
    static final String f5533g = AbstractC1404j.m30159f("NetworkStateTracker");

    /* renamed from: h */
    private final ConnectivityManager f5534h = (ConnectivityManager) this.f5527c.getSystemService("connectivity");

    /* renamed from: i */
    private C1318b f5535i;

    /* renamed from: j */
    private C1317a f5536j;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.work.impl.m.f.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/m/f/e$a.class */
    public class C1317a extends BroadcastReceiver {
        C1317a() {
            C1316e.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null || !intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                return;
            }
            AbstractC1404j.m30161c().mo30158a(C1316e.f5533g, "Network broadcast received", new Throwable[0]);
            C1316e c1316e = C1316e.this;
            c1316e.m30322d(c1316e.m30319g());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.work.impl.m.f.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/m/f/e$b.class */
    public class C1318b extends ConnectivityManager.NetworkCallback {
        C1318b() {
            C1316e.this = r4;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            AbstractC1404j.m30161c().mo30158a(C1316e.f5533g, String.format("Network capabilities changed: %s", networkCapabilities), new Throwable[0]);
            C1316e c1316e = C1316e.this;
            c1316e.m30322d(c1316e.m30319g());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            AbstractC1404j.m30161c().mo30158a(C1316e.f5533g, "Network connection lost", new Throwable[0]);
            C1316e c1316e = C1316e.this;
            c1316e.m30322d(c1316e.m30319g());
        }
    }

    public C1316e(Context context, AbstractC1399a abstractC1399a) {
        super(context, abstractC1399a);
        if (m30316j()) {
            this.f5535i = new C1318b();
        } else {
            this.f5536j = new C1317a();
        }
    }

    /* renamed from: j */
    private static boolean m30316j() {
        return Build.VERSION.SDK_INT >= 24;
    }

    @Override // androidx.work.impl.p015m.p017f.AbstractC1314d
    /* renamed from: e */
    public void mo30321e() {
        if (!m30316j()) {
            AbstractC1404j.m30161c().mo30158a(f5533g, "Registering broadcast receiver", new Throwable[0]);
            this.f5527c.registerReceiver(this.f5536j, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            return;
        }
        try {
            AbstractC1404j.m30161c().mo30158a(f5533g, "Registering network callback", new Throwable[0]);
            this.f5534h.registerDefaultNetworkCallback(this.f5535i);
        } catch (IllegalArgumentException | SecurityException e) {
            AbstractC1404j.m30161c().mo30157b(f5533g, "Received exception while registering network callback", e);
        }
    }

    @Override // androidx.work.impl.p015m.p017f.AbstractC1314d
    /* renamed from: f */
    public void mo30320f() {
        if (!m30316j()) {
            AbstractC1404j.m30161c().mo30158a(f5533g, "Unregistering broadcast receiver", new Throwable[0]);
            this.f5527c.unregisterReceiver(this.f5536j);
            return;
        }
        try {
            AbstractC1404j.m30161c().mo30158a(f5533g, "Unregistering network callback", new Throwable[0]);
            this.f5534h.unregisterNetworkCallback(this.f5535i);
        } catch (IllegalArgumentException | SecurityException e) {
            AbstractC1404j.m30161c().mo30157b(f5533g, "Received exception while unregistering network callback", e);
        }
    }

    /* renamed from: g */
    C1298b m30319g() {
        NetworkInfo activeNetworkInfo = this.f5534h.getActiveNetworkInfo();
        boolean z = true;
        boolean z2 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        boolean m30317i = m30317i();
        boolean m33203a = C0621a.m33203a(this.f5534h);
        if (activeNetworkInfo == null || activeNetworkInfo.isRoaming()) {
            z = false;
        }
        return new C1298b(z2, m30317i, m33203a, z);
    }

    /* renamed from: h */
    public C1298b mo30315b() {
        return m30319g();
    }

    /* renamed from: i */
    boolean m30317i() {
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        try {
            NetworkCapabilities networkCapabilities = this.f5534h.getNetworkCapabilities(this.f5534h.getActiveNetwork());
            boolean z = false;
            if (networkCapabilities != null) {
                z = false;
                if (networkCapabilities.hasCapability(16)) {
                    z = true;
                }
            }
            return z;
        } catch (SecurityException e) {
            AbstractC1404j.m30161c().mo30157b(f5533g, "Unable to validate active network", e);
            return false;
        }
    }
}
