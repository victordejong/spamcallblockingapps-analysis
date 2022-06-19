package p1727n3.p1758e.p1767b;

import android.os.Handler;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.Size;
import android.view.Surface;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25961h0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25964i0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25980k0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26002q;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26005r0;
import p1727n3.p1758e.p1767b.p1768j1.C25983k1;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1770b.ScheduledExecutorServiceC26017b;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26034g;
/* renamed from: n3.e.b.d1 */
/* loaded from: classes-dex2jar.jar:n3/e/b/d1.class */
public final class C25905d1 extends AbstractC25980k0 {

    /* renamed from: j */
    public final AbstractC26005r0.AbstractC26006a f72457j;

    /* renamed from: l */
    public final Size f72459l;

    /* renamed from: m */
    public final C26105z0 f72460m;

    /* renamed from: n */
    public final Surface f72461n;

    /* renamed from: o */
    public final Handler f72462o;

    /* renamed from: p */
    public final AbstractC25964i0 f72463p;

    /* renamed from: q */
    public final AbstractC25961h0 f72464q;

    /* renamed from: r */
    public final AbstractC26002q f72465r;

    /* renamed from: s */
    public final AbstractC25980k0 f72466s;

    /* renamed from: t */
    public String f72467t;

    /* renamed from: i */
    public final Object f72456i = new Object();

    /* renamed from: k */
    public boolean f72458k = false;

    /* renamed from: n3.e.b.d1$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/d1$a.class */
    public class C25906a implements AbstractC26030d<Surface> {
        public C25906a() {
            C25905d1.this = r4;
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
        /* renamed from: a */
        public void mo2689a(Throwable th) {
            C26103y0.m2723b("ProcessingSurfaceTextur", "Failed to extract Listenable<Surface>.", th);
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
        public void onSuccess(Surface surface) {
            Surface surface2 = surface;
            synchronized (C25905d1.this.f72456i) {
                C25905d1.this.f72464q.m2862a(surface2, 1);
            }
        }
    }

    public C25905d1(int i, int i2, int i3, Handler handler, AbstractC25964i0 abstractC25964i0, AbstractC25961h0 abstractC25961h0, AbstractC25980k0 abstractC25980k0, String str) {
        Surface surface;
        AbstractC26005r0.AbstractC26006a abstractC26006a = new AbstractC26005r0.AbstractC26006a() { // from class: n3.e.b.s
            @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC26005r0.AbstractC26006a
            /* renamed from: a */
            public final void mo2729a(AbstractC26005r0 abstractC26005r0) {
                C25905d1 c25905d1 = C25905d1.this;
                synchronized (c25905d1.f72456i) {
                    c25905d1.m2913h(abstractC26005r0);
                }
            }
        };
        this.f72457j = abstractC26006a;
        Size size = new Size(i, i2);
        this.f72459l = size;
        this.f72462o = handler;
        ScheduledExecutorServiceC26017b scheduledExecutorServiceC26017b = new ScheduledExecutorServiceC26017b(handler);
        C26105z0 c26105z0 = new C26105z0(i, i2, i3, 2);
        this.f72460m = c26105z0;
        c26105z0.mo2716d(abstractC26006a, scheduledExecutorServiceC26017b);
        synchronized (c26105z0.f72815a) {
            surface = c26105z0.f72819e.getSurface();
        }
        this.f72461n = surface;
        this.f72465r = c26105z0.f72816b;
        this.f72464q = abstractC25961h0;
        abstractC25961h0.m2860c(size);
        this.f72463p = abstractC25964i0;
        this.f72466s = abstractC25980k0;
        this.f72467t = str;
        ListenableFuture<Surface> m2831c = abstractC25980k0.m2831c();
        C25906a c25906a = new C25906a();
        m2831c.addListener(new C26034g.RunnableC26038d(m2831c, c25906a), MediaSessionCompat.m43268U());
        m2830d().addListener(new Runnable() { // from class: n3.e.b.r
            @Override // java.lang.Runnable
            public final void run() {
                C25905d1 c25905d1 = C25905d1.this;
                synchronized (c25905d1.f72456i) {
                    if (c25905d1.f72458k) {
                        return;
                    }
                    c25905d1.f72460m.close();
                    c25905d1.f72461n.release();
                    c25905d1.f72466s.m2833a();
                    c25905d1.f72458k = true;
                }
            }
        }, MediaSessionCompat.m43268U());
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25980k0
    /* renamed from: g */
    public ListenableFuture<Surface> mo2791g() {
        ListenableFuture<Surface> m2781c;
        synchronized (this.f72456i) {
            m2781c = C26034g.m2781c(this.f72461n);
        }
        return m2781c;
    }

    /* renamed from: h */
    public void m2913h(AbstractC26005r0 abstractC26005r0) {
        AbstractC26097v0 abstractC26097v0;
        if (this.f72458k) {
            return;
        }
        try {
            abstractC26097v0 = abstractC26005r0.mo2718b();
        } catch (IllegalStateException e) {
            C26103y0.m2723b("ProcessingSurfaceTextur", "Failed to acquire next image.", e);
            abstractC26097v0 = null;
        }
        if (abstractC26097v0 == null) {
            return;
        }
        AbstractC26095u0 mo2728x0 = abstractC26097v0.mo2728x0();
        if (mo2728x0 == null) {
            abstractC26097v0.close();
            return;
        }
        Integer m2817a = mo2728x0.mo2725f().m2817a(this.f72467t);
        if (m2817a == null) {
            abstractC26097v0.close();
            return;
        }
        Objects.requireNonNull(this.f72463p);
        if (m2817a.intValue() == 0) {
            C25983k1 c25983k1 = new C25983k1(abstractC26097v0, this.f72467t);
            this.f72464q.m2861b(c25983k1);
            c25983k1.f72622a.close();
            return;
        }
        C26103y0.m2720e("ProcessingSurfaceTextur", "ImageProxyBundle does not contain this id: " + m2817a, null);
        abstractC26097v0.close();
    }
}
