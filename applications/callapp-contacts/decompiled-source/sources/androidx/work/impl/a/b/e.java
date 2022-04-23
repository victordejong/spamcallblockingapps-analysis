package androidx.work.impl.a.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import androidx.work.k;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/e.class */
public final class e extends d<androidx.work.impl.a.b> {

    /* renamed from: d  reason: collision with root package name */
    static final String f6007d = k.a("NetworkStateTracker");
    private final ConnectivityManager e = (ConnectivityManager) this.f6003b.getSystemService("connectivity");
    private b f;
    private a g;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/e$a.class */
    final class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent != null && intent.getAction() != null && intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                k.a();
                String str = e.f6007d;
                e eVar = e.this;
                eVar.a((e) eVar.b());
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/e$b.class */
    final class b extends ConnectivityManager.NetworkCallback {
        b() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            k.a();
            String str = e.f6007d;
            String.format("Network capabilities changed: %s", networkCapabilities);
            e eVar = e.this;
            eVar.a((e) eVar.b());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onLost(Network network) {
            k.a();
            String str = e.f6007d;
            e eVar = e.this;
            eVar.a((e) eVar.b());
        }
    }

    public e(Context context, androidx.work.impl.utils.b.a aVar) {
        super(context, aVar);
        if (e()) {
            this.f = new b();
        } else {
            this.g = new a();
        }
    }

    private static boolean e() {
        return Build.VERSION.SDK_INT >= 24;
    }

    private boolean f() {
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        try {
            NetworkCapabilities networkCapabilities = this.e.getNetworkCapabilities(this.e.getActiveNetwork());
            if (networkCapabilities != null) {
                return networkCapabilities.hasCapability(16);
            }
            return false;
        } catch (SecurityException e) {
            k.a().a(f6007d, "Unable to validate active network", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final androidx.work.impl.a.b b() {
        boolean z;
        NetworkInfo activeNetworkInfo = this.e.getActiveNetworkInfo();
        boolean z2 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        boolean f = f();
        ConnectivityManager connectivityManager = this.e;
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
        return new androidx.work.impl.a.b(z2, f, z, z3);
    }

    @Override // androidx.work.impl.a.b.d
    public final void c() {
        if (e()) {
            try {
                k.a();
                this.e.registerDefaultNetworkCallback(this.f);
            } catch (IllegalArgumentException | SecurityException e) {
                k.a().a(f6007d, "Received exception while registering network callback", e);
            }
        } else {
            k.a();
            this.f6003b.registerReceiver(this.g, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
    }

    @Override // androidx.work.impl.a.b.d
    public final void d() {
        if (e()) {
            try {
                k.a();
                this.e.unregisterNetworkCallback(this.f);
            } catch (IllegalArgumentException | SecurityException e) {
                k.a().a(f6007d, "Received exception while unregistering network callback", e);
            }
        } else {
            k.a();
            this.f6003b.unregisterReceiver(this.g);
        }
    }
}
