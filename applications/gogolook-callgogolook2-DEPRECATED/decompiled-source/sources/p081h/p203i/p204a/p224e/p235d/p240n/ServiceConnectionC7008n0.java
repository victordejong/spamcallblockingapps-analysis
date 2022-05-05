package p081h.p203i.p204a.p224e.p235d.p240n;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import java.util.HashMap;
import java.util.Map;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6996j;
import p081h.p203i.p204a.p224e.p235d.p248r.C7064a;
/* renamed from: h.i.a.e.d.n.n0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/n0.class */
public final class ServiceConnectionC7008n0 implements ServiceConnection {

    /* renamed from: a */
    public final Map<ServiceConnection, ServiceConnection> f17142a = new HashMap();

    /* renamed from: b */
    public int f17143b = 2;

    /* renamed from: c */
    public boolean f17144c;

    /* renamed from: d */
    public IBinder f17145d;

    /* renamed from: e */
    public final AbstractC6996j.C6997a f17146e;

    /* renamed from: f */
    public ComponentName f17147f;

    /* renamed from: g */
    public final /* synthetic */ C7011o0 f17148g;

    public ServiceConnectionC7008n0(C7011o0 o0Var, AbstractC6996j.C6997a aVar) {
        this.f17148g = o0Var;
        this.f17146e = aVar;
    }

    /* renamed from: a */
    public final IBinder m21328a() {
        return this.f17145d;
    }

    /* renamed from: a */
    public final void m21326a(ServiceConnection serviceConnection, ServiceConnection serviceConnection2, String str) {
        Context context;
        C7064a unused;
        Context unused2;
        unused = this.f17148g.f17152g;
        unused2 = this.f17148g.f17150e;
        AbstractC6996j.C6997a aVar = this.f17146e;
        context = this.f17148g.f17150e;
        aVar.m21345a(context);
        this.f17142a.put(serviceConnection, serviceConnection2);
    }

    /* renamed from: a */
    public final void m21325a(ServiceConnection serviceConnection, String str) {
        C7064a unused;
        Context unused2;
        unused = this.f17148g.f17152g;
        unused2 = this.f17148g.f17150e;
        this.f17142a.remove(serviceConnection);
    }

    /* renamed from: a */
    public final void m21324a(String str) {
        C7064a aVar;
        Context context;
        Context context2;
        C7064a aVar2;
        Context context3;
        Handler handler;
        Handler handler2;
        long j;
        this.f17143b = 3;
        aVar = this.f17148g.f17152g;
        context = this.f17148g.f17150e;
        AbstractC6996j.C6997a aVar3 = this.f17146e;
        context2 = this.f17148g.f17150e;
        this.f17144c = aVar.m21181a(context, str, aVar3.m21345a(context2), this, this.f17146e.m21342c());
        if (this.f17144c) {
            handler = this.f17148g.f17151f;
            Message obtainMessage = handler.obtainMessage(1, this.f17146e);
            handler2 = this.f17148g.f17151f;
            j = this.f17148g.f17154i;
            handler2.sendMessageDelayed(obtainMessage, j);
            return;
        }
        this.f17143b = 2;
        try {
            aVar2 = this.f17148g.f17152g;
            context3 = this.f17148g.f17150e;
            aVar2.m21182a(context3, this);
        } catch (IllegalArgumentException e) {
        }
    }

    /* renamed from: a */
    public final boolean m21327a(ServiceConnection serviceConnection) {
        return this.f17142a.containsKey(serviceConnection);
    }

    /* renamed from: b */
    public final ComponentName m21323b() {
        return this.f17147f;
    }

    /* renamed from: b */
    public final void m21322b(String str) {
        Handler handler;
        C7064a aVar;
        Context context;
        handler = this.f17148g.f17151f;
        handler.removeMessages(1, this.f17146e);
        aVar = this.f17148g.f17152g;
        context = this.f17148g.f17150e;
        aVar.m21182a(context, this);
        this.f17144c = false;
        this.f17143b = 2;
    }

    /* renamed from: c */
    public final int m21321c() {
        return this.f17143b;
    }

    /* renamed from: d */
    public final boolean m21320d() {
        return this.f17144c;
    }

    /* renamed from: e */
    public final boolean m21319e() {
        return this.f17142a.isEmpty();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f17148g.f17149d;
        synchronized (hashMap) {
            handler = this.f17148g.f17151f;
            handler.removeMessages(1, this.f17146e);
            this.f17145d = iBinder;
            this.f17147f = componentName;
            for (ServiceConnection serviceConnection : this.f17142a.values()) {
                serviceConnection.onServiceConnected(componentName, iBinder);
            }
            this.f17143b = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f17148g.f17149d;
        synchronized (hashMap) {
            handler = this.f17148g.f17151f;
            handler.removeMessages(1, this.f17146e);
            this.f17145d = null;
            this.f17147f = componentName;
            for (ServiceConnection serviceConnection : this.f17142a.values()) {
                serviceConnection.onServiceDisconnected(componentName);
            }
            this.f17143b = 2;
        }
    }
}
