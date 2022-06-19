package androidx.lifecycle;

import androidx.lifecycle.AbstractC0864e;
import androidx.p003a.p004a.p005a.C0061a;
import androidx.p003a.p004a.p006b.C0068b;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData.class */
public abstract class LiveData<T> {

    /* renamed from: b */
    static final Object f2947b = new Object();

    /* renamed from: h */
    private boolean f2954h;

    /* renamed from: i */
    private boolean f2955i;

    /* renamed from: a */
    final Object f2948a = new Object();

    /* renamed from: e */
    private C0068b<AbstractC0878o<? super T>, LiveData<T>.AbstractC0857a> f2951e = new C0068b<>();

    /* renamed from: c */
    int f2949c = 0;

    /* renamed from: d */
    volatile Object f2950d = f2947b;

    /* renamed from: j */
    private final Runnable f2956j = new Runnable() { // from class: androidx.lifecycle.LiveData.1
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.f2948a) {
                obj = LiveData.this.f2950d;
                LiveData.this.f2950d = LiveData.f2947b;
            }
            LiveData.this.mo19194b((LiveData) obj);
        }
    };

    /* renamed from: f */
    private volatile Object f2952f = f2947b;

    /* renamed from: g */
    private int f2953g = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$LifecycleBoundObserver.class */
    public class LifecycleBoundObserver extends LiveData<T>.AbstractC0857a implements AbstractC0867f {

        /* renamed from: a */
        final AbstractC0869h f2958a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        LifecycleBoundObserver(AbstractC0869h abstractC0869h, AbstractC0878o<? super T> abstractC0878o) {
            super(abstractC0878o);
            LiveData.this = r5;
            this.f2958a = abstractC0869h;
        }

        @Override // androidx.lifecycle.AbstractC0867f
        /* renamed from: a */
        public void mo17991a(AbstractC0869h abstractC0869h, AbstractC0864e.EnumC0865a enumC0865a) {
            if (this.f2958a.mo19203b().mo19223a() == AbstractC0864e.EnumC0866b.DESTROYED) {
                LiveData.this.mo19249a((AbstractC0878o) this.f2960c);
            } else {
                m19241a(mo19243a());
            }
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0857a
        /* renamed from: a */
        boolean mo19243a() {
            return this.f2958a.mo19203b().mo19223a().m19224a(AbstractC0864e.EnumC0866b.STARTED);
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0857a
        /* renamed from: a */
        boolean mo19242a(AbstractC0869h abstractC0869h) {
            return this.f2958a == abstractC0869h;
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0857a
        /* renamed from: b */
        void mo19240b() {
            this.f2958a.mo19203b().mo19214b(this);
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$a.class */
    public abstract class AbstractC0857a {

        /* renamed from: c */
        final AbstractC0878o<? super T> f2960c;

        /* renamed from: d */
        boolean f2961d;

        /* renamed from: e */
        int f2962e = -1;

        AbstractC0857a(AbstractC0878o<? super T> abstractC0878o) {
            LiveData.this = r4;
            this.f2960c = abstractC0878o;
        }

        /* renamed from: a */
        void m19241a(boolean z) {
            int i = 1;
            if (z == this.f2961d) {
                return;
            }
            this.f2961d = z;
            boolean z2 = LiveData.this.f2949c == 0;
            LiveData liveData = LiveData.this;
            int i2 = liveData.f2949c;
            if (!this.f2961d) {
                i = -1;
            }
            liveData.f2949c = i + i2;
            if (z2 && this.f2961d) {
                LiveData.this.mo19247b();
            }
            if (LiveData.this.f2949c == 0 && !this.f2961d) {
                LiveData.this.mo19245c();
            }
            if (!this.f2961d) {
                return;
            }
            LiveData.this.m19251a(this);
        }

        /* renamed from: a */
        abstract boolean mo19243a();

        /* renamed from: a */
        boolean mo19242a(AbstractC0869h abstractC0869h) {
            return false;
        }

        /* renamed from: b */
        void mo19240b() {
        }
    }

    /* renamed from: a */
    static void m19248a(String str) {
        if (!C0061a.m22313a().mo22308c()) {
            throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
        }
    }

    /* renamed from: b */
    private void m19246b(LiveData<T>.AbstractC0857a abstractC0857a) {
        if (!abstractC0857a.f2961d) {
            return;
        }
        if (!abstractC0857a.mo19243a()) {
            abstractC0857a.m19241a(false);
        } else if (abstractC0857a.f2962e >= this.f2953g) {
        } else {
            abstractC0857a.f2962e = this.f2953g;
            abstractC0857a.f2960c.mo19193a((Object) this.f2952f);
        }
    }

    /* renamed from: a */
    public T m19252a() {
        Object obj = this.f2952f;
        if (obj == f2947b) {
            obj = null;
        }
        return (T) obj;
    }

    /* renamed from: a */
    void m19251a(LiveData<T>.AbstractC0857a abstractC0857a) {
        LiveData<T>.AbstractC0857a abstractC0857a2;
        if (this.f2954h) {
            this.f2955i = true;
            return;
        }
        this.f2954h = true;
        do {
            this.f2955i = false;
            if (abstractC0857a == null) {
                C0068b<AbstractC0878o<? super T>, LiveData<T>.AbstractC0857a>.C0072d m22299c = this.f2951e.m22299c();
                while (true) {
                    abstractC0857a2 = abstractC0857a;
                    if (!m22299c.hasNext()) {
                        break;
                    }
                    m19246b((AbstractC0857a) ((AbstractC0857a) m22299c.next().getValue()));
                    if (this.f2955i) {
                        abstractC0857a2 = abstractC0857a;
                        break;
                    }
                }
            } else {
                m19246b((AbstractC0857a) abstractC0857a);
                abstractC0857a2 = null;
            }
            abstractC0857a = abstractC0857a2;
        } while (this.f2955i);
        this.f2954h = false;
    }

    /* renamed from: a */
    public void m19250a(AbstractC0869h abstractC0869h, AbstractC0878o<? super T> abstractC0878o) {
        m19248a("observe");
        if (abstractC0869h.mo19203b().mo19223a() == AbstractC0864e.EnumC0866b.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(abstractC0869h, abstractC0878o);
        LiveData<T>.AbstractC0857a mo22303a = this.f2951e.mo22303a(abstractC0878o, lifecycleBoundObserver);
        if (mo22303a != null && !mo22303a.mo19242a(abstractC0869h)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (mo22303a != null) {
            return;
        }
        abstractC0869h.mo19203b().mo19219a(lifecycleBoundObserver);
    }

    /* renamed from: a */
    public void mo19249a(AbstractC0878o<? super T> abstractC0878o) {
        m19248a("removeObserver");
        LiveData<T>.AbstractC0857a mo22301b = this.f2951e.mo22301b(abstractC0878o);
        if (mo22301b == null) {
            return;
        }
        mo22301b.mo19240b();
        mo22301b.m19241a(false);
    }

    /* renamed from: a */
    public void mo19195a(T t) {
        boolean z;
        synchronized (this.f2948a) {
            z = this.f2950d == f2947b;
            this.f2950d = t;
        }
        if (!z) {
            return;
        }
        C0061a.m22313a().mo22309b(this.f2956j);
    }

    /* renamed from: b */
    protected void mo19247b() {
    }

    /* renamed from: b */
    public void mo19194b(T t) {
        m19248a("setValue");
        this.f2953g++;
        this.f2952f = t;
        m19251a((AbstractC0857a) null);
    }

    /* renamed from: c */
    protected void mo19245c() {
    }

    /* renamed from: d */
    public boolean m19244d() {
        return this.f2949c > 0;
    }
}
