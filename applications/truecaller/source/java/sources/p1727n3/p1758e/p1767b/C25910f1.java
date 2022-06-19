package p1727n3.p1758e.p1767b;

import android.graphics.Rect;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.Size;
import android.view.Surface;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25938b0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25980k0;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26034g;
import p1727n3.p1790h.p1791a.AbstractC26249d;
import p1727n3.p1790h.p1791a.C26247b;
import p1727n3.p1807k.p1820h.AbstractC26552b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.b.f1 */
/* loaded from: classes-dex2jar.jar:n3/e/b/f1.class */
public final class C25910f1 {

    /* renamed from: a */
    public final Size f72474a;

    /* renamed from: b */
    public final boolean f72475b;

    /* renamed from: c */
    public final AbstractC25938b0 f72476c;

    /* renamed from: d */
    public final ListenableFuture<Surface> f72477d;

    /* renamed from: e */
    public final C26247b<Surface> f72478e;

    /* renamed from: f */
    public final ListenableFuture<Void> f72479f;

    /* renamed from: g */
    public final C26247b<Void> f72480g;

    /* renamed from: h */
    public final AbstractC25980k0 f72481h;

    /* renamed from: i */
    public AbstractC25917g f72482i;

    /* renamed from: j */
    public AbstractC25918h f72483j;

    /* renamed from: k */
    public Executor f72484k;

    /* renamed from: n3.e.b.f1$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/f1$a.class */
    public class C25911a implements AbstractC26030d<Void> {

        /* renamed from: a */
        public final /* synthetic */ C26247b f72485a;

        /* renamed from: b */
        public final /* synthetic */ ListenableFuture f72486b;

        public C25911a(C25910f1 c25910f1, C26247b c26247b, ListenableFuture listenableFuture) {
            this.f72485a = c26247b;
            this.f72486b = listenableFuture;
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
        /* renamed from: a */
        public void mo2689a(Throwable th) {
            if (th instanceof C25915e) {
                MediaSessionCompat.m43187x(this.f72486b.cancel(false), null);
            } else {
                MediaSessionCompat.m43187x(this.f72485a.m2258a(null), null);
            }
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
        public void onSuccess(Void r4) {
            MediaSessionCompat.m43187x(this.f72485a.m2258a(null), null);
        }
    }

    /* renamed from: n3.e.b.f1$b */
    /* loaded from: classes-dex2jar.jar:n3/e/b/f1$b.class */
    public class C25912b extends AbstractC25980k0 {
        public C25912b() {
            C25910f1.this = r4;
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25980k0
        /* renamed from: g */
        public ListenableFuture<Surface> mo2791g() {
            return C25910f1.this.f72477d;
        }
    }

    /* renamed from: n3.e.b.f1$c */
    /* loaded from: classes-dex2jar.jar:n3/e/b/f1$c.class */
    public class C25913c implements AbstractC26030d<Surface> {

        /* renamed from: a */
        public final /* synthetic */ ListenableFuture f72488a;

        /* renamed from: b */
        public final /* synthetic */ C26247b f72489b;

        /* renamed from: c */
        public final /* synthetic */ String f72490c;

        public C25913c(C25910f1 c25910f1, ListenableFuture listenableFuture, C26247b c26247b, String str) {
            this.f72488a = listenableFuture;
            this.f72489b = c26247b;
            this.f72490c = str;
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
        /* renamed from: a */
        public void mo2689a(Throwable th) {
            if (th instanceof CancellationException) {
                MediaSessionCompat.m43187x(this.f72489b.m2256c(new C25915e(C22128a.m8618h(new StringBuilder(), this.f72490c, " cancelled."), th)), null);
            } else {
                this.f72489b.m2258a(null);
            }
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
        public void onSuccess(Surface surface) {
            C26034g.m2779e(this.f72488a, this.f72489b);
        }
    }

    /* renamed from: n3.e.b.f1$d */
    /* loaded from: classes-dex2jar.jar:n3/e/b/f1$d.class */
    public class C25914d implements AbstractC26030d<Void> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC26552b f72491a;

        /* renamed from: b */
        public final /* synthetic */ Surface f72492b;

        public C25914d(C25910f1 c25910f1, AbstractC26552b abstractC26552b, Surface surface) {
            this.f72491a = abstractC26552b;
            this.f72492b = surface;
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
        /* renamed from: a */
        public void mo2689a(Throwable th) {
            MediaSessionCompat.m43187x(th instanceof C25915e, "Camera surface session should only fail with request cancellation. Instead failed due to:\n" + th);
            this.f72491a.accept(new C25909f0(1, this.f72492b));
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
        public void onSuccess(Void r7) {
            this.f72491a.accept(new C25909f0(0, this.f72492b));
        }
    }

    /* renamed from: n3.e.b.f1$e */
    /* loaded from: classes-dex2jar.jar:n3/e/b/f1$e.class */
    public static final class C25915e extends RuntimeException {
        public C25915e(String str, Throwable th) {
            super(str, th);
        }
    }

    /* renamed from: n3.e.b.f1$f */
    /* loaded from: classes-dex2jar.jar:n3/e/b/f1$f.class */
    public static abstract class AbstractC25916f {
        /* renamed from: a */
        public abstract int mo2910a();

        /* renamed from: b */
        public abstract Surface mo2909b();
    }

    /* renamed from: n3.e.b.f1$g */
    /* loaded from: classes-dex2jar.jar:n3/e/b/f1$g.class */
    public static abstract class AbstractC25917g {
        /* renamed from: a */
        public abstract Rect mo2908a();

        /* renamed from: b */
        public abstract int mo2907b();

        /* renamed from: c */
        public abstract int mo2906c();
    }

    /* renamed from: n3.e.b.f1$h */
    /* loaded from: classes-dex2jar.jar:n3/e/b/f1$h.class */
    public interface AbstractC25918h {
    }

    public C25910f1(Size size, AbstractC25938b0 abstractC25938b0, boolean z) {
        this.f72474a = size;
        this.f72476c = abstractC25938b0;
        this.f72475b = z;
        final String str = "SurfaceRequest[size: " + size + ", id: " + hashCode() + "]";
        final AtomicReference atomicReference = new AtomicReference(null);
        ListenableFuture m43231i0 = MediaSessionCompat.m43231i0(new AbstractC26249d() { // from class: n3.e.b.z
            @Override // p1727n3.p1790h.p1791a.AbstractC26249d
            /* renamed from: a */
            public final Object mo2255a(C26247b c26247b) {
                AtomicReference atomicReference2 = atomicReference;
                String str2 = str;
                atomicReference2.set(c26247b);
                return str2 + "-cancellation";
            }
        });
        C26247b<Void> c26247b = (C26247b) atomicReference.get();
        Objects.requireNonNull(c26247b);
        this.f72480g = c26247b;
        final AtomicReference atomicReference2 = new AtomicReference(null);
        ListenableFuture<Void> m43231i02 = MediaSessionCompat.m43231i0(new AbstractC26249d() { // from class: n3.e.b.a0
            @Override // p1727n3.p1790h.p1791a.AbstractC26249d
            /* renamed from: a */
            public final Object mo2255a(C26247b c26247b2) {
                AtomicReference atomicReference3 = atomicReference2;
                String str2 = str;
                atomicReference3.set(c26247b2);
                return str2 + "-status";
            }
        });
        this.f72479f = m43231i02;
        m43231i02.addListener(new C26034g.RunnableC26038d(m43231i02, new C25911a(this, c26247b, m43231i0)), MediaSessionCompat.m43268U());
        C26247b c26247b2 = (C26247b) atomicReference2.get();
        Objects.requireNonNull(c26247b2);
        final AtomicReference atomicReference3 = new AtomicReference(null);
        ListenableFuture<Surface> m43231i03 = MediaSessionCompat.m43231i0(new AbstractC26249d() { // from class: n3.e.b.y
            @Override // p1727n3.p1790h.p1791a.AbstractC26249d
            /* renamed from: a */
            public final Object mo2255a(C26247b c26247b3) {
                AtomicReference atomicReference4 = atomicReference3;
                String str2 = str;
                atomicReference4.set(c26247b3);
                return str2 + "-Surface";
            }
        });
        this.f72477d = m43231i03;
        C26247b<Surface> c26247b3 = (C26247b) atomicReference3.get();
        Objects.requireNonNull(c26247b3);
        this.f72478e = c26247b3;
        C25912b c25912b = new C25912b();
        this.f72481h = c25912b;
        ListenableFuture<Void> m2830d = c25912b.m2830d();
        m43231i03.addListener(new C26034g.RunnableC26038d(m43231i03, new C25913c(this, m2830d, c26247b2, str)), MediaSessionCompat.m43268U());
        m2830d.addListener(new Runnable() { // from class: n3.e.b.x
            @Override // java.lang.Runnable
            public final void run() {
                C25910f1.this.f72477d.cancel(true);
            }
        }, MediaSessionCompat.m43268U());
    }

    /* renamed from: a */
    public void m2912a(final Surface surface, Executor executor, final AbstractC26552b<AbstractC25916f> abstractC26552b) {
        if (this.f72478e.m2258a(surface) || this.f72477d.isCancelled()) {
            ListenableFuture<Void> listenableFuture = this.f72479f;
            listenableFuture.addListener(new C26034g.RunnableC26038d(listenableFuture, new C25914d(this, abstractC26552b, surface)), executor);
            return;
        }
        MediaSessionCompat.m43187x(this.f72477d.isDone(), null);
        try {
            this.f72477d.get();
            executor.execute(new Runnable() { // from class: n3.e.b.t
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC26552b.this.accept(new C25909f0(3, surface));
                }
            });
        } catch (InterruptedException | ExecutionException e) {
            executor.execute(new Runnable() { // from class: n3.e.b.u
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC26552b.this.accept(new C25909f0(4, surface));
                }
            });
        }
    }

    /* renamed from: b */
    public boolean m2911b() {
        return this.f72478e.m2256c(new AbstractC25980k0.C25982b("Surface request will not complete."));
    }
}
