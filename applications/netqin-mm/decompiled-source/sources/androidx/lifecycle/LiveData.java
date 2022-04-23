package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import p012b.p027c.p028a.p029a.C0744a;
import p012b.p027c.p028a.p030b.C0751b;
import p012b.p068o.AbstractC1106d;
import p012b.p068o.AbstractC1109g;
import p012b.p068o.AbstractC1117m;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData.class */
public abstract class LiveData<T> {

    /* renamed from: i */
    public static final Object f1381i = new Object();

    /* renamed from: a */
    public final Object f1382a = new Object();

    /* renamed from: b */
    public C0751b<AbstractC1117m<? super T>, LiveData<T>.AbstractC0233b> f1383b = new C0751b<>();

    /* renamed from: c */
    public int f1384c = 0;

    /* renamed from: d */
    public volatile Object f1385d = f1381i;

    /* renamed from: e */
    public volatile Object f1386e = f1381i;

    /* renamed from: f */
    public int f1387f = -1;

    /* renamed from: g */
    public boolean f1388g;

    /* renamed from: h */
    public boolean f1389h;

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$LifecycleBoundObserver.class */
    public class LifecycleBoundObserver extends LiveData<T>.AbstractC0233b implements AbstractC1106d {

        /* renamed from: e */
        public final AbstractC1109g f1390e;

        public LifecycleBoundObserver(AbstractC1109g gVar, AbstractC1117m<? super T> mVar) {
            super(mVar);
            this.f1390e = gVar;
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0233b
        /* renamed from: a */
        public void mo38319a() {
            this.f1390e.mo34644a().mo34654b(this);
        }

        @Override // p012b.p068o.AbstractC1107e
        /* renamed from: a */
        public void mo34664a(AbstractC1109g gVar, Lifecycle.Event event) {
            if (this.f1390e.mo34644a().mo34663a() == Lifecycle.State.DESTROYED) {
                LiveData.this.mo34617a((AbstractC1117m) this.f1393a);
            } else {
                m38318a(mo38317b());
            }
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0233b
        /* renamed from: b */
        public boolean mo38317b() {
            return this.f1390e.mo34644a().mo34663a().isAtLeast(Lifecycle.State.STARTED);
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0233b
        /* renamed from: g */
        public boolean mo38316g(AbstractC1109g gVar) {
            return this.f1390e == gVar;
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$a.class */
    public class RunnableC0232a implements Runnable {
        public RunnableC0232a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.f1382a) {
                obj = LiveData.this.f1386e;
                LiveData.this.f1386e = LiveData.f1381i;
            }
            LiveData.this.mo34616a((LiveData) obj);
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$b.class */
    public abstract class AbstractC0233b {

        /* renamed from: a */
        public final AbstractC1117m<? super T> f1393a;

        /* renamed from: b */
        public boolean f1394b;

        /* renamed from: c */
        public int f1395c = -1;

        public AbstractC0233b(AbstractC1117m<? super T> mVar) {
            this.f1393a = mVar;
        }

        /* renamed from: a */
        public void mo38319a() {
        }

        /* renamed from: a */
        public void m38318a(boolean z) {
            if (z != this.f1394b) {
                this.f1394b = z;
                int i = 1;
                boolean z2 = LiveData.this.f1384c == 0;
                LiveData liveData = LiveData.this;
                int i2 = liveData.f1384c;
                if (!this.f1394b) {
                    i = -1;
                }
                liveData.f1384c = i2 + i;
                if (z2 && this.f1394b) {
                    LiveData.this.mo34618a();
                }
                LiveData liveData2 = LiveData.this;
                if (liveData2.f1384c == 0 && !this.f1394b) {
                    liveData2.mo34613b();
                }
                if (this.f1394b) {
                    LiveData.this.m38320b(this);
                }
            }
        }

        /* renamed from: b */
        public abstract boolean mo38317b();

        /* renamed from: g */
        public boolean mo38316g(AbstractC1109g gVar) {
            return false;
        }
    }

    public LiveData() {
        new RunnableC0232a();
    }

    /* renamed from: a */
    public static void m38321a(String str) {
        if (!C0744a.m36148b().mo36147a()) {
            throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
        }
    }

    /* renamed from: a */
    public void mo34618a() {
    }

    /* renamed from: a */
    public final void m38323a(LiveData<T>.AbstractC0233b bVar) {
        if (bVar.f1394b) {
            if (!bVar.mo38317b()) {
                bVar.m38318a(false);
                return;
            }
            int i = bVar.f1395c;
            int i2 = this.f1387f;
            if (i < i2) {
                bVar.f1395c = i2;
                bVar.f1393a.m34636a((Object) this.f1385d);
            }
        }
    }

    /* renamed from: a */
    public void m38322a(AbstractC1109g gVar, AbstractC1117m<? super T> mVar) {
        m38321a("observe");
        if (gVar.mo34644a().mo34663a() != Lifecycle.State.DESTROYED) {
            LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(gVar, mVar);
            LiveData<T>.AbstractC0233b b = this.f1383b.mo36139b(mVar, lifecycleBoundObserver);
            if (b != null && !b.mo38316g(gVar)) {
                throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
            } else if (b == null) {
                gVar.mo34644a().mo34659a(lifecycleBoundObserver);
            }
        }
    }

    /* renamed from: a */
    public void mo34617a(AbstractC1117m<? super T> mVar) {
        m38321a("removeObserver");
        LiveData<T>.AbstractC0233b remove = this.f1383b.remove(mVar);
        if (remove != null) {
            remove.mo38319a();
            remove.m38318a(false);
        }
    }

    /* renamed from: a */
    public void mo34616a(T t) {
        m38321a("setValue");
        this.f1387f++;
        this.f1385d = t;
        m38320b(null);
    }

    /* renamed from: b */
    public void mo34613b() {
    }

    /* renamed from: b */
    public void m38320b(LiveData<T>.AbstractC0233b bVar) {
        if (this.f1388g) {
            this.f1389h = true;
            return;
        }
        this.f1388g = true;
        LiveData<T>.AbstractC0233b bVar2 = bVar;
        do {
            this.f1389h = false;
            if (bVar2 == null) {
                C0751b<AbstractC1117m<? super T>, LiveData<T>.AbstractC0233b>.C0755d b = this.f1383b.m36140b();
                while (true) {
                    bVar2 = bVar2;
                    if (!b.hasNext()) {
                        break;
                    }
                    m38323a((AbstractC0233b) ((AbstractC0233b) b.next().getValue()));
                    if (this.f1389h) {
                        bVar2 = bVar2;
                        break;
                    }
                }
            } else {
                m38323a((AbstractC0233b) bVar2);
                bVar2 = null;
            }
        } while (this.f1389h);
        this.f1388g = false;
    }
}
