package p081h.p119d.p120a.p142t;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import p081h.p119d.p120a.p142t.AbstractC6024c;
/* renamed from: h.d.a.t.e */
/* loaded from: classes-dex2jar.jar:h/d/a/t/e.class */
public class C6027e implements AbstractC6024c {

    /* renamed from: a */
    public final Context f15016a;

    /* renamed from: b */
    public final AbstractC6024c.AbstractC6025a f15017b;

    /* renamed from: c */
    public boolean f15018c;

    /* renamed from: d */
    public boolean f15019d;

    /* renamed from: e */
    public final BroadcastReceiver f15020e = new C6028a();

    /* renamed from: h.d.a.t.e$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/t/e$a.class */
    public class C6028a extends BroadcastReceiver {
        public C6028a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z = C6027e.this.f15018c;
            C6027e eVar = C6027e.this;
            eVar.f15018c = eVar.m24014a(context);
            if (z != C6027e.this.f15018c) {
                C6027e.this.f15017b.mo24017a(C6027e.this.f15018c);
            }
        }
    }

    public C6027e(Context context, AbstractC6024c.AbstractC6025a aVar) {
        this.f15016a = context.getApplicationContext();
        this.f15017b = aVar;
    }

    /* renamed from: a */
    public final void m24015a() {
        if (!this.f15019d) {
            this.f15018c = m24014a(this.f15016a);
            this.f15016a.registerReceiver(this.f15020e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f15019d = true;
        }
    }

    /* renamed from: a */
    public final boolean m24014a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* renamed from: b */
    public final void m24010b() {
        if (this.f15019d) {
            this.f15016a.unregisterReceiver(this.f15020e);
            this.f15019d = false;
        }
    }

    @Override // p081h.p119d.p120a.p142t.AbstractC6031h
    public void onDestroy() {
    }

    @Override // p081h.p119d.p120a.p142t.AbstractC6031h
    public void onStart() {
        m24015a();
    }

    @Override // p081h.p119d.p120a.p142t.AbstractC6031h
    public void onStop() {
        m24010b();
    }
}
