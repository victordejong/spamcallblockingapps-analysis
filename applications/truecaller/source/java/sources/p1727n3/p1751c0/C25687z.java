package p1727n3.p1751c0;

import androidx.lifecycle.LiveData;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import p1727n3.p1746c.p1747a.p1748a.C25628a;
import p1727n3.p1751c0.C25670o;
/* renamed from: n3.c0.z */
/* loaded from: classes-dex2jar.jar:n3/c0/z.class */
public class C25687z<T> extends LiveData<T> {

    /* renamed from: l */
    public final AbstractC25677q f71963l;

    /* renamed from: m */
    public final boolean f71964m;

    /* renamed from: n */
    public final Callable<T> f71965n;

    /* renamed from: o */
    public final C25669n f71966o;

    /* renamed from: p */
    public final C25670o.AbstractC25673c f71967p;

    /* renamed from: q */
    public final AtomicBoolean f71968q = new AtomicBoolean(true);

    /* renamed from: r */
    public final AtomicBoolean f71969r = new AtomicBoolean(false);

    /* renamed from: s */
    public final AtomicBoolean f71970s = new AtomicBoolean(false);

    /* renamed from: t */
    public final Runnable f71971t = new RunnableC25688a();

    /* renamed from: u */
    public final Runnable f71972u = new RunnableC25689b();

    /* renamed from: n3.c0.z$a */
    /* loaded from: classes-dex2jar.jar:n3/c0/z$a.class */
    public class RunnableC25688a implements Runnable {
        public RunnableC25688a() {
            C25687z.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            if (C25687z.this.f71970s.compareAndSet(false, true)) {
                C25670o invalidationTracker = C25687z.this.f71963l.getInvalidationTracker();
                C25670o.AbstractC25673c abstractC25673c = C25687z.this.f71967p;
                Objects.requireNonNull(invalidationTracker);
                invalidationTracker.m3077a(new C25670o.C25675e(invalidationTracker, abstractC25673c));
            }
            do {
                if (C25687z.this.f71969r.compareAndSet(false, true)) {
                    T t = null;
                    boolean z2 = false;
                    while (true) {
                        try {
                            z = z2;
                            if (!C25687z.this.f71968q.compareAndSet(true, false)) {
                                break;
                            }
                            try {
                                t = C25687z.this.f71965n.call();
                                z2 = true;
                            } catch (Exception e) {
                                throw new RuntimeException("Exception while computing database live data.", e);
                            }
                        } finally {
                            C25687z.this.f71969r.set(false);
                        }
                    }
                    if (z) {
                        C25687z.this.mo1001j(t);
                    }
                } else {
                    z = false;
                }
                if (!z) {
                    return;
                }
            } while (C25687z.this.f71968q.get());
        }
    }

    /* renamed from: n3.c0.z$b */
    /* loaded from: classes-dex2jar.jar:n3/c0/z$b.class */
    public class RunnableC25689b implements Runnable {
        public RunnableC25689b() {
            C25687z.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean m42868e = C25687z.this.m42868e();
            if (!C25687z.this.f71968q.compareAndSet(false, true) || !m42868e) {
                return;
            }
            C25687z c25687z = C25687z.this;
            (c25687z.f71964m ? c25687z.f71963l.getTransactionExecutor() : c25687z.f71963l.getQueryExecutor()).execute(C25687z.this.f71971t);
        }
    }

    /* renamed from: n3.c0.z$c */
    /* loaded from: classes-dex2jar.jar:n3/c0/z$c.class */
    public class C25690c extends C25670o.AbstractC25673c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C25690c(String[] strArr) {
            super(strArr);
            C25687z.this = r4;
        }

        @Override // p1727n3.p1751c0.C25670o.AbstractC25673c
        /* renamed from: a */
        public void mo3054a(Set<String> set) {
            C25628a m3112d = C25628a.m3112d();
            Runnable runnable = C25687z.this.f71972u;
            if (m3112d.mo3109b()) {
                runnable.run();
            } else {
                m3112d.mo3108c(runnable);
            }
        }
    }

    public C25687z(AbstractC25677q abstractC25677q, C25669n c25669n, boolean z, Callable<T> callable, String[] strArr) {
        this.f71963l = abstractC25677q;
        this.f71964m = z;
        this.f71965n = callable;
        this.f71966o = c25669n;
        this.f71967p = new C25690c(strArr);
    }

    @Override // androidx.lifecycle.LiveData
    /* renamed from: h */
    public void mo3056h() {
        this.f71966o.f71891a.add(this);
        (this.f71964m ? this.f71963l.getTransactionExecutor() : this.f71963l.getQueryExecutor()).execute(this.f71971t);
    }

    @Override // androidx.lifecycle.LiveData
    /* renamed from: i */
    public void mo3055i() {
        this.f71966o.f71891a.remove(this);
    }
}
