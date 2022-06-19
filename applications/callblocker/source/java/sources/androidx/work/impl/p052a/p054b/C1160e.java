package androidx.work.impl.p052a.p054b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import androidx.core.p022d.C0487a;
import androidx.work.AbstractC1293l;
import androidx.work.impl.p052a.C1153b;
import androidx.work.impl.utils.p058b.AbstractC1271a;
/* renamed from: androidx.work.impl.a.b.e */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/e.class */
public class C1160e extends AbstractC1158d<C1153b> {

    /* renamed from: d */
    static final String f3962d = AbstractC1293l.m17541a("NetworkStateTracker");

    /* renamed from: e */
    private final ConnectivityManager f3963e = (ConnectivityManager) this.f3956b.getSystemService("connectivity");

    /* renamed from: f */
    private C1162b f3964f;

    /* renamed from: g */
    private C1161a f3965g;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.work.impl.a.b.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/e$a.class */
    public class C1161a extends BroadcastReceiver {
        C1161a() {
            C1160e.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null || !intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                return;
            }
            AbstractC1293l.m17543a().mo17539b(C1160e.f3962d, "Network broadcast received", new Throwable[0]);
            C1160e.this.m17848a((C1160e) C1160e.this.m17845b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.work.impl.a.b.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/e$b.class */
    public class C1162b extends ConnectivityManager.NetworkCallback {
        C1162b() {
            C1160e.this = r4;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            AbstractC1293l.m17543a().mo17539b(C1160e.f3962d, String.format("Network capabilities changed: %s", networkCapabilities), new Throwable[0]);
            C1160e.this.m17848a((C1160e) C1160e.this.m17845b());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            AbstractC1293l.m17543a().mo17539b(C1160e.f3962d, "Network connection lost", new Throwable[0]);
            C1160e.this.m17848a((C1160e) C1160e.this.m17845b());
        }
    }

    public C1160e(Context context, AbstractC1271a abstractC1271a) {
        super(context, abstractC1271a);
        if (m17842f()) {
            this.f3964f = new C1162b();
        } else {
            this.f3965g = new C1161a();
        }
    }

    /* renamed from: f */
    private static boolean m17842f() {
        return Build.VERSION.SDK_INT >= 24;
    }

    /* renamed from: g */
    private boolean m17841g() {
        boolean z;
        if (Build.VERSION.SDK_INT < 23) {
            z = false;
        } else {
            NetworkCapabilities networkCapabilities = this.f3963e.getNetworkCapabilities(this.f3963e.getActiveNetwork());
            z = false;
            if (networkCapabilities != null) {
                z = false;
                if (networkCapabilities.hasCapability(16)) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public C1153b mo17837c() {
        return m17845b();
    }

    /* renamed from: b */
    C1153b m17845b() {
        boolean z = true;
        NetworkInfo activeNetworkInfo = this.f3963e.getActiveNetworkInfo();
        boolean z2 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        boolean m17841g = m17841g();
        boolean m20725a = C0487a.m20725a(this.f3963e);
        if (activeNetworkInfo == null || activeNetworkInfo.isRoaming()) {
            z = false;
        }
        return new C1153b(z2, m17841g, m20725a, z);
    }

    @Override // androidx.work.impl.p052a.p054b.AbstractC1158d
    /* renamed from: d */
    public void mo17844d() {
        if (!m17842f()) {
            AbstractC1293l.m17543a().mo17539b(f3962d, "Registering broadcast receiver", new Throwable[0]);
            this.f3956b.registerReceiver(this.f3965g, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            return;
        }
        try {
            AbstractC1293l.m17543a().mo17539b(f3962d, "Registering network callback", new Throwable[0]);
            this.f3963e.registerDefaultNetworkCallback(this.f3964f);
        } catch (IllegalArgumentException e) {
            AbstractC1293l.m17543a().mo17536e(f3962d, "Received exception while unregistering network callback", e);
        }
    }

    @Override // androidx.work.impl.p052a.p054b.AbstractC1158d
    /* renamed from: e */
    public void mo17843e() {
        if (!m17842f()) {
            AbstractC1293l.m17543a().mo17539b(f3962d, "Unregistering broadcast receiver", new Throwable[0]);
            this.f3956b.unregisterReceiver(this.f3965g);
            return;
        }
        try {
            AbstractC1293l.m17543a().mo17539b(f3962d, "Unregistering network callback", new Throwable[0]);
            this.f3963e.unregisterNetworkCallback(this.f3964f);
        } catch (IllegalArgumentException e) {
            AbstractC1293l.m17543a().mo17536e(f3962d, "Received exception while unregistering network callback", e);
        }
    }
}
