package p193e.p194a.p1187r2;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.SparseArray;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.Queue;
import p193e.p194a.p1187r2.ServiceC19863i;
/* renamed from: e.a.r2.g0 */
/* loaded from: classes5-dex2jar.jar:e/a/r2/g0.class */
public class C19858g0 implements AbstractC19868j {

    /* renamed from: f */
    public static final SparseArray<WeakReference<ServiceConnection>> f56252f = new SparseArray<>();

    /* renamed from: a */
    public final int f56253a;

    /* renamed from: b */
    public final Context f56254b;

    /* renamed from: c */
    public final AbstractC19845a0 f56255c;

    /* renamed from: d */
    public final C19872n f56256d;

    /* renamed from: e */
    public final Class<? extends ServiceC19863i> f56257e;

    /* renamed from: e.a.r2.g0$b */
    /* loaded from: classes5-dex2jar.jar:e/a/r2/g0$b.class */
    public static class ServiceConnectionC19860b<T> implements AbstractC19890w, ServiceConnection {

        /* renamed from: a */
        public final int f56258a;

        /* renamed from: b */
        public final Context f56259b;

        /* renamed from: c */
        public final Intent f56260c;

        /* renamed from: d */
        public final T f56261d;

        /* renamed from: e */
        public final C19872n f56262e;

        /* renamed from: f */
        public ServiceC19863i.AbstractC19865b f56263f;

        /* renamed from: g */
        public boolean f56264g;

        /* renamed from: h */
        public final Queue<C19862h0> f56265h = new ArrayDeque();

        /* renamed from: i */
        public boolean f56266i;

        /* JADX WARN: Multi-variable type inference failed */
        public ServiceConnectionC19860b(Context context, C19872n c19872n, Class cls, int i, Object obj, C19859a c19859a) {
            this.f56259b = context;
            this.f56262e = c19872n;
            Intent intent = new Intent(context, cls);
            this.f56260c = intent;
            intent.setAction("com.truecaller.androidactors.ActorService");
            this.f56258a = i;
            this.f56261d = obj;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19890w
        /* renamed from: a */
        public void mo11835a(AbstractC19888u abstractC19888u) {
            ServiceC19863i.AbstractC19865b abstractC19865b;
            C19862h0 m11851a = C19862h0.m11851a(this.f56261d, abstractC19888u, this.f56262e);
            synchronized (this) {
                abstractC19865b = this.f56263f;
            }
            if (abstractC19865b == null) {
                this.f56265h.add(m11851a);
                m11853b();
            } else if (abstractC19865b.asBinder().isBinderAlive() && abstractC19865b.mo11849t0(m11851a)) {
            } else {
                this.f56265h.add(m11851a);
                m11852c();
                m11853b();
            }
        }

        /* renamed from: b */
        public final void m11853b() {
            try {
                this.f56259b.startService(this.f56260c);
                this.f56266i = this.f56259b.bindService(this.f56260c, this, 64);
            } catch (IllegalStateException e) {
                this.f56266i = false;
                if (Build.VERSION.SDK_INT < 26) {
                    return;
                }
                C19858g0.f56252f.put(this.f56258a, new WeakReference<>(this));
                Context context = this.f56259b;
                ((JobScheduler) context.getSystemService("jobscheduler")).schedule(new JobInfo.Builder(this.f56258a, this.f56260c.getComponent()).setOverrideDeadline(0L).setMinimumLatency(0L).build());
            }
        }

        /* renamed from: c */
        public final void m11852c() {
            synchronized (this) {
                if (this.f56266i) {
                    try {
                        this.f56259b.unbindService(this);
                    } catch (IllegalArgumentException e) {
                    }
                }
                this.f56259b.stopService(this.f56260c);
                if (Build.VERSION.SDK_INT >= 26) {
                    Context context = this.f56259b;
                    int i = this.f56258a;
                    JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
                    if (jobScheduler != null) {
                        jobScheduler.cancel(i);
                    }
                }
                this.f56263f = null;
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (this) {
                ServiceC19863i.AbstractC19865b abstractC19865b = null;
                try {
                    if ("ServiceMessageSender".equals(iBinder.getInterfaceDescriptor())) {
                        abstractC19865b = (ServiceC19863i.AbstractC19865b) iBinder.queryLocalInterface("ServiceMessageSender");
                    }
                } catch (RemoteException e) {
                }
                if (abstractC19865b == null) {
                    m11852c();
                    if (!this.f56264g) {
                        m11853b();
                        this.f56264g = true;
                    }
                    return;
                }
                while (true) {
                    C19862h0 poll = this.f56265h.poll();
                    if (poll == null) {
                        this.f56263f = abstractC19865b;
                        this.f56264g = false;
                        return;
                    }
                    abstractC19865b.mo11849t0(poll);
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            synchronized (this) {
                this.f56263f = null;
                this.f56266i = false;
            }
        }
    }

    public C19858g0(Context context, AbstractC19845a0 abstractC19845a0, C19872n c19872n, Class<? extends ServiceC19863i> cls, int i) {
        this.f56254b = context.getApplicationContext();
        this.f56255c = abstractC19845a0;
        this.f56256d = c19872n;
        this.f56257e = cls;
        this.f56253a = i;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19868j
    /* renamed from: a */
    public <T> AbstractC19854f<T> mo11838a(Class<T> cls, T t) {
        return new C19857g(this.f56255c.mo10410a(cls, new ServiceConnectionC19860b(this.f56254b, this.f56256d, this.f56257e, this.f56253a, t, null)));
    }
}
