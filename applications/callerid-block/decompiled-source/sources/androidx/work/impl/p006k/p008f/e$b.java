package androidx.work.impl.p006k.p008f;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import androidx.work.AbstractC0555f;
/* renamed from: androidx.work.impl.k.f.e$b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/k/f/e$b.class */
class e$b extends ConnectivityManager.NetworkCallback {

    /* renamed from: a */
    final /* synthetic */ e f3073a;

    e$b(e eVar) {
        this.f3073a = eVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        AbstractC0555f.m11741c().m11743a(e.j, String.format("Network capabilities changed: %s", networkCapabilities), new Throwable[0]);
        e eVar = this.f3073a;
        eVar.m11684d(eVar.g());
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        AbstractC0555f.m11741c().m11743a(e.j, "Network connection lost", new Throwable[0]);
        e eVar = this.f3073a;
        eVar.m11684d(eVar.g());
    }
}
