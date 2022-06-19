package androidx.work.impl.p085a.p087b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import androidx.work.AbstractC3145k;
import androidx.work.impl.p085a.C3013b;
import androidx.work.impl.utils.p090b.AbstractC3119a;
/* renamed from: androidx.work.impl.a.b.e */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/e.class */
public final class C3020e extends AbstractC3018d<C3013b> {

    /* renamed from: d */
    static final String f11191d = AbstractC3145k.m39275a("NetworkStateTracker");

    /* renamed from: e */
    private final ConnectivityManager f11192e = (ConnectivityManager) this.f11185b.getSystemService("connectivity");

    /* renamed from: f */
    private C3022b f11193f;

    /* renamed from: g */
    private C3021a f11194g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.a.b.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/e$a.class */
    public final class C3021a extends BroadcastReceiver {
        C3021a() {
            C3020e.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null || !intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                return;
            }
            AbstractC3145k.m39277a();
            String str = C3020e.f11191d;
            C3020e c3020e = C3020e.this;
            c3020e.m39453a((C3020e) c3020e.mo39444b());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.a.b.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/e$b.class */
    public final class C3022b extends ConnectivityManager.NetworkCallback {
        C3022b() {
            C3020e.this = r4;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            AbstractC3145k.m39277a();
            String str = C3020e.f11191d;
            String.format("Network capabilities changed: %s", networkCapabilities);
            C3020e c3020e = C3020e.this;
            c3020e.m39453a((C3020e) c3020e.mo39444b());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onLost(Network network) {
            AbstractC3145k.m39277a();
            String str = C3020e.f11191d;
            C3020e c3020e = C3020e.this;
            c3020e.m39453a((C3020e) c3020e.mo39444b());
        }
    }

    public C3020e(Context context, AbstractC3119a abstractC3119a) {
        super(context, abstractC3119a);
        if (m39448e()) {
            this.f11193f = new C3022b();
        } else {
            this.f11194g = new C3021a();
        }
    }

    /* renamed from: e */
    private static boolean m39448e() {
        return Build.VERSION.SDK_INT >= 24;
    }

    /* renamed from: f */
    private boolean m39447f() {
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        try {
            NetworkCapabilities networkCapabilities = this.f11192e.getNetworkCapabilities(this.f11192e.getActiveNetwork());
            if (networkCapabilities == null) {
                return false;
            }
            return networkCapabilities.hasCapability(16);
        } catch (SecurityException e) {
            AbstractC3145k.m39277a().mo39273a(f11191d, "Unable to validate active network", e);
            return false;
        }
    }

    /* renamed from: a */
    public final C3013b mo39444b() {
        boolean z;
        NetworkInfo activeNetworkInfo = this.f11192e.getActiveNetworkInfo();
        boolean z2 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        boolean m39447f = m39447f();
        ConnectivityManager connectivityManager = this.f11192e;
        if (Build.VERSION.SDK_INT >= 16) {
            z = connectivityManager.isActiveNetworkMetered();
        } else {
            NetworkInfo activeNetworkInfo2 = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo2 != null) {
                switch (activeNetworkInfo2.getType()) {
                    case 1:
                    case 7:
                    case 9:
                        z = false;
                        break;
                }
            }
            z = true;
        }
        boolean z3 = false;
        if (activeNetworkInfo != null) {
            z3 = false;
            if (!activeNetworkInfo.isRoaming()) {
                z3 = true;
            }
        }
        return new C3013b(z2, m39447f, z, z3);
    }

    @Override // androidx.work.impl.p085a.p087b.AbstractC3018d
    /* renamed from: c */
    public final void mo39450c() {
        if (!m39448e()) {
            AbstractC3145k.m39277a();
            this.f11185b.registerReceiver(this.f11194g, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            return;
        }
        try {
            AbstractC3145k.m39277a();
            this.f11192e.registerDefaultNetworkCallback(this.f11193f);
        } catch (IllegalArgumentException | SecurityException e) {
            AbstractC3145k.m39277a().mo39273a(f11191d, "Received exception while registering network callback", e);
        }
    }

    @Override // androidx.work.impl.p085a.p087b.AbstractC3018d
    /* renamed from: d */
    public final void mo39449d() {
        if (!m39448e()) {
            AbstractC3145k.m39277a();
            this.f11185b.unregisterReceiver(this.f11194g);
            return;
        }
        try {
            AbstractC3145k.m39277a();
            this.f11192e.unregisterNetworkCallback(this.f11193f);
        } catch (IllegalArgumentException | SecurityException e) {
            AbstractC3145k.m39277a().mo39273a(f11191d, "Received exception while unregistering network callback", e);
        }
    }
}
