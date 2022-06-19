package p193e.p1577m.p1578a.p1642f.p1652d;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.cloudmessaging.zzh;
import com.google.android.gms.cloudmessaging.zzl;
import com.google.android.gms.cloudmessaging.zzq;
import com.google.android.gms.cloudmessaging.zzs;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.cloudmessaging.zzf;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import p193e.p1577m.p1578a.p1642f.p1652d.AbstractC24903f;
import p193e.p1577m.p1578a.p1642f.p1652d.C24901d;
import p193e.p1577m.p1578a.p1642f.p1652d.ServiceConnectionC24900c;
/* renamed from: e.m.a.f.d.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/d/c.class */
public final class ServiceConnectionC24900c implements ServiceConnection {

    /* renamed from: c */
    public C24901d f69794c;

    /* renamed from: f */
    public final /* synthetic */ zzs f69797f;

    /* renamed from: a */
    public int f69792a = 0;

    /* renamed from: b */
    public final Messenger f69793b = new Messenger(new zzf(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.gms.cloudmessaging.zzf
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            ServiceConnectionC24900c serviceConnectionC24900c = ServiceConnectionC24900c.this;
            int i = message.arg1;
            Log.isLoggable("MessengerIpcClient", 3);
            synchronized (serviceConnectionC24900c) {
                AbstractC24903f<?> abstractC24903f = serviceConnectionC24900c.f69796e.get(i);
                if (abstractC24903f == null) {
                    return true;
                }
                serviceConnectionC24900c.f69796e.remove(i);
                serviceConnectionC24900c.m4298c();
                Bundle data = message.getData();
                if (data.getBoolean("unsupported", false)) {
                    abstractC24903f.m4296c(new zzq("Not supported by GmsCore", null));
                    return true;
                }
                abstractC24903f.mo4294a(data);
                return true;
            }
        }
    }));

    /* renamed from: d */
    public final Queue<AbstractC24903f<?>> f69795d = new ArrayDeque();

    /* renamed from: e */
    public final SparseArray<AbstractC24903f<?>> f69796e = new SparseArray<>();

    public /* synthetic */ ServiceConnectionC24900c(zzs zzsVar, zzl zzlVar) {
        this.f69797f = zzsVar;
    }

    /* renamed from: a */
    public final void m4300a(int i, String str) {
        synchronized (this) {
            m4299b(i, str, null);
        }
    }

    /* renamed from: b */
    public final void m4299b(int i, String str, Throwable th) {
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(str);
                if (valueOf.length() != 0) {
                    "Disconnected: ".concat(valueOf);
                } else {
                    new String("Disconnected: ");
                }
            }
            int i2 = this.f69792a;
            if (i2 != 0) {
                if (i2 != 1 && i2 != 2) {
                    if (i2 != 3) {
                        return;
                    }
                    this.f69792a = 4;
                    return;
                }
                Log.isLoggable("MessengerIpcClient", 2);
                this.f69792a = 4;
                ConnectionTracker.m38803b().m38802c(this.f69797f.f5643a, this);
                zzq zzqVar = new zzq(str, th);
                for (AbstractC24903f<?> abstractC24903f : this.f69795d) {
                    abstractC24903f.m4296c(zzqVar);
                }
                this.f69795d.clear();
                for (int i3 = 0; i3 < this.f69796e.size(); i3++) {
                    this.f69796e.valueAt(i3).m4296c(zzqVar);
                }
                this.f69796e.clear();
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: c */
    public final void m4298c() {
        synchronized (this) {
            if (this.f69792a == 2 && this.f69795d.isEmpty() && this.f69796e.size() == 0) {
                Log.isLoggable("MessengerIpcClient", 2);
                this.f69792a = 3;
                ConnectionTracker.m38803b().m38802c(this.f69797f.f5643a, this);
            }
        }
    }

    /* renamed from: d */
    public final boolean m4297d(AbstractC24903f<?> abstractC24903f) {
        synchronized (this) {
            int i = this.f69792a;
            if (i != 0) {
                if (i == 1) {
                    this.f69795d.add(abstractC24903f);
                    return true;
                } else if (i != 2) {
                    return false;
                } else {
                    this.f69795d.add(abstractC24903f);
                    this.f69797f.f5644b.execute(new zzh(this));
                    return true;
                }
            }
            this.f69795d.add(abstractC24903f);
            Preconditions.m38896l(this.f69792a == 0);
            Log.isLoggable("MessengerIpcClient", 2);
            this.f69792a = 1;
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            try {
                if (!ConnectionTracker.m38803b().m38804a(this.f69797f.f5643a, intent, this, 1)) {
                    m4300a(0, "Unable to bind to service");
                } else {
                    this.f69797f.f5644b.schedule(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzi
                        @Override // java.lang.Runnable
                        public final void run() {
                            ServiceConnectionC24900c serviceConnectionC24900c = ServiceConnectionC24900c.this;
                            synchronized (serviceConnectionC24900c) {
                                if (serviceConnectionC24900c.f69792a == 1) {
                                    serviceConnectionC24900c.m4300a(1, "Timed out while binding");
                                }
                            }
                        }
                    }, 30L, TimeUnit.SECONDS);
                }
            } catch (SecurityException e) {
                m4299b(0, "Unable to bind to service", e);
            }
            return true;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        Log.isLoggable("MessengerIpcClient", 2);
        this.f69797f.f5644b.execute(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzj
            @Override // java.lang.Runnable
            public final void run() {
                ServiceConnectionC24900c serviceConnectionC24900c = ServiceConnectionC24900c.this;
                IBinder iBinder2 = iBinder;
                synchronized (serviceConnectionC24900c) {
                    if (iBinder2 == null) {
                        serviceConnectionC24900c.m4300a(0, "Null service connection");
                        return;
                    }
                    try {
                        serviceConnectionC24900c.f69794c = new C24901d(iBinder2);
                        serviceConnectionC24900c.f69792a = 2;
                        serviceConnectionC24900c.f69797f.f5644b.execute(new zzh(serviceConnectionC24900c));
                    } catch (RemoteException e) {
                        serviceConnectionC24900c.m4300a(0, e.getMessage());
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Log.isLoggable("MessengerIpcClient", 2);
        this.f69797f.f5644b.execute(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzg
            @Override // java.lang.Runnable
            public final void run() {
                ServiceConnectionC24900c.this.m4300a(2, "Service disconnected");
            }
        });
    }
}
