package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.IBinder;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.tasks.ah;
import com.google.android.gms.tasks.d;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.i;
import com.google.firebase.messaging.az;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/az.class */
final class az implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final Context f32525a;

    /* renamed from: b  reason: collision with root package name */
    private final Intent f32526b;

    /* renamed from: c  reason: collision with root package name */
    private final ScheduledExecutorService f32527c;

    /* renamed from: d  reason: collision with root package name */
    private final Queue<a> f32528d;
    private aw e;
    private boolean f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/az$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Intent f32529a;

        /* renamed from: b  reason: collision with root package name */
        final i<Void> f32530b = new i<>();

        a(Intent intent) {
            this.f32529a = intent;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a() {
            this.f32530b.b((i<Void>) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public az(Context context, String str) {
        this(context, "com.google.firebase.MESSAGING_EVENT", new ScheduledThreadPoolExecutor(0, new com.google.android.gms.common.util.a.a("Firebase-FirebaseInstanceIdServiceConnection")));
    }

    az(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.f32528d = new ArrayDeque();
        this.f = false;
        Context applicationContext = context.getApplicationContext();
        this.f32525a = applicationContext;
        this.f32526b = new Intent("com.google.firebase.MESSAGING_EVENT").setPackage(applicationContext.getPackageName());
        this.f32527c = scheduledExecutorService;
    }

    private void a() {
        synchronized (this) {
            Log.isLoggable("FirebaseMessaging", 3);
            while (!this.f32528d.isEmpty()) {
                Log.isLoggable("FirebaseMessaging", 3);
                aw awVar = this.e;
                if (awVar == null || !awVar.isBinderAlive()) {
                    b();
                    return;
                }
                Log.isLoggable("FirebaseMessaging", 3);
                final a poll = this.f32528d.poll();
                aw awVar2 = this.e;
                if (Binder.getCallingUid() == Process.myUid()) {
                    Log.isLoggable("FirebaseMessaging", 3);
                    awVar2.f32522a.a(poll.f32529a).a(ax.f32523a, new d(poll) { // from class: com.google.firebase.messaging.ay

                        /* renamed from: a  reason: collision with root package name */
                        private final az.a f32524a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f32524a = poll;
                        }

                        @Override // com.google.android.gms.tasks.d
                        public final void onComplete(h hVar) {
                            this.f32524a.a();
                        }
                    });
                } else {
                    throw new SecurityException("Binding only allowed within app");
                }
            }
        }
    }

    private void b() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            boolean z = this.f;
            StringBuilder sb = new StringBuilder(39);
            sb.append("binder is dead. start connection? ");
            sb.append(!z);
        }
        if (!this.f) {
            this.f = true;
            try {
            } catch (SecurityException e) {
                Log.e("FirebaseMessaging", "Exception while binding the service", e);
            }
            if (!com.google.android.gms.common.stats.a.a().a(this.f32525a, this.f32526b, this, 65)) {
                Log.e("FirebaseMessaging", "binding to the service failed");
                this.f = false;
                c();
            }
        }
    }

    private void c() {
        while (!this.f32528d.isEmpty()) {
            this.f32528d.poll().a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final h<Void> a(Intent intent) {
        ah<Void> ahVar;
        synchronized (this) {
            Log.isLoggable("FirebaseMessaging", 3);
            final a aVar = new a(intent);
            ScheduledExecutorService scheduledExecutorService = this.f32527c;
            final ScheduledFuture<?> schedule = scheduledExecutorService.schedule(new Runnable(aVar) { // from class: com.google.firebase.messaging.ba

                /* renamed from: a  reason: collision with root package name */
                private final az.a f32532a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32532a = aVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    az.a aVar2 = this.f32532a;
                    String action = aVar2.f32529a.getAction();
                    StringBuilder sb = new StringBuilder(String.valueOf(action).length() + 61);
                    sb.append("Service took too long to process intent: ");
                    sb.append(action);
                    sb.append(" App may get closed.");
                    Log.w("FirebaseMessaging", sb.toString());
                    aVar2.a();
                }
            }, 9000L, TimeUnit.MILLISECONDS);
            aVar.f32530b.f30014a.a(scheduledExecutorService, new d(schedule) { // from class: com.google.firebase.messaging.bb

                /* renamed from: a  reason: collision with root package name */
                private final ScheduledFuture f32533a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32533a = schedule;
                }

                @Override // com.google.android.gms.tasks.d
                public final void onComplete(h hVar) {
                    this.f32533a.cancel(false);
                }
            });
            this.f32528d.add(aVar);
            a();
            ahVar = aVar.f32530b.f30014a;
        }
        return ahVar;
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
            this.f = false;
            if (!(iBinder instanceof aw)) {
                String valueOf2 = String.valueOf(iBinder);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 28);
                sb2.append("Invalid service connection: ");
                sb2.append(valueOf2);
                Log.e("FirebaseMessaging", sb2.toString());
                c();
                return;
            }
            this.e = (aw) iBinder;
            a();
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
        a();
    }
}
