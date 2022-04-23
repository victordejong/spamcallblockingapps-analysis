package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.internal.FastSafeIterableMap;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.Lifecycle;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleRegistry.class */
public class LifecycleRegistry extends Lifecycle {

    /* renamed from: d */
    private final WeakReference<LifecycleOwner> f4018d;

    /* renamed from: b */
    private FastSafeIterableMap<LifecycleObserver, ObserverWithState> f4016b = new FastSafeIterableMap<>();

    /* renamed from: e */
    private int f4019e = 0;

    /* renamed from: f */
    private boolean f4020f = false;

    /* renamed from: g */
    private boolean f4021g = false;

    /* renamed from: h */
    private ArrayList<Lifecycle.State> f4022h = new ArrayList<>();

    /* renamed from: c */
    private Lifecycle.State f4017c = Lifecycle.State.INITIALIZED;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.LifecycleRegistry$1 */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleRegistry$1.class */
    public static /* synthetic */ class C03691 {

        /* renamed from: a */
        static final /* synthetic */ int[] f4023a;

        /* renamed from: b */
        static final /* synthetic */ int[] f4024b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0099 -> B:44:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:62:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:56:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:48:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:12:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:60:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:54:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:46:0x006a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:40:0x0075). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bd -> B:58:0x0080). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c1 -> B:52:0x008c). Please submit an issue!!! */
        static {
            int[] iArr = new int[Lifecycle.State.values().length];
            f4024b = iArr;
            try {
                iArr[Lifecycle.State.INITIALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4024b[Lifecycle.State.CREATED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4024b[Lifecycle.State.STARTED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4024b[Lifecycle.State.RESUMED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f4024b[Lifecycle.State.DESTROYED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            int[] iArr2 = new int[Lifecycle.Event.values().length];
            f4023a = iArr2;
            try {
                iArr2[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f4023a[Lifecycle.Event.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f4023a[Lifecycle.Event.ON_START.ordinal()] = 3;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f4023a[Lifecycle.Event.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f4023a[Lifecycle.Event.ON_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f4023a[Lifecycle.Event.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f4023a[Lifecycle.Event.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleRegistry$ObserverWithState.class */
    public static class ObserverWithState {

        /* renamed from: a */
        Lifecycle.State f4025a;

        /* renamed from: b */
        LifecycleEventObserver f4026b;

        ObserverWithState(LifecycleObserver lifecycleObserver, Lifecycle.State state) {
            this.f4026b = Lifecycling.m18207f(lifecycleObserver);
            this.f4025a = state;
        }

        /* renamed from: a */
        void m18213a(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            Lifecycle.State h = LifecycleRegistry.m18224h(event);
            this.f4025a = LifecycleRegistry.m18220l(this.f4025a, h);
            this.f4026b.mo16457c(lifecycleOwner, event);
            this.f4025a = h;
        }
    }

    public LifecycleRegistry(@NonNull LifecycleOwner lifecycleOwner) {
        this.f4018d = new WeakReference<>(lifecycleOwner);
    }

    /* renamed from: d */
    private void m18228d(LifecycleOwner lifecycleOwner) {
        Iterator<Map.Entry<LifecycleObserver, ObserverWithState>> descendingIterator = this.f4016b.descendingIterator();
        while (descendingIterator.hasNext() && !this.f4021g) {
            Map.Entry<LifecycleObserver, ObserverWithState> next = descendingIterator.next();
            ObserverWithState value = next.getValue();
            while (value.f4025a.compareTo(this.f4017c) > 0 && !this.f4021g && this.f4016b.contains(next.getKey())) {
                Lifecycle.Event f = m18226f(value.f4025a);
                m18217o(m18224h(f));
                value.m18213a(lifecycleOwner, f);
                m18218n();
            }
        }
    }

    /* renamed from: e */
    private Lifecycle.State m18227e(LifecycleObserver lifecycleObserver) {
        Map.Entry<LifecycleObserver, ObserverWithState> k = this.f4016b.m21140k(lifecycleObserver);
        Lifecycle.State state = null;
        Lifecycle.State state2 = k != null ? k.getValue().f4025a : null;
        if (!this.f4022h.isEmpty()) {
            ArrayList<Lifecycle.State> arrayList = this.f4022h;
            state = arrayList.get(arrayList.size() - 1);
        }
        return m18220l(m18220l(this.f4017c, state2), state);
    }

    /* renamed from: f */
    private static Lifecycle.Event m18226f(Lifecycle.State state) {
        int i = C03691.f4024b[state.ordinal()];
        if (i == 1) {
            throw new IllegalArgumentException();
        } else if (i == 2) {
            return Lifecycle.Event.ON_DESTROY;
        } else {
            if (i == 3) {
                return Lifecycle.Event.ON_STOP;
            }
            if (i == 4) {
                return Lifecycle.Event.ON_PAUSE;
            }
            if (i != 5) {
                throw new IllegalArgumentException("Unexpected state value " + state);
            }
            throw new IllegalArgumentException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    private void m18225g(LifecycleOwner lifecycleOwner) {
        SafeIterableMap<LifecycleObserver, ObserverWithState>.IteratorWithAdditions e = this.f4016b.m21137e();
        while (e.hasNext() && !this.f4021g) {
            Map.Entry next = e.next();
            ObserverWithState observerWithState = (ObserverWithState) next.getValue();
            while (observerWithState.f4025a.compareTo(this.f4017c) < 0 && !this.f4021g && this.f4016b.contains(next.getKey())) {
                m18217o(observerWithState.f4025a);
                observerWithState.m18213a(lifecycleOwner, m18214r(observerWithState.f4025a));
                m18218n();
            }
        }
    }

    /* renamed from: h */
    static Lifecycle.State m18224h(Lifecycle.Event event) {
        switch (C03691.f4023a[event.ordinal()]) {
            case 1:
            case 2:
                return Lifecycle.State.CREATED;
            case 3:
            case 4:
                return Lifecycle.State.STARTED;
            case 5:
                return Lifecycle.State.RESUMED;
            case 6:
                return Lifecycle.State.DESTROYED;
            default:
                throw new IllegalArgumentException("Unexpected event value " + event);
        }
    }

    /* renamed from: j */
    private boolean m18222j() {
        boolean z = true;
        if (this.f4016b.size() == 0) {
            return true;
        }
        Lifecycle.State state = this.f4016b.m21139c().getValue().f4025a;
        Lifecycle.State state2 = this.f4016b.m21136f().getValue().f4025a;
        if (!(state == state2 && this.f4017c == state2)) {
            z = false;
        }
        return z;
    }

    /* renamed from: l */
    static Lifecycle.State m18220l(@NonNull Lifecycle.State state, @Nullable Lifecycle.State state2) {
        Lifecycle.State state3 = state;
        if (state2 != null) {
            state3 = state;
            if (state2.compareTo(state) < 0) {
                state3 = state2;
            }
        }
        return state3;
    }

    /* renamed from: m */
    private void m18219m(Lifecycle.State state) {
        if (this.f4017c != state) {
            this.f4017c = state;
            if (this.f4020f || this.f4019e != 0) {
                this.f4021g = true;
                return;
            }
            this.f4020f = true;
            m18215q();
            this.f4020f = false;
        }
    }

    /* renamed from: n */
    private void m18218n() {
        ArrayList<Lifecycle.State> arrayList = this.f4022h;
        arrayList.remove(arrayList.size() - 1);
    }

    /* renamed from: o */
    private void m18217o(Lifecycle.State state) {
        this.f4022h.add(state);
    }

    /* renamed from: q */
    private void m18215q() {
        LifecycleOwner lifecycleOwner = this.f4018d.get();
        if (lifecycleOwner != null) {
            while (!m18222j()) {
                this.f4021g = false;
                if (this.f4017c.compareTo(this.f4016b.m21139c().getValue().f4025a) < 0) {
                    m18228d(lifecycleOwner);
                }
                Map.Entry<LifecycleObserver, ObserverWithState> f = this.f4016b.m21136f();
                if (!this.f4021g && f != null && this.f4017c.compareTo(f.getValue().f4025a) > 0) {
                    m18225g(lifecycleOwner);
                }
            }
            this.f4021g = false;
            return;
        }
        throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
    }

    /* renamed from: r */
    private static Lifecycle.Event m18214r(Lifecycle.State state) {
        int i = C03691.f4024b[state.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return Lifecycle.Event.ON_START;
            }
            if (i == 3) {
                return Lifecycle.Event.ON_RESUME;
            }
            if (i == 4) {
                throw new IllegalArgumentException();
            } else if (i != 5) {
                throw new IllegalArgumentException("Unexpected state value " + state);
            }
        }
        return Lifecycle.Event.ON_CREATE;
    }

    @Override // androidx.lifecycle.Lifecycle
    /* renamed from: a */
    public void mo18231a(@NonNull LifecycleObserver lifecycleObserver) {
        LifecycleOwner lifecycleOwner;
        Lifecycle.State state = this.f4017c;
        Lifecycle.State state2 = Lifecycle.State.DESTROYED;
        if (state != state2) {
            state2 = Lifecycle.State.INITIALIZED;
        }
        ObserverWithState observerWithState = new ObserverWithState(lifecycleObserver, state2);
        if (this.f4016b.mo21134h(lifecycleObserver, observerWithState) == null && (lifecycleOwner = this.f4018d.get()) != null) {
            boolean z = this.f4019e != 0 || this.f4020f;
            Lifecycle.State e = m18227e(lifecycleObserver);
            this.f4019e++;
            while (observerWithState.f4025a.compareTo(e) < 0 && this.f4016b.contains(lifecycleObserver)) {
                m18217o(observerWithState.f4025a);
                observerWithState.m18213a(lifecycleOwner, m18214r(observerWithState.f4025a));
                m18218n();
                e = m18227e(lifecycleObserver);
            }
            if (!z) {
                m18215q();
            }
            this.f4019e--;
        }
    }

    @Override // androidx.lifecycle.Lifecycle
    @NonNull
    /* renamed from: b */
    public Lifecycle.State mo18230b() {
        return this.f4017c;
    }

    @Override // androidx.lifecycle.Lifecycle
    /* renamed from: c */
    public void mo18229c(@NonNull LifecycleObserver lifecycleObserver) {
        this.f4016b.mo21133j(lifecycleObserver);
    }

    /* renamed from: i */
    public void m18223i(@NonNull Lifecycle.Event event) {
        m18219m(m18224h(event));
    }

    @Deprecated
    @MainThread
    /* renamed from: k */
    public void m18221k(@NonNull Lifecycle.State state) {
        m18216p(state);
    }

    @MainThread
    /* renamed from: p */
    public void m18216p(@NonNull Lifecycle.State state) {
        m18219m(state);
    }
}
