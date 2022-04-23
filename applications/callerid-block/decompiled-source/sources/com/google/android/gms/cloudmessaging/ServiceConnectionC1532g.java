package com.google.android.gms.cloudmessaging;

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
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.common.stats.C1599a;
import e.c.a.a.a.b.e;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.cloudmessaging.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/g.class */
public final class ServiceConnectionC1532g implements ServiceConnection {
    @GuardedBy("this")

    /* renamed from: a */
    int f5776a;

    /* renamed from: b */
    final Messenger f5777b;

    /* renamed from: c */
    C1540p f5778c;
    @GuardedBy("this")

    /* renamed from: d */
    final Queue<AbstractC1541q<?>> f5779d;
    @GuardedBy("this")

    /* renamed from: e */
    final SparseArray<AbstractC1541q<?>> f5780e;

    /* renamed from: f */
    final /* synthetic */ C1531f f5781f;

    private ServiceConnectionC1532g(C1531f fVar) {
        this.f5781f = fVar;
        this.f5776a = 0;
        this.f5777b = new Messenger((Handler) new e(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.android.gms.cloudmessaging.j

            /* renamed from: b */
            private final ServiceConnectionC1532g f5783b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5783b = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f5783b.m8485d(message);
            }
        }));
        this.f5779d = new ArrayDeque();
        this.f5780e = new SparseArray<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m8488a() {
        ScheduledExecutorService scheduledExecutorService;
        scheduledExecutorService = this.f5781f.f5773b;
        scheduledExecutorService.execute(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.k

            /* renamed from: b */
            private final ServiceConnectionC1532g f5784b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5784b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final AbstractC1541q<?> poll;
                ScheduledExecutorService scheduledExecutorService2;
                Context context;
                final ServiceConnectionC1532g gVar = this.f5784b;
                while (true) {
                    synchronized (gVar) {
                        try {
                            if (gVar.f5776a == 2) {
                                if (gVar.f5779d.isEmpty()) {
                                    gVar.m8483f();
                                    return;
                                }
                                poll = gVar.f5779d.poll();
                                gVar.f5780e.put(poll.f5792a, poll);
                                scheduledExecutorService2 = gVar.f5781f.f5773b;
                                scheduledExecutorService2.schedule(new Runnable(gVar, poll) { // from class: com.google.android.gms.cloudmessaging.m

                                    /* renamed from: b */
                                    private final ServiceConnectionC1532g f5787b;

                                    /* renamed from: c */
                                    private final AbstractC1541q f5788c;

                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    {
                                        this.f5787b = gVar;
                                        this.f5788c = poll;
                                    }

                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f5787b.m8487b(this.f5788c.f5792a);
                                    }
                                }, 30L, TimeUnit.SECONDS);
                            } else {
                                return;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        String valueOf = String.valueOf(poll);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 8);
                        sb.append("Sending ");
                        sb.append(valueOf);
                        Log.d("MessengerIpcClient", sb.toString());
                    }
                    context = gVar.f5781f.f5772a;
                    Messenger messenger = gVar.f5777b;
                    Message obtain = Message.obtain();
                    obtain.what = poll.f5794c;
                    obtain.arg1 = poll.f5792a;
                    obtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", poll.m8477d());
                    bundle.putString("pkg", context.getPackageName());
                    bundle.putBundle("data", poll.f5795d);
                    obtain.setData(bundle);
                    try {
                        gVar.f5778c.m8481a(obtain);
                    } catch (RemoteException e) {
                        gVar.m8486c(2, e.getMessage());
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m8487b(int i) {
        synchronized (this) {
            AbstractC1541q<?> qVar = this.f5780e.get(i);
            if (qVar != null) {
                StringBuilder sb = new StringBuilder(31);
                sb.append("Timing out request: ");
                sb.append(i);
                Log.w("MessengerIpcClient", sb.toString());
                this.f5780e.remove(i);
                qVar.m8479b(new zzp(3, "Timed out waiting for response"));
                m8483f();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m8486c(int i, String str) {
        Context context;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(str);
                Log.d("MessengerIpcClient", valueOf.length() != 0 ? "Disconnected: ".concat(valueOf) : new String("Disconnected: "));
            }
            int i2 = this.f5776a;
            if (i2 == 0) {
                throw new IllegalStateException();
            } else if (i2 == 1 || i2 == 2) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Unbinding service");
                }
                this.f5776a = 4;
                C1599a b = C1599a.m8265b();
                context = this.f5781f.f5772a;
                b.m8264c(context, this);
                zzp zzpVar = new zzp(i, str);
                for (AbstractC1541q<?> qVar : this.f5779d) {
                    qVar.m8479b(zzpVar);
                }
                this.f5779d.clear();
                for (int i3 = 0; i3 < this.f5780e.size(); i3++) {
                    this.f5780e.valueAt(i3).m8479b(zzpVar);
                }
                this.f5780e.clear();
            } else if (i2 == 3) {
                this.f5776a = 4;
            } else if (i2 != 4) {
                int i4 = this.f5776a;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i4);
                throw new IllegalStateException(sb.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final boolean m8485d(Message message) {
        int i = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Received response to request: ");
            sb.append(i);
            Log.d("MessengerIpcClient", sb.toString());
        }
        synchronized (this) {
            AbstractC1541q<?> qVar = this.f5780e.get(i);
            if (qVar == null) {
                StringBuilder sb2 = new StringBuilder(50);
                sb2.append("Received response for unknown request: ");
                sb2.append(i);
                Log.w("MessengerIpcClient", sb2.toString());
                return true;
            }
            this.f5780e.remove(i);
            m8483f();
            Bundle data = message.getData();
            if (data.getBoolean("unsupported", false)) {
                qVar.m8479b(new zzp(4, "Not supported by GmsCore"));
                return true;
            }
            qVar.m8480a(data);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final boolean m8484e(AbstractC1541q<?> qVar) {
        Context context;
        ScheduledExecutorService scheduledExecutorService;
        synchronized (this) {
            int i = this.f5776a;
            if (i == 0) {
                this.f5779d.add(qVar);
                C1581h.m8344k(this.f5776a == 0);
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Starting bind to GmsCore");
                }
                this.f5776a = 1;
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                C1599a b = C1599a.m8265b();
                context = this.f5781f.f5772a;
                if (!b.m8266a(context, intent, this, 1)) {
                    m8486c(0, "Unable to bind to service");
                } else {
                    scheduledExecutorService = this.f5781f.f5773b;
                    scheduledExecutorService.schedule(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.i

                        /* renamed from: b */
                        private final ServiceConnectionC1532g f5782b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f5782b = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f5782b.m8482g();
                        }
                    }, 30L, TimeUnit.SECONDS);
                }
                return true;
            } else if (i == 1) {
                this.f5779d.add(qVar);
                return true;
            } else if (i == 2) {
                this.f5779d.add(qVar);
                m8488a();
                return true;
            } else if (i == 3 || i == 4) {
                return false;
            } else {
                int i2 = this.f5776a;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i2);
                throw new IllegalStateException(sb.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m8483f() {
        Context context;
        synchronized (this) {
            if (this.f5776a == 2 && this.f5779d.isEmpty() && this.f5780e.size() == 0) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
                }
                this.f5776a = 3;
                C1599a b = C1599a.m8265b();
                context = this.f5781f.f5772a;
                b.m8264c(context, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final void m8482g() {
        synchronized (this) {
            if (this.f5776a == 1) {
                m8486c(1, "Timed out while binding");
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        ScheduledExecutorService scheduledExecutorService;
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        scheduledExecutorService = this.f5781f.f5773b;
        scheduledExecutorService.execute(new Runnable(this, iBinder) { // from class: com.google.android.gms.cloudmessaging.l

            /* renamed from: b */
            private final ServiceConnectionC1532g f5785b;

            /* renamed from: c */
            private final IBinder f5786c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5785b = this;
                this.f5786c = iBinder;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ServiceConnectionC1532g gVar = this.f5785b;
                IBinder iBinder2 = this.f5786c;
                synchronized (gVar) {
                    if (iBinder2 == null) {
                        gVar.m8486c(0, "Null service connection");
                        return;
                    }
                    try {
                        gVar.f5778c = new C1540p(iBinder2);
                        gVar.f5776a = 2;
                        gVar.m8488a();
                    } catch (RemoteException e) {
                        gVar.m8486c(0, e.getMessage());
                    }
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
        scheduledExecutorService = this.f5781f.f5773b;
        scheduledExecutorService.execute(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.n

            /* renamed from: b */
            private final ServiceConnectionC1532g f5789b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5789b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f5789b.m8486c(2, "Service disconnected");
            }
        });
    }
}
