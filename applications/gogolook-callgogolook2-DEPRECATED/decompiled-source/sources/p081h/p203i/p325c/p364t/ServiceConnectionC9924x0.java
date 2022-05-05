package p081h.p203i.p325c.p364t;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p081h.p203i.p204a.p224e.p235d.p248r.C7064a;
import p081h.p203i.p204a.p224e.p235d.p249s.p250t.ThreadFactoryC7089b;
import p081h.p203i.p204a.p224e.p293r.AbstractC9132c;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9145i;
import p081h.p203i.p325c.p364t.ServiceConnectionC9924x0;
/* renamed from: h.i.c.t.x0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/t/x0.class */
public class ServiceConnectionC9924x0 implements ServiceConnection {

    /* renamed from: a */
    public final Context f22458a;

    /* renamed from: b */
    public final Intent f22459b;

    /* renamed from: c */
    public final ScheduledExecutorService f22460c;

    /* renamed from: d */
    public final Queue<C9925a> f22461d;
    @Nullable

    /* renamed from: e */
    public BinderC9910u0 f22462e;
    @GuardedBy("this")

    /* renamed from: f */
    public boolean f22463f;

    /* renamed from: h.i.c.t.x0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/t/x0$a.class */
    public static class C9925a {

        /* renamed from: a */
        public final Intent f22464a;

        /* renamed from: b */
        public final C9145i<Void> f22465b = new C9145i<>();

        public C9925a(Intent intent) {
            this.f22464a = intent;
        }

        /* renamed from: a */
        public void m13935a() {
            this.f22465b.m16004b((C9145i<Void>) null);
        }

        /* renamed from: a */
        public void m13934a(ScheduledExecutorService scheduledExecutorService) {
            final ScheduledFuture<?> schedule = scheduledExecutorService.schedule(new Runnable(this) { // from class: h.i.c.t.v0

                /* renamed from: a */
                public final ServiceConnectionC9924x0.C9925a f22437a;

                {
                    this.f22437a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f22437a.m13931c();
                }
            }, 9000L, TimeUnit.MILLISECONDS);
            m13932b().mo16018a(scheduledExecutorService, new AbstractC9132c(schedule) { // from class: h.i.c.t.w0

                /* renamed from: a */
                public final ScheduledFuture f22440a;

                {
                    this.f22440a = schedule;
                }

                @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9132c
                /* renamed from: a */
                public final void mo3743a(AbstractC9143h hVar) {
                    this.f22440a.cancel(false);
                }
            });
        }

        /* renamed from: b */
        public AbstractC9143h<Void> m13932b() {
            return this.f22465b.m16008a();
        }

        /* renamed from: c */
        public final /* synthetic */ void m13931c() {
            String action = this.f22464a.getAction();
            StringBuilder sb = new StringBuilder(String.valueOf(action).length() + 61);
            sb.append("Service took too long to process intent: ");
            sb.append(action);
            sb.append(" App may get closed.");
            sb.toString();
            m13935a();
        }
    }

    public ServiceConnectionC9924x0(Context context, String str) {
        this(context, str, new ScheduledThreadPoolExecutor(0, new ThreadFactoryC7089b("Firebase-FirebaseInstanceIdServiceConnection")));
    }

    @VisibleForTesting
    public ServiceConnectionC9924x0(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.f22461d = new ArrayDeque();
        this.f22463f = false;
        this.f22458a = context.getApplicationContext();
        this.f22459b = new Intent(str).setPackage(this.f22458a.getPackageName());
        this.f22460c = scheduledExecutorService;
    }

    /* renamed from: a */
    public AbstractC9143h<Void> m13938a(Intent intent) {
        AbstractC9143h<Void> b;
        synchronized (this) {
            Log.isLoggable("FirebaseInstanceId", 3);
            C9925a aVar = new C9925a(intent);
            aVar.m13934a(this.f22460c);
            this.f22461d.add(aVar);
            m13937b();
            b = aVar.m13932b();
        }
        return b;
    }

    @GuardedBy("this")
    /* renamed from: a */
    public final void m13939a() {
        while (!this.f22461d.isEmpty()) {
            this.f22461d.poll().m13935a();
        }
    }

    /* renamed from: b */
    public final void m13937b() {
        synchronized (this) {
            Log.isLoggable("FirebaseInstanceId", 3);
            while (!this.f22461d.isEmpty()) {
                Log.isLoggable("FirebaseInstanceId", 3);
                if (this.f22462e == null || !this.f22462e.isBinderAlive()) {
                    m13936c();
                    return;
                }
                Log.isLoggable("FirebaseInstanceId", 3);
                this.f22462e.m13971a(this.f22461d.poll());
            }
        }
    }

    @GuardedBy("this")
    /* renamed from: c */
    public final void m13936c() {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            boolean z = this.f22463f;
            StringBuilder sb = new StringBuilder(39);
            sb.append("binder is dead. start connection? ");
            sb.append(!z);
            sb.toString();
        }
        if (!this.f22463f) {
            this.f22463f = true;
            try {
            } catch (SecurityException e) {
                Log.e("FirebaseInstanceId", "Exception while binding the service", e);
            }
            if (!C7064a.m21184a().m21183a(this.f22458a, this.f22459b, this, 65)) {
                Log.e("FirebaseInstanceId", "binding to the service failed");
                this.f22463f = false;
                m13939a();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(componentName);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
                sb.append("onServiceConnected: ");
                sb.append(valueOf);
                sb.toString();
            }
            this.f22463f = false;
            if (!(iBinder instanceof BinderC9910u0)) {
                String valueOf2 = String.valueOf(iBinder);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 28);
                sb2.append("Invalid service connection: ");
                sb2.append(valueOf2);
                Log.e("FirebaseInstanceId", sb2.toString());
                m13939a();
                return;
            }
            this.f22462e = (BinderC9910u0) iBinder;
            m13937b();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf = String.valueOf(componentName);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("onServiceDisconnected: ");
            sb.append(valueOf);
            sb.toString();
        }
        m13937b();
    }
}
