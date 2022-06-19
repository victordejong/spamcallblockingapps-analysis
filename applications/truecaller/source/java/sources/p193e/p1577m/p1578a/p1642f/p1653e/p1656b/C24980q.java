package p193e.p1577m.p1578a.p1642f.p1653e.p1656b;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzn;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.common.zzi;
import java.util.HashMap;
import java.util.concurrent.Executor;
/* renamed from: e.m.a.f.e.b.q */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/b/q.class */
public final class C24980q extends GmsClientSupervisor {

    /* renamed from: d */
    public final Context f69935d;

    /* renamed from: e */
    public volatile Handler f69936e;

    /* renamed from: f */
    public final C24979p f69937f;

    /* renamed from: c */
    public final HashMap<zzn, ServiceConnectionC24978o> f69934c = new HashMap<>();

    /* renamed from: g */
    public final ConnectionTracker f69938g = ConnectionTracker.m38803b();

    /* renamed from: h */
    public final long f69939h = 5000;

    /* renamed from: i */
    public final long f69940i = 300000;

    public C24980q(Context context, Looper looper) {
        C24979p c24979p = new C24979p(this);
        this.f69937f = c24979p;
        this.f69935d = context.getApplicationContext();
        this.f69936e = new zzi(looper, c24979p);
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    /* renamed from: b */
    public final void mo4247b(zzn zznVar, ServiceConnection serviceConnection, String str) {
        Preconditions.m38897k(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f69934c) {
            ServiceConnectionC24978o serviceConnectionC24978o = this.f69934c.get(zznVar);
            if (serviceConnectionC24978o == null) {
                String zznVar2 = zznVar.toString();
                StringBuilder sb = new StringBuilder(zznVar2.length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(zznVar2);
                throw new IllegalStateException(sb.toString());
            } else if (!serviceConnectionC24978o.f69926a.containsKey(serviceConnection)) {
                String zznVar3 = zznVar.toString();
                StringBuilder sb2 = new StringBuilder(zznVar3.length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(zznVar3);
                throw new IllegalStateException(sb2.toString());
            } else {
                serviceConnectionC24978o.f69926a.remove(serviceConnection);
                if (serviceConnectionC24978o.f69926a.isEmpty()) {
                    this.f69936e.sendMessageDelayed(this.f69936e.obtainMessage(0, zznVar), this.f69939h);
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    /* renamed from: c */
    public final boolean mo4246c(zzn zznVar, ServiceConnection serviceConnection, String str, Executor executor) {
        ServiceConnectionC24978o serviceConnectionC24978o;
        boolean z;
        Preconditions.m38897k(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f69934c) {
            ServiceConnectionC24978o serviceConnectionC24978o2 = this.f69934c.get(zznVar);
            if (serviceConnectionC24978o2 == null) {
                ServiceConnectionC24978o serviceConnectionC24978o3 = new ServiceConnectionC24978o(this, zznVar);
                serviceConnectionC24978o3.f69926a.put(serviceConnection, serviceConnection);
                serviceConnectionC24978o3.m4248a(str, executor);
                this.f69934c.put(zznVar, serviceConnectionC24978o3);
                serviceConnectionC24978o = serviceConnectionC24978o3;
            } else {
                this.f69936e.removeMessages(0, zznVar);
                if (serviceConnectionC24978o2.f69926a.containsKey(serviceConnection)) {
                    String zznVar2 = zznVar.toString();
                    StringBuilder sb = new StringBuilder(zznVar2.length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(zznVar2);
                    throw new IllegalStateException(sb.toString());
                }
                serviceConnectionC24978o2.f69926a.put(serviceConnection, serviceConnection);
                int i = serviceConnectionC24978o2.f69927b;
                if (i == 1) {
                    serviceConnection.onServiceConnected(serviceConnectionC24978o2.f69931f, serviceConnectionC24978o2.f69929d);
                    serviceConnectionC24978o = serviceConnectionC24978o2;
                } else if (i != 2) {
                    serviceConnectionC24978o = serviceConnectionC24978o2;
                } else {
                    serviceConnectionC24978o2.m4248a(str, executor);
                    serviceConnectionC24978o = serviceConnectionC24978o2;
                }
            }
            z = serviceConnectionC24978o.f69928c;
        }
        return z;
    }
}
