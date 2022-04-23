package p131c.p161d.p170b.p224d.p238d.p243d;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.common.zzi;
import java.util.HashMap;
/* renamed from: c.d.b.d.d.d.j */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/d/j.class */
public final class C3302j extends GmsClientSupervisor {

    /* renamed from: e */
    public final Context f12020e;

    /* renamed from: f */
    public final Handler f12021f;

    /* renamed from: d */
    public final HashMap<GmsClientSupervisor.zza, ServiceConnectionC3304l> f12019d = new HashMap<>();

    /* renamed from: g */
    public final ConnectionTracker f12022g = ConnectionTracker.m17130a();

    /* renamed from: h */
    public final long f12023h = 5000;

    /* renamed from: i */
    public final long f12024i = 300000;

    public C3302j(Context context) {
        this.f12020e = context.getApplicationContext();
        this.f12021f = new zzi(context.getMainLooper(), new C3303k(this, null));
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    /* renamed from: a */
    public final boolean mo17306a(GmsClientSupervisor.zza zzaVar, ServiceConnection serviceConnection, String str) {
        ServiceConnectionC3304l lVar;
        boolean a;
        Preconditions.m17287a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f12019d) {
            ServiceConnectionC3304l lVar2 = this.f12019d.get(zzaVar);
            if (lVar2 == null) {
                ServiceConnectionC3304l lVar3 = new ServiceConnectionC3304l(this, zzaVar);
                lVar3.m27265a(serviceConnection, serviceConnection, str);
                lVar3.m27263a(str);
                this.f12019d.put(zzaVar, lVar3);
                lVar = lVar3;
            } else {
                this.f12021f.removeMessages(0, zzaVar);
                if (!lVar2.m27266a(serviceConnection)) {
                    lVar2.m27265a(serviceConnection, serviceConnection, str);
                    int b = lVar2.m27262b();
                    if (b == 1) {
                        serviceConnection.onServiceConnected(lVar2.m27258e(), lVar2.m27259d());
                        lVar = lVar2;
                    } else if (b != 2) {
                        lVar = lVar2;
                    } else {
                        lVar2.m27263a(str);
                        lVar = lVar2;
                    }
                } else {
                    String valueOf = String.valueOf(zzaVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                }
            }
            a = lVar.m27267a();
        }
        return a;
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    /* renamed from: b */
    public final void mo17304b(GmsClientSupervisor.zza zzaVar, ServiceConnection serviceConnection, String str) {
        Preconditions.m17287a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f12019d) {
            ServiceConnectionC3304l lVar = this.f12019d.get(zzaVar);
            if (lVar == null) {
                String valueOf = String.valueOf(zzaVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            } else if (lVar.m27266a(serviceConnection)) {
                lVar.m27264a(serviceConnection, str);
                if (lVar.m27260c()) {
                    this.f12021f.sendMessageDelayed(this.f12021f.obtainMessage(0, zzaVar), this.f12023h);
                }
            } else {
                String valueOf2 = String.valueOf(zzaVar);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(valueOf2);
                throw new IllegalStateException(sb2.toString());
            }
        }
    }
}
