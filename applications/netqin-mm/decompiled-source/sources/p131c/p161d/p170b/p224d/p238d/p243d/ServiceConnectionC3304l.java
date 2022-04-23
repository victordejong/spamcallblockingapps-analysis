package p131c.p161d.p170b.p224d.p238d.p243d;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.HashMap;
import java.util.Map;
/* renamed from: c.d.b.d.d.d.l */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/d/l.class */
public final class ServiceConnectionC3304l implements ServiceConnection, zzj {

    /* renamed from: a */
    public final Map<ServiceConnection, ServiceConnection> f12026a = new HashMap();

    /* renamed from: b */
    public int f12027b = 2;

    /* renamed from: c */
    public boolean f12028c;

    /* renamed from: d */
    public IBinder f12029d;

    /* renamed from: e */
    public final GmsClientSupervisor.zza f12030e;

    /* renamed from: f */
    public ComponentName f12031f;

    /* renamed from: g */
    public final /* synthetic */ C3302j f12032g;

    public ServiceConnectionC3304l(C3302j jVar, GmsClientSupervisor.zza zzaVar) {
        this.f12032g = jVar;
        this.f12030e = zzaVar;
    }

    /* renamed from: a */
    public final void m27265a(ServiceConnection serviceConnection, ServiceConnection serviceConnection2, String str) {
        this.f12026a.put(serviceConnection, serviceConnection2);
    }

    /* renamed from: a */
    public final void m27264a(ServiceConnection serviceConnection, String str) {
        this.f12026a.remove(serviceConnection);
    }

    /* renamed from: a */
    public final void m27263a(String str) {
        ConnectionTracker connectionTracker;
        Context context;
        Context context2;
        ConnectionTracker connectionTracker2;
        Context context3;
        Handler handler;
        Handler handler2;
        long j;
        this.f12027b = 3;
        connectionTracker = this.f12032g.f12022g;
        context = this.f12032g.f12020e;
        GmsClientSupervisor.zza zzaVar = this.f12030e;
        context2 = this.f12032g.f12020e;
        boolean a = connectionTracker.m17127a(context, str, zzaVar.m17302a(context2), this, this.f12030e.m17299c());
        this.f12028c = a;
        if (a) {
            handler = this.f12032g.f12021f;
            Message obtainMessage = handler.obtainMessage(1, this.f12030e);
            handler2 = this.f12032g.f12021f;
            j = this.f12032g.f12024i;
            handler2.sendMessageDelayed(obtainMessage, j);
            return;
        }
        this.f12027b = 2;
        try {
            connectionTracker2 = this.f12032g.f12022g;
            context3 = this.f12032g.f12020e;
            connectionTracker2.m17128a(context3, this);
        } catch (IllegalArgumentException e) {
        }
    }

    /* renamed from: a */
    public final boolean m27267a() {
        return this.f12028c;
    }

    /* renamed from: a */
    public final boolean m27266a(ServiceConnection serviceConnection) {
        return this.f12026a.containsKey(serviceConnection);
    }

    /* renamed from: b */
    public final int m27262b() {
        return this.f12027b;
    }

    /* renamed from: b */
    public final void m27261b(String str) {
        Handler handler;
        ConnectionTracker connectionTracker;
        Context context;
        handler = this.f12032g.f12021f;
        handler.removeMessages(1, this.f12030e);
        connectionTracker = this.f12032g.f12022g;
        context = this.f12032g.f12020e;
        connectionTracker.m17128a(context, this);
        this.f12028c = false;
        this.f12027b = 2;
    }

    /* renamed from: c */
    public final boolean m27260c() {
        return this.f12026a.isEmpty();
    }

    /* renamed from: d */
    public final IBinder m27259d() {
        return this.f12029d;
    }

    /* renamed from: e */
    public final ComponentName m27258e() {
        return this.f12031f;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f12032g.f12019d;
        synchronized (hashMap) {
            try {
                handler = this.f12032g.f12021f;
                handler.removeMessages(1, this.f12030e);
                this.f12029d = iBinder;
                this.f12031f = componentName;
                for (ServiceConnection serviceConnection : this.f12026a.values()) {
                    serviceConnection.onServiceConnected(componentName, iBinder);
                }
                this.f12027b = 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f12032g.f12019d;
        synchronized (hashMap) {
            try {
                handler = this.f12032g.f12021f;
                handler.removeMessages(1, this.f12030e);
                this.f12029d = null;
                this.f12031f = componentName;
                for (ServiceConnection serviceConnection : this.f12026a.values()) {
                    serviceConnection.onServiceDisconnected(componentName);
                }
                this.f12027b = 2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
