package p1727n3.p1834m0.p1835c0.p1840q.p1842f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.p1835c0.p1840q.C26723b;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.AbstractC26821a;
/* renamed from: n3.m0.c0.q.f.e */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/q/f/e.class */
public class C26732e extends AbstractC26730d<C26723b> {

    /* renamed from: j */
    public static final String f74847j = AbstractC26839p.m1295e("NetworkStateTracker");

    /* renamed from: g */
    public final ConnectivityManager f74848g = (ConnectivityManager) this.f74841b.getSystemService("connectivity");

    /* renamed from: h */
    public C26734b f74849h;

    /* renamed from: i */
    public C26733a f74850i;

    /* renamed from: n3.m0.c0.q.f.e$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/q/f/e$a.class */
    public class C26733a extends BroadcastReceiver {
        public C26733a() {
            C26732e.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null || !intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                return;
            }
            AbstractC26839p.m1296c().mo1294a(C26732e.f74847j, "Network broadcast received", new Throwable[0]);
            C26732e c26732e = C26732e.this;
            c26732e.m1384c(c26732e.m1380f());
        }
    }

    /* renamed from: n3.m0.c0.q.f.e$b */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/q/f/e$b.class */
    public class C26734b extends ConnectivityManager.NetworkCallback {
        public C26734b() {
            C26732e.this = r4;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            AbstractC26839p.m1296c().mo1294a(C26732e.f74847j, String.format("Network capabilities changed: %s", networkCapabilities), new Throwable[0]);
            C26732e c26732e = C26732e.this;
            c26732e.m1384c(c26732e.m1380f());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            AbstractC26839p.m1296c().mo1294a(C26732e.f74847j, "Network connection lost", new Throwable[0]);
            C26732e c26732e = C26732e.this;
            c26732e.m1384c(c26732e.m1380f());
        }
    }

    public C26732e(Context context, AbstractC26821a abstractC26821a) {
        super(context, abstractC26821a);
        if (m1379g()) {
            this.f74849h = new C26734b();
        } else {
            this.f74850i = new C26733a();
        }
    }

    /* renamed from: g */
    public static boolean m1379g() {
        return Build.VERSION.SDK_INT >= 24;
    }

    @Override // p1727n3.p1834m0.p1835c0.p1840q.p1842f.AbstractC26730d
    /* renamed from: a */
    public C26723b mo1383a() {
        return m1380f();
    }

    @Override // p1727n3.p1834m0.p1835c0.p1840q.p1842f.AbstractC26730d
    /* renamed from: d */
    public void mo1382d() {
        if (!m1379g()) {
            AbstractC26839p.m1296c().mo1294a(f74847j, "Registering broadcast receiver", new Throwable[0]);
            this.f74841b.registerReceiver(this.f74850i, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            return;
        }
        try {
            AbstractC26839p.m1296c().mo1294a(f74847j, "Registering network callback", new Throwable[0]);
            this.f74848g.registerDefaultNetworkCallback(this.f74849h);
        } catch (IllegalArgumentException | SecurityException e) {
            AbstractC26839p.m1296c().mo1293b(f74847j, "Received exception while registering network callback", e);
        }
    }

    @Override // p1727n3.p1834m0.p1835c0.p1840q.p1842f.AbstractC26730d
    /* renamed from: e */
    public void mo1381e() {
        if (!m1379g()) {
            AbstractC26839p.m1296c().mo1294a(f74847j, "Unregistering broadcast receiver", new Throwable[0]);
            this.f74841b.unregisterReceiver(this.f74850i);
            return;
        }
        try {
            AbstractC26839p.m1296c().mo1294a(f74847j, "Unregistering network callback", new Throwable[0]);
            this.f74848g.unregisterNetworkCallback(this.f74849h);
        } catch (IllegalArgumentException | SecurityException e) {
            AbstractC26839p.m1296c().mo1293b(f74847j, "Received exception while unregistering network callback", e);
        }
    }

    /* renamed from: f */
    public C26723b m1380f() {
        boolean z;
        NetworkCapabilities networkCapabilities;
        NetworkInfo activeNetworkInfo = this.f74848g.getActiveNetworkInfo();
        boolean z2 = true;
        boolean z3 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        try {
            networkCapabilities = this.f74848g.getNetworkCapabilities(this.f74848g.getActiveNetwork());
        } catch (SecurityException e) {
            AbstractC26839p.m1296c().mo1293b(f74847j, "Unable to validate active network", e);
        }
        if (networkCapabilities != null) {
            if (networkCapabilities.hasCapability(16)) {
                z = true;
                boolean isActiveNetworkMetered = this.f74848g.isActiveNetworkMetered();
                if (activeNetworkInfo != null || activeNetworkInfo.isRoaming()) {
                    z2 = false;
                }
                return new C26723b(z3, z, isActiveNetworkMetered, z2);
            }
        }
        z = false;
        boolean isActiveNetworkMetered2 = this.f74848g.isActiveNetworkMetered();
        if (activeNetworkInfo != null) {
        }
        z2 = false;
        return new C26723b(z3, z, isActiveNetworkMetered2, z2);
    }
}
