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
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.stats.C6217a;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p078c.p084c.p085a.p086a.p088b.p090b.HandlerC1845e;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.cloudmessaging.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/g.class */
public final class ServiceConnectionC5961g implements ServiceConnection {

    /* renamed from: a */
    int f19112a;

    /* renamed from: b */
    final Messenger f19113b;

    /* renamed from: c */
    C5970p f19114c;

    /* renamed from: d */
    final Queue<AbstractC5971q<?>> f19115d;

    /* renamed from: e */
    final SparseArray<AbstractC5971q<?>> f19116e;

    /* renamed from: f */
    final /* synthetic */ C5960f f19117f;

    /* JADX INFO: Access modifiers changed from: private */
    public ServiceConnectionC5961g(C5960f c5960f) {
        this.f19117f = c5960f;
        this.f19112a = 0;
        this.f19113b = new Messenger(new HandlerC1845e(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.android.gms.cloudmessaging.j

            /* renamed from: d */
            private final ServiceConnectionC5961g f19119d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19119d = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f19119d.m17520d(message);
            }
        }));
        this.f19115d = new ArrayDeque();
        this.f19116e = new SparseArray<>();
    }

    /* renamed from: a */
    public final void m17523a() {
        ScheduledExecutorService scheduledExecutorService;
        scheduledExecutorService = this.f19117f.f19109c;
        scheduledExecutorService.execute(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.k

            /* renamed from: d */
            private final ServiceConnectionC5961g f19120d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19120d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final AbstractC5971q poll;
                final ServiceConnectionC5961g serviceConnectionC5961g = this.f19120d;
                while (true) {
                    synchronized (serviceConnectionC5961g) {
                        if (serviceConnectionC5961g.f19112a != 2) {
                            return;
                        }
                        if (serviceConnectionC5961g.f19115d.isEmpty()) {
                            serviceConnectionC5961g.m17518f();
                            return;
                        }
                        poll = serviceConnectionC5961g.f19115d.poll();
                        serviceConnectionC5961g.f19116e.put(poll.f19128a, poll);
                        C5960f.m17524g(serviceConnectionC5961g.f19117f).schedule(new Runnable(serviceConnectionC5961g, poll) { // from class: com.google.android.gms.cloudmessaging.m

                            /* renamed from: d */
                            private final ServiceConnectionC5961g f19123d;

                            /* renamed from: e */
                            private final AbstractC5971q f19124e;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f19123d = serviceConnectionC5961g;
                                this.f19124e = poll;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f19123d.m17522b(this.f19124e.f19128a);
                            }
                        }, 30L, TimeUnit.SECONDS);
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        String valueOf = String.valueOf(poll);
                        StringBuilder sb = new StringBuilder(valueOf.length() + 8);
                        sb.append("Sending ");
                        sb.append(valueOf);
                        Log.d("MessengerIpcClient", sb.toString());
                    }
                    Context m17529b = C5960f.m17529b(serviceConnectionC5961g.f19117f);
                    Messenger messenger = serviceConnectionC5961g.f19113b;
                    Message obtain = Message.obtain();
                    obtain.what = poll.f19130c;
                    obtain.arg1 = poll.f19128a;
                    obtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", poll.mo17509d());
                    bundle.putString("pkg", m17529b.getPackageName());
                    bundle.putBundle("data", poll.f19131d);
                    obtain.setData(bundle);
                    try {
                        serviceConnectionC5961g.f19114c.m17516a(obtain);
                    } catch (RemoteException e) {
                        serviceConnectionC5961g.m17521c(2, e.getMessage());
                    }
                }
            }
        });
    }

    /* renamed from: b */
    public final void m17522b(int i) {
        synchronized (this) {
            AbstractC5971q<?> abstractC5971q = this.f19116e.get(i);
            if (abstractC5971q != null) {
                StringBuilder sb = new StringBuilder(31);
                sb.append("Timing out request: ");
                sb.append(i);
                Log.w("MessengerIpcClient", sb.toString());
                this.f19116e.remove(i);
                abstractC5971q.m17515b(new zzp(3, "Timed out waiting for response"));
                m17518f();
            }
        }
    }

    /* renamed from: c */
    public final void m17521c(int i, String str) {
        Context context;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(str);
                Log.d("MessengerIpcClient", valueOf.length() != 0 ? "Disconnected: ".concat(valueOf) : new String("Disconnected: "));
            }
            int i2 = this.f19112a;
            if (i2 != 0) {
                if (i2 != 1 && i2 != 2) {
                    if (i2 == 3) {
                        this.f19112a = 4;
                        return;
                    } else if (i2 == 4) {
                        return;
                    } else {
                        int i3 = this.f19112a;
                        StringBuilder sb = new StringBuilder(26);
                        sb.append("Unknown state: ");
                        sb.append(i3);
                        throw new IllegalStateException(sb.toString());
                    }
                }
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Unbinding service");
                }
                this.f19112a = 4;
                C6217a m16846b = C6217a.m16846b();
                context = this.f19117f.f19108b;
                m16846b.m16845c(context, this);
                zzp zzpVar = new zzp(i, str);
                for (AbstractC5971q<?> abstractC5971q : this.f19115d) {
                    abstractC5971q.m17515b(zzpVar);
                }
                this.f19115d.clear();
                for (int i4 = 0; i4 < this.f19116e.size(); i4++) {
                    this.f19116e.valueAt(i4).m17515b(zzpVar);
                }
                this.f19116e.clear();
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: d */
    public final boolean m17520d(Message message) {
        int i = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Received response to request: ");
            sb.append(i);
            Log.d("MessengerIpcClient", sb.toString());
        }
        synchronized (this) {
            AbstractC5971q<?> abstractC5971q = this.f19116e.get(i);
            if (abstractC5971q == null) {
                StringBuilder sb2 = new StringBuilder(50);
                sb2.append("Received response for unknown request: ");
                sb2.append(i);
                Log.w("MessengerIpcClient", sb2.toString());
                return true;
            }
            this.f19116e.remove(i);
            m17518f();
            Bundle data = message.getData();
            if (data.getBoolean("unsupported", false)) {
                abstractC5971q.m17515b(new zzp(4, "Not supported by GmsCore"));
                return true;
            }
            abstractC5971q.mo17510a(data);
            return true;
        }
    }

    /* renamed from: e */
    public final boolean m17519e(AbstractC5971q<?> abstractC5971q) {
        Context context;
        ScheduledExecutorService scheduledExecutorService;
        synchronized (this) {
            int i = this.f19112a;
            if (i == 0) {
                this.f19115d.add(abstractC5971q);
                C6155o.m17015m(this.f19112a == 0);
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Starting bind to GmsCore");
                }
                this.f19112a = 1;
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                C6217a m16846b = C6217a.m16846b();
                context = this.f19117f.f19108b;
                if (!m16846b.m16847a(context, intent, this, 1)) {
                    m17521c(0, "Unable to bind to service");
                } else {
                    scheduledExecutorService = this.f19117f.f19109c;
                    scheduledExecutorService.schedule(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.i

                        /* renamed from: d */
                        private final ServiceConnectionC5961g f19118d;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f19118d = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f19118d.m17517g();
                        }
                    }, 30L, TimeUnit.SECONDS);
                }
                return true;
            } else if (i == 1) {
                this.f19115d.add(abstractC5971q);
                return true;
            } else if (i == 2) {
                this.f19115d.add(abstractC5971q);
                m17523a();
                return true;
            } else if (i == 3 || i == 4) {
                return false;
            } else {
                int i2 = this.f19112a;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i2);
                throw new IllegalStateException(sb.toString());
            }
        }
    }

    /* renamed from: f */
    public final void m17518f() {
        Context context;
        synchronized (this) {
            if (this.f19112a == 2 && this.f19115d.isEmpty() && this.f19116e.size() == 0) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
                }
                this.f19112a = 3;
                C6217a m16846b = C6217a.m16846b();
                context = this.f19117f.f19108b;
                m16846b.m16845c(context, this);
            }
        }
    }

    /* renamed from: g */
    public final void m17517g() {
        synchronized (this) {
            if (this.f19112a == 1) {
                m17521c(1, "Timed out while binding");
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ScheduledExecutorService scheduledExecutorService;
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        scheduledExecutorService = this.f19117f.f19109c;
        scheduledExecutorService.execute(new Runnable(this, iBinder) { // from class: com.google.android.gms.cloudmessaging.l

            /* renamed from: d */
            private final ServiceConnectionC5961g f19121d;

            /* renamed from: e */
            private final IBinder f19122e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19121d = this;
                this.f19122e = iBinder;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ServiceConnectionC5961g serviceConnectionC5961g = this.f19121d;
                IBinder iBinder2 = this.f19122e;
                synchronized (serviceConnectionC5961g) {
                    if (iBinder2 == null) {
                        serviceConnectionC5961g.m17521c(0, "Null service connection");
                        return;
                    }
                    try {
                        serviceConnectionC5961g.f19114c = new C5970p(iBinder2);
                        serviceConnectionC5961g.f19112a = 2;
                        serviceConnectionC5961g.m17523a();
                    } catch (RemoteException e) {
                        serviceConnectionC5961g.m17521c(0, e.getMessage());
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
        scheduledExecutorService = this.f19117f.f19109c;
        scheduledExecutorService.execute(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.n

            /* renamed from: d */
            private final ServiceConnectionC5961g f19125d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19125d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f19125d.m17521c(2, "Service disconnected");
            }
        });
    }
}
