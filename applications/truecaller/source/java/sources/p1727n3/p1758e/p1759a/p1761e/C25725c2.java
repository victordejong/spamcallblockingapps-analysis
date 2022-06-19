package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.Surface;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import n3.h.a.f;
import p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2;
import p1727n3.p1758e.p1759a.p1761e.C25737f2;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25765b;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25786f;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25980k0;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26029b;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26039h;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26031e;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26034g;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26040i;
import p1727n3.p1790h.p1791a.AbstractC26249d;
import p1727n3.p1790h.p1791a.C26247b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.a.e.c2 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/c2.class */
public class C25725c2 extends AbstractC25721b2.AbstractC25722a implements AbstractC25721b2, C25737f2.AbstractC25739b {

    /* renamed from: b */
    public final C25859s1 f72068b;

    /* renamed from: c */
    public final Handler f72069c;

    /* renamed from: d */
    public final Executor f72070d;

    /* renamed from: e */
    public final ScheduledExecutorService f72071e;

    /* renamed from: f */
    public AbstractC25721b2.AbstractC25722a f72072f;

    /* renamed from: g */
    public C25765b f72073g;

    /* renamed from: h */
    public ListenableFuture<Void> f72074h;

    /* renamed from: i */
    public C26247b<Void> f72075i;

    /* renamed from: j */
    public ListenableFuture<List<Surface>> f72076j;

    /* renamed from: a */
    public final Object f72067a = new Object();

    /* renamed from: k */
    public List<AbstractC25980k0> f72077k = null;

    /* renamed from: l */
    public boolean f72078l = false;

    /* renamed from: m */
    public boolean f72079m = false;

    /* renamed from: n */
    public boolean f72080n = false;

    /* renamed from: n3.e.a.e.c2$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/c2$a.class */
    public class C25726a implements AbstractC26030d<Void> {
        public C25726a() {
            C25725c2.this = r4;
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
        /* renamed from: a */
        public void mo2689a(Throwable th) {
            C25725c2.this.m3012v();
            C25725c2 c25725c2 = C25725c2.this;
            C25859s1 c25859s1 = c25725c2.f72068b;
            c25859s1.m2950a(c25725c2);
            synchronized (c25859s1.f72333b) {
                c25859s1.f72336e.remove(c25725c2);
            }
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
        public void onSuccess(Void r3) {
        }
    }

    public C25725c2(C25859s1 c25859s1, Executor executor, ScheduledExecutorService scheduledExecutorService, Handler handler) {
        this.f72068b = c25859s1;
        this.f72069c = handler;
        this.f72070d = executor;
        this.f72071e = scheduledExecutorService;
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.C25737f2.AbstractC25739b
    /* renamed from: a */
    public ListenableFuture<Void> mo3009a(CameraDevice cameraDevice, final C25810g c25810g, final List<AbstractC25980k0> list) {
        synchronized (this.f72067a) {
            if (this.f72079m) {
                return new AbstractC26039h.a(new CancellationException("Opener is disabled"));
            }
            C25859s1 c25859s1 = this.f72068b;
            synchronized (c25859s1.f72333b) {
                c25859s1.f72336e.add(this);
            }
            final C25786f c25786f = new C25786f(cameraDevice, this.f72069c);
            ListenableFuture<Void> m43231i0 = MediaSessionCompat.m43231i0(new AbstractC26249d() { // from class: n3.e.a.e.l0
                @Override // p1727n3.p1790h.p1791a.AbstractC26249d
                /* renamed from: a */
                public final Object mo2255a(C26247b c26247b) {
                    String str;
                    C25725c2 c25725c2 = C25725c2.this;
                    List<AbstractC25980k0> list2 = list;
                    C25786f c25786f2 = c25786f;
                    C25810g c25810g2 = c25810g;
                    synchronized (c25725c2.f72067a) {
                        c25725c2.m3014t(list2);
                        MediaSessionCompat.m43187x(c25725c2.f72075i == null, "The openCaptureSessionCompleter can only set once!");
                        c25725c2.f72075i = c26247b;
                        c25786f2.f72212a.m2994a(c25810g2);
                        str = "openCaptureSession[session=" + c25725c2 + "]";
                    }
                    return str;
                }
            });
            this.f72074h = m43231i0;
            C25726a c25726a = new C25726a();
            m43231i0.addListener(new C26034g.RunnableC26038d(m43231i0, c25726a), MediaSessionCompat.m43268U());
            return C26034g.m2780d(this.f72074h);
        }
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2
    /* renamed from: b */
    public AbstractC25721b2.AbstractC25722a mo3023b() {
        return this;
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2
    /* renamed from: c */
    public void mo3022c() throws CameraAccessException {
        MediaSessionCompat.m43196u(this.f72073g, "Need to call openCaptureSession before using this API.");
        this.f72073g.m2998a().abortCaptures();
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2
    public void close() {
        MediaSessionCompat.m43196u(this.f72073g, "Need to call openCaptureSession before using this API.");
        C25859s1 c25859s1 = this.f72068b;
        synchronized (c25859s1.f72333b) {
            c25859s1.f72335d.add(this);
        }
        this.f72073g.m2998a().close();
        this.f72070d.execute(new Runnable() { // from class: n3.e.a.e.o0
            @Override // java.lang.Runnable
            public final void run() {
                C25725c2 c25725c2 = C25725c2.this;
                c25725c2.mo2951r(c25725c2);
            }
        });
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2
    /* renamed from: d */
    public CameraDevice mo3021d() {
        Objects.requireNonNull(this.f72073g);
        return this.f72073g.m2998a().getDevice();
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2
    /* renamed from: e */
    public int mo3020e(List<CaptureRequest> list, CameraCaptureSession.CaptureCallback captureCallback) throws CameraAccessException {
        MediaSessionCompat.m43196u(this.f72073g, "Need to call openCaptureSession before using this API.");
        C25765b c25765b = this.f72073g;
        return c25765b.f72158a.mo2997a(list, this.f72070d, captureCallback);
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2
    /* renamed from: f */
    public C25765b mo3019f() {
        Objects.requireNonNull(this.f72073g);
        return this.f72073g;
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2
    /* renamed from: g */
    public void mo3018g() throws CameraAccessException {
        MediaSessionCompat.m43196u(this.f72073g, "Need to call openCaptureSession before using this API.");
        this.f72073g.m2998a().stopRepeating();
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2
    /* renamed from: h */
    public void mo3017h() {
        m3012v();
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2
    /* renamed from: i */
    public int mo3016i(CaptureRequest captureRequest, CameraCaptureSession.CaptureCallback captureCallback) throws CameraAccessException {
        MediaSessionCompat.m43196u(this.f72073g, "Need to call openCaptureSession before using this API.");
        C25765b c25765b = this.f72073g;
        return c25765b.f72158a.mo2996b(captureRequest, this.f72070d, captureCallback);
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.C25737f2.AbstractC25739b
    /* renamed from: j */
    public ListenableFuture<List<Surface>> mo3008j(final List<AbstractC25980k0> list, final long j) {
        synchronized (this.f72067a) {
            if (this.f72079m) {
                return new AbstractC26039h.a(new CancellationException("Opener is disabled"));
            }
            final Executor executor = this.f72070d;
            final ScheduledExecutorService scheduledExecutorService = this.f72071e;
            final ArrayList arrayList = new ArrayList();
            for (AbstractC25980k0 abstractC25980k0 : list) {
                arrayList.add(abstractC25980k0.m2831c());
            }
            C26031e m2784c = C26031e.m2786a(MediaSessionCompat.m43231i0(new AbstractC26249d() { // from class: n3.e.b.j1.g
                @Override // p1727n3.p1790h.p1791a.AbstractC26249d
                /* renamed from: a */
                public final Object mo2255a(final C26247b c26247b) {
                    List list2 = arrayList;
                    ScheduledExecutorService scheduledExecutorService2 = scheduledExecutorService;
                    final Executor executor2 = executor;
                    final long j2 = j;
                    boolean z = r10;
                    final ListenableFuture m2777g = C26034g.m2777g(list2);
                    ScheduledFuture<?> schedule = scheduledExecutorService2.schedule(new Runnable() { // from class: n3.e.b.j1.h
                        @Override // java.lang.Runnable
                        public final void run() {
                            Executor executor3 = executor2;
                            final ListenableFuture listenableFuture = m2777g;
                            final C26247b c26247b2 = c26247b;
                            final long j3 = j2;
                            executor3.execute(new Runnable() { // from class: n3.e.b.j1.f
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ListenableFuture listenableFuture2 = ListenableFuture.this;
                                    C26247b c26247b3 = c26247b2;
                                    long j4 = j3;
                                    if (!listenableFuture2.isDone()) {
                                        c26247b3.m2256c(new TimeoutException(C22128a.m8583p2("Cannot complete surfaceList within ", j4)));
                                        listenableFuture2.cancel(true);
                                    }
                                }
                            });
                        }
                    }, j2, TimeUnit.MILLISECONDS);
                    Runnable runnable = new Runnable() { // from class: n3.e.b.j1.e
                        @Override // java.lang.Runnable
                        public final void run() {
                            ListenableFuture.this.cancel(true);
                        }
                    };
                    f<Void> fVar = c26247b.f73171c;
                    if (fVar != null) {
                        fVar.addListener(runnable, executor2);
                    }
                    ((C26040i) m2777g).addListener(new C26034g.RunnableC26038d(m2777g, new C25985l0(z, c26247b, schedule)), executor2);
                    return "surfaceList";
                }
            })).m2784c(new AbstractC26029b() { // from class: n3.e.a.e.n0
                @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26029b
                public final ListenableFuture apply(Object obj) {
                    C25725c2 c25725c2 = C25725c2.this;
                    List list2 = list;
                    List list3 = (List) obj;
                    Objects.requireNonNull(c25725c2);
                    C26103y0.m2724a("SyncCaptureSessionBase", "[" + c25725c2 + "] getSurface...done", null);
                    return list3.contains(null) ? new AbstractC26039h.a(new AbstractC25980k0.C25981a("Surface closed", (AbstractC25980k0) list2.get(list3.indexOf(null)))) : list3.isEmpty() ? new AbstractC26039h.a(new IllegalArgumentException("Unable to open capture session without surfaces")) : C26034g.m2781c(list3);
                }
            }, this.f72070d);
            this.f72076j = m2784c;
            return C26034g.m2780d(m2784c);
        }
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2
    /* renamed from: k */
    public ListenableFuture<Void> mo3015k(String str) {
        return C26034g.m2781c(null);
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
    /* renamed from: l */
    public void mo3007l(AbstractC25721b2 abstractC25721b2) {
        this.f72072f.mo3007l(abstractC25721b2);
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
    /* renamed from: m */
    public void mo3006m(AbstractC25721b2 abstractC25721b2) {
        this.f72072f.mo3006m(abstractC25721b2);
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
    /* renamed from: n */
    public void mo3005n(final AbstractC25721b2 abstractC25721b2) {
        ListenableFuture<Void> listenableFuture;
        synchronized (this.f72067a) {
            if (!this.f72078l) {
                this.f72078l = true;
                MediaSessionCompat.m43196u(this.f72074h, "Need to call openCaptureSession before using this API.");
                listenableFuture = this.f72074h;
            } else {
                listenableFuture = null;
            }
        }
        m3012v();
        if (listenableFuture != null) {
            listenableFuture.addListener(new Runnable() { // from class: n3.e.a.e.m0
                @Override // java.lang.Runnable
                public final void run() {
                    C25725c2 c25725c2 = C25725c2.this;
                    AbstractC25721b2 abstractC25721b22 = abstractC25721b2;
                    C25859s1 c25859s1 = c25725c2.f72068b;
                    synchronized (c25859s1.f72333b) {
                        c25859s1.f72334c.remove(c25725c2);
                        c25859s1.f72335d.remove(c25725c2);
                    }
                    c25725c2.mo2951r(abstractC25721b22);
                    c25725c2.f72072f.mo3005n(abstractC25721b22);
                }
            }, MediaSessionCompat.m43268U());
        }
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
    /* renamed from: o */
    public void mo2954o(AbstractC25721b2 abstractC25721b2) {
        m3012v();
        C25859s1 c25859s1 = this.f72068b;
        c25859s1.m2950a(this);
        synchronized (c25859s1.f72333b) {
            c25859s1.f72336e.remove(this);
        }
        this.f72072f.mo2954o(abstractC25721b2);
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
    /* renamed from: p */
    public void mo2953p(AbstractC25721b2 abstractC25721b2) {
        C25859s1 c25859s1 = this.f72068b;
        synchronized (c25859s1.f72333b) {
            c25859s1.f72334c.add(this);
            c25859s1.f72336e.remove(this);
        }
        c25859s1.m2950a(this);
        this.f72072f.mo2953p(abstractC25721b2);
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
    /* renamed from: q */
    public void mo2952q(AbstractC25721b2 abstractC25721b2) {
        this.f72072f.mo2952q(abstractC25721b2);
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
    /* renamed from: r */
    public void mo2951r(final AbstractC25721b2 abstractC25721b2) {
        ListenableFuture<Void> listenableFuture;
        synchronized (this.f72067a) {
            if (!this.f72080n) {
                this.f72080n = true;
                MediaSessionCompat.m43196u(this.f72074h, "Need to call openCaptureSession before using this API.");
                listenableFuture = this.f72074h;
            } else {
                listenableFuture = null;
            }
        }
        if (listenableFuture != null) {
            listenableFuture.addListener(new Runnable() { // from class: n3.e.a.e.k0
                @Override // java.lang.Runnable
                public final void run() {
                    C25725c2 c25725c2 = C25725c2.this;
                    c25725c2.f72072f.mo2951r(abstractC25721b2);
                }
            }, MediaSessionCompat.m43268U());
        }
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
    /* renamed from: s */
    public void mo3004s(AbstractC25721b2 abstractC25721b2, Surface surface) {
        this.f72072f.mo3004s(abstractC25721b2, surface);
    }

    /* JADX WARN: Finally extract failed */
    @Override // p1727n3.p1758e.p1759a.p1761e.C25737f2.AbstractC25739b
    public boolean stop() {
        boolean z;
        ListenableFuture<List<Surface>> listenableFuture = null;
        ListenableFuture<List<Surface>> listenableFuture2 = null;
        try {
            synchronized (this.f72067a) {
                if (!this.f72079m) {
                    ListenableFuture<List<Surface>> listenableFuture3 = this.f72076j;
                    listenableFuture = null;
                    if (listenableFuture3 != null) {
                        listenableFuture = listenableFuture3;
                    }
                    this.f72079m = true;
                }
                ListenableFuture<List<Surface>> listenableFuture4 = listenableFuture;
                z = !m3013u();
                listenableFuture2 = listenableFuture;
            }
            if (listenableFuture != null) {
                listenableFuture.cancel(true);
            }
            return z;
        } catch (Throwable th) {
            if (listenableFuture2 != null) {
                listenableFuture2.cancel(true);
            }
            throw th;
        }
    }

    /* renamed from: t */
    public void m3014t(List<AbstractC25980k0> list) throws AbstractC25980k0.C25981a {
        int i;
        synchronized (this.f72067a) {
            m3012v();
            if (!list.isEmpty()) {
                int i2 = 0;
                do {
                    int i3 = i2;
                    try {
                        list.get(i2).m2829e();
                        i = i2 + 1;
                        i2 = i;
                    } catch (AbstractC25980k0.C25981a e) {
                        while (true) {
                            i3--;
                            if (i3 < 0) {
                                break;
                            }
                            list.get(i3).m2832b();
                        }
                        throw e;
                    }
                } while (i < list.size());
                this.f72077k = list;
            } else {
                this.f72077k = list;
            }
        }
    }

    /* renamed from: u */
    public boolean m3013u() {
        boolean z;
        synchronized (this.f72067a) {
            z = this.f72074h != null;
        }
        return z;
    }

    /* renamed from: v */
    public void m3012v() {
        synchronized (this.f72067a) {
            List<AbstractC25980k0> list = this.f72077k;
            if (list != null) {
                for (AbstractC25980k0 abstractC25980k0 : list) {
                    abstractC25980k0.m2832b();
                }
                this.f72077k = null;
            }
        }
    }
}
