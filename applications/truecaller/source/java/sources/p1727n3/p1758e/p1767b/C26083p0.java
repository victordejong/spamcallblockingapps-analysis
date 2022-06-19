package p1727n3.p1758e.p1767b;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.camera.core.C0095R;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import java.util.concurrent.Executor;
import n3.e.b.j1.t1.c.c;
import p1727n3.p1746c.p1747a.p1750c.AbstractC25640a;
import p1727n3.p1758e.p1767b.C26083p0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25938b0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26010s1;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26051x;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26056y;
import p1727n3.p1758e.p1767b.p1768j1.C25942c0;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26029b;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26039h;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26031e;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26033f;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26034g;
import p1727n3.p1790h.p1791a.AbstractC26249d;
import p1727n3.p1790h.p1791a.C26247b;
import p1727n3.p1807k.p1816e.C26511c;
/* renamed from: n3.e.b.p0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/p0.class */
public final class C26083p0 {

    /* renamed from: n */
    public static C26083p0 f72765n;

    /* renamed from: o */
    public static q0$b f72766o;

    /* renamed from: c */
    public final q0 f72771c;

    /* renamed from: d */
    public final Executor f72772d;

    /* renamed from: e */
    public final Handler f72773e;

    /* renamed from: f */
    public final HandlerThread f72774f;

    /* renamed from: g */
    public AbstractC26056y f72775g;

    /* renamed from: h */
    public AbstractC26051x f72776h;

    /* renamed from: i */
    public AbstractC26010s1 f72777i;

    /* renamed from: j */
    public Context f72778j;

    /* renamed from: m */
    public static final Object f72764m = new Object();

    /* renamed from: p */
    public static ListenableFuture<Void> f72767p = new AbstractC26039h.a(new IllegalStateException("CameraX is not initialized."));

    /* renamed from: q */
    public static ListenableFuture<Void> f72768q = C26034g.m2781c(null);

    /* renamed from: a */
    public final C25942c0 f72769a = new C25942c0();

    /* renamed from: b */
    public final Object f72770b = new Object();

    /* renamed from: k */
    public EnumC26084a f72779k = EnumC26084a.UNINITIALIZED;

    /* renamed from: l */
    public ListenableFuture<Void> f72780l = C26034g.m2781c(null);

    /* renamed from: n3.e.b.p0$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/p0$a.class */
    public enum EnumC26084a {
        UNINITIALIZED,
        INITIALIZING,
        INITIALIZED,
        SHUTDOWN
    }

    public C26083p0(q0 q0Var) {
        Objects.requireNonNull(q0Var);
        this.f72771c = q0Var;
        Executor executor = (Executor) q0Var.q.mo2850b(q0.u, null);
        Handler handler = (Handler) q0Var.q.mo2850b(q0.v, null);
        this.f72772d = executor == null ? new ExecutorC25933j0() : executor;
        if (handler != null) {
            this.f72774f = null;
            this.f72773e = handler;
            return;
        }
        HandlerThread handlerThread = new HandlerThread("CameraX-scheduler", 10);
        this.f72774f = handlerThread;
        handlerThread.start();
        this.f72773e = C26511c.m1720a(handlerThread.getLooper());
    }

    /* renamed from: a */
    public static Application m2735a(Context context) {
        Application application;
        Context applicationContext = context.getApplicationContext();
        while (true) {
            Context context2 = applicationContext;
            if (!(context2 instanceof ContextWrapper)) {
                application = null;
                break;
            } else if (context2 instanceof Application) {
                application = (Application) context2;
                break;
            } else {
                applicationContext = ((ContextWrapper) context2).getBaseContext();
            }
        }
        return application;
    }

    /* renamed from: b */
    public static q0$b m2734b(Context context) {
        q0$b q0_b;
        Application m2735a = m2735a(context);
        if (m2735a instanceof q0$b) {
            q0_b = (q0$b) m2735a;
        } else {
            try {
                q0_b = (q0$b) Class.forName(context.getApplicationContext().getResources().getString(C0095R.string.androidx_camera_default_config_provider)).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Resources.NotFoundException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | NullPointerException | InvocationTargetException e) {
                C26103y0.m2723b("CameraX", "Failed to retrieve default CameraXConfig.Provider from resources", e);
                q0_b = null;
            }
        }
        return q0_b;
    }

    /* renamed from: c */
    public static ListenableFuture<C26083p0> m2733c() {
        C26083p0 c26083p0 = f72765n;
        if (c26083p0 == null) {
            return new AbstractC26039h.a(new IllegalStateException("Must call CameraX.initialize() first"));
        }
        ListenableFuture<Void> listenableFuture = f72767p;
        AbstractC25640a abstractC25640a = new AbstractC25640a() { // from class: n3.e.b.e
            @Override // p1727n3.p1746c.p1747a.p1750c.AbstractC25640a
            public final Object apply(Object obj) {
                Void r0 = (Void) obj;
                return C26083p0.this;
            }
        };
        Executor m43268U = MediaSessionCompat.m43268U();
        c cVar = new c(new C26033f(abstractC25640a), listenableFuture);
        listenableFuture.addListener(cVar, m43268U);
        return cVar;
    }

    /* renamed from: d */
    public static void m2732d(final Context context) {
        MediaSessionCompat.m43187x(f72765n == null, "CameraX already initialized.");
        Objects.requireNonNull(f72766o);
        C26083p0 c26083p0 = new C26083p0(f72766o.getCameraXConfig());
        f72765n = c26083p0;
        f72767p = MediaSessionCompat.m43231i0(new AbstractC26249d() { // from class: n3.e.b.f
            @Override // p1727n3.p1790h.p1791a.AbstractC26249d
            /* renamed from: a */
            public final Object mo2255a(C26247b c26247b) {
                final C26083p0 c26083p02 = C26083p0.this;
                final Context context2 = context;
                synchronized (C26083p0.f72764m) {
                    C26031e m2784c = C26031e.m2786a(C26083p0.f72768q).m2784c(new AbstractC26029b() { // from class: n3.e.b.h
                        @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26029b
                        public final ListenableFuture apply(Object obj) {
                            ListenableFuture m43231i0;
                            final C26083p0 c26083p03 = C26083p0.this;
                            final Context context3 = context2;
                            Void r0 = (Void) obj;
                            synchronized (c26083p03.f72770b) {
                                MediaSessionCompat.m43187x(c26083p03.f72779k == C26083p0.EnumC26084a.UNINITIALIZED, "CameraX.initInternal() should only be called once per instance");
                                c26083p03.f72779k = C26083p0.EnumC26084a.INITIALIZING;
                                m43231i0 = MediaSessionCompat.m43231i0(new AbstractC26249d() { // from class: n3.e.b.d
                                    @Override // p1727n3.p1790h.p1791a.AbstractC26249d
                                    /* renamed from: a */
                                    public final Object mo2255a(C26247b c26247b2) {
                                        C26083p0 c26083p04 = C26083p0.this;
                                        Context context4 = context3;
                                        Executor executor = c26083p04.f72772d;
                                        executor.execute(new RunnableC25932j(c26083p04, context4, executor, c26247b2, SystemClock.elapsedRealtime()));
                                        return "CameraX initInternal";
                                    }
                                });
                            }
                            return m43231i0;
                        }
                    }, MediaSessionCompat.m43268U());
                    C26081o0 c26081o0 = new C26081o0(c26247b, c26083p02);
                    m2784c.addListener(new C26034g.RunnableC26038d(m2784c, c26081o0), MediaSessionCompat.m43268U());
                }
                return "CameraX-initialize";
            }
        });
    }

    /* renamed from: f */
    public static ListenableFuture<Void> m2730f() {
        C26083p0 c26083p0 = f72765n;
        if (c26083p0 == null) {
            return f72768q;
        }
        f72765n = null;
        ListenableFuture<Void> m43231i0 = MediaSessionCompat.m43231i0(new AbstractC26249d() { // from class: n3.e.b.l
            @Override // p1727n3.p1790h.p1791a.AbstractC26249d
            /* renamed from: a */
            public final Object mo2255a(final C26247b c26247b) {
                final C26083p0 c26083p02 = C26083p0.this;
                synchronized (C26083p0.f72764m) {
                    C26083p0.f72767p.addListener(new Runnable() { // from class: n3.e.b.k
                        @Override // java.lang.Runnable
                        public final void run() {
                            ListenableFuture<Void> listenableFuture;
                            final C26083p0 c26083p03 = C26083p0.this;
                            C26247b c26247b2 = c26247b;
                            C26083p0.EnumC26084a enumC26084a = C26083p0.EnumC26084a.SHUTDOWN;
                            synchronized (c26083p03.f72770b) {
                                c26083p03.f72773e.removeCallbacksAndMessages("retry_token");
                                int ordinal = c26083p03.f72779k.ordinal();
                                if (ordinal == 0) {
                                    c26083p03.f72779k = enumC26084a;
                                    listenableFuture = C26034g.m2781c(null);
                                } else if (ordinal == 1) {
                                    throw new IllegalStateException("CameraX could not be shutdown when it is initializing.");
                                } else {
                                    if (ordinal == 2) {
                                        c26083p03.f72779k = enumC26084a;
                                        c26083p03.f72780l = MediaSessionCompat.m43231i0(new AbstractC26249d() { // from class: n3.e.b.m
                                            @Override // p1727n3.p1790h.p1791a.AbstractC26249d
                                            /* renamed from: a */
                                            public final Object mo2255a(final C26247b c26247b3) {
                                                ListenableFuture<Void> listenableFuture2;
                                                final C26083p0 c26083p04 = C26083p0.this;
                                                final C25942c0 c25942c0 = c26083p04.f72769a;
                                                synchronized (c25942c0.f72545a) {
                                                    if (c25942c0.f72546b.isEmpty()) {
                                                        ListenableFuture<Void> listenableFuture3 = c25942c0.f72548d;
                                                        listenableFuture2 = listenableFuture3;
                                                        if (listenableFuture3 == null) {
                                                            listenableFuture2 = C26034g.m2781c(null);
                                                        }
                                                    } else {
                                                        ListenableFuture<Void> listenableFuture4 = c25942c0.f72548d;
                                                        listenableFuture2 = listenableFuture4;
                                                        if (listenableFuture4 == null) {
                                                            listenableFuture2 = MediaSessionCompat.m43231i0(new AbstractC26249d() { // from class: n3.e.b.j1.a
                                                                @Override // p1727n3.p1790h.p1791a.AbstractC26249d
                                                                /* renamed from: a */
                                                                public final Object mo2255a(C26247b c26247b4) {
                                                                    C25942c0 c25942c02 = C25942c0.this;
                                                                    synchronized (c25942c02.f72545a) {
                                                                        c25942c02.f72549e = c26247b4;
                                                                    }
                                                                    return "CameraRepository-deinit";
                                                                }
                                                            });
                                                            c25942c0.f72548d = listenableFuture2;
                                                        }
                                                        c25942c0.f72547c.addAll(c25942c0.f72546b.values());
                                                        for (final AbstractC25938b0 abstractC25938b0 : c25942c0.f72546b.values()) {
                                                            abstractC25938b0.release().addListener(new Runnable() { // from class: n3.e.b.j1.b
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    C25942c0 c25942c02 = C25942c0.this;
                                                                    AbstractC25938b0 abstractC25938b02 = abstractC25938b0;
                                                                    synchronized (c25942c02.f72545a) {
                                                                        c25942c02.f72547c.remove(abstractC25938b02);
                                                                        if (c25942c02.f72547c.isEmpty()) {
                                                                            Objects.requireNonNull(c25942c02.f72549e);
                                                                            c25942c02.f72549e.m2258a(null);
                                                                            c25942c02.f72549e = null;
                                                                            c25942c02.f72548d = null;
                                                                        }
                                                                    }
                                                                }
                                                            }, MediaSessionCompat.m43268U());
                                                        }
                                                        c25942c0.f72546b.clear();
                                                    }
                                                }
                                                listenableFuture2.addListener(new Runnable() { // from class: n3.e.b.i
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        C26083p0 c26083p05 = C26083p0.this;
                                                        C26247b c26247b4 = c26247b3;
                                                        if (c26083p05.f72774f != null) {
                                                            Executor executor = c26083p05.f72772d;
                                                            if (executor instanceof ExecutorC25933j0) {
                                                                ExecutorC25933j0 executorC25933j0 = (ExecutorC25933j0) executor;
                                                                synchronized (executorC25933j0.f72528a) {
                                                                    if (!executorC25933j0.f72529b.isShutdown()) {
                                                                        executorC25933j0.f72529b.shutdown();
                                                                    }
                                                                }
                                                            }
                                                            c26083p05.f72774f.quit();
                                                            c26247b4.m2258a(null);
                                                        }
                                                    }
                                                }, c26083p04.f72772d);
                                                return "CameraX shutdownInternal";
                                            }
                                        });
                                    }
                                    listenableFuture = c26083p03.f72780l;
                                }
                            }
                            C26034g.m2779e(listenableFuture, c26247b2);
                        }
                    }, MediaSessionCompat.m43268U());
                }
                return "CameraX shutdown";
            }
        });
        f72768q = m43231i0;
        return m43231i0;
    }

    /* renamed from: e */
    public final void m2731e() {
        synchronized (this.f72770b) {
            this.f72779k = EnumC26084a.INITIALIZED;
        }
    }
}
