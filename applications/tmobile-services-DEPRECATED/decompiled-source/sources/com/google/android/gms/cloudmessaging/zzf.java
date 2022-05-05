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
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.cloudmessaging.zze;
import com.google.firebase.iid.MessengerIpcClient;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/zzf.class */
public final class zzf implements ServiceConnection {
    @GuardedBy

    /* renamed from: a */
    int f6930a;

    /* renamed from: b */
    final Messenger f6931b;

    /* renamed from: c */
    zzo f6932c;
    @GuardedBy

    /* renamed from: d */
    final Queue<zzq<?>> f6933d;
    @GuardedBy

    /* renamed from: e */
    final SparseArray<zzq<?>> f6934e;

    /* renamed from: f */
    final /* synthetic */ zze f6935f;

    private zzf(zze zzeVar) {
        this.f6935f = zzeVar;
        this.f6930a = 0;
        this.f6931b = new Messenger(new zze(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.android.gms.cloudmessaging.zzi

            /* renamed from: a */
            private final zzf f6937a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6937a = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f6937a.m15107d(message);
            }
        }));
        this.f6933d = new ArrayDeque();
        this.f6934e = new SparseArray<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m15110a() {
        ScheduledExecutorService scheduledExecutorService;
        scheduledExecutorService = this.f6935f.f6927b;
        scheduledExecutorService.execute(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.zzj

            /* renamed from: f */
            private final zzf f6938f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6938f = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final zzq<?> poll;
                ScheduledExecutorService scheduledExecutorService2;
                Context context;
                final zzf zzfVar = this.f6938f;
                while (true) {
                    synchronized (zzfVar) {
                        if (zzfVar.f6930a == 2) {
                            if (zzfVar.f6933d.isEmpty()) {
                                zzfVar.m15105f();
                                return;
                            }
                            poll = zzfVar.f6933d.poll();
                            zzfVar.f6934e.put(poll.f6946a, poll);
                            scheduledExecutorService2 = zzfVar.f6935f.f6927b;
                            scheduledExecutorService2.schedule(new Runnable(zzfVar, poll) { // from class: com.google.android.gms.cloudmessaging.zzl

                                /* renamed from: f */
                                private final zzf f6941f;

                                /* renamed from: g */
                                private final zzq f6942g;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f6941f = zzfVar;
                                    this.f6942g = poll;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f6941f.m15109b(this.f6942g.f6946a);
                                }
                            }, 30L, TimeUnit.SECONDS);
                        } else {
                            return;
                        }
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        String valueOf = String.valueOf(poll);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 8);
                        sb.append("Sending ");
                        sb.append(valueOf);
                        Log.d("MessengerIpcClient", sb.toString());
                    }
                    context = zzfVar.f6935f.f6926a;
                    Messenger messenger = zzfVar.f6931b;
                    Message obtain = Message.obtain();
                    obtain.what = poll.f6948c;
                    obtain.arg1 = poll.f6946a;
                    obtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean(MessengerIpcClient.KEY_ONE_WAY, poll.mo15096d());
                    bundle.putString(MessengerIpcClient.KEY_PACKAGE, context.getPackageName());
                    bundle.putBundle("data", poll.f6949d);
                    obtain.setData(bundle);
                    try {
                        zzfVar.f6932c.m15103a(obtain);
                    } catch (RemoteException e) {
                        zzfVar.m15108c(2, e.getMessage());
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m15109b(int i) {
        synchronized (this) {
            zzq<?> zzqVar = this.f6934e.get(i);
            if (zzqVar != null) {
                StringBuilder sb = new StringBuilder(31);
                sb.append("Timing out request: ");
                sb.append(i);
                Log.w("MessengerIpcClient", sb.toString());
                this.f6934e.remove(i);
                zzqVar.m15102b(new zzp(3, "Timed out waiting for response"));
                m15105f();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m15108c(int i, @Nullable String str) {
        Context context;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(str);
                Log.d("MessengerIpcClient", valueOf.length() != 0 ? "Disconnected: ".concat(valueOf) : new String("Disconnected: "));
            }
            int i2 = this.f6930a;
            if (i2 == 0) {
                throw new IllegalStateException();
            } else if (i2 == 1 || i2 == 2) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Unbinding service");
                }
                this.f6930a = 4;
                ConnectionTracker b = ConnectionTracker.m14372b();
                context = this.f6935f.f6926a;
                b.m14371c(context, this);
                zzp zzpVar = new zzp(i, str);
                for (zzq<?> zzqVar : this.f6933d) {
                    zzqVar.m15102b(zzpVar);
                }
                this.f6933d.clear();
                for (int i3 = 0; i3 < this.f6934e.size(); i3++) {
                    this.f6934e.valueAt(i3).m15102b(zzpVar);
                }
                this.f6934e.clear();
            } else if (i2 == 3) {
                this.f6930a = 4;
            } else if (i2 != 4) {
                int i4 = this.f6930a;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i4);
                throw new IllegalStateException(sb.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final boolean m15107d(Message message) {
        int i = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Received response to request: ");
            sb.append(i);
            Log.d("MessengerIpcClient", sb.toString());
        }
        synchronized (this) {
            zzq<?> zzqVar = this.f6934e.get(i);
            if (zzqVar == null) {
                StringBuilder sb2 = new StringBuilder(50);
                sb2.append("Received response for unknown request: ");
                sb2.append(i);
                Log.w("MessengerIpcClient", sb2.toString());
                return true;
            }
            this.f6934e.remove(i);
            m15105f();
            Bundle data = message.getData();
            if (data.getBoolean(MessengerIpcClient.KEY_UNSUPPORTED, false)) {
                zzqVar.m15102b(new zzp(4, "Not supported by GmsCore"));
                return true;
            }
            zzqVar.mo15097a(data);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final boolean m15106e(zzq<?> zzqVar) {
        Context context;
        ScheduledExecutorService scheduledExecutorService;
        synchronized (this) {
            int i = this.f6930a;
            if (i == 0) {
                this.f6933d.add(zzqVar);
                Preconditions.m14520n(this.f6930a == 0);
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Starting bind to GmsCore");
                }
                this.f6930a = 1;
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                ConnectionTracker b = ConnectionTracker.m14372b();
                context = this.f6935f.f6926a;
                if (!b.m14373a(context, intent, this, 1)) {
                    m15108c(0, "Unable to bind to service");
                } else {
                    scheduledExecutorService = this.f6935f.f6927b;
                    scheduledExecutorService.schedule(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.zzh

                        /* renamed from: f */
                        private final zzf f6936f;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f6936f = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f6936f.m15104g();
                        }
                    }, 30L, TimeUnit.SECONDS);
                }
                return true;
            } else if (i == 1) {
                this.f6933d.add(zzqVar);
                return true;
            } else if (i == 2) {
                this.f6933d.add(zzqVar);
                m15110a();
                return true;
            } else if (i == 3 || i == 4) {
                return false;
            } else {
                int i2 = this.f6930a;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i2);
                throw new IllegalStateException(sb.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m15105f() {
        Context context;
        synchronized (this) {
            if (this.f6930a == 2 && this.f6933d.isEmpty() && this.f6934e.size() == 0) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
                }
                this.f6930a = 3;
                ConnectionTracker b = ConnectionTracker.m14372b();
                context = this.f6935f.f6926a;
                b.m14371c(context, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final void m15104g() {
        synchronized (this) {
            if (this.f6930a == 1) {
                m15108c(1, "Timed out while binding");
            }
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        ScheduledExecutorService scheduledExecutorService;
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        scheduledExecutorService = this.f6935f.f6927b;
        scheduledExecutorService.execute(new Runnable(this, iBinder) { // from class: com.google.android.gms.cloudmessaging.zzk

            /* renamed from: f */
            private final zzf f6939f;

            /* renamed from: g */
            private final IBinder f6940g;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6939f = this;
                this.f6940g = iBinder;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzf zzfVar = this.f6939f;
                IBinder iBinder2 = this.f6940g;
                synchronized (zzfVar) {
                    if (iBinder2 == null) {
                        zzfVar.m15108c(0, "Null service connection");
                        return;
                    }
                    try {
                        zzfVar.f6932c = new zzo(iBinder2);
                        zzfVar.f6930a = 2;
                        zzfVar.m15110a();
                    } catch (RemoteException e) {
                        zzfVar.m15108c(0, e.getMessage());
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        ScheduledExecutorService scheduledExecutorService;
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        scheduledExecutorService = this.f6935f.f6927b;
        scheduledExecutorService.execute(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.zzm

            /* renamed from: f */
            private final zzf f6943f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6943f = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6943f.m15108c(2, "Service disconnected");
            }
        });
    }
}
