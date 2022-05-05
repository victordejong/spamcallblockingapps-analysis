package p081h.p203i.p204a.p224e.p235d.p240n;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p259j.p265f.HandlerC7537i;
/* renamed from: h.i.a.e.d.n.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/i.class */
public final class C6993i implements Handler.Callback {

    /* renamed from: a */
    public final AbstractC6994a f17120a;

    /* renamed from: h */
    public final Handler f17127h;

    /* renamed from: b */
    public final ArrayList<AbstractC6825f.AbstractC6827b> f17121b = new ArrayList<>();

    /* renamed from: c */
    public final ArrayList<AbstractC6825f.AbstractC6827b> f17122c = new ArrayList<>();

    /* renamed from: d */
    public final ArrayList<AbstractC6825f.AbstractC6828c> f17123d = new ArrayList<>();

    /* renamed from: e */
    public volatile boolean f17124e = false;

    /* renamed from: f */
    public final AtomicInteger f17125f = new AtomicInteger(0);

    /* renamed from: g */
    public boolean f17126g = false;

    /* renamed from: i */
    public final Object f17128i = new Object();

    /* renamed from: h.i.a.e.d.n.i$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/i$a.class */
    public interface AbstractC6994a {
        boolean isConnected();

        /* renamed from: k */
        Bundle mo21352k();
    }

    public C6993i(Looper looper, AbstractC6994a aVar) {
        this.f17120a = aVar;
        this.f17127h = new HandlerC7537i(looper, this);
    }

    /* renamed from: a */
    public final void m21360a() {
        this.f17124e = false;
        this.f17125f.incrementAndGet();
    }

    /* renamed from: a */
    public final void m21359a(int i) {
        C7021t.m21291a(this.f17127h, "onUnintentionalDisconnection must only be called on the Handler thread");
        this.f17127h.removeMessages(1);
        synchronized (this.f17128i) {
            this.f17126g = true;
            ArrayList arrayList = new ArrayList(this.f17121b);
            int i2 = this.f17125f.get();
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                int i4 = i3 + 1;
                AbstractC6825f.AbstractC6827b bVar = (AbstractC6825f.AbstractC6827b) obj;
                if (!this.f17124e || this.f17125f.get() != i2) {
                    break;
                }
                i3 = i4;
                if (this.f17121b.contains(bVar)) {
                    bVar.mo21503f(i);
                    i3 = i4;
                }
            }
            this.f17122c.clear();
            this.f17126g = false;
        }
    }

    /* renamed from: a */
    public final void m21358a(Bundle bundle) {
        C7021t.m21291a(this.f17127h, "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.f17128i) {
            boolean z = true;
            C7021t.m21282b(!this.f17126g);
            this.f17127h.removeMessages(1);
            this.f17126g = true;
            if (this.f17122c.size() != 0) {
                z = false;
            }
            C7021t.m21282b(z);
            ArrayList arrayList = new ArrayList(this.f17121b);
            int i = this.f17125f.get();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                int i3 = i2 + 1;
                AbstractC6825f.AbstractC6827b bVar = (AbstractC6825f.AbstractC6827b) obj;
                if (!this.f17124e || !this.f17120a.isConnected() || this.f17125f.get() != i) {
                    break;
                }
                i2 = i3;
                if (!this.f17122c.contains(bVar)) {
                    bVar.mo21502j(bundle);
                    i2 = i3;
                }
            }
            this.f17122c.clear();
            this.f17126g = false;
        }
    }

    /* renamed from: a */
    public final void m21357a(ConnectionResult connectionResult) {
        C7021t.m21291a(this.f17127h, "onConnectionFailure must only be called on the Handler thread");
        this.f17127h.removeMessages(1);
        synchronized (this.f17128i) {
            ArrayList arrayList = new ArrayList(this.f17123d);
            int i = this.f17125f.get();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                int i3 = i2 + 1;
                AbstractC6825f.AbstractC6828c cVar = (AbstractC6825f.AbstractC6828c) obj;
                if (this.f17124e && this.f17125f.get() == i) {
                    i2 = i3;
                    if (this.f17123d.contains(cVar)) {
                        cVar.mo21591a(connectionResult);
                        i2 = i3;
                    }
                }
                return;
            }
        }
    }

    /* renamed from: a */
    public final void m21356a(AbstractC6825f.AbstractC6827b bVar) {
        C7021t.m21290a(bVar);
        synchronized (this.f17128i) {
            if (this.f17121b.contains(bVar)) {
                String valueOf = String.valueOf(bVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 62);
                sb.append("registerConnectionCallbacks(): listener ");
                sb.append(valueOf);
                sb.append(" is already registered");
                sb.toString();
            } else {
                this.f17121b.add(bVar);
            }
        }
        if (this.f17120a.isConnected()) {
            Handler handler = this.f17127h;
            handler.sendMessage(handler.obtainMessage(1, bVar));
        }
    }

    /* renamed from: a */
    public final void m21355a(AbstractC6825f.AbstractC6828c cVar) {
        C7021t.m21290a(cVar);
        synchronized (this.f17128i) {
            if (this.f17123d.contains(cVar)) {
                String valueOf = String.valueOf(cVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 67);
                sb.append("registerConnectionFailedListener(): listener ");
                sb.append(valueOf);
                sb.append(" is already registered");
                sb.toString();
            } else {
                this.f17123d.add(cVar);
            }
        }
    }

    /* renamed from: b */
    public final void m21354b() {
        this.f17124e = true;
    }

    /* renamed from: b */
    public final void m21353b(AbstractC6825f.AbstractC6828c cVar) {
        C7021t.m21290a(cVar);
        synchronized (this.f17128i) {
            if (!this.f17123d.remove(cVar)) {
                String valueOf = String.valueOf(cVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 57);
                sb.append("unregisterConnectionFailedListener(): listener ");
                sb.append(valueOf);
                sb.append(" not found");
                sb.toString();
            }
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            AbstractC6825f.AbstractC6827b bVar = (AbstractC6825f.AbstractC6827b) message.obj;
            synchronized (this.f17128i) {
                if (this.f17124e && this.f17120a.isConnected() && this.f17121b.contains(bVar)) {
                    bVar.mo21502j(this.f17120a.mo21352k());
                }
            }
            return true;
        }
        StringBuilder sb = new StringBuilder(45);
        sb.append("Don't know how to handle message: ");
        sb.append(i);
        Log.wtf("GmsClientEvents", sb.toString(), new Exception());
        return false;
    }
}
