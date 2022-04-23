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
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.stats.a;
import com.google.android.gms.internal.b.e;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/g.class */
public final class g implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    int f22553a;

    /* renamed from: b  reason: collision with root package name */
    final Messenger f22554b;

    /* renamed from: c  reason: collision with root package name */
    p f22555c;

    /* renamed from: d  reason: collision with root package name */
    final Queue<q<?>> f22556d;
    final SparseArray<q<?>> e;
    final /* synthetic */ f f;

    private g(f fVar) {
        this.f = fVar;
        this.f22553a = 0;
        this.f22554b = new Messenger(new e(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.android.gms.cloudmessaging.j

            /* renamed from: a  reason: collision with root package name */
            private final g f22558a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22558a = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f22558a.a(message);
            }
        }));
        this.f22556d = new ArrayDeque();
        this.e = new SparseArray<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f.f22551b.execute(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.k

            /* renamed from: a  reason: collision with root package name */
            private final g f22559a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22559a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final g gVar = this.f22559a;
                while (true) {
                    synchronized (gVar) {
                        if (gVar.f22553a == 2) {
                            if (gVar.f22556d.isEmpty()) {
                                gVar.b();
                                return;
                            }
                            final q<?> poll = gVar.f22556d.poll();
                            gVar.e.put(poll.f22567a, poll);
                            gVar.f.f22551b.schedule(new Runnable(gVar, poll) { // from class: com.google.android.gms.cloudmessaging.m

                                /* renamed from: a  reason: collision with root package name */
                                private final g f22562a;

                                /* renamed from: b  reason: collision with root package name */
                                private final q f22563b;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f22562a = gVar;
                                    this.f22563b = poll;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f22562a.a(this.f22563b.f22567a);
                                }
                            }, 30L, TimeUnit.SECONDS);
                            if (Log.isLoggable("MessengerIpcClient", 3)) {
                                String valueOf = String.valueOf(poll);
                                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 8);
                                sb.append("Sending ");
                                sb.append(valueOf);
                            }
                            Context context = gVar.f.f22550a;
                            Messenger messenger = gVar.f22554b;
                            Message obtain = Message.obtain();
                            obtain.what = poll.f22569c;
                            obtain.arg1 = poll.f22567a;
                            obtain.replyTo = messenger;
                            Bundle bundle = new Bundle();
                            bundle.putBoolean("oneWay", poll.a());
                            bundle.putString("pkg", context.getPackageName());
                            bundle.putBundle("data", poll.f22570d);
                            obtain.setData(bundle);
                            try {
                                p pVar = gVar.f22555c;
                                if (pVar.f22565a == null) {
                                    if (pVar.f22566b == null) {
                                        throw new IllegalStateException("Both messengers are null");
                                        break;
                                    }
                                    pVar.f22566b.zza(obtain);
                                } else {
                                    pVar.f22565a.send(obtain);
                                }
                            } catch (RemoteException e) {
                                gVar.a(2, e.getMessage());
                            }
                        } else {
                            return;
                        }
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        synchronized (this) {
            q<?> qVar = this.e.get(i);
            if (qVar != null) {
                StringBuilder sb = new StringBuilder(31);
                sb.append("Timing out request: ");
                sb.append(i);
                Log.w("MessengerIpcClient", sb.toString());
                this.e.remove(i);
                qVar.a(new zzp(3, "Timed out waiting for response"));
                b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, String str) {
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(str);
                if (valueOf.length() != 0) {
                    "Disconnected: ".concat(valueOf);
                } else {
                    new String("Disconnected: ");
                }
            }
            int i2 = this.f22553a;
            if (i2 == 0) {
                throw new IllegalStateException();
            } else if (i2 == 1 || i2 == 2) {
                Log.isLoggable("MessengerIpcClient", 2);
                this.f22553a = 4;
                a.a().a(this.f.f22550a, this);
                zzp zzpVar = new zzp(i, str);
                for (q<?> qVar : this.f22556d) {
                    qVar.a(zzpVar);
                }
                this.f22556d.clear();
                for (int i3 = 0; i3 < this.e.size(); i3++) {
                    this.e.valueAt(i3).a(zzpVar);
                }
                this.e.clear();
            } else if (i2 == 3) {
                this.f22553a = 4;
            } else if (i2 != 4) {
                int i4 = this.f22553a;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i4);
                throw new IllegalStateException(sb.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(Message message) {
        int i = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Received response to request: ");
            sb.append(i);
        }
        synchronized (this) {
            q<?> qVar = this.e.get(i);
            if (qVar == null) {
                StringBuilder sb2 = new StringBuilder(50);
                sb2.append("Received response for unknown request: ");
                sb2.append(i);
                Log.w("MessengerIpcClient", sb2.toString());
                return true;
            }
            this.e.remove(i);
            b();
            Bundle data = message.getData();
            if (data.getBoolean("unsupported", false)) {
                qVar.a(new zzp(4, "Not supported by GmsCore"));
                return true;
            }
            qVar.a(data);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(q<?> qVar) {
        synchronized (this) {
            int i = this.f22553a;
            if (i == 0) {
                this.f22556d.add(qVar);
                o.a(this.f22553a == 0);
                Log.isLoggable("MessengerIpcClient", 2);
                this.f22553a = 1;
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                if (!a.a().a(this.f.f22550a, intent, this, 1)) {
                    a(0, "Unable to bind to service");
                } else {
                    this.f.f22551b.schedule(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.i

                        /* renamed from: a  reason: collision with root package name */
                        private final g f22557a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f22557a = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f22557a.c();
                        }
                    }, 30L, TimeUnit.SECONDS);
                }
                return true;
            } else if (i == 1) {
                this.f22556d.add(qVar);
                return true;
            } else if (i == 2) {
                this.f22556d.add(qVar);
                a();
                return true;
            } else if (i == 3 || i == 4) {
                return false;
            } else {
                int i2 = this.f22553a;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i2);
                throw new IllegalStateException(sb.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        synchronized (this) {
            if (this.f22553a == 2 && this.f22556d.isEmpty() && this.e.size() == 0) {
                Log.isLoggable("MessengerIpcClient", 2);
                this.f22553a = 3;
                a.a().a(this.f.f22550a, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        synchronized (this) {
            if (this.f22553a == 1) {
                a(1, "Timed out while binding");
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        Log.isLoggable("MessengerIpcClient", 2);
        this.f.f22551b.execute(new Runnable(this, iBinder) { // from class: com.google.android.gms.cloudmessaging.l

            /* renamed from: a  reason: collision with root package name */
            private final g f22560a;

            /* renamed from: b  reason: collision with root package name */
            private final IBinder f22561b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22560a = this;
                this.f22561b = iBinder;
            }

            @Override // java.lang.Runnable
            public final void run() {
                g gVar = this.f22560a;
                IBinder iBinder2 = this.f22561b;
                synchronized (gVar) {
                    if (iBinder2 == null) {
                        gVar.a(0, "Null service connection");
                        return;
                    }
                    try {
                        gVar.f22555c = new p(iBinder2);
                        gVar.f22553a = 2;
                        gVar.a();
                    } catch (RemoteException e) {
                        gVar.a(0, e.getMessage());
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Log.isLoggable("MessengerIpcClient", 2);
        this.f.f22551b.execute(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.n

            /* renamed from: a  reason: collision with root package name */
            private final g f22564a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22564a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f22564a.a(2, "Service disconnected");
            }
        });
    }
}
