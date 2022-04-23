package androidx.lifecycle;

import androidx.lifecycle.j;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData.class */
public abstract class LiveData<T> {

    /* renamed from: b  reason: collision with root package name */
    public static final Object f2535b = new Object();

    /* renamed from: a  reason: collision with root package name */
    final Object f2536a;

    /* renamed from: c  reason: collision with root package name */
    public androidx.a.a.b.b<u<? super T>, LiveData<T>.b> f2537c;

    /* renamed from: d  reason: collision with root package name */
    int f2538d;
    public volatile Object e;
    volatile Object f;
    private boolean g;
    private int h;
    private boolean i;
    private boolean j;
    private final Runnable k;

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$LifecycleBoundObserver.class */
    public class LifecycleBoundObserver extends LiveData<T>.b implements n {

        /* renamed from: a  reason: collision with root package name */
        final p f2540a;

        LifecycleBoundObserver(p pVar, u<? super T> uVar) {
            super(uVar);
            this.f2540a = pVar;
        }

        @Override // androidx.lifecycle.n
        public final void a(p pVar, j.a aVar) {
            j.b currentState = this.f2540a.getLifecycle().getCurrentState();
            if (currentState == j.b.DESTROYED) {
                LiveData.this.a((u) this.f2543c);
                return;
            }
            for (j.b bVar = null; bVar != currentState; bVar = currentState) {
                a(a());
                currentState = this.f2540a.getLifecycle().getCurrentState();
            }
        }

        @Override // androidx.lifecycle.LiveData.b
        final boolean a() {
            return this.f2540a.getLifecycle().getCurrentState().isAtLeast(j.b.STARTED);
        }

        @Override // androidx.lifecycle.LiveData.b
        final boolean a(p pVar) {
            return this.f2540a == pVar;
        }

        @Override // androidx.lifecycle.LiveData.b
        final void b() {
            this.f2540a.getLifecycle().removeObserver(this);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$a.class */
    public final class a extends LiveData<T>.b {
        public a(u<? super T> uVar) {
            super(uVar);
        }

        @Override // androidx.lifecycle.LiveData.b
        final boolean a() {
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$b.class */
    public abstract class b {

        /* renamed from: c  reason: collision with root package name */
        final u<? super T> f2543c;

        /* renamed from: d  reason: collision with root package name */
        boolean f2544d;
        int e = -1;

        b(u<? super T> uVar) {
            this.f2543c = uVar;
        }

        public final void a(boolean z) {
            if (z != this.f2544d) {
                this.f2544d = z;
                LiveData.this.a(z ? 1 : -1);
                if (this.f2544d) {
                    LiveData.this.a(this);
                }
            }
        }

        abstract boolean a();

        boolean a(p pVar) {
            return false;
        }

        void b() {
        }
    }

    public LiveData() {
        this.f2536a = new Object();
        this.f2537c = new androidx.a.a.b.b<>();
        this.f2538d = 0;
        Object obj = f2535b;
        this.f = obj;
        this.k = new Runnable() { // from class: androidx.lifecycle.LiveData.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public final void run() {
                Object obj2;
                synchronized (LiveData.this.f2536a) {
                    obj2 = LiveData.this.f;
                    LiveData.this.f = LiveData.f2535b;
                }
                LiveData.this.b((LiveData) obj2);
            }
        };
        this.e = obj;
        this.h = -1;
    }

    public LiveData(T t) {
        this.f2536a = new Object();
        this.f2537c = new androidx.a.a.b.b<>();
        this.f2538d = 0;
        this.f = f2535b;
        this.k = new Runnable() { // from class: androidx.lifecycle.LiveData.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public final void run() {
                Object obj2;
                synchronized (LiveData.this.f2536a) {
                    obj2 = LiveData.this.f;
                    LiveData.this.f = LiveData.f2535b;
                }
                LiveData.this.b((LiveData) obj2);
            }
        };
        this.e = t;
        this.h = 0;
    }

    public static void a(String str) {
        if (!androidx.a.a.a.a.a().f490a.c()) {
            throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
        }
    }

    private void b(LiveData<T>.b bVar) {
        if (bVar.f2544d) {
            if (!bVar.a()) {
                bVar.a(false);
                return;
            }
            int i = bVar.e;
            int i2 = this.h;
            if (i < i2) {
                bVar.e = i2;
                bVar.f2543c.onChanged((Object) this.e);
            }
        }
    }

    public void a() {
    }

    final void a(int i) {
        int i2 = this.f2538d;
        this.f2538d = i + i2;
        if (!this.g) {
            this.g = true;
            while (true) {
                try {
                    int i3 = this.f2538d;
                    if (i2 != i3) {
                        boolean z = i2 == 0 && i3 > 0;
                        boolean z2 = i2 > 0 && i3 == 0;
                        if (z) {
                            a();
                        } else if (z2) {
                            b();
                        }
                        i2 = i3;
                    } else {
                        return;
                    }
                } finally {
                    this.g = false;
                }
            }
        }
    }

    final void a(LiveData<T>.b bVar) {
        if (this.i) {
            this.j = true;
            return;
        }
        this.i = true;
        do {
            this.j = false;
            if (bVar == null) {
                androidx.a.a.b.b<u<? super T>, LiveData<T>.b>.d a2 = this.f2537c.a();
                while (true) {
                    bVar = bVar;
                    if (!a2.hasNext()) {
                        break;
                    }
                    b((b) ((b) a2.next().getValue()));
                    if (this.j) {
                        bVar = bVar;
                        break;
                    }
                }
            } else {
                b((b) bVar);
                bVar = null;
            }
        } while (this.j);
        this.i = false;
    }

    public final void a(p pVar, u<? super T> uVar) {
        a("observe");
        if (pVar.getLifecycle().getCurrentState() != j.b.DESTROYED) {
            LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(pVar, uVar);
            LiveData<T>.b a2 = this.f2537c.a(uVar, lifecycleBoundObserver);
            if (a2 != null && !a2.a(pVar)) {
                throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
            } else if (a2 == null) {
                pVar.getLifecycle().addObserver(lifecycleBoundObserver);
            }
        }
    }

    public void a(u<? super T> uVar) {
        a("removeObserver");
        LiveData<T>.b b2 = this.f2537c.b(uVar);
        if (b2 != null) {
            b2.b();
            b2.a(false);
        }
    }

    public void a(T t) {
        boolean z;
        synchronized (this.f2536a) {
            z = this.f == f2535b;
            this.f = t;
        }
        if (z) {
            androidx.a.a.a.a.a().b(this.k);
        }
    }

    public void b() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(T t) {
        a("setValue");
        this.h++;
        this.e = t;
        a((b) null);
    }

    public final boolean c() {
        return this.f2538d > 0;
    }
}
