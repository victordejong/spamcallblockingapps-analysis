package p1727n3.p1758e.p1767b;

import android.media.ImageReader;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.LongSparseArray;
import android.view.Surface;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import p1727n3.p1758e.p1759a.p1761e.C25877y0;
import p1727n3.p1758e.p1767b.AbstractC26092t0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26002q;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26005r0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26013t;
import p1727n3.p1758e.p1767b.p1772k1.C26063b;
/* renamed from: n3.e.b.z0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/z0.class */
public class C26105z0 implements AbstractC26005r0, AbstractC26092t0.AbstractC26093a {

    /* renamed from: e */
    public final AbstractC26005r0 f72819e;

    /* renamed from: f */
    public AbstractC26005r0.AbstractC26006a f72820f;

    /* renamed from: g */
    public Executor f72821g;

    /* renamed from: a */
    public final Object f72815a = new Object();

    /* renamed from: b */
    public AbstractC26002q f72816b = new C26106a();

    /* renamed from: c */
    public AbstractC26005r0.AbstractC26006a f72817c = new AbstractC26005r0.AbstractC26006a() { // from class: n3.e.b.n
        @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC26005r0.AbstractC26006a
        /* renamed from: a */
        public final void mo2729a(AbstractC26005r0 abstractC26005r0) {
            int i;
            C26105z0 c26105z0 = C26105z0.this;
            synchronized (c26105z0.f72815a) {
                if (c26105z0.f72818d) {
                    return;
                }
                int i2 = 0;
                do {
                    AbstractC26097v0 abstractC26097v0 = null;
                    try {
                        AbstractC26097v0 mo2718b = abstractC26005r0.mo2718b();
                        i = i2;
                        abstractC26097v0 = mo2718b;
                        if (mo2718b != null) {
                            i = i2 + 1;
                            c26105z0.f72823i.put(mo2718b.mo2728x0().mo2726e(), mo2718b);
                            c26105z0.m2714f();
                            abstractC26097v0 = mo2718b;
                        }
                    } catch (IllegalStateException e) {
                        C26103y0.m2724a("MetadataImageReader", "Failed to acquire next image.", e);
                        i = i2;
                    }
                    if (abstractC26097v0 == null) {
                        break;
                    }
                    i2 = i;
                } while (i < abstractC26005r0.mo2719a());
            }
        }
    };

    /* renamed from: d */
    public boolean f72818d = false;

    /* renamed from: h */
    public final LongSparseArray<AbstractC26095u0> f72822h = new LongSparseArray<>();

    /* renamed from: i */
    public final LongSparseArray<AbstractC26097v0> f72823i = new LongSparseArray<>();

    /* renamed from: l */
    public final List<AbstractC26097v0> f72826l = new ArrayList();

    /* renamed from: j */
    public int f72824j = 0;

    /* renamed from: k */
    public final List<AbstractC26097v0> f72825k = new ArrayList(mo2719a());

    /* renamed from: n3.e.b.z0$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/z0$a.class */
    public class C26106a extends AbstractC26002q {
        public C26106a() {
            C26105z0.this = r4;
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC26002q
        /* renamed from: b */
        public void mo2701b(AbstractC26013t abstractC26013t) {
            C26105z0 c26105z0 = C26105z0.this;
            synchronized (c26105z0.f72815a) {
                if (c26105z0.f72818d) {
                    return;
                }
                LongSparseArray<AbstractC26095u0> longSparseArray = c26105z0.f72822h;
                C25877y0 c25877y0 = (C25877y0) abstractC26013t;
                longSparseArray.put(c25877y0.m2927a(), new C26063b(c25877y0));
                c26105z0.m2714f();
            }
        }
    }

    public C26105z0(int i, int i2, int i3, int i4) {
        C25897c0 c25897c0 = new C25897c0(ImageReader.newInstance(i, i2, i3, i4));
        this.f72819e = c25897c0;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC26005r0
    /* renamed from: a */
    public int mo2719a() {
        int mo2719a;
        synchronized (this.f72815a) {
            mo2719a = this.f72819e.mo2719a();
        }
        return mo2719a;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC26005r0
    /* renamed from: b */
    public AbstractC26097v0 mo2718b() {
        synchronized (this.f72815a) {
            if (this.f72825k.isEmpty()) {
                return null;
            }
            if (this.f72824j >= this.f72825k.size()) {
                throw new IllegalStateException("Maximum image number reached.");
            }
            List<AbstractC26097v0> list = this.f72825k;
            int i = this.f72824j;
            this.f72824j = i + 1;
            AbstractC26097v0 abstractC26097v0 = list.get(i);
            this.f72826l.add(abstractC26097v0);
            return abstractC26097v0;
        }
    }

    @Override // p1727n3.p1758e.p1767b.AbstractC26092t0.AbstractC26093a
    /* renamed from: c */
    public void mo2717c(AbstractC26097v0 abstractC26097v0) {
        synchronized (this.f72815a) {
            synchronized (this.f72815a) {
                int indexOf = this.f72825k.indexOf(abstractC26097v0);
                if (indexOf >= 0) {
                    this.f72825k.remove(indexOf);
                    int i = this.f72824j;
                    if (indexOf <= i) {
                        this.f72824j = i - 1;
                    }
                }
                this.f72826l.remove(abstractC26097v0);
            }
        }
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC26005r0
    public void close() {
        synchronized (this.f72815a) {
            if (this.f72818d) {
                return;
            }
            Iterator it = new ArrayList(this.f72825k).iterator();
            while (it.hasNext()) {
                ((AbstractC26097v0) it.next()).close();
            }
            this.f72825k.clear();
            this.f72819e.close();
            this.f72818d = true;
        }
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC26005r0
    /* renamed from: d */
    public void mo2716d(AbstractC26005r0.AbstractC26006a abstractC26006a, Executor executor) {
        synchronized (this.f72815a) {
            Objects.requireNonNull(abstractC26006a);
            this.f72820f = abstractC26006a;
            this.f72821g = executor;
            this.f72819e.mo2716d(this.f72817c, executor);
        }
    }

    /* renamed from: e */
    public final void m2715e(e1 e1Var) {
        Executor executor;
        AbstractC26005r0.AbstractC26006a abstractC26006a;
        synchronized (this.f72815a) {
            if (this.f72825k.size() < mo2719a()) {
                synchronized (e1Var) {
                    e1Var.f72802b.add(this);
                }
                this.f72825k.add(e1Var);
                abstractC26006a = this.f72820f;
                executor = this.f72821g;
            } else {
                C26103y0.m2724a("TAG", "Maximum image number reached.", null);
                e1Var.close();
                executor = null;
                abstractC26006a = null;
            }
        }
        if (abstractC26006a != null) {
            if (executor == null) {
                abstractC26006a.mo2729a(this);
                return;
            }
            final AbstractC26005r0.AbstractC26006a abstractC26006a2 = abstractC26006a;
            executor.execute(new Runnable() { // from class: n3.e.b.o
                @Override // java.lang.Runnable
                public final void run() {
                    C26105z0 c26105z0 = C26105z0.this;
                    AbstractC26005r0.AbstractC26006a abstractC26006a3 = abstractC26006a2;
                    Objects.requireNonNull(c26105z0);
                    abstractC26006a3.mo2729a(c26105z0);
                }
            });
        }
    }

    /* renamed from: f */
    public final void m2714f() {
        synchronized (this.f72815a) {
            for (int size = this.f72822h.size() - 1; size >= 0; size--) {
                AbstractC26095u0 valueAt = this.f72822h.valueAt(size);
                long mo2726e = valueAt.mo2726e();
                AbstractC26097v0 abstractC26097v0 = this.f72823i.get(mo2726e);
                if (abstractC26097v0 != null) {
                    this.f72823i.remove(mo2726e);
                    this.f72822h.removeAt(size);
                    m2715e(new e1(abstractC26097v0, valueAt));
                }
            }
            m2713g();
        }
    }

    /* renamed from: g */
    public final void m2713g() {
        synchronized (this.f72815a) {
            if (this.f72823i.size() != 0 && this.f72822h.size() != 0) {
                boolean z = false;
                Long valueOf = Long.valueOf(this.f72823i.keyAt(0));
                Long valueOf2 = Long.valueOf(this.f72822h.keyAt(0));
                if (!valueOf2.equals(valueOf)) {
                    z = true;
                }
                MediaSessionCompat.m43217n(z);
                if (valueOf2.longValue() > valueOf.longValue()) {
                    for (int size = this.f72823i.size() - 1; size >= 0; size--) {
                        if (this.f72823i.keyAt(size) < valueOf2.longValue()) {
                            this.f72823i.valueAt(size).close();
                            this.f72823i.removeAt(size);
                        }
                    }
                } else {
                    for (int size2 = this.f72822h.size() - 1; size2 >= 0; size2--) {
                        if (this.f72822h.keyAt(size2) < valueOf.longValue()) {
                            this.f72822h.removeAt(size2);
                        }
                    }
                }
            }
        }
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC26005r0
    public Surface getSurface() {
        Surface surface;
        synchronized (this.f72815a) {
            surface = this.f72819e.getSurface();
        }
        return surface;
    }
}
