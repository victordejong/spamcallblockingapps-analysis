package p260v1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import p003a2.AbstractC0008a;
import p186o1.AbstractC3824h;
import p238t1.C4353b;
/* renamed from: v1.e */
/* loaded from: classes-dex2jar.jar:v1/e.class */
public class C4582e extends AbstractC4580d<C4353b> {

    /* renamed from: j */
    public static final String f14164j = AbstractC3824h.m1773e("NetworkStateTracker");

    /* renamed from: g */
    public final ConnectivityManager f14165g = (ConnectivityManager) this.f14158b.getSystemService("connectivity");

    /* renamed from: h */
    public C4584b f14166h;

    /* renamed from: i */
    public C4583a f14167i;

    /* renamed from: v1.e$a */
    /* loaded from: classes-dex2jar.jar:v1/e$a.class */
    public class C4583a extends BroadcastReceiver {
        public C4583a() {
            C4582e.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null || !intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                return;
            }
            AbstractC3824h.m1774c().mo1772a(C4582e.f14164j, "Network broadcast received", new Throwable[0]);
            C4582e c4582e = C4582e.this;
            c4582e.m759c(c4582e.m756f());
        }
    }

    /* renamed from: v1.e$b */
    /* loaded from: classes-dex2jar.jar:v1/e$b.class */
    public class C4584b extends ConnectivityManager.NetworkCallback {
        public C4584b() {
            C4582e.this = r4;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            AbstractC3824h.m1774c().mo1772a(C4582e.f14164j, String.format("Network capabilities changed: %s", networkCapabilities), new Throwable[0]);
            C4582e c4582e = C4582e.this;
            c4582e.m759c(c4582e.m756f());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            AbstractC3824h.m1774c().mo1772a(C4582e.f14164j, "Network connection lost", new Throwable[0]);
            C4582e c4582e = C4582e.this;
            c4582e.m759c(c4582e.m756f());
        }
    }

    public C4582e(Context context, AbstractC0008a abstractC0008a) {
        super(context, abstractC0008a);
        if (m755g()) {
            this.f14166h = new C4584b();
        } else {
            this.f14167i = new C4583a();
        }
    }

    /* renamed from: g */
    public static boolean m755g() {
        return Build.VERSION.SDK_INT >= 24;
    }

    @Override // p260v1.AbstractC4580d
    /* renamed from: a */
    public C4353b mo754a() {
        return m756f();
    }

    @Override // p260v1.AbstractC4580d
    /* renamed from: d */
    public void mo758d() {
        if (!m755g()) {
            AbstractC3824h.m1774c().mo1772a(f14164j, "Registering broadcast receiver", new Throwable[0]);
            this.f14158b.registerReceiver(this.f14167i, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            return;
        }
        try {
            AbstractC3824h.m1774c().mo1772a(f14164j, "Registering network callback", new Throwable[0]);
            this.f14165g.registerDefaultNetworkCallback(this.f14166h);
        } catch (IllegalArgumentException | SecurityException e) {
            AbstractC3824h.m1774c().mo1771b(f14164j, "Received exception while registering network callback", e);
        }
    }

    @Override // p260v1.AbstractC4580d
    /* renamed from: e */
    public void mo757e() {
        if (!m755g()) {
            AbstractC3824h.m1774c().mo1772a(f14164j, "Unregistering broadcast receiver", new Throwable[0]);
            this.f14158b.unregisterReceiver(this.f14167i);
            return;
        }
        try {
            AbstractC3824h.m1774c().mo1772a(f14164j, "Unregistering network callback", new Throwable[0]);
            this.f14165g.unregisterNetworkCallback(this.f14166h);
        } catch (IllegalArgumentException | SecurityException e) {
            AbstractC3824h.m1774c().mo1771b(f14164j, "Received exception while unregistering network callback", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0083  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p238t1.C4353b m756f() {
        /*
            r8 = this;
            r0 = r8
            android.net.ConnectivityManager r0 = r0.f14165g
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L1a
            r0 = r9
            boolean r0 = r0.isConnected()
            if (r0 == 0) goto L1a
            r0 = 1
            r11 = r0
            goto L1c
        L1a:
            r0 = 0
            r11 = r0
        L1c:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 23
            if (r0 >= r1) goto L27
            goto L54
        L27:
            r0 = r8
            android.net.ConnectivityManager r0 = r0.f14165g     // Catch: java.lang.SecurityException -> L5a
            android.net.Network r0 = r0.getActiveNetwork()     // Catch: java.lang.SecurityException -> L5a
            r12 = r0
            r0 = r8
            android.net.ConnectivityManager r0 = r0.f14165g     // Catch: java.lang.SecurityException -> L5a
            r1 = r12
            android.net.NetworkCapabilities r0 = r0.getNetworkCapabilities(r1)     // Catch: java.lang.SecurityException -> L5a
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L54
            r0 = r12
            r1 = 16
            boolean r0 = r0.hasCapability(r1)     // Catch: java.lang.SecurityException -> L5a
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L54
            r0 = 1
            r13 = r0
            goto L73
        L54:
            r0 = 0
            r13 = r0
            goto L73
        L5a:
            r12 = move-exception
            o1.h r0 = p186o1.AbstractC3824h.m1774c()
            java.lang.String r1 = p260v1.C4582e.f14164j
            java.lang.String r2 = "Unable to validate active network"
            r3 = 1
            java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
            r4 = r3
            r5 = 0
            r6 = r12
            r4[r5] = r6
            r0.mo1771b(r1, r2, r3)
            goto L54
        L73:
            r0 = r8
            android.net.ConnectivityManager r0 = r0.f14165g
            boolean r0 = r0.isActiveNetworkMetered()
            r14 = r0
            r0 = r10
            r15 = r0
            r0 = r9
            if (r0 == 0) goto L90
            r0 = r10
            r15 = r0
            r0 = r9
            boolean r0 = r0.isRoaming()
            if (r0 != 0) goto L90
            r0 = 1
            r15 = r0
        L90:
            t1.b r0 = new t1.b
            r1 = r0
            r2 = r11
            r3 = r13
            r4 = r14
            r5 = r15
            r1.<init>(r2, r3, r4, r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p260v1.C4582e.m756f():t1.b");
    }
}
