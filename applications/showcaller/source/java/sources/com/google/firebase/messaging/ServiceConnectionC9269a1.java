package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.stats.C6217a;
import com.google.android.gms.common.util.p273v.ThreadFactoryC6244a;
import com.google.android.gms.tasks.AbstractC7958c;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7968h;
import com.google.firebase.messaging.ServiceConnectionC9269a1;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.messaging.a1 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/a1.class */
class ServiceConnectionC9269a1 implements ServiceConnection {

    /* renamed from: a */
    private final Context f39762a;

    /* renamed from: b */
    private final Intent f39763b;

    /* renamed from: c */
    private final ScheduledExecutorService f39764c;

    /* renamed from: d */
    private final Queue<C9270a> f39765d;

    /* renamed from: e */
    private BinderC9324x0 f39766e;

    /* renamed from: f */
    private boolean f39767f;

    /* renamed from: com.google.firebase.messaging.a1$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/a1$a.class */
    public static class C9270a {

        /* renamed from: a */
        final Intent f39768a;

        /* renamed from: b */
        private final C7968h<Void> f39769b = new C7968h<>();

        C9270a(Intent intent) {
            this.f39768a = intent;
        }

        /* renamed from: a */
        void m1308a(ScheduledExecutorService scheduledExecutorService) {
            m1306c().mo5824c(scheduledExecutorService, new AbstractC7958c(scheduledExecutorService.schedule(new Runnable(this) { // from class: com.google.firebase.messaging.y0

                /* renamed from: d */
                private final ServiceConnectionC9269a1.C9270a f39886d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f39886d = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.f39886d.m1305d();
                }
            }, 9000L, TimeUnit.MILLISECONDS)) { // from class: com.google.firebase.messaging.z0

                /* renamed from: a */
                private final ScheduledFuture f39888a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f39888a = schedule;
                }

                @Override // com.google.android.gms.tasks.AbstractC7958c
                /* renamed from: a */
                public void mo1124a(AbstractC7966g abstractC7966g) {
                    this.f39888a.cancel(false);
                }
            });
        }

        /* renamed from: b */
        public void m1307b() {
            this.f39769b.m5803e(null);
        }

        /* renamed from: c */
        AbstractC7966g<Void> m1306c() {
            return this.f39769b.m5807a();
        }

        /* renamed from: d */
        public final /* synthetic */ void m1305d() {
            String action = this.f39768a.getAction();
            StringBuilder sb = new StringBuilder(String.valueOf(action).length() + 61);
            sb.append("Service took too long to process intent: ");
            sb.append(action);
            sb.append(" App may get closed.");
            Log.w("FirebaseMessaging", sb.toString());
            m1307b();
        }
    }

    public ServiceConnectionC9269a1(Context context, String str) {
        this(context, "com.google.firebase.MESSAGING_EVENT", new ScheduledThreadPoolExecutor(0, new ThreadFactoryC6244a("Firebase-FirebaseInstanceIdServiceConnection")));
    }

    ServiceConnectionC9269a1(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.f39765d = new ArrayDeque();
        this.f39767f = false;
        Context applicationContext = context.getApplicationContext();
        this.f39762a = applicationContext;
        this.f39763b = new Intent("com.google.firebase.MESSAGING_EVENT").setPackage(applicationContext.getPackageName());
        this.f39764c = scheduledExecutorService;
    }

    /* renamed from: a */
    private void m1312a() {
        while (!this.f39765d.isEmpty()) {
            this.f39765d.poll().m1307b();
        }
    }

    /* renamed from: b */
    private void m1311b() {
        synchronized (this) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "flush queue called");
            }
            while (!this.f39765d.isEmpty()) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "found intent to be delivered");
                }
                BinderC9324x0 binderC9324x0 = this.f39766e;
                if (binderC9324x0 == null || !binderC9324x0.isBinderAlive()) {
                    m1309d();
                    return;
                }
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "binder is alive, sending the intent.");
                }
                this.f39766e.m1127b(this.f39765d.poll());
            }
        }
    }

    /* renamed from: d */
    private void m1309d() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            boolean z = this.f39767f;
            StringBuilder sb = new StringBuilder(39);
            sb.append("binder is dead. start connection? ");
            sb.append(!z);
            Log.d("FirebaseMessaging", sb.toString());
        }
        if (this.f39767f) {
            return;
        }
        this.f39767f = true;
        try {
        } catch (SecurityException e) {
            Log.e("FirebaseMessaging", "Exception while binding the service", e);
        }
        if (C6217a.m16846b().m16847a(this.f39762a, this.f39763b, this, 65)) {
            return;
        }
        Log.e("FirebaseMessaging", "binding to the service failed");
        this.f39767f = false;
        m1312a();
    }

    /* renamed from: c */
    public AbstractC7966g<Void> m1310c(Intent intent) {
        AbstractC7966g<Void> m1306c;
        synchronized (this) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "new intent queued in the bind-strategy delivery");
            }
            C9270a c9270a = new C9270a(intent);
            c9270a.m1308a(this.f39764c);
            this.f39765d.add(c9270a);
            m1311b();
            m1306c = c9270a.m1306c();
        }
        return m1306c;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                String valueOf = String.valueOf(componentName);
                StringBuilder sb = new StringBuilder(valueOf.length() + 20);
                sb.append("onServiceConnected: ");
                sb.append(valueOf);
                Log.d("FirebaseMessaging", sb.toString());
            }
            this.f39767f = false;
            if (iBinder instanceof BinderC9324x0) {
                this.f39766e = (BinderC9324x0) iBinder;
                m1311b();
                return;
            }
            String valueOf2 = String.valueOf(iBinder);
            StringBuilder sb2 = new StringBuilder(valueOf2.length() + 28);
            sb2.append("Invalid service connection: ");
            sb2.append(valueOf2);
            Log.e("FirebaseMessaging", sb2.toString());
            m1312a();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            String valueOf = String.valueOf(componentName);
            StringBuilder sb = new StringBuilder(valueOf.length() + 23);
            sb.append("onServiceDisconnected: ");
            sb.append(valueOf);
            Log.d("FirebaseMessaging", sb.toString());
        }
        m1311b();
    }
}
