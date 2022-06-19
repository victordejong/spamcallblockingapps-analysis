package androidx.lifecycle;

import java.util.Map;
import me;
import z2;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData.class */
public abstract class LiveData<T> {

    /* renamed from: j */
    public static final Object f1015j = new Object();

    /* renamed from: d */
    public volatile Object f1019d;

    /* renamed from: e */
    public volatile Object f1020e;

    /* renamed from: g */
    public boolean f1022g;

    /* renamed from: h */
    public boolean f1023h;

    /* renamed from: a */
    public final Object f1016a = new Object();

    /* renamed from: b */
    public z2<we<? super T>, LiveData<T>.AbstractC0127b> f1017b = new z2<>();

    /* renamed from: c */
    public int f1018c = 0;

    /* renamed from: i */
    public final Runnable f1024i = new RunnableC0126a();

    /* renamed from: f */
    public int f1021f = -1;

    /* renamed from: androidx.lifecycle.LiveData$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$a.class */
    public class RunnableC0126a implements Runnable {
        public RunnableC0126a() {
            LiveData.this = r4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.f1016a) {
                obj = LiveData.this.f1020e;
                LiveData.this.f1020e = LiveData.f1015j;
            }
            LiveData.this.m6584l(obj);
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$b.class */
    public abstract class AbstractC0127b {

        /* renamed from: a */
        public final we<? super T> f1026a;

        /* renamed from: b */
        public boolean f1027b;

        /* renamed from: c */
        public int f1028c = -1;

        public AbstractC0127b(we<? super T> weVar) {
            LiveData.this = r4;
            this.f1026a = weVar;
        }

        /* renamed from: h */
        public void m6583h(boolean z) {
            if (z == this.f1027b) {
                return;
            }
            this.f1027b = z;
            LiveData liveData = LiveData.this;
            int i = liveData.f1018c;
            int i2 = 1;
            boolean z2 = i == 0;
            if (!z) {
                i2 = -1;
            }
            liveData.f1018c = i + i2;
            if (z2 && z) {
                liveData.m6588h();
            }
            LiveData liveData2 = LiveData.this;
            if (liveData2.f1018c == 0 && !this.f1027b) {
                liveData2.m6587i();
            }
            if (!this.f1027b) {
                return;
            }
            LiveData.this.m6592d(this);
        }

        /* renamed from: i */
        public void m6582i() {
        }

        /* renamed from: j */
        public boolean m6581j(qe qeVar) {
            return false;
        }

        /* renamed from: k */
        public abstract boolean m6580k();
    }

    public LiveData() {
        Object obj = f1015j;
        this.f1020e = obj;
        this.f1019d = obj;
    }

    /* renamed from: b */
    public static void m6594b(String str) {
        if (v2.e().b()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    /* renamed from: c */
    public final void m6593c(LiveData<T>.AbstractC0127b abstractC0127b) {
        if (!abstractC0127b.f1027b) {
            return;
        }
        if (!abstractC0127b.m6580k()) {
            abstractC0127b.m6583h(false);
            return;
        }
        int i = abstractC0127b.f1028c;
        int i2 = this.f1021f;
        if (i >= i2) {
            return;
        }
        abstractC0127b.f1028c = i2;
        abstractC0127b.f1026a.a(this.f1019d);
    }

    /* renamed from: d */
    public void m6592d(LiveData<T>.AbstractC0127b abstractC0127b) {
        LiveData<T>.AbstractC0127b abstractC0127b2;
        if (this.f1022g) {
            this.f1023h = true;
            return;
        }
        this.f1022g = true;
        do {
            this.f1023h = false;
            if (abstractC0127b == null) {
                z2.d d = this.f1017b.d();
                while (true) {
                    abstractC0127b2 = abstractC0127b;
                    if (!d.hasNext()) {
                        break;
                    }
                    m6593c((AbstractC0127b) ((Map.Entry) d.next()).getValue());
                    if (this.f1023h) {
                        abstractC0127b2 = abstractC0127b;
                        break;
                    }
                }
            } else {
                m6593c(abstractC0127b);
                abstractC0127b2 = null;
            }
            abstractC0127b = abstractC0127b2;
        } while (this.f1023h);
        this.f1022g = false;
    }

    /* renamed from: e */
    public T m6591e() {
        T t = (T) this.f1019d;
        if (t != f1015j) {
            return t;
        }
        return null;
    }

    /* renamed from: f */
    public boolean m6590f() {
        return this.f1018c > 0;
    }

    /* renamed from: g */
    public void m6589g(qe qeVar, we<? super T> weVar) {
        m6594b("observe");
        if (qeVar.getLifecycle().b() == me.b.a) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(this, qeVar, weVar);
        AbstractC0127b abstractC0127b = (AbstractC0127b) this.f1017b.g(weVar, lifecycleBoundObserver);
        if (abstractC0127b != null && !abstractC0127b.m6581j(qeVar)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (abstractC0127b != null) {
            return;
        }
        qeVar.getLifecycle().a(lifecycleBoundObserver);
    }

    /* renamed from: h */
    public void m6588h() {
    }

    /* renamed from: i */
    public void m6587i() {
    }

    /* renamed from: j */
    public void m6586j(T t) {
        boolean z;
        synchronized (this.f1016a) {
            z = this.f1020e == f1015j;
            this.f1020e = t;
        }
        if (!z) {
            return;
        }
        v2.e().c(this.f1024i);
    }

    /* renamed from: k */
    public void m6585k(we<? super T> weVar) {
        m6594b("removeObserver");
        AbstractC0127b abstractC0127b = (AbstractC0127b) this.f1017b.h(weVar);
        if (abstractC0127b == null) {
            return;
        }
        abstractC0127b.m6582i();
        abstractC0127b.m6583h(false);
    }

    /* renamed from: l */
    public void m6584l(T t) {
        m6594b("setValue");
        this.f1021f++;
        this.f1019d = t;
        m6592d(null);
    }
}
