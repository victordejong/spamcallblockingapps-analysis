package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.Lifecycle;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData.class */
public abstract class LiveData<T> {

    /* renamed from: j */
    static final Object f4031j = new Object();

    /* renamed from: g */
    private boolean f4038g;

    /* renamed from: h */
    private boolean f4039h;

    /* renamed from: a */
    final Object f4032a = new Object();

    /* renamed from: b */
    private SafeIterableMap<Observer<? super T>, LiveData<T>.ObserverWrapper> f4033b = new SafeIterableMap<>();

    /* renamed from: c */
    int f4034c = 0;

    /* renamed from: e */
    volatile Object f4036e = f4031j;

    /* renamed from: i */
    private final Runnable f4040i = new Runnable() { // from class: androidx.lifecycle.LiveData.1
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.f4032a) {
                obj = LiveData.this.f4036e;
                LiveData.this.f4036e = LiveData.f4031j;
            }
            LiveData.this.mo18127o(obj);
        }
    };

    /* renamed from: d */
    private volatile Object f4035d = f4031j;

    /* renamed from: f */
    private int f4037f = -1;

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$AlwaysActiveObserver.class */
    private class AlwaysActiveObserver extends LiveData<T>.ObserverWrapper {
        AlwaysActiveObserver(LiveData liveData, Observer<? super T> observer) {
            super(observer);
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        /* renamed from: k */
        boolean mo18193k() {
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$LifecycleBoundObserver.class */
    class LifecycleBoundObserver extends LiveData<T>.ObserverWrapper implements LifecycleEventObserver {
        @NonNull

        /* renamed from: j */
        final LifecycleOwner f4042j;

        LifecycleBoundObserver(@NonNull LifecycleOwner lifecycleOwner, Observer<? super T> observer) {
            super(observer);
            this.f4042j = lifecycleOwner;
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        /* renamed from: c */
        public void mo16457c(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
            if (this.f4042j.getLifecycle().mo18230b() == Lifecycle.State.DESTROYED) {
                LiveData.this.mo18128m(this.f4044f);
            } else {
                m18196h(mo18193k());
            }
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        /* renamed from: i */
        void mo18195i() {
            this.f4042j.getLifecycle().mo18229c(this);
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        /* renamed from: j */
        boolean mo18194j(LifecycleOwner lifecycleOwner) {
            return this.f4042j == lifecycleOwner;
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        /* renamed from: k */
        boolean mo18193k() {
            return this.f4042j.getLifecycle().mo18230b().isAtLeast(Lifecycle.State.STARTED);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$ObserverWrapper.class */
    public abstract class ObserverWrapper {

        /* renamed from: f */
        final Observer<? super T> f4044f;

        /* renamed from: g */
        boolean f4045g;

        /* renamed from: h */
        int f4046h = -1;

        ObserverWrapper(Observer<? super T> observer) {
            this.f4044f = observer;
        }

        /* renamed from: h */
        void m18196h(boolean z) {
            if (z != this.f4045g) {
                this.f4045g = z;
                int i = 1;
                boolean z2 = LiveData.this.f4034c == 0;
                LiveData liveData = LiveData.this;
                int i2 = liveData.f4034c;
                if (!this.f4045g) {
                    i = -1;
                }
                liveData.f4034c = i2 + i;
                if (z2 && this.f4045g) {
                    LiveData.this.mo6383j();
                }
                LiveData liveData2 = LiveData.this;
                if (liveData2.f4034c == 0 && !this.f4045g) {
                    liveData2.mo6382k();
                }
                if (this.f4045g) {
                    LiveData.this.m18203d(this);
                }
            }
        }

        /* renamed from: i */
        void mo18195i() {
        }

        /* renamed from: j */
        boolean mo18194j(LifecycleOwner lifecycleOwner) {
            return false;
        }

        /* renamed from: k */
        abstract boolean mo18193k();
    }

    /* renamed from: b */
    static void m18205b(String str) {
        if (!ArchTaskExecutor.m21145e().mo21142b()) {
            throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
        }
    }

    /* renamed from: c */
    private void m18204c(LiveData<T>.ObserverWrapper observerWrapper) {
        if (observerWrapper.f4045g) {
            if (!observerWrapper.mo18193k()) {
                observerWrapper.m18196h(false);
                return;
            }
            int i = observerWrapper.f4046h;
            int i2 = this.f4037f;
            if (i < i2) {
                observerWrapper.f4046h = i2;
                observerWrapper.f4044f.mo6485a((Object) this.f4035d);
            }
        }
    }

    /* renamed from: d */
    void m18203d(@Nullable LiveData<T>.ObserverWrapper observerWrapper) {
        if (this.f4038g) {
            this.f4039h = true;
            return;
        }
        this.f4038g = true;
        LiveData<T>.ObserverWrapper observerWrapper2 = observerWrapper;
        do {
            this.f4039h = false;
            if (observerWrapper2 == null) {
                SafeIterableMap<Observer<? super T>, LiveData<T>.ObserverWrapper>.IteratorWithAdditions e = this.f4033b.m21137e();
                while (true) {
                    observerWrapper2 = observerWrapper2;
                    if (!e.hasNext()) {
                        break;
                    }
                    m18204c((ObserverWrapper) e.next().getValue());
                    if (this.f4039h) {
                        observerWrapper2 = observerWrapper2;
                        break;
                    }
                }
            } else {
                m18204c(observerWrapper2);
                observerWrapper2 = null;
            }
        } while (this.f4039h);
        this.f4038g = false;
    }

    @Nullable
    /* renamed from: e */
    public T m18202e() {
        T t = (T) this.f4035d;
        if (t != f4031j) {
            return t;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public int m18201f() {
        return this.f4037f;
    }

    /* renamed from: g */
    public boolean m18200g() {
        return this.f4034c > 0;
    }

    @MainThread
    /* renamed from: h */
    public void m18199h(@NonNull LifecycleOwner lifecycleOwner, @NonNull Observer<? super T> observer) {
        m18205b("observe");
        if (lifecycleOwner.getLifecycle().mo18230b() != Lifecycle.State.DESTROYED) {
            LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(lifecycleOwner, observer);
            LiveData<T>.ObserverWrapper h = this.f4033b.mo21134h(observer, lifecycleBoundObserver);
            if (h != null && !h.mo18194j(lifecycleOwner)) {
                throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
            } else if (h == null) {
                lifecycleOwner.getLifecycle().mo18231a(lifecycleBoundObserver);
            }
        }
    }

    @MainThread
    /* renamed from: i */
    public void m18198i(@NonNull Observer<? super T> observer) {
        m18205b("observeForever");
        AlwaysActiveObserver alwaysActiveObserver = new AlwaysActiveObserver(this, observer);
        LiveData<T>.ObserverWrapper h = this.f4033b.mo21134h(observer, alwaysActiveObserver);
        if (h instanceof LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        } else if (h == null) {
            alwaysActiveObserver.m18196h(true);
        }
    }

    /* renamed from: j */
    protected void mo6383j() {
    }

    /* renamed from: k */
    protected void mo6382k() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: l */
    public void mo18188l(T t) {
        boolean z;
        synchronized (this.f4032a) {
            z = this.f4036e == f4031j;
            this.f4036e = t;
        }
        if (z) {
            ArchTaskExecutor.m21145e().mo21141c(this.f4040i);
        }
    }

    @MainThread
    /* renamed from: m */
    public void mo18128m(@NonNull Observer<? super T> observer) {
        m18205b("removeObserver");
        LiveData<T>.ObserverWrapper j = this.f4033b.mo21133j(observer);
        if (j != null) {
            j.mo18195i();
            j.m18196h(false);
        }
    }

    @MainThread
    /* renamed from: n */
    public void m18197n(@NonNull LifecycleOwner lifecycleOwner) {
        m18205b("removeObservers");
        Iterator<Map.Entry<Observer<? super T>, LiveData<T>.ObserverWrapper>> it = this.f4033b.iterator();
        while (it.hasNext()) {
            Map.Entry<Observer<? super T>, LiveData<T>.ObserverWrapper> next = it.next();
            if (next.getValue().mo18194j(lifecycleOwner)) {
                mo18128m(next.getKey());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @MainThread
    /* renamed from: o */
    public void mo18127o(T t) {
        m18205b("setValue");
        this.f4037f++;
        this.f4035d = t;
        m18203d(null);
    }
}
