package androidx.lifecycle;

import androidx.lifecycle.AbstractC1253j;
import androidx.p010a.p011a.p012a.C0098a;
import androidx.p010a.p011a.p013b.C0105b;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData.class */
public abstract class LiveData<T> {

    /* renamed from: b */
    public static final Object f4777b = new Object();

    /* renamed from: a */
    final Object f4778a;

    /* renamed from: c */
    public C0105b<AbstractC1268u<? super T>, LiveData<T>.AbstractC1222b> f4779c;

    /* renamed from: d */
    int f4780d;

    /* renamed from: e */
    public volatile Object f4781e;

    /* renamed from: f */
    volatile Object f4782f;

    /* renamed from: g */
    private boolean f4783g;

    /* renamed from: h */
    private int f4784h;

    /* renamed from: i */
    private boolean f4785i;

    /* renamed from: j */
    private boolean f4786j;

    /* renamed from: k */
    private final Runnable f4787k;

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$LifecycleBoundObserver.class */
    public class LifecycleBoundObserver extends LiveData<T>.AbstractC1222b implements AbstractC1261n {

        /* renamed from: a */
        final AbstractC1263p f4789a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        LifecycleBoundObserver(AbstractC1263p abstractC1263p, AbstractC1268u<? super T> abstractC1268u) {
            super(abstractC1268u);
            LiveData.this = r5;
            this.f4789a = abstractC1263p;
        }

        @Override // androidx.lifecycle.AbstractC1261n
        /* renamed from: a */
        public final void mo39588a(AbstractC1263p abstractC1263p, AbstractC1253j.EnumC1255a enumC1255a) {
            AbstractC1253j.EnumC1256b currentState = this.f4789a.getLifecycle().getCurrentState();
            if (currentState == AbstractC1253j.EnumC1256b.DESTROYED) {
                LiveData.this.mo43333a((AbstractC1268u) this.f4792c);
                return;
            }
            AbstractC1253j.EnumC1256b enumC1256b = null;
            while (enumC1256b != currentState) {
                m43327a(mo43329a());
                enumC1256b = currentState;
                currentState = this.f4789a.getLifecycle().getCurrentState();
            }
        }

        @Override // androidx.lifecycle.LiveData.AbstractC1222b
        /* renamed from: a */
        final boolean mo43329a() {
            return this.f4789a.getLifecycle().getCurrentState().isAtLeast(AbstractC1253j.EnumC1256b.STARTED);
        }

        @Override // androidx.lifecycle.LiveData.AbstractC1222b
        /* renamed from: a */
        final boolean mo43328a(AbstractC1263p abstractC1263p) {
            return this.f4789a == abstractC1263p;
        }

        @Override // androidx.lifecycle.LiveData.AbstractC1222b
        /* renamed from: b */
        final void mo43326b() {
            this.f4789a.getLifecycle().removeObserver(this);
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$a.class */
    public final class C1221a extends LiveData<T>.AbstractC1222b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1221a(AbstractC1268u<? super T> abstractC1268u) {
            super(abstractC1268u);
            LiveData.this = r5;
        }

        @Override // androidx.lifecycle.LiveData.AbstractC1222b
        /* renamed from: a */
        final boolean mo43329a() {
            return true;
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$b.class */
    public abstract class AbstractC1222b {

        /* renamed from: c */
        final AbstractC1268u<? super T> f4792c;

        /* renamed from: d */
        boolean f4793d;

        /* renamed from: e */
        int f4794e = -1;

        AbstractC1222b(AbstractC1268u<? super T> abstractC1268u) {
            LiveData.this = r4;
            this.f4792c = abstractC1268u;
        }

        /* renamed from: a */
        public final void m43327a(boolean z) {
            if (z == this.f4793d) {
                return;
            }
            this.f4793d = z;
            LiveData.this.m43336a(z ? 1 : -1);
            if (!this.f4793d) {
                return;
            }
            LiveData.this.m43335a(this);
        }

        /* renamed from: a */
        abstract boolean mo43329a();

        /* renamed from: a */
        boolean mo43328a(AbstractC1263p abstractC1263p) {
            return false;
        }

        /* renamed from: b */
        void mo43326b() {
        }
    }

    public LiveData() {
        this.f4778a = new Object();
        this.f4779c = new C0105b<>();
        this.f4780d = 0;
        Object obj = f4777b;
        this.f4782f = obj;
        this.f4787k = new Runnable() { // from class: androidx.lifecycle.LiveData.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public final void run() {
                Object obj2;
                synchronized (LiveData.this.f4778a) {
                    obj2 = LiveData.this.f4782f;
                    LiveData.this.f4782f = LiveData.f4777b;
                }
                LiveData.this.mo43286b((LiveData) obj2);
            }
        };
        this.f4781e = obj;
        this.f4784h = -1;
    }

    public LiveData(T t) {
        this.f4778a = new Object();
        this.f4779c = new C0105b<>();
        this.f4780d = 0;
        this.f4782f = f4777b;
        this.f4787k = new Runnable() { // from class: androidx.lifecycle.LiveData.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public final void run() {
                Object obj2;
                synchronized (LiveData.this.f4778a) {
                    obj2 = LiveData.this.f4782f;
                    LiveData.this.f4782f = LiveData.f4777b;
                }
                LiveData.this.mo43286b((LiveData) obj2);
            }
        };
        this.f4781e = t;
        this.f4784h = 0;
    }

    /* renamed from: a */
    public static void m43332a(String str) {
        if (C0098a.m46411a().f197a.mo46406c()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    /* renamed from: b */
    private void m43331b(LiveData<T>.AbstractC1222b abstractC1222b) {
        if (!abstractC1222b.f4793d) {
            return;
        }
        if (!abstractC1222b.mo43329a()) {
            abstractC1222b.m43327a(false);
            return;
        }
        int i = abstractC1222b.f4794e;
        int i2 = this.f4784h;
        if (i >= i2) {
            return;
        }
        abstractC1222b.f4794e = i2;
        abstractC1222b.f4792c.onChanged((Object) this.f4781e);
    }

    /* renamed from: a */
    public void mo4697a() {
    }

    /* renamed from: a */
    final void m43336a(int i) {
        int i2 = this.f4780d;
        this.f4780d = i + i2;
        if (this.f4783g) {
            return;
        }
        this.f4783g = true;
        while (true) {
            try {
                int i3 = this.f4780d;
                if (i2 == i3) {
                    return;
                }
                boolean z = i2 == 0 && i3 > 0;
                boolean z2 = i2 > 0 && i3 == 0;
                if (z) {
                    mo4697a();
                } else if (z2) {
                    mo4695b();
                }
                i2 = i3;
            } finally {
                this.f4783g = false;
            }
        }
    }

    /* renamed from: a */
    final void m43335a(LiveData<T>.AbstractC1222b abstractC1222b) {
        LiveData<T>.AbstractC1222b abstractC1222b2;
        if (this.f4785i) {
            this.f4786j = true;
            return;
        }
        this.f4785i = true;
        do {
            this.f4786j = false;
            if (abstractC1222b == null) {
                C0105b<AbstractC1268u<? super T>, LiveData<T>.AbstractC1222b>.C0109d m46404a = this.f4779c.m46404a();
                while (true) {
                    abstractC1222b2 = abstractC1222b;
                    if (!m46404a.hasNext()) {
                        break;
                    }
                    m43331b((AbstractC1222b) ((AbstractC1222b) m46404a.next().getValue()));
                    if (this.f4786j) {
                        abstractC1222b2 = abstractC1222b;
                        break;
                    }
                }
            } else {
                m43331b((AbstractC1222b) abstractC1222b);
                abstractC1222b2 = null;
            }
            abstractC1222b = abstractC1222b2;
        } while (this.f4786j);
        this.f4785i = false;
    }

    /* renamed from: a */
    public final void m43334a(AbstractC1263p abstractC1263p, AbstractC1268u<? super T> abstractC1268u) {
        m43332a("observe");
        if (abstractC1263p.getLifecycle().getCurrentState() == AbstractC1253j.EnumC1256b.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(abstractC1263p, abstractC1268u);
        LiveData<T>.AbstractC1222b mo46402a = this.f4779c.mo46402a(abstractC1268u, lifecycleBoundObserver);
        if (mo46402a != null && !mo46402a.mo43328a(abstractC1263p)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (mo46402a != null) {
            return;
        }
        abstractC1263p.getLifecycle().addObserver(lifecycleBoundObserver);
    }

    /* renamed from: a */
    public void mo43333a(AbstractC1268u<? super T> abstractC1268u) {
        m43332a("removeObserver");
        LiveData<T>.AbstractC1222b mo46401b = this.f4779c.mo46401b(abstractC1268u);
        if (mo46401b == null) {
            return;
        }
        mo46401b.mo43326b();
        mo46401b.m43327a(false);
    }

    /* renamed from: a */
    public void mo43287a(T t) {
        boolean z;
        synchronized (this.f4778a) {
            z = this.f4782f == f4777b;
            this.f4782f = t;
        }
        if (!z) {
            return;
        }
        C0098a.m46411a().mo46407b(this.f4787k);
    }

    /* renamed from: b */
    public void mo4695b() {
    }

    /* renamed from: b */
    public void mo43286b(T t) {
        m43332a("setValue");
        this.f4784h++;
        this.f4781e = t;
        m43335a((AbstractC1222b) null);
    }

    /* renamed from: c */
    public final boolean m43330c() {
        return this.f4780d > 0;
    }
}
