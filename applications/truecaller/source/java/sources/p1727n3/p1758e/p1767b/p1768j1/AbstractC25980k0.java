package p1727n3.p1758e.p1767b.p1768j1;

import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.Log;
import android.view.Surface;
import com.google.common.util.concurrent.ListenableFuture;
import com.tenor.android.core.constant.StringConstant;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26039h;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26034g;
import p1727n3.p1790h.p1791a.AbstractC26249d;
import p1727n3.p1790h.p1791a.C26247b;
/* renamed from: n3.e.b.j1.k0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/k0.class */
public abstract class AbstractC25980k0 {

    /* renamed from: f */
    public static final boolean f72613f = C26103y0.m2722c("DeferrableSurface");

    /* renamed from: g */
    public static final AtomicInteger f72614g = new AtomicInteger(0);

    /* renamed from: h */
    public static final AtomicInteger f72615h = new AtomicInteger(0);

    /* renamed from: a */
    public final Object f72616a = new Object();

    /* renamed from: b */
    public int f72617b = 0;

    /* renamed from: c */
    public boolean f72618c = false;

    /* renamed from: d */
    public C26247b<Void> f72619d;

    /* renamed from: e */
    public final ListenableFuture<Void> f72620e;

    /* renamed from: n3.e.b.j1.k0$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/k0$a.class */
    public static final class C25981a extends Exception {

        /* renamed from: a */
        public AbstractC25980k0 f72621a;

        public C25981a(String str, AbstractC25980k0 abstractC25980k0) {
            super(str);
            this.f72621a = abstractC25980k0;
        }
    }

    /* renamed from: n3.e.b.j1.k0$b */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/k0$b.class */
    public static final class C25982b extends Exception {
        public C25982b(String str) {
            super(str);
        }
    }

    public AbstractC25980k0() {
        ListenableFuture<Void> m43231i0 = MediaSessionCompat.m43231i0(new AbstractC26249d() { // from class: n3.e.b.j1.d
            @Override // p1727n3.p1790h.p1791a.AbstractC26249d
            /* renamed from: a */
            public final Object mo2255a(C26247b c26247b) {
                AbstractC25980k0 abstractC25980k0 = AbstractC25980k0.this;
                synchronized (abstractC25980k0.f72616a) {
                    abstractC25980k0.f72619d = c26247b;
                }
                return "DeferrableSurface-termination(" + abstractC25980k0 + ")";
            }
        });
        this.f72620e = m43231i0;
        if (C26103y0.m2722c("DeferrableSurface")) {
            m2828f("Surface created", f72615h.incrementAndGet(), f72614g.get());
            final String stackTraceString = Log.getStackTraceString(new Exception());
            m43231i0.addListener(new Runnable() { // from class: n3.e.b.j1.c
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC25980k0 abstractC25980k0 = AbstractC25980k0.this;
                    String str = stackTraceString;
                    Objects.requireNonNull(abstractC25980k0);
                    try {
                        abstractC25980k0.f72620e.get();
                        abstractC25980k0.m2828f("Surface terminated", AbstractC25980k0.f72615h.decrementAndGet(), AbstractC25980k0.f72614g.get());
                    } catch (Exception e) {
                        C26103y0.m2723b("DeferrableSurface", "Unexpected surface termination for " + abstractC25980k0 + "\nStack Trace:\n" + str, null);
                        synchronized (abstractC25980k0.f72616a) {
                            throw new IllegalArgumentException(String.format("DeferrableSurface %s [closed: %b, use_count: %s] terminated with unexpected exception.", abstractC25980k0, Boolean.valueOf(abstractC25980k0.f72618c), Integer.valueOf(abstractC25980k0.f72617b)), e);
                        }
                    }
                }
            }, MediaSessionCompat.m43268U());
        }
    }

    /* renamed from: a */
    public final void m2833a() {
        C26247b<Void> c26247b;
        C26247b<Void> c26247b2;
        synchronized (this.f72616a) {
            if (!this.f72618c) {
                this.f72618c = true;
                if (this.f72617b == 0) {
                    c26247b2 = this.f72619d;
                    this.f72619d = null;
                } else {
                    c26247b2 = null;
                }
                c26247b = c26247b2;
                if (C26103y0.m2722c("DeferrableSurface")) {
                    C26103y0.m2724a("DeferrableSurface", "surface closed,  useCount=" + this.f72617b + " closed=true " + this, null);
                    c26247b = c26247b2;
                }
            } else {
                c26247b = null;
            }
        }
        if (c26247b != null) {
            c26247b.m2258a(null);
        }
    }

    /* renamed from: b */
    public void m2832b() {
        C26247b<Void> c26247b;
        synchronized (this.f72616a) {
            int i = this.f72617b;
            if (i == 0) {
                throw new IllegalStateException("Decrementing use count occurs more times than incrementing");
            }
            int i2 = i - 1;
            this.f72617b = i2;
            if (i2 != 0 || !this.f72618c) {
                c26247b = null;
            } else {
                c26247b = this.f72619d;
                this.f72619d = null;
            }
            if (C26103y0.m2722c("DeferrableSurface")) {
                C26103y0.m2724a("DeferrableSurface", "use count-1,  useCount=" + this.f72617b + " closed=" + this.f72618c + StringConstant.SPACE + this, null);
                if (this.f72617b == 0) {
                    m2828f("Surface no longer in use", f72615h.get(), f72614g.decrementAndGet());
                }
            }
        }
        if (c26247b != null) {
            c26247b.m2258a(null);
        }
    }

    /* renamed from: c */
    public final ListenableFuture<Surface> m2831c() {
        synchronized (this.f72616a) {
            if (this.f72618c) {
                return new AbstractC26039h.a(new C25981a("DeferrableSurface already closed.", this));
            }
            return mo2791g();
        }
    }

    /* renamed from: d */
    public ListenableFuture<Void> m2830d() {
        return C26034g.m2780d(this.f72620e);
    }

    /* renamed from: e */
    public void m2829e() throws C25981a {
        synchronized (this.f72616a) {
            int i = this.f72617b;
            if (i == 0 && this.f72618c) {
                throw new C25981a("Cannot begin use on a closed surface.", this);
            }
            this.f72617b = i + 1;
            if (C26103y0.m2722c("DeferrableSurface")) {
                if (this.f72617b == 1) {
                    m2828f("New surface in use", f72615h.get(), f72614g.incrementAndGet());
                }
                C26103y0.m2724a("DeferrableSurface", "use count+1, useCount=" + this.f72617b + StringConstant.SPACE + this, null);
            }
        }
    }

    /* renamed from: f */
    public final void m2828f(String str, int i, int i2) {
        if (!f72613f && C26103y0.m2722c("DeferrableSurface")) {
            C26103y0.m2724a("DeferrableSurface", "DeferrableSurface usage statistics may be inaccurate since debug logging was not enabled at static initialization time. App restart may be required to enable accurate usage statistics.", null);
        }
        C26103y0.m2724a("DeferrableSurface", str + "[total_surfaces=" + i + ", used_surfaces=" + i2 + "](" + this + "}", null);
    }

    /* renamed from: g */
    public abstract ListenableFuture<Surface> mo2791g();
}
