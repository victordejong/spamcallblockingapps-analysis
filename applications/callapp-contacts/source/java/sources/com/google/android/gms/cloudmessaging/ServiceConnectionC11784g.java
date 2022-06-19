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
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.stats.C12088a;
import com.google.android.gms.internal.p356b.HandlerC13148e;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.cloudmessaging.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/g.class */
public final class ServiceConnectionC11784g implements ServiceConnection {

    /* renamed from: a */
    int f39116a;

    /* renamed from: b */
    final Messenger f39117b;

    /* renamed from: c */
    C11793p f39118c;

    /* renamed from: d */
    final Queue<AbstractC11794q<?>> f39119d;

    /* renamed from: e */
    final SparseArray<AbstractC11794q<?>> f39120e;

    /* renamed from: f */
    final /* synthetic */ C11783f f39121f;

    /* JADX INFO: Access modifiers changed from: private */
    public ServiceConnectionC11784g(C11783f c11783f) {
        this.f39121f = c11783f;
        this.f39116a = 0;
        this.f39117b = new Messenger(new HandlerC13148e(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.android.gms.cloudmessaging.j

            /* renamed from: a */
            private final ServiceConnectionC11784g f39123a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39123a = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f39123a.m19489a(message);
            }
        }));
        this.f39119d = new ArrayDeque();
        this.f39120e = new SparseArray<>();
    }

    /* renamed from: a */
    public final void m19492a() {
        this.f39121f.f39113b.execute(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.k

            /* renamed from: a */
            private final ServiceConnectionC11784g f39124a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39124a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final ServiceConnectionC11784g serviceConnectionC11784g = this.f39124a;
                while (true) {
                    synchronized (serviceConnectionC11784g) {
                        if (serviceConnectionC11784g.f39116a != 2) {
                            return;
                        }
                        if (serviceConnectionC11784g.f39119d.isEmpty()) {
                            serviceConnectionC11784g.m19487b();
                            return;
                        }
                        final AbstractC11794q poll = serviceConnectionC11784g.f39119d.poll();
                        serviceConnectionC11784g.f39120e.put(poll.f39132a, poll);
                        serviceConnectionC11784g.f39121f.f39113b.schedule(new Runnable(serviceConnectionC11784g, poll) { // from class: com.google.android.gms.cloudmessaging.m

                            /* renamed from: a */
                            private final ServiceConnectionC11784g f39127a;

                            /* renamed from: b */
                            private final AbstractC11794q f39128b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f39127a = serviceConnectionC11784g;
                                this.f39128b = poll;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f39127a.m19491a(this.f39128b.f39132a);
                            }
                        }, 30L, TimeUnit.SECONDS);
                        if (Log.isLoggable("MessengerIpcClient", 3)) {
                            String valueOf = String.valueOf(poll);
                            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 8);
                            sb.append("Sending ");
                            sb.append(valueOf);
                        }
                        Context context = serviceConnectionC11784g.f39121f.f39112a;
                        Messenger messenger = serviceConnectionC11784g.f39117b;
                        Message obtain = Message.obtain();
                        obtain.what = poll.f39134c;
                        obtain.arg1 = poll.f39132a;
                        obtain.replyTo = messenger;
                        Bundle bundle = new Bundle();
                        bundle.putBoolean("oneWay", poll.mo19480a());
                        bundle.putString("pkg", context.getPackageName());
                        bundle.putBundle("data", poll.f39135d);
                        obtain.setData(bundle);
                        try {
                            C11793p c11793p = serviceConnectionC11784g.f39118c;
                            if (c11793p.f39130a == null) {
                                if (c11793p.f39131b == null) {
                                    throw new IllegalStateException("Both messengers are null");
                                    break;
                                }
                                c11793p.f39131b.zza(obtain);
                            } else {
                                c11793p.f39130a.send(obtain);
                            }
                        } catch (RemoteException e) {
                            serviceConnectionC11784g.m19490a(2, e.getMessage());
                        }
                    }
                }
            }
        });
    }

    /* renamed from: a */
    public final void m19491a(int i) {
        synchronized (this) {
            AbstractC11794q<?> abstractC11794q = this.f39120e.get(i);
            if (abstractC11794q != null) {
                StringBuilder sb = new StringBuilder(31);
                sb.append("Timing out request: ");
                sb.append(i);
                Log.w("MessengerIpcClient", sb.toString());
                this.f39120e.remove(i);
                abstractC11794q.m19485a(new zzp(3, "Timed out waiting for response"));
                m19487b();
            }
        }
    }

    /* renamed from: a */
    public final void m19490a(int i, String str) {
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(str);
                if (valueOf.length() != 0) {
                    "Disconnected: ".concat(valueOf);
                } else {
                    new String("Disconnected: ");
                }
            }
            int i2 = this.f39116a;
            if (i2 != 0) {
                if (i2 != 1 && i2 != 2) {
                    if (i2 == 3) {
                        this.f39116a = 4;
                        return;
                    } else if (i2 == 4) {
                        return;
                    } else {
                        int i3 = this.f39116a;
                        StringBuilder sb = new StringBuilder(26);
                        sb.append("Unknown state: ");
                        sb.append(i3);
                        throw new IllegalStateException(sb.toString());
                    }
                }
                Log.isLoggable("MessengerIpcClient", 2);
                this.f39116a = 4;
                C12088a.m19072a().m19070a(this.f39121f.f39112a, this);
                zzp zzpVar = new zzp(i, str);
                for (AbstractC11794q<?> abstractC11794q : this.f39119d) {
                    abstractC11794q.m19485a(zzpVar);
                }
                this.f39119d.clear();
                for (int i4 = 0; i4 < this.f39120e.size(); i4++) {
                    this.f39120e.valueAt(i4).m19485a(zzpVar);
                }
                this.f39120e.clear();
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public final boolean m19489a(Message message) {
        int i = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Received response to request: ");
            sb.append(i);
        }
        synchronized (this) {
            AbstractC11794q<?> abstractC11794q = this.f39120e.get(i);
            if (abstractC11794q == null) {
                StringBuilder sb2 = new StringBuilder(50);
                sb2.append("Received response for unknown request: ");
                sb2.append(i);
                Log.w("MessengerIpcClient", sb2.toString());
                return true;
            }
            this.f39120e.remove(i);
            m19487b();
            Bundle data = message.getData();
            if (data.getBoolean("unsupported", false)) {
                abstractC11794q.m19485a(new zzp(4, "Not supported by GmsCore"));
                return true;
            }
            abstractC11794q.mo19479a(data);
            return true;
        }
    }

    /* renamed from: a */
    public final boolean m19488a(AbstractC11794q<?> abstractC11794q) {
        synchronized (this) {
            int i = this.f39116a;
            if (i == 0) {
                this.f39119d.add(abstractC11794q);
                C12045o.m19158a(this.f39116a == 0);
                Log.isLoggable("MessengerIpcClient", 2);
                this.f39116a = 1;
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                if (!C12088a.m19072a().m19071a(this.f39121f.f39112a, intent, this, 1)) {
                    m19490a(0, "Unable to bind to service");
                } else {
                    this.f39121f.f39113b.schedule(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.i

                        /* renamed from: a */
                        private final ServiceConnectionC11784g f39122a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f39122a = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f39122a.m19486c();
                        }
                    }, 30L, TimeUnit.SECONDS);
                }
                return true;
            } else if (i == 1) {
                this.f39119d.add(abstractC11794q);
                return true;
            } else if (i == 2) {
                this.f39119d.add(abstractC11794q);
                m19492a();
                return true;
            } else if (i == 3 || i == 4) {
                return false;
            } else {
                int i2 = this.f39116a;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i2);
                throw new IllegalStateException(sb.toString());
            }
        }
    }

    /* renamed from: b */
    public final void m19487b() {
        synchronized (this) {
            if (this.f39116a == 2 && this.f39119d.isEmpty() && this.f39120e.size() == 0) {
                Log.isLoggable("MessengerIpcClient", 2);
                this.f39116a = 3;
                C12088a.m19072a().m19070a(this.f39121f.f39112a, this);
            }
        }
    }

    /* renamed from: c */
    public final void m19486c() {
        synchronized (this) {
            if (this.f39116a == 1) {
                m19490a(1, "Timed out while binding");
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Log.isLoggable("MessengerIpcClient", 2);
        this.f39121f.f39113b.execute(new Runnable(this, iBinder) { // from class: com.google.android.gms.cloudmessaging.l

            /* renamed from: a */
            private final ServiceConnectionC11784g f39125a;

            /* renamed from: b */
            private final IBinder f39126b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39125a = this;
                this.f39126b = iBinder;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ServiceConnectionC11784g serviceConnectionC11784g = this.f39125a;
                IBinder iBinder2 = this.f39126b;
                synchronized (serviceConnectionC11784g) {
                    if (iBinder2 == null) {
                        serviceConnectionC11784g.m19490a(0, "Null service connection");
                        return;
                    }
                    try {
                        serviceConnectionC11784g.f39118c = new C11793p(iBinder2);
                        serviceConnectionC11784g.f39116a = 2;
                        serviceConnectionC11784g.m19492a();
                    } catch (RemoteException e) {
                        serviceConnectionC11784g.m19490a(0, e.getMessage());
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Log.isLoggable("MessengerIpcClient", 2);
        this.f39121f.f39113b.execute(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.n

            /* renamed from: a */
            private final ServiceConnectionC11784g f39129a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39129a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f39129a.m19490a(2, "Service disconnected");
            }
        });
    }
}
