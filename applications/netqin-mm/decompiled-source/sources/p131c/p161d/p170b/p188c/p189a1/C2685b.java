package p131c.p161d.p170b.p188c.p189a1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.os.Handler;
import com.google.android.exoplayer2.scheduler.Requirements;
import p131c.p161d.p170b.p188c.p189a1.C2685b;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.a1.b */
/* loaded from: classes-dex2jar.jar:c/d/b/c/a1/b.class */
public final class C2685b {

    /* renamed from: a */
    public final Context f9819a;

    /* renamed from: b */
    public final AbstractC2689d f9820b;

    /* renamed from: c */
    public final Requirements f9821c;

    /* renamed from: d */
    public final Handler f9822d = new Handler(C2885h0.m28653b());

    /* renamed from: e */
    public C2688c f9823e;

    /* renamed from: f */
    public int f9824f;

    /* renamed from: g */
    public C2687b f9825g;

    /* renamed from: c.d.b.c.a1.b$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/a1/b$b.class */
    public final class C2687b extends ConnectivityManager.NetworkCallback {
        public C2687b() {
        }

        /* renamed from: a */
        public /* synthetic */ void m29286a() {
            if (C2685b.this.f9825g != null) {
                C2685b.this.m29295a();
            }
        }

        /* renamed from: b */
        public final void m29285b() {
            C2685b.this.f9822d.post(new Runnable() { // from class: c.d.b.c.a1.a
                @Override // java.lang.Runnable
                public final void run() {
                    C2685b.C2687b.this.m29286a();
                }
            });
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            m29285b();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            m29285b();
        }
    }

    /* renamed from: c.d.b.c.a1.b$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/a1/b$c.class */
    public class C2688c extends BroadcastReceiver {
        public C2688c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!isInitialStickyBroadcast()) {
                C2685b.this.m29295a();
            }
        }
    }

    /* renamed from: c.d.b.c.a1.b$d */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/a1/b$d.class */
    public interface AbstractC2689d {
        /* renamed from: a */
        void m29284a(C2685b bVar, int i);
    }

    public C2685b(Context context, AbstractC2689d dVar, Requirements requirements) {
        this.f9819a = context.getApplicationContext();
        this.f9820b = dVar;
        this.f9821c = requirements;
    }

    /* renamed from: a */
    public final void m29295a() {
        int c = this.f9821c.m18486c(this.f9819a);
        if (this.f9824f != c) {
            this.f9824f = c;
            this.f9820b.m29284a(this, c);
        }
    }

    /* renamed from: b */
    public Requirements m29293b() {
        return this.f9821c;
    }

    /* renamed from: c */
    public final void m29291c() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f9819a.getSystemService("connectivity");
        C2877e.m28737a(connectivityManager);
        ConnectivityManager connectivityManager2 = connectivityManager;
        NetworkRequest build = new NetworkRequest.Builder().addCapability(16).build();
        C2687b bVar = new C2687b();
        this.f9825g = bVar;
        connectivityManager2.registerNetworkCallback(build, bVar);
    }

    /* renamed from: d */
    public int m29289d() {
        this.f9824f = this.f9821c.m18486c(this.f9819a);
        IntentFilter intentFilter = new IntentFilter();
        if (this.f9821c.m18487c()) {
            if (C2885h0.f10477a >= 23) {
                m29291c();
            } else {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
        }
        if (this.f9821c.m18492a()) {
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        }
        if (this.f9821c.m18489b()) {
            if (C2885h0.f10477a >= 23) {
                intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
            } else {
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
            }
        }
        C2688c cVar = new C2688c();
        this.f9823e = cVar;
        this.f9819a.registerReceiver(cVar, intentFilter, null, this.f9822d);
        return this.f9824f;
    }

    /* renamed from: e */
    public void m29288e() {
        Context context = this.f9819a;
        C2688c cVar = this.f9823e;
        C2877e.m28737a(cVar);
        context.unregisterReceiver(cVar);
        this.f9823e = null;
        if (this.f9825g != null) {
            m29287f();
        }
    }

    /* renamed from: f */
    public final void m29287f() {
        if (C2885h0.f10477a >= 21) {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f9819a.getSystemService("connectivity");
            C2687b bVar = this.f9825g;
            C2877e.m28737a(bVar);
            connectivityManager.unregisterNetworkCallback(bVar);
            this.f9825g = null;
        }
    }
}
