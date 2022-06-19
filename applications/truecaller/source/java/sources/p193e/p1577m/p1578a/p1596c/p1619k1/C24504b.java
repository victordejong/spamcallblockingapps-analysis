package p193e.p1577m.p1578a.p1596c.p1619k1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Handler;
import com.google.android.exoplayer2.scheduler.Requirements;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.p1618j1.C24478a;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.k1.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/k1/b.class */
public final class C24504b {

    /* renamed from: a */
    public final Context f68423a;

    /* renamed from: b */
    public final AbstractC24507c f68424b;

    /* renamed from: c */
    public final Requirements f68425c;

    /* renamed from: d */
    public final Handler f68426d = new Handler(C24773d0.m4614j());

    /* renamed from: e */
    public C24506b f68427e;

    /* renamed from: f */
    public int f68428f;

    /* renamed from: g */
    public C24508d f68429g;

    /* renamed from: e.m.a.c.k1.b$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/k1/b$b.class */
    public class C24506b extends BroadcastReceiver {
        public C24506b(C24505a c24505a) {
            C24504b.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!isInitialStickyBroadcast()) {
                C24504b.m4998a(C24504b.this);
            }
        }
    }

    /* renamed from: e.m.a.c.k1.b$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/k1/b$c.class */
    public interface AbstractC24507c {
    }

    /* renamed from: e.m.a.c.k1.b$d */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/k1/b$d.class */
    public final class C24508d extends ConnectivityManager.NetworkCallback {

        /* renamed from: a */
        public boolean f68431a;

        /* renamed from: b */
        public boolean f68432b;

        public C24508d(C24505a c24505a) {
            C24504b.this = r4;
        }

        /* renamed from: a */
        public final void m4996a() {
            C24504b.this.f68426d.post(new Runnable() { // from class: e.m.a.c.k1.a
                @Override // java.lang.Runnable
                public final void run() {
                    C24504b c24504b = C24504b.this;
                    if (c24504b.f68429g != null) {
                        C24504b.m4998a(c24504b);
                    }
                }
            });
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            m4996a();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            boolean hasCapability = networkCapabilities.hasCapability(16);
            if (!this.f68431a || this.f68432b != hasCapability) {
                this.f68431a = true;
                this.f68432b = hasCapability;
                m4996a();
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            m4996a();
        }
    }

    public C24504b(Context context, AbstractC24507c abstractC24507c, Requirements requirements) {
        this.f68423a = context.getApplicationContext();
        this.f68424b = abstractC24507c;
        this.f68425c = requirements;
    }

    /* renamed from: a */
    public static void m4998a(C24504b c24504b) {
        int m39235a = c24504b.f68425c.m39235a(c24504b.f68423a);
        if (c24504b.f68428f != m39235a) {
            c24504b.f68428f = m39235a;
            ((C24478a) c24504b.f68424b).f68343a.m5022b(c24504b, m39235a);
        }
    }

    /* renamed from: b */
    public int m4997b() {
        this.f68428f = this.f68425c.m39235a(this.f68423a);
        IntentFilter intentFilter = new IntentFilter();
        if ((this.f68425c.f4998a & 1) != 0) {
            if (C24773d0.f69427a >= 24) {
                ConnectivityManager connectivityManager = (ConnectivityManager) this.f68423a.getSystemService("connectivity");
                Objects.requireNonNull(connectivityManager);
                C24508d c24508d = new C24508d(null);
                this.f68429g = c24508d;
                connectivityManager.registerDefaultNetworkCallback(c24508d);
            } else {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
        }
        if ((this.f68425c.f4998a & 8) != 0) {
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        }
        if ((this.f68425c.f4998a & 4) != 0) {
            if (C24773d0.f69427a >= 23) {
                intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
            } else {
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
            }
        }
        C24506b c24506b = new C24506b(null);
        this.f68427e = c24506b;
        this.f68423a.registerReceiver(c24506b, intentFilter, null, this.f68426d);
        return this.f68428f;
    }
}
