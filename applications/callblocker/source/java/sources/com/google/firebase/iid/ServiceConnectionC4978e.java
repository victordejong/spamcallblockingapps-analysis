package com.google.firebase.iid;

import android.content.ComponentName;
import android.content.Context;
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
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.stats.C2694a;
import com.google.android.gms.internal.p140g.HandlerC3738e;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.firebase.iid.e */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/e.class */
public final class ServiceConnectionC4978e implements ServiceConnection {
    @GuardedBy("this")

    /* renamed from: a */
    int f21148a;

    /* renamed from: b */
    final Messenger f21149b;

    /* renamed from: c */
    C4986m f21150c;
    @GuardedBy("this")

    /* renamed from: d */
    final Queue<AbstractC4987n<?>> f21151d;
    @GuardedBy("this")

    /* renamed from: e */
    final SparseArray<AbstractC4987n<?>> f21152e;

    /* renamed from: f */
    final /* synthetic */ C4977d f21153f;

    /* JADX INFO: Access modifiers changed from: private */
    public ServiceConnectionC4978e(C4977d c4977d) {
        this.f21153f = c4977d;
        this.f21148a = 0;
        this.f21149b = new Messenger(new HandlerC3738e(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.firebase.iid.h

            /* renamed from: a */
            private final ServiceConnectionC4978e f21155a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21155a = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f21155a.m1928a(message);
            }
        }));
        this.f21151d = new ArrayDeque();
        this.f21152e = new SparseArray<>();
    }

    /* renamed from: a */
    public final void m1931a() {
        ScheduledExecutorService scheduledExecutorService;
        scheduledExecutorService = this.f21153f.f21145c;
        scheduledExecutorService.execute(new Runnable(this) { // from class: com.google.firebase.iid.i

            /* renamed from: a */
            private final ServiceConnectionC4978e f21156a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21156a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final AbstractC4987n poll;
                ScheduledExecutorService scheduledExecutorService2;
                Context context;
                final ServiceConnectionC4978e serviceConnectionC4978e = this.f21156a;
                while (true) {
                    synchronized (serviceConnectionC4978e) {
                        if (serviceConnectionC4978e.f21148a != 2) {
                            return;
                        }
                        if (serviceConnectionC4978e.f21151d.isEmpty()) {
                            serviceConnectionC4978e.m1926b();
                            return;
                        }
                        poll = serviceConnectionC4978e.f21151d.poll();
                        serviceConnectionC4978e.f21152e.put(poll.f21164a, poll);
                        scheduledExecutorService2 = serviceConnectionC4978e.f21153f.f21145c;
                        scheduledExecutorService2.schedule(new Runnable(serviceConnectionC4978e, poll) { // from class: com.google.firebase.iid.k

                            /* renamed from: a */
                            private final ServiceConnectionC4978e f21159a;

                            /* renamed from: b */
                            private final AbstractC4987n f21160b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f21159a = serviceConnectionC4978e;
                                this.f21160b = poll;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f21159a.m1930a(this.f21160b.f21164a);
                            }
                        }, 30L, TimeUnit.SECONDS);
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        String valueOf = String.valueOf(poll);
                        Log.d("MessengerIpcClient", new StringBuilder(String.valueOf(valueOf).length() + 8).append("Sending ").append(valueOf).toString());
                    }
                    context = serviceConnectionC4978e.f21153f.f21144b;
                    Messenger messenger = serviceConnectionC4978e.f21149b;
                    Message obtain = Message.obtain();
                    obtain.what = poll.f21166c;
                    obtain.arg1 = poll.f21164a;
                    obtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", poll.mo1913a());
                    bundle.putString("pkg", context.getPackageName());
                    bundle.putBundle("data", poll.f21167d);
                    obtain.setData(bundle);
                    try {
                        serviceConnectionC4978e.f21150c.m1924a(obtain);
                    } catch (RemoteException e) {
                        serviceConnectionC4978e.m1929a(2, e.getMessage());
                    }
                }
            }
        });
    }

    /* renamed from: a */
    public final void m1930a(int i) {
        synchronized (this) {
            AbstractC4987n<?> abstractC4987n = this.f21152e.get(i);
            if (abstractC4987n != null) {
                Log.w("MessengerIpcClient", new StringBuilder(31).append("Timing out request: ").append(i).toString());
                this.f21152e.remove(i);
                abstractC4987n.m1923a(new zzam(3, "Timed out waiting for response"));
                m1926b();
            }
        }
    }

    /* renamed from: a */
    public final void m1929a(int i, String str) {
        Context context;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(str);
                Log.d("MessengerIpcClient", valueOf.length() != 0 ? "Disconnected: ".concat(valueOf) : new String("Disconnected: "));
            }
            switch (this.f21148a) {
                case 0:
                    throw new IllegalStateException();
                case 1:
                case 2:
                    if (Log.isLoggable("MessengerIpcClient", 2)) {
                        Log.v("MessengerIpcClient", "Unbinding service");
                    }
                    this.f21148a = 4;
                    C2694a m13893a = C2694a.m13893a();
                    context = this.f21153f.f21144b;
                    m13893a.m13891a(context, this);
                    zzam zzamVar = new zzam(i, str);
                    for (AbstractC4987n<?> abstractC4987n : this.f21151d) {
                        abstractC4987n.m1923a(zzamVar);
                    }
                    this.f21151d.clear();
                    for (int i2 = 0; i2 < this.f21152e.size(); i2++) {
                        this.f21152e.valueAt(i2).m1923a(zzamVar);
                    }
                    this.f21152e.clear();
                    break;
                case 3:
                    this.f21148a = 4;
                    break;
                case 4:
                    break;
                default:
                    throw new IllegalStateException(new StringBuilder(26).append("Unknown state: ").append(this.f21148a).toString());
            }
        }
    }

    /* renamed from: a */
    public final boolean m1928a(Message message) {
        int i = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            Log.d("MessengerIpcClient", new StringBuilder(41).append("Received response to request: ").append(i).toString());
        }
        synchronized (this) {
            AbstractC4987n<?> abstractC4987n = this.f21152e.get(i);
            if (abstractC4987n == null) {
                Log.w("MessengerIpcClient", new StringBuilder(50).append("Received response for unknown request: ").append(i).toString());
                return true;
            }
            this.f21152e.remove(i);
            m1926b();
            Bundle data = message.getData();
            if (data.getBoolean("unsupported", false)) {
                abstractC4987n.m1923a(new zzam(4, "Not supported by GmsCore"));
                return true;
            }
            abstractC4987n.mo1912a(data);
            return true;
        }
    }

    /* renamed from: a */
    public final boolean m1927a(AbstractC4987n<?> abstractC4987n) {
        boolean z;
        Context context;
        ScheduledExecutorService scheduledExecutorService;
        boolean z2 = false;
        synchronized (this) {
            switch (this.f21148a) {
                case 0:
                    this.f21151d.add(abstractC4987n);
                    if (this.f21148a == 0) {
                        z2 = true;
                    }
                    C2662s.m13977a(z2);
                    if (Log.isLoggable("MessengerIpcClient", 2)) {
                        Log.v("MessengerIpcClient", "Starting bind to GmsCore");
                    }
                    this.f21148a = 1;
                    Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                    intent.setPackage("com.google.android.gms");
                    C2694a m13893a = C2694a.m13893a();
                    context = this.f21153f.f21144b;
                    if (m13893a.m13892a(context, intent, this, 1)) {
                        scheduledExecutorService = this.f21153f.f21145c;
                        scheduledExecutorService.schedule(new Runnable(this) { // from class: com.google.firebase.iid.g

                            /* renamed from: a */
                            private final ServiceConnectionC4978e f21154a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f21154a = this;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f21154a.m1925c();
                            }
                        }, 30L, TimeUnit.SECONDS);
                        z = true;
                        break;
                    } else {
                        m1929a(0, "Unable to bind to service");
                        z = true;
                        break;
                    }
                case 1:
                    this.f21151d.add(abstractC4987n);
                    z = true;
                    break;
                case 2:
                    this.f21151d.add(abstractC4987n);
                    m1931a();
                    z = true;
                    break;
                case 3:
                case 4:
                    z = false;
                    break;
                default:
                    throw new IllegalStateException(new StringBuilder(26).append("Unknown state: ").append(this.f21148a).toString());
            }
        }
        return z;
    }

    /* renamed from: b */
    public final void m1926b() {
        Context context;
        synchronized (this) {
            if (this.f21148a == 2 && this.f21151d.isEmpty() && this.f21152e.size() == 0) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
                }
                this.f21148a = 3;
                C2694a m13893a = C2694a.m13893a();
                context = this.f21153f.f21144b;
                m13893a.m13891a(context, this);
            }
        }
    }

    /* renamed from: c */
    public final void m1925c() {
        synchronized (this) {
            if (this.f21148a == 1) {
                m1929a(1, "Timed out while binding");
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ScheduledExecutorService scheduledExecutorService;
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        scheduledExecutorService = this.f21153f.f21145c;
        scheduledExecutorService.execute(new Runnable(this, iBinder) { // from class: com.google.firebase.iid.j

            /* renamed from: a */
            private final ServiceConnectionC4978e f21157a;

            /* renamed from: b */
            private final IBinder f21158b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21157a = this;
                this.f21158b = iBinder;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ServiceConnectionC4978e serviceConnectionC4978e = this.f21157a;
                IBinder iBinder2 = this.f21158b;
                synchronized (serviceConnectionC4978e) {
                    if (iBinder2 != null) {
                        try {
                            serviceConnectionC4978e.f21150c = new C4986m(iBinder2);
                            serviceConnectionC4978e.f21148a = 2;
                            serviceConnectionC4978e.m1931a();
                            return;
                        } catch (RemoteException e) {
                            serviceConnectionC4978e.m1929a(0, e.getMessage());
                            return;
                        }
                    }
                    serviceConnectionC4978e.m1929a(0, "Null service connection");
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        ScheduledExecutorService scheduledExecutorService;
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        scheduledExecutorService = this.f21153f.f21145c;
        scheduledExecutorService.execute(new Runnable(this) { // from class: com.google.firebase.iid.l

            /* renamed from: a */
            private final ServiceConnectionC4978e f21161a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21161a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f21161a.m1929a(2, "Service disconnected");
            }
        });
    }
}
