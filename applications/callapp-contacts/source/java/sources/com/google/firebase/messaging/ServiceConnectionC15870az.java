package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.IBinder;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.common.stats.C12088a;
import com.google.android.gms.common.util.p354a.ThreadFactoryC12095a;
import com.google.android.gms.tasks.AbstractC14181d;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14176ah;
import com.google.android.gms.tasks.C14186i;
import com.google.firebase.messaging.ServiceConnectionC15870az;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.messaging.az */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/az.class */
final class ServiceConnectionC15870az implements ServiceConnection {

    /* renamed from: a */
    private final Context f56400a;

    /* renamed from: b */
    private final Intent f56401b;

    /* renamed from: c */
    private final ScheduledExecutorService f56402c;

    /* renamed from: d */
    private final Queue<C15871a> f56403d;

    /* renamed from: e */
    private BinderC15866aw f56404e;

    /* renamed from: f */
    private boolean f56405f;

    /* renamed from: com.google.firebase.messaging.az$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/az$a.class */
    public static final class C15871a {

        /* renamed from: a */
        final Intent f56406a;

        /* renamed from: b */
        final C14186i<Void> f56407b = new C14186i<>();

        C15871a(Intent intent) {
            this.f56406a = intent;
        }

        /* renamed from: a */
        public final void m8128a() {
            this.f56407b.m11469b((C14186i<Void>) null);
        }
    }

    public ServiceConnectionC15870az(Context context, String str) {
        this(context, "com.google.firebase.MESSAGING_EVENT", new ScheduledThreadPoolExecutor(0, new ThreadFactoryC12095a("Firebase-FirebaseInstanceIdServiceConnection")));
    }

    ServiceConnectionC15870az(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.f56403d = new ArrayDeque();
        this.f56405f = false;
        Context applicationContext = context.getApplicationContext();
        this.f56400a = applicationContext;
        this.f56401b = new Intent("com.google.firebase.MESSAGING_EVENT").setPackage(applicationContext.getPackageName());
        this.f56402c = scheduledExecutorService;
    }

    /* renamed from: a */
    private void m8132a() {
        synchronized (this) {
            Log.isLoggable("FirebaseMessaging", 3);
            while (!this.f56403d.isEmpty()) {
                Log.isLoggable("FirebaseMessaging", 3);
                BinderC15866aw binderC15866aw = this.f56404e;
                if (binderC15866aw == null || !binderC15866aw.isBinderAlive()) {
                    m8130b();
                    return;
                }
                Log.isLoggable("FirebaseMessaging", 3);
                C15871a poll = this.f56403d.poll();
                BinderC15866aw binderC15866aw2 = this.f56404e;
                if (Binder.getCallingUid() != Process.myUid()) {
                    throw new SecurityException("Binding only allowed within app");
                }
                Log.isLoggable("FirebaseMessaging", 3);
                binderC15866aw2.f56397a.mo8133a(poll.f56406a).mo11482a(ExecutorC15868ax.f56398a, new AbstractC14181d(poll) { // from class: com.google.firebase.messaging.ay

                    /* renamed from: a */
                    private final ServiceConnectionC15870az.C15871a f56399a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f56399a = poll;
                    }

                    @Override // com.google.android.gms.tasks.AbstractC14181d
                    public final void onComplete(AbstractC14185h abstractC14185h) {
                        this.f56399a.m8128a();
                    }
                });
            }
        }
    }

    /* renamed from: b */
    private void m8130b() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            boolean z = this.f56405f;
            StringBuilder sb = new StringBuilder(39);
            sb.append("binder is dead. start connection? ");
            sb.append(!z);
        }
        if (this.f56405f) {
            return;
        }
        this.f56405f = true;
        try {
        } catch (SecurityException e) {
            Log.e("FirebaseMessaging", "Exception while binding the service", e);
        }
        if (C12088a.m19072a().m19071a(this.f56400a, this.f56401b, this, 65)) {
            return;
        }
        Log.e("FirebaseMessaging", "binding to the service failed");
        this.f56405f = false;
        m8129c();
    }

    /* renamed from: c */
    private void m8129c() {
        while (!this.f56403d.isEmpty()) {
            this.f56403d.poll().m8128a();
        }
    }

    /* renamed from: a */
    public final AbstractC14185h<Void> m8131a(Intent intent) {
        C14176ah<Void> c14176ah;
        synchronized (this) {
            Log.isLoggable("FirebaseMessaging", 3);
            C15871a c15871a = new C15871a(intent);
            ScheduledExecutorService scheduledExecutorService = this.f56402c;
            c15871a.f56407b.f52142a.mo11482a(scheduledExecutorService, new AbstractC14181d(scheduledExecutorService.schedule(new Runnable(c15871a) { // from class: com.google.firebase.messaging.ba

                /* renamed from: a */
                private final ServiceConnectionC15870az.C15871a f56409a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f56409a = c15871a;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    ServiceConnectionC15870az.C15871a c15871a2 = this.f56409a;
                    String action = c15871a2.f56406a.getAction();
                    StringBuilder sb = new StringBuilder(String.valueOf(action).length() + 61);
                    sb.append("Service took too long to process intent: ");
                    sb.append(action);
                    sb.append(" App may get closed.");
                    Log.w("FirebaseMessaging", sb.toString());
                    c15871a2.m8128a();
                }
            }, 9000L, TimeUnit.MILLISECONDS)) { // from class: com.google.firebase.messaging.bb

                /* renamed from: a */
                private final ScheduledFuture f56410a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f56410a = schedule;
                }

                @Override // com.google.android.gms.tasks.AbstractC14181d
                public final void onComplete(AbstractC14185h abstractC14185h) {
                    this.f56410a.cancel(false);
                }
            });
            this.f56403d.add(c15871a);
            m8132a();
            c14176ah = c15871a.f56407b.f52142a;
        }
        return c14176ah;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                String valueOf = String.valueOf(componentName);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
                sb.append("onServiceConnected: ");
                sb.append(valueOf);
            }
            this.f56405f = false;
            if (iBinder instanceof BinderC15866aw) {
                this.f56404e = (BinderC15866aw) iBinder;
                m8132a();
                return;
            }
            String valueOf2 = String.valueOf(iBinder);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 28);
            sb2.append("Invalid service connection: ");
            sb2.append(valueOf2);
            Log.e("FirebaseMessaging", sb2.toString());
            m8129c();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            String valueOf = String.valueOf(componentName);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("onServiceDisconnected: ");
            sb.append(valueOf);
        }
        m8132a();
    }
}
