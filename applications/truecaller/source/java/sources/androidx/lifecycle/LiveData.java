package androidx.lifecycle;

import java.util.Map;
import p1727n3.p1746c.p1747a.p1748a.C25628a;
import p1727n3.p1746c.p1747a.p1749b.C25635b;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC27012l0;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.C26994c0;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData.class */
public abstract class LiveData<T> {

    /* renamed from: k */
    public static final Object f909k = new Object();

    /* renamed from: a */
    public final Object f910a;

    /* renamed from: b */
    public C25635b<AbstractC27012l0<? super T>, LiveData<T>.AbstractC0199c> f911b;

    /* renamed from: c */
    public int f912c;

    /* renamed from: d */
    public boolean f913d;

    /* renamed from: e */
    public volatile Object f914e;

    /* renamed from: f */
    public volatile Object f915f;

    /* renamed from: g */
    public int f916g;

    /* renamed from: h */
    public boolean f917h;

    /* renamed from: i */
    public boolean f918i;

    /* renamed from: j */
    public final Runnable f919j;

    /* renamed from: androidx.lifecycle.LiveData$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$a.class */
    public class RunnableC0197a implements Runnable {
        public RunnableC0197a() {
            LiveData.this = r4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.f910a) {
                obj = LiveData.this.f915f;
                LiveData.this.f915f = LiveData.f909k;
            }
            LiveData.this.mo1000l(obj);
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$b.class */
    public class C0198b extends LiveData<T>.AbstractC0199c {
        public C0198b(LiveData liveData, AbstractC27012l0<? super T> abstractC27012l0) {
            super(abstractC27012l0);
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0199c
        /* renamed from: d */
        public boolean mo42861d() {
            return true;
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$c */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$c.class */
    public abstract class AbstractC0199c {

        /* renamed from: a */
        public final AbstractC27012l0<? super T> f921a;

        /* renamed from: b */
        public boolean f922b;

        /* renamed from: c */
        public int f923c = -1;

        public AbstractC0199c(AbstractC27012l0<? super T> abstractC27012l0) {
            LiveData.this = r4;
            this.f921a = abstractC27012l0;
        }

        /* renamed from: a */
        public void m42864a(boolean z) {
            if (z == this.f922b) {
                return;
            }
            this.f922b = z;
            LiveData liveData = LiveData.this;
            int i = z ? 1 : -1;
            int i2 = liveData.f912c;
            liveData.f912c = i + i2;
            if (!liveData.f913d) {
                liveData.f913d = true;
                while (true) {
                    try {
                        int i3 = liveData.f912c;
                        if (i2 == i3) {
                            break;
                        }
                        boolean z2 = i2 == 0 && i3 > 0;
                        boolean z3 = i2 > 0 && i3 == 0;
                        if (z2) {
                            liveData.mo3056h();
                        } else if (z3) {
                            liveData.mo3055i();
                        }
                        i2 = i3;
                    } finally {
                        liveData.f913d = false;
                    }
                }
            }
            if (!this.f922b) {
                return;
            }
            LiveData.this.m42870c(this);
        }

        /* renamed from: b */
        public void m42863b() {
        }

        /* renamed from: c */
        public boolean m42862c(AbstractC26992b0 abstractC26992b0) {
            return false;
        }

        /* renamed from: d */
        public abstract boolean mo42861d();
    }

    public LiveData() {
        this.f910a = new Object();
        this.f911b = new C25635b<>();
        this.f912c = 0;
        Object obj = f909k;
        this.f915f = obj;
        this.f919j = new RunnableC0197a();
        this.f914e = obj;
        this.f916g = -1;
    }

    public LiveData(T t) {
        this.f910a = new Object();
        this.f911b = new C25635b<>();
        this.f912c = 0;
        this.f915f = f909k;
        this.f919j = new RunnableC0197a();
        this.f914e = t;
        this.f916g = 0;
    }

    /* renamed from: a */
    public static void m42872a(String str) {
        if (C25628a.m3112d().mo3109b()) {
            return;
        }
        throw new IllegalStateException(C22128a.m8725C2("Cannot invoke ", str, " on a background thread"));
    }

    /* renamed from: b */
    public final void m42871b(LiveData<T>.AbstractC0199c abstractC0199c) {
        if (!abstractC0199c.f922b) {
            return;
        }
        if (!abstractC0199c.mo42861d()) {
            abstractC0199c.m42864a(false);
            return;
        }
        int i = abstractC0199c.f923c;
        int i2 = this.f916g;
        if (i >= i2) {
            return;
        }
        abstractC0199c.f923c = i2;
        abstractC0199c.f921a.onChanged((Object) this.f914e);
    }

    /* renamed from: c */
    public void m42870c(LiveData<T>.AbstractC0199c abstractC0199c) {
        LiveData<T>.AbstractC0199c abstractC0199c2;
        if (this.f917h) {
            this.f918i = true;
            return;
        }
        this.f917h = true;
        do {
            this.f918i = false;
            if (abstractC0199c == null) {
                C25635b<AbstractC27012l0<? super T>, LiveData<T>.AbstractC0199c>.C25637d m3106b = this.f911b.m3106b();
                while (true) {
                    abstractC0199c2 = abstractC0199c;
                    if (!m3106b.hasNext()) {
                        break;
                    }
                    m42871b((AbstractC0199c) ((Map.Entry) m3106b.next()).getValue());
                    if (this.f918i) {
                        abstractC0199c2 = abstractC0199c;
                        break;
                    }
                }
            } else {
                m42871b(abstractC0199c);
                abstractC0199c2 = null;
            }
            abstractC0199c = abstractC0199c2;
        } while (this.f918i);
        this.f917h = false;
    }

    /* renamed from: d */
    public T m42869d() {
        T t = (T) this.f914e;
        if (t != f909k) {
            return t;
        }
        return null;
    }

    /* renamed from: e */
    public boolean m42868e() {
        return this.f912c > 0;
    }

    /* renamed from: f */
    public void m42867f(AbstractC26992b0 abstractC26992b0, AbstractC27012l0<? super T> abstractC27012l0) {
        m42872a("observe");
        if (((C26994c0) abstractC26992b0.getLifecycle()).f75501c == AbstractC27028u.EnumC27030b.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(this, abstractC26992b0, abstractC27012l0);
        LiveData<T>.AbstractC0199c mo3104d = this.f911b.mo3104d(abstractC27012l0, lifecycleBoundObserver);
        if (mo3104d != null && !mo3104d.m42862c(abstractC26992b0)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (mo3104d != null) {
            return;
        }
        abstractC26992b0.getLifecycle().mo988a(lifecycleBoundObserver);
    }

    /* renamed from: g */
    public void m42866g(AbstractC27012l0<? super T> abstractC27012l0) {
        m42872a("observeForever");
        C0198b c0198b = new C0198b(this, abstractC27012l0);
        LiveData<T>.AbstractC0199c mo3104d = this.f911b.mo3104d(abstractC27012l0, c0198b);
        if (!(mo3104d instanceof LifecycleBoundObserver)) {
            if (mo3104d != null) {
                return;
            }
            c0198b.m42864a(true);
            return;
        }
        throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
    }

    /* renamed from: h */
    public void mo3056h() {
    }

    /* renamed from: i */
    public void mo3055i() {
    }

    /* renamed from: j */
    public void mo1001j(T t) {
        boolean z;
        synchronized (this.f910a) {
            z = this.f915f == f909k;
            this.f915f = t;
        }
        if (!z) {
            return;
        }
        C25628a.m3112d().f71803a.mo3108c(this.f919j);
    }

    /* renamed from: k */
    public void m42865k(AbstractC27012l0<? super T> abstractC27012l0) {
        m42872a("removeObserver");
        LiveData<T>.AbstractC0199c mo3103e = this.f911b.mo3103e(abstractC27012l0);
        if (mo3103e == null) {
            return;
        }
        mo3103e.m42863b();
        mo3103e.m42864a(false);
    }

    /* renamed from: l */
    public void mo1000l(T t) {
        m42872a("setValue");
        this.f916g++;
        this.f914e = t;
        m42870c(null);
    }
}
