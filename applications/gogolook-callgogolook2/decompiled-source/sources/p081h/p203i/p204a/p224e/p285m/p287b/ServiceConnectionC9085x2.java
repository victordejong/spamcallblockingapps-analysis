package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p248r.C7064a;
/* renamed from: h.i.a.e.m.b.x2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/x2.class */
public final class ServiceConnectionC9085x2 implements ServiceConnection, AbstractC6969d.AbstractC6970a, AbstractC6969d.AbstractC6971b {

    /* renamed from: a */
    public volatile boolean f20760a;

    /* renamed from: b */
    public volatile C9021n f20761b;

    /* renamed from: c */
    public final /* synthetic */ C9000j2 f20762c;

    public ServiceConnectionC9085x2(C9000j2 j2Var) {
        this.f20762c = j2Var;
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16114a() {
        if (this.f20761b != null && (this.f20761b.isConnected() || this.f20761b.m21436b())) {
            this.f20761b.disconnect();
        }
        this.f20761b = null;
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16113a(Intent intent) {
        ServiceConnectionC9085x2 x2Var;
        this.f20762c.mo16328d();
        Context context = this.f20762c.getContext();
        C7064a a = C7064a.m21184a();
        synchronized (this) {
            if (this.f20760a) {
                this.f20762c.mo16178c().m16389A().m16338a("Connection attempt already in progress");
                return;
            }
            this.f20762c.mo16178c().m16389A().m16338a("Using local app measurement service");
            this.f20760a = true;
            x2Var = this.f20762c.f20450c;
            a.m21183a(context, intent, x2Var, 129);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.AbstractC6971b
    @MainThread
    /* renamed from: a */
    public final void mo16112a(@NonNull ConnectionResult connectionResult) {
        C7021t.m21288a("MeasurementServiceConnection.onConnectionFailed");
        C9027o v = this.f20762c.f20541a.m16271v();
        if (v != null) {
            v.m16372v().m16337a("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.f20760a = false;
            this.f20761b = null;
        }
        this.f20762c.mo16214a().m16364a(new RunnableC8958c3(this));
    }

    @WorkerThread
    /* renamed from: b */
    public final void m16110b() {
        this.f20762c.mo16328d();
        Context context = this.f20762c.getContext();
        synchronized (this) {
            if (this.f20760a) {
                this.f20762c.mo16178c().m16389A().m16338a("Connection attempt already in progress");
            } else if (this.f20761b == null || (C9008k4.m16479w() && !this.f20761b.m21436b() && !this.f20761b.isConnected())) {
                this.f20761b = new C9021n(context, Looper.getMainLooper(), this, this);
                this.f20762c.mo16178c().m16389A().m16338a("Connecting to remote service");
                this.f20760a = true;
                this.f20761b.m21420l();
            } else {
                this.f20762c.mo16178c().m16389A().m16338a("Already awaiting connection attempt");
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.AbstractC6970a
    @MainThread
    /* renamed from: f */
    public final void mo16109f(int i) {
        C7021t.m21288a("MeasurementServiceConnection.onConnectionSuspended");
        this.f20762c.mo16178c().m16368z().m16338a("Service connection suspended");
        this.f20762c.mo16214a().m16364a(new RunnableC8952b3(this));
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.AbstractC6970a
    @MainThread
    /* renamed from: j */
    public final void mo16108j(@Nullable Bundle bundle) {
        C7021t.m21288a("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                AbstractC8973f u = this.f20761b.m21414u();
                if (!C9008k4.m16479w()) {
                    this.f20761b = null;
                }
                this.f20762c.mo16214a().m16364a(new RunnableC8946a3(this, u));
            } catch (DeadObjectException | IllegalStateException e) {
                this.f20761b = null;
                this.f20760a = false;
            }
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ServiceConnectionC9085x2 x2Var;
        C7021t.m21288a("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.f20760a = false;
                this.f20762c.mo16178c().m16375s().m16338a("Service connected with null binder");
                return;
            }
            AbstractC8973f fVar = null;
            fVar = null;
            fVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    if (iBinder != null) {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                        fVar = queryLocalInterface instanceof AbstractC8973f ? (AbstractC8973f) queryLocalInterface : new C8985h(iBinder);
                    }
                    this.f20762c.mo16178c().m16389A().m16338a("Bound to IMeasurementService interface");
                } else {
                    this.f20762c.mo16178c().m16375s().m16337a("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException e) {
                this.f20762c.mo16178c().m16375s().m16338a("Service connect failed to get IMeasurementService");
            }
            if (fVar == null) {
                this.f20760a = false;
                try {
                    C7064a a = C7064a.m21184a();
                    Context context = this.f20762c.getContext();
                    x2Var = this.f20762c.f20450c;
                    a.m21182a(context, x2Var);
                } catch (IllegalArgumentException e2) {
                }
            } else {
                this.f20762c.mo16214a().m16364a(new RunnableC9090y2(this, fVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        C7021t.m21288a("MeasurementServiceConnection.onServiceDisconnected");
        this.f20762c.mo16178c().m16368z().m16338a("Service disconnected");
        this.f20762c.mo16214a().m16364a(new RunnableC9095z2(this, componentName));
    }
}
