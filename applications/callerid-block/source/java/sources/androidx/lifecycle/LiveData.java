package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import d.b.a.a.a;
import d.b.a.b.b;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData.class */
public abstract class LiveData<T> {

    /* renamed from: j */
    static final Object f2033j = new Object();

    /* renamed from: d */
    private volatile Object f2037d;

    /* renamed from: e */
    volatile Object f2038e;

    /* renamed from: g */
    private boolean f2040g;

    /* renamed from: h */
    private boolean f2041h;

    /* renamed from: a */
    final Object f2034a = new Object();

    /* renamed from: b */
    private b<AbstractC0363n<? super T>, LiveData<T>.AbstractC0350b> f2035b = new b<>();

    /* renamed from: c */
    int f2036c = 0;

    /* renamed from: i */
    private final Runnable f2042i = new RunnableC0349a();

    /* renamed from: f */
    private int f2039f = -1;

    /* renamed from: androidx.lifecycle.LiveData$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$a.class */
    class RunnableC0349a implements Runnable {
        RunnableC0349a() {
            LiveData.this = r4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.f2034a) {
                obj = LiveData.this.f2038e;
                LiveData.this.f2038e = LiveData.f2033j;
            }
            LiveData.this.m13008i(obj);
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$b.class */
    public abstract class AbstractC0350b {

        /* renamed from: b */
        final AbstractC0363n<? super T> f2044b;

        /* renamed from: c */
        boolean f2045c;

        /* renamed from: d */
        int f2046d = -1;

        AbstractC0350b(AbstractC0363n<? super T> abstractC0363n) {
            LiveData.this = r4;
            this.f2044b = abstractC0363n;
        }

        /* renamed from: h */
        void m13007h(boolean z) {
            if (z == this.f2045c) {
                return;
            }
            this.f2045c = z;
            LiveData liveData = LiveData.this;
            int i = liveData.f2036c;
            int i2 = 1;
            boolean z2 = i == 0;
            if (!z) {
                i2 = -1;
            }
            liveData.f2036c = i + i2;
            if (z2 && z) {
                liveData.m13012e();
            }
            LiveData liveData2 = LiveData.this;
            if (liveData2.f2036c == 0 && !this.f2045c) {
                liveData2.m13011f();
            }
            if (!this.f2045c) {
                return;
            }
            LiveData.this.m13014c(this);
        }

        /* renamed from: i */
        void m13006i() {
        }

        /* renamed from: j */
        boolean m13005j(AbstractC0360h abstractC0360h) {
            return false;
        }

        /* renamed from: k */
        abstract boolean m13004k();
    }

    public LiveData() {
        Object obj = f2033j;
        this.f2038e = obj;
        this.f2037d = obj;
    }

    /* renamed from: a */
    static void m13016a(String str) {
        if (a.e().b()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    /* renamed from: b */
    private void m13015b(LiveData<T>.AbstractC0350b abstractC0350b) {
        if (!abstractC0350b.f2045c) {
            return;
        }
        if (!abstractC0350b.m13004k()) {
            abstractC0350b.m13007h(false);
            return;
        }
        int i = abstractC0350b.f2046d;
        int i2 = this.f2039f;
        if (i >= i2) {
            return;
        }
        abstractC0350b.f2046d = i2;
        abstractC0350b.f2044b.m12974a((Object) this.f2037d);
    }

    /* renamed from: c */
    void m13014c(LiveData<T>.AbstractC0350b abstractC0350b) {
        LiveData<T>.AbstractC0350b abstractC0350b2;
        if (this.f2040g) {
            this.f2041h = true;
            return;
        }
        this.f2040g = true;
        do {
            this.f2041h = false;
            if (abstractC0350b == null) {
                b.d p = this.f2035b.p();
                while (true) {
                    abstractC0350b2 = abstractC0350b;
                    if (!p.hasNext()) {
                        break;
                    }
                    m13015b((AbstractC0350b) ((Map.Entry) p.next()).getValue());
                    if (this.f2041h) {
                        abstractC0350b2 = abstractC0350b;
                        break;
                    }
                }
            } else {
                m13015b(abstractC0350b);
                abstractC0350b2 = null;
            }
            abstractC0350b = abstractC0350b2;
        } while (this.f2041h);
        this.f2040g = false;
    }

    /* renamed from: d */
    public void m13013d(AbstractC0360h abstractC0360h, AbstractC0363n<? super T> abstractC0363n) {
        m13016a("observe");
        if (abstractC0360h.m12984a().m13018b() == Lifecycle.State.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(this, abstractC0360h, abstractC0363n);
        AbstractC0350b abstractC0350b = (AbstractC0350b) this.f2035b.x(abstractC0363n, lifecycleBoundObserver);
        if (abstractC0350b != null && !abstractC0350b.m13005j(abstractC0360h)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (abstractC0350b != null) {
            return;
        }
        abstractC0360h.m12984a().m13019a(lifecycleBoundObserver);
    }

    /* renamed from: e */
    protected void m13012e() {
    }

    /* renamed from: f */
    protected void m13011f() {
    }

    /* renamed from: g */
    protected void m13010g(T t) {
        boolean z;
        synchronized (this.f2034a) {
            z = this.f2038e == f2033j;
            this.f2038e = t;
        }
        if (!z) {
            return;
        }
        a.e().c(this.f2042i);
    }

    /* renamed from: h */
    public void m13009h(AbstractC0363n<? super T> abstractC0363n) {
        m13016a("removeObserver");
        AbstractC0350b abstractC0350b = (AbstractC0350b) this.f2035b.A(abstractC0363n);
        if (abstractC0350b == null) {
            return;
        }
        abstractC0350b.m13006i();
        abstractC0350b.m13007h(false);
    }

    /* renamed from: i */
    protected void m13008i(T t) {
        m13016a("setValue");
        this.f2039f++;
        this.f2037d = t;
        m13014c(null);
    }
}
