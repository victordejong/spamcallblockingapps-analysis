package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import p020b.p029b.p030a.p031a.C1468a;
import p020b.p029b.p030a.p032b.C1475b;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData.class */
public abstract class LiveData<T> {

    /* renamed from: a */
    static final Object f3669a = new Object();

    /* renamed from: e */
    private boolean f3673e;

    /* renamed from: f */
    private volatile Object f3674f;

    /* renamed from: g */
    volatile Object f3675g;

    /* renamed from: i */
    private boolean f3677i;

    /* renamed from: j */
    private boolean f3678j;

    /* renamed from: b */
    final Object f3670b = new Object();

    /* renamed from: c */
    private C1475b<AbstractC0804n<? super T>, LiveData<T>.AbstractC0782c> f3671c = new C1475b<>();

    /* renamed from: d */
    int f3672d = 0;

    /* renamed from: k */
    private final Runnable f3679k = new RunnableC0780a();

    /* renamed from: h */
    private int f3676h = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$LifecycleBoundObserver.class */
    public class LifecycleBoundObserver extends LiveData<T>.AbstractC0782c implements AbstractC0795f {

        /* renamed from: h */
        final AbstractC0797h f3680h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        LifecycleBoundObserver(AbstractC0797h abstractC0797h, AbstractC0804n<? super T> abstractC0804n) {
            super(abstractC0804n);
            LiveData.this = r5;
            this.f3680h = abstractC0797h;
        }

        @Override // androidx.lifecycle.AbstractC0795f
        /* renamed from: c */
        public void mo30701c(AbstractC0797h abstractC0797h, Lifecycle.Event event) {
            Lifecycle.State mo32397b = this.f3680h.mo32372a().mo32397b();
            if (mo32397b == Lifecycle.State.DESTROYED) {
                LiveData.this.mo28961m(this.f3684d);
                return;
            }
            Lifecycle.State state = null;
            while (state != mo32397b) {
                m32429h(mo32426k());
                state = mo32397b;
                mo32397b = this.f3680h.mo32372a().mo32397b();
            }
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0782c
        /* renamed from: i */
        void mo32428i() {
            this.f3680h.mo32372a().mo32396c(this);
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0782c
        /* renamed from: j */
        boolean mo32427j(AbstractC0797h abstractC0797h) {
            return this.f3680h == abstractC0797h;
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0782c
        /* renamed from: k */
        boolean mo32426k() {
            return this.f3680h.mo32372a().mo32397b().isAtLeast(Lifecycle.State.STARTED);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.LiveData$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$a.class */
    public class RunnableC0780a implements Runnable {
        RunnableC0780a() {
            LiveData.this = r4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.f3670b) {
                obj = LiveData.this.f3675g;
                LiveData.this.f3675g = LiveData.f3669a;
            }
            LiveData.this.mo28960n(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.lifecycle.LiveData$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$b.class */
    public class C0781b extends LiveData<T>.AbstractC0782c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0781b(AbstractC0804n<? super T> abstractC0804n) {
            super(abstractC0804n);
            LiveData.this = r5;
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0782c
        /* renamed from: k */
        boolean mo32426k() {
            return true;
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$c */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$c.class */
    public abstract class AbstractC0782c {

        /* renamed from: d */
        final AbstractC0804n<? super T> f3684d;

        /* renamed from: e */
        boolean f3685e;

        /* renamed from: f */
        int f3686f = -1;

        AbstractC0782c(AbstractC0804n<? super T> abstractC0804n) {
            LiveData.this = r4;
            this.f3684d = abstractC0804n;
        }

        /* renamed from: h */
        void m32429h(boolean z) {
            if (z == this.f3685e) {
                return;
            }
            this.f3685e = z;
            LiveData.this.m32436c(z ? 1 : -1);
            if (!this.f3685e) {
                return;
            }
            LiveData.this.m32434e(this);
        }

        /* renamed from: i */
        void mo32428i() {
        }

        /* renamed from: j */
        boolean mo32427j(AbstractC0797h abstractC0797h) {
            return false;
        }

        /* renamed from: k */
        abstract boolean mo32426k();
    }

    public LiveData() {
        Object obj = f3669a;
        this.f3675g = obj;
        this.f3674f = obj;
    }

    /* renamed from: b */
    static void m32437b(String str) {
        if (C1468a.m29993e().mo29990b()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    /* renamed from: d */
    private void m32435d(LiveData<T>.AbstractC0782c abstractC0782c) {
        if (!abstractC0782c.f3685e) {
            return;
        }
        if (!abstractC0782c.mo32426k()) {
            abstractC0782c.m32429h(false);
            return;
        }
        int i = abstractC0782c.f3686f;
        int i2 = this.f3676h;
        if (i >= i2) {
            return;
        }
        abstractC0782c.f3686f = i2;
        abstractC0782c.f3684d.mo28954a((Object) this.f3674f);
    }

    /* renamed from: c */
    void m32436c(int i) {
        int i2 = this.f3672d;
        this.f3672d = i + i2;
        if (this.f3673e) {
            return;
        }
        this.f3673e = true;
        while (true) {
            try {
                int i3 = this.f3672d;
                if (i2 == i3) {
                    return;
                }
                boolean z = i2 == 0 && i3 > 0;
                boolean z2 = i2 > 0 && i3 == 0;
                if (z) {
                    mo28963j();
                } else if (z2) {
                    mo28962k();
                }
                i2 = i3;
            } finally {
                this.f3673e = false;
            }
        }
    }

    /* renamed from: e */
    void m32434e(LiveData<T>.AbstractC0782c abstractC0782c) {
        LiveData<T>.AbstractC0782c abstractC0782c2;
        if (this.f3677i) {
            this.f3678j = true;
            return;
        }
        this.f3677i = true;
        LiveData<T>.AbstractC0782c abstractC0782c3 = abstractC0782c;
        do {
            this.f3678j = false;
            if (abstractC0782c3 == null) {
                C1475b<AbstractC0804n<? super T>, LiveData<T>.AbstractC0782c>.C1479d m29985e = this.f3671c.m29985e();
                while (true) {
                    abstractC0782c2 = abstractC0782c3;
                    if (!m29985e.hasNext()) {
                        break;
                    }
                    m32435d((AbstractC0782c) m29985e.next().getValue());
                    if (this.f3678j) {
                        abstractC0782c2 = abstractC0782c3;
                        break;
                    }
                }
            } else {
                m32435d(abstractC0782c3);
                abstractC0782c2 = null;
            }
            abstractC0782c3 = abstractC0782c2;
        } while (this.f3678j);
        this.f3677i = false;
    }

    /* renamed from: f */
    public T m32433f() {
        T t = (T) this.f3674f;
        if (t != f3669a) {
            return t;
        }
        return null;
    }

    /* renamed from: g */
    public boolean m32432g() {
        return this.f3672d > 0;
    }

    /* renamed from: h */
    public void m32431h(AbstractC0797h abstractC0797h, AbstractC0804n<? super T> abstractC0804n) {
        m32437b("observe");
        if (abstractC0797h.mo32372a().mo32397b() == Lifecycle.State.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(abstractC0797h, abstractC0804n);
        LiveData<T>.AbstractC0782c mo29982j = this.f3671c.mo29982j(abstractC0804n, lifecycleBoundObserver);
        if (mo29982j != null && !mo29982j.mo32427j(abstractC0797h)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (mo29982j != null) {
            return;
        }
        abstractC0797h.mo32372a().mo32398a(lifecycleBoundObserver);
    }

    /* renamed from: i */
    public void m32430i(AbstractC0804n<? super T> abstractC0804n) {
        m32437b("observeForever");
        C0781b c0781b = new C0781b(abstractC0804n);
        LiveData<T>.AbstractC0782c mo29982j = this.f3671c.mo29982j(abstractC0804n, c0781b);
        if (!(mo29982j instanceof LifecycleBoundObserver)) {
            if (mo29982j != null) {
                return;
            }
            c0781b.m32429h(true);
            return;
        }
        throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
    }

    /* renamed from: j */
    protected void mo28963j() {
    }

    /* renamed from: k */
    protected void mo28962k() {
    }

    /* renamed from: l */
    public void mo32373l(T t) {
        boolean z;
        synchronized (this.f3670b) {
            z = this.f3675g == f3669a;
            this.f3675g = t;
        }
        if (!z) {
            return;
        }
        C1468a.m29993e().mo29989c(this.f3679k);
    }

    /* renamed from: m */
    public void mo28961m(AbstractC0804n<? super T> abstractC0804n) {
        m32437b("removeObserver");
        LiveData<T>.AbstractC0782c mo29981l = this.f3671c.mo29981l(abstractC0804n);
        if (mo29981l == null) {
            return;
        }
        mo29981l.mo32428i();
        mo29981l.m32429h(false);
    }

    /* renamed from: n */
    public void mo28960n(T t) {
        m32437b("setValue");
        this.f3676h++;
        this.f3674f = t;
        m32434e(null);
    }
}
