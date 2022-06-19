package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.internal.AbstractC2643i;
import com.google.android.gms.common.stats.C2694a;
import com.google.android.gms.internal.p138e.HandlerC3727i;
import java.util.HashMap;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.common.internal.aj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/aj.class */
public final class C2607aj extends AbstractC2643i implements Handler.Callback {

    /* renamed from: b */
    private final Context f7293b;

    /* renamed from: c */
    private final Handler f7294c;
    @GuardedBy("mConnectionStatus")

    /* renamed from: a */
    private final HashMap<AbstractC2643i.C2644a, ServiceConnectionC2609al> f7292a = new HashMap<>();

    /* renamed from: d */
    private final C2694a f7295d = C2694a.m13893a();

    /* renamed from: e */
    private final long f7296e = 5000;

    /* renamed from: f */
    private final long f7297f = 300000;

    public C2607aj(Context context) {
        this.f7293b = context.getApplicationContext();
        this.f7294c = new HandlerC3727i(context.getMainLooper(), this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.AbstractC2643i
    /* renamed from: a */
    public final boolean mo14016a(AbstractC2643i.C2644a c2644a, ServiceConnection serviceConnection, String str) {
        ServiceConnectionC2609al serviceConnectionC2609al;
        boolean m14131a;
        C2662s.m13980a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f7292a) {
            ServiceConnectionC2609al serviceConnectionC2609al2 = this.f7292a.get(c2644a);
            if (serviceConnectionC2609al2 != null) {
                this.f7294c.removeMessages(0, c2644a);
                if (!serviceConnectionC2609al2.m14130a(serviceConnection)) {
                    serviceConnectionC2609al2.m14129a(serviceConnection, serviceConnection, str);
                    switch (serviceConnectionC2609al2.m14126b()) {
                        case 1:
                            serviceConnection.onServiceConnected(serviceConnectionC2609al2.m14122e(), serviceConnectionC2609al2.m14123d());
                            serviceConnectionC2609al = serviceConnectionC2609al2;
                            break;
                        case 2:
                            serviceConnectionC2609al2.m14127a(str);
                            serviceConnectionC2609al = serviceConnectionC2609al2;
                            break;
                        default:
                            serviceConnectionC2609al = serviceConnectionC2609al2;
                            break;
                    }
                } else {
                    String valueOf = String.valueOf(c2644a);
                    throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 81).append("Trying to bind a GmsServiceConnection that was already connected before.  config=").append(valueOf).toString());
                }
            } else {
                ServiceConnectionC2609al serviceConnectionC2609al3 = new ServiceConnectionC2609al(this, c2644a);
                serviceConnectionC2609al3.m14129a(serviceConnection, serviceConnection, str);
                serviceConnectionC2609al3.m14127a(str);
                this.f7292a.put(c2644a, serviceConnectionC2609al3);
                serviceConnectionC2609al = serviceConnectionC2609al3;
            }
            m14131a = serviceConnectionC2609al.m14131a();
        }
        return m14131a;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2643i
    /* renamed from: b */
    protected final void mo14014b(AbstractC2643i.C2644a c2644a, ServiceConnection serviceConnection, String str) {
        C2662s.m13980a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f7292a) {
            ServiceConnectionC2609al serviceConnectionC2609al = this.f7292a.get(c2644a);
            if (serviceConnectionC2609al == null) {
                String valueOf = String.valueOf(c2644a);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 50).append("Nonexistent connection status for service config: ").append(valueOf).toString());
            } else if (!serviceConnectionC2609al.m14130a(serviceConnection)) {
                String valueOf2 = String.valueOf(c2644a);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf2).length() + 76).append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=").append(valueOf2).toString());
            } else {
                serviceConnectionC2609al.m14128a(serviceConnection, str);
                if (serviceConnectionC2609al.m14124c()) {
                    this.f7294c.sendMessageDelayed(this.f7294c.obtainMessage(0, c2644a), this.f7296e);
                }
            }
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean z;
        switch (message.what) {
            case 0:
                synchronized (this.f7292a) {
                    AbstractC2643i.C2644a c2644a = (AbstractC2643i.C2644a) message.obj;
                    ServiceConnectionC2609al serviceConnectionC2609al = this.f7292a.get(c2644a);
                    if (serviceConnectionC2609al != null && serviceConnectionC2609al.m14124c()) {
                        if (serviceConnectionC2609al.m14131a()) {
                            serviceConnectionC2609al.m14125b("GmsClientSupervisor");
                        }
                        this.f7292a.remove(c2644a);
                    }
                }
                z = true;
                break;
            case 1:
                synchronized (this.f7292a) {
                    AbstractC2643i.C2644a c2644a2 = (AbstractC2643i.C2644a) message.obj;
                    ServiceConnectionC2609al serviceConnectionC2609al2 = this.f7292a.get(c2644a2);
                    if (serviceConnectionC2609al2 != null && serviceConnectionC2609al2.m14126b() == 3) {
                        String valueOf = String.valueOf(c2644a2);
                        Log.e("GmsClientSupervisor", new StringBuilder(String.valueOf(valueOf).length() + 47).append("Timeout waiting for ServiceConnection callback ").append(valueOf).toString(), new Exception());
                        ComponentName m14122e = serviceConnectionC2609al2.m14122e();
                        ComponentName componentName = m14122e;
                        if (m14122e == null) {
                            componentName = c2644a2.m14011b();
                        }
                        if (componentName == null) {
                            componentName = new ComponentName(c2644a2.m14013a(), "unknown");
                        }
                        serviceConnectionC2609al2.onServiceDisconnected(componentName);
                    }
                }
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
