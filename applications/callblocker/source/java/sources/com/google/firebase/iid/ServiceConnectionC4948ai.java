package com.google.firebase.iid;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.stats.C2694a;
import com.google.android.gms.common.util.p133a.ThreadFactoryC2702a;
import com.google.android.gms.tasks.AbstractC4465c;
import com.google.android.gms.tasks.AbstractC4469g;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.iid.ai */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/ai.class */
public final class ServiceConnectionC4948ai implements ServiceConnection {

    /* renamed from: a */
    private final Context f21085a;

    /* renamed from: b */
    private final Intent f21086b;

    /* renamed from: c */
    private final ScheduledExecutorService f21087c;

    /* renamed from: d */
    private final Queue<C4947ah> f21088d;

    /* renamed from: e */
    private BinderC4943ad f21089e;

    /* renamed from: f */
    private boolean f21090f;

    public ServiceConnectionC4948ai(Context context, String str) {
        this(context, str, new ScheduledThreadPoolExecutor(0, new ThreadFactoryC2702a("Firebase-FirebaseInstanceIdServiceConnection")));
    }

    private ServiceConnectionC4948ai(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.f21088d = new ArrayDeque();
        this.f21090f = false;
        this.f21085a = context.getApplicationContext();
        this.f21086b = new Intent(str).setPackage(this.f21085a.getPackageName());
        this.f21087c = scheduledExecutorService;
    }

    /* renamed from: a */
    private final void m1962a() {
        synchronized (this) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                Log.d("FirebaseInstanceId", "flush queue called");
            }
            while (!this.f21088d.isEmpty()) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    Log.d("FirebaseInstanceId", "found intent to be delivered");
                }
                if (this.f21089e == null || !this.f21089e.isBinderAlive()) {
                    if (Log.isLoggable("FirebaseInstanceId", 3)) {
                        Log.d("FirebaseInstanceId", new StringBuilder(39).append("binder is dead. start connection? ").append(!this.f21090f).toString());
                    }
                    if (!this.f21090f) {
                        this.f21090f = true;
                        try {
                        } catch (SecurityException e) {
                            Log.e("FirebaseInstanceId", "Exception while binding the service", e);
                        }
                        if (!C2694a.m13893a().m13892a(this.f21085a, this.f21086b, this, 65)) {
                            Log.e("FirebaseInstanceId", "binding to the service failed");
                            this.f21090f = false;
                            m1960b();
                        }
                    }
                } else {
                    if (Log.isLoggable("FirebaseInstanceId", 3)) {
                        Log.d("FirebaseInstanceId", "binder is alive, sending the intent.");
                    }
                    this.f21089e.m1969a(this.f21088d.poll());
                }
            }
        }
    }

    /* renamed from: b */
    private final void m1960b() {
        while (!this.f21088d.isEmpty()) {
            this.f21088d.poll().m1964b();
        }
    }

    /* renamed from: a */
    public final AbstractC4469g<Void> m1961a(Intent intent) {
        AbstractC4469g<Void> m1965a;
        synchronized (this) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                Log.d("FirebaseInstanceId", "new intent queued in the bind-strategy delivery");
            }
            C4947ah c4947ah = new C4947ah(intent);
            ScheduledExecutorService scheduledExecutorService = this.f21087c;
            c4947ah.m1965a().mo3898a(scheduledExecutorService, new AbstractC4465c(scheduledExecutorService.schedule(new Runnable(c4947ah) { // from class: com.google.firebase.iid.ak

                /* renamed from: a */
                private final C4947ah f21092a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f21092a = c4947ah;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f21092a.m1963c();
                }
            }, 9000L, TimeUnit.MILLISECONDS)) { // from class: com.google.firebase.iid.aj

                /* renamed from: a */
                private final ScheduledFuture f21091a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f21091a = schedule;
                }

                @Override // com.google.android.gms.tasks.AbstractC4465c
                /* renamed from: a */
                public final void mo1947a(AbstractC4469g abstractC4469g) {
                    this.f21091a.cancel(false);
                }
            });
            this.f21088d.add(c4947ah);
            m1962a();
            m1965a = c4947ah.m1965a();
        }
        return m1965a;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(componentName);
                Log.d("FirebaseInstanceId", new StringBuilder(String.valueOf(valueOf).length() + 20).append("onServiceConnected: ").append(valueOf).toString());
            }
            this.f21090f = false;
            if (!(iBinder instanceof BinderC4943ad)) {
                String valueOf2 = String.valueOf(iBinder);
                Log.e("FirebaseInstanceId", new StringBuilder(String.valueOf(valueOf2).length() + 28).append("Invalid service connection: ").append(valueOf2).toString());
                m1960b();
            } else {
                this.f21089e = (BinderC4943ad) iBinder;
                m1962a();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf = String.valueOf(componentName);
            Log.d("FirebaseInstanceId", new StringBuilder(String.valueOf(valueOf).length() + 23).append("onServiceDisconnected: ").append(valueOf).toString());
        }
        m1962a();
    }
}
