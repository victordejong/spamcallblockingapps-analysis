package androidx.lifecycle;

import androidx.lifecycle.AbstractC0896g;
import androidx.p002a.p003a.p004a.C0030a;
import androidx.p002a.p003a.p005b.C0037b;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData.class */
public abstract class LiveData<T> {

    /* renamed from: b */
    static final Object f2814b = new Object();

    /* renamed from: h */
    private boolean f2821h;

    /* renamed from: i */
    private boolean f2822i;

    /* renamed from: a */
    final Object f2815a = new Object();

    /* renamed from: e */
    private C0037b<AbstractC0911q<? super T>, LiveData<T>.AbstractC0887a> f2818e = new C0037b<>();

    /* renamed from: c */
    int f2816c = 0;

    /* renamed from: d */
    volatile Object f2817d = f2814b;

    /* renamed from: j */
    private final Runnable f2823j = new Runnable() { // from class: androidx.lifecycle.LiveData.1
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.f2815a) {
                obj = LiveData.this.f2817d;
                LiveData.this.f2817d = LiveData.f2814b;
            }
            LiveData.this.mo5084a((LiveData) obj);
        }
    };

    /* renamed from: f */
    private volatile Object f2819f = f2814b;

    /* renamed from: g */
    private int f2820g = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$LifecycleBoundObserver.class */
    public class LifecycleBoundObserver extends LiveData<T>.AbstractC0887a implements AbstractC0901i {

        /* renamed from: a */
        final AbstractC0903k f2825a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        LifecycleBoundObserver(AbstractC0903k abstractC0903k, AbstractC0911q<? super T> abstractC0911q) {
            super(abstractC0911q);
            LiveData.this = r5;
            this.f2825a = abstractC0903k;
        }

        @Override // androidx.lifecycle.AbstractC0901i
        /* renamed from: a */
        public void mo4389a(AbstractC0903k abstractC0903k, AbstractC0896g.EnumC0897a enumC0897a) {
            if (this.f2825a.getLifecycle().mo5112a() == AbstractC0896g.EnumC0898b.DESTROYED) {
                LiveData.this.mo5136a((AbstractC0911q) this.f2827c);
            } else {
                m5130a(mo5132a());
            }
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0887a
        /* renamed from: a */
        boolean mo5132a() {
            return this.f2825a.getLifecycle().mo5112a().m5114a(AbstractC0896g.EnumC0898b.STARTED);
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0887a
        /* renamed from: a */
        boolean mo5131a(AbstractC0903k abstractC0903k) {
            return this.f2825a == abstractC0903k;
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0887a
        /* renamed from: b */
        void mo5129b() {
            this.f2825a.getLifecycle().mo5103b(this);
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$a.class */
    public abstract class AbstractC0887a {

        /* renamed from: c */
        final AbstractC0911q<? super T> f2827c;

        /* renamed from: d */
        boolean f2828d;

        /* renamed from: e */
        int f2829e = -1;

        AbstractC0887a(AbstractC0911q<? super T> abstractC0911q) {
            LiveData.this = r4;
            this.f2827c = abstractC0911q;
        }

        /* renamed from: a */
        void m5130a(boolean z) {
            if (z == this.f2828d) {
                return;
            }
            this.f2828d = z;
            int i = 1;
            boolean z2 = LiveData.this.f2816c == 0;
            LiveData liveData = LiveData.this;
            int i2 = liveData.f2816c;
            if (!this.f2828d) {
                i = -1;
            }
            liveData.f2816c = i2 + i;
            if (z2 && this.f2828d) {
                LiveData.this.mo1619b();
            }
            if (LiveData.this.f2816c == 0 && !this.f2828d) {
                LiveData.this.mo1617c();
            }
            if (!this.f2828d) {
                return;
            }
            LiveData.this.m5138a(this);
        }

        /* renamed from: a */
        abstract boolean mo5132a();

        /* renamed from: a */
        boolean mo5131a(AbstractC0903k abstractC0903k) {
            return false;
        }

        /* renamed from: b */
        void mo5129b() {
        }
    }

    /* renamed from: a */
    static void m5135a(String str) {
        if (C0030a.m8021a().mo8016c()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    /* renamed from: b */
    private void m5134b(LiveData<T>.AbstractC0887a abstractC0887a) {
        if (!abstractC0887a.f2828d) {
            return;
        }
        if (!abstractC0887a.mo5132a()) {
            abstractC0887a.m5130a(false);
            return;
        }
        int i = abstractC0887a.f2829e;
        int i2 = this.f2820g;
        if (i >= i2) {
            return;
        }
        abstractC0887a.f2829e = i2;
        abstractC0887a.f2827c.mo431a((Object) this.f2819f);
    }

    /* renamed from: a */
    public T m5139a() {
        T t = (T) this.f2819f;
        if (t != f2814b) {
            return t;
        }
        return null;
    }

    /* renamed from: a */
    void m5138a(LiveData<T>.AbstractC0887a abstractC0887a) {
        LiveData<T>.AbstractC0887a abstractC0887a2;
        if (this.f2821h) {
            this.f2822i = true;
            return;
        }
        this.f2821h = true;
        do {
            this.f2822i = false;
            if (abstractC0887a == null) {
                C0037b<AbstractC0911q<? super T>, LiveData<T>.AbstractC0887a>.C0041d m8007c = this.f2818e.m8007c();
                while (true) {
                    abstractC0887a2 = abstractC0887a;
                    if (!m8007c.hasNext()) {
                        break;
                    }
                    m5134b((AbstractC0887a) m8007c.next().getValue());
                    if (this.f2822i) {
                        abstractC0887a2 = abstractC0887a;
                        break;
                    }
                }
            } else {
                m5134b(abstractC0887a);
                abstractC0887a2 = null;
            }
            abstractC0887a = abstractC0887a2;
        } while (this.f2822i);
        this.f2821h = false;
    }

    /* renamed from: a */
    public void m5137a(AbstractC0903k abstractC0903k, AbstractC0911q<? super T> abstractC0911q) {
        m5135a("observe");
        if (abstractC0903k.getLifecycle().mo5112a() == AbstractC0896g.EnumC0898b.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(abstractC0903k, abstractC0911q);
        LiveData<T>.AbstractC0887a mo8011a = this.f2818e.mo8011a(abstractC0911q, lifecycleBoundObserver);
        if (mo8011a != null && !mo8011a.mo5131a(abstractC0903k)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (mo8011a != null) {
            return;
        }
        abstractC0903k.getLifecycle().mo5108a(lifecycleBoundObserver);
    }

    /* renamed from: a */
    public void mo5136a(AbstractC0911q<? super T> abstractC0911q) {
        m5135a("removeObserver");
        LiveData<T>.AbstractC0887a mo8009b = this.f2818e.mo8009b(abstractC0911q);
        if (mo8009b == null) {
            return;
        }
        mo8009b.mo5129b();
        mo8009b.m5130a(false);
    }

    /* renamed from: a */
    public void mo5084a(T t) {
        m5135a("setValue");
        this.f2820g++;
        this.f2819f = t;
        m5138a((AbstractC0887a) null);
    }

    /* renamed from: b */
    protected void mo1619b() {
    }

    /* renamed from: c */
    protected void mo1617c() {
    }

    /* renamed from: d */
    public boolean m5133d() {
        return this.f2816c > 0;
    }
}
