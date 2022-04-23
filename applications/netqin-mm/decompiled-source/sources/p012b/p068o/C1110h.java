package p012b.p068o;

import androidx.lifecycle.Lifecycle;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import p012b.p027c.p028a.p030b.C0750a;
import p012b.p027c.p028a.p030b.C0751b;
/* renamed from: b.o.h */
/* loaded from: classes-dex2jar.jar:b/o/h.class */
public class C1110h extends Lifecycle {

    /* renamed from: c */
    public final WeakReference<AbstractC1109g> f4611c;

    /* renamed from: a */
    public C0750a<AbstractC1108f, C1112b> f4609a = new C0750a<>();

    /* renamed from: d */
    public int f4612d = 0;

    /* renamed from: e */
    public boolean f4613e = false;

    /* renamed from: f */
    public boolean f4614f = false;

    /* renamed from: g */
    public ArrayList<Lifecycle.State> f4615g = new ArrayList<>();

    /* renamed from: b */
    public Lifecycle.State f4610b = Lifecycle.State.INITIALIZED;

    /* renamed from: b.o.h$a */
    /* loaded from: classes-dex2jar.jar:b/o/h$a.class */
    public static /* synthetic */ class C1111a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f4616a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f4617b;

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
            f4617b = iArr;
            try {
                iArr[Lifecycle.State.INITIALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4617b[Lifecycle.State.CREATED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4617b[Lifecycle.State.STARTED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4617b[Lifecycle.State.RESUMED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f4617b[Lifecycle.State.DESTROYED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            int[] iArr2 = new int[Lifecycle.Event.values().length];
            f4616a = iArr2;
            try {
                iArr2[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f4616a[Lifecycle.Event.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f4616a[Lifecycle.Event.ON_START.ordinal()] = 3;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f4616a[Lifecycle.Event.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f4616a[Lifecycle.Event.ON_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f4616a[Lifecycle.Event.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f4616a[Lifecycle.Event.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    /* renamed from: b.o.h$b */
    /* loaded from: classes-dex2jar.jar:b/o/h$b.class */
    public static class C1112b {

        /* renamed from: a */
        public Lifecycle.State f4618a;

        /* renamed from: b */
        public AbstractC1107e f4619b;

        public C1112b(AbstractC1108f fVar, Lifecycle.State state) {
            this.f4619b = C1114j.m34642a(fVar);
            this.f4618a = state;
        }

        /* renamed from: a */
        public void m34645a(AbstractC1109g gVar, Lifecycle.Event event) {
            Lifecycle.State b = C1110h.m34656b(event);
            this.f4618a = C1110h.m34660a(this.f4618a, b);
            this.f4619b.mo34664a(gVar, event);
            this.f4618a = b;
        }
    }

    public C1110h(AbstractC1109g gVar) {
        this.f4611c = new WeakReference<>(gVar);
    }

    /* renamed from: a */
    public static Lifecycle.State m34660a(Lifecycle.State state, Lifecycle.State state2) {
        Lifecycle.State state3 = state;
        if (state2 != null) {
            state3 = state;
            if (state2.compareTo(state) < 0) {
                state3 = state2;
            }
        }
        return state3;
    }

    /* renamed from: b */
    public static Lifecycle.State m34656b(Lifecycle.Event event) {
        switch (C1111a.f4616a[event.ordinal()]) {
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

    /* renamed from: e */
    public static Lifecycle.Event m34647e(Lifecycle.State state) {
        int i = C1111a.f4617b[state.ordinal()];
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

    /* renamed from: f */
    public static Lifecycle.Event m34646f(Lifecycle.State state) {
        int i = C1111a.f4617b[state.ordinal()];
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
    public Lifecycle.State mo34663a() {
        return this.f4610b;
    }

    /* renamed from: a */
    public void m34662a(Lifecycle.Event event) {
        m34655b(m34656b(event));
    }

    @Deprecated
    /* renamed from: a */
    public void m34661a(Lifecycle.State state) {
        m34648d(state);
    }

    @Override // androidx.lifecycle.Lifecycle
    /* renamed from: a */
    public void mo34659a(AbstractC1108f fVar) {
        AbstractC1109g gVar;
        Lifecycle.State state = this.f4610b;
        Lifecycle.State state2 = Lifecycle.State.DESTROYED;
        if (state != state2) {
            state2 = Lifecycle.State.INITIALIZED;
        }
        C1112b bVar = new C1112b(fVar, state2);
        if (this.f4609a.mo36139b(fVar, bVar) == null && (gVar = this.f4611c.get()) != null) {
            boolean z = this.f4612d != 0 || this.f4613e;
            Lifecycle.State c = m34650c(fVar);
            this.f4612d++;
            while (bVar.f4618a.compareTo(c) < 0 && this.f4609a.contains(fVar)) {
                m34651c(bVar.f4618a);
                bVar.m34645a(gVar, m34646f(bVar.f4618a));
                m34652c();
                c = m34650c(fVar);
            }
            if (!z) {
                m34649d();
            }
            this.f4612d--;
        }
    }

    /* renamed from: a */
    public final void m34658a(AbstractC1109g gVar) {
        Iterator<Map.Entry<AbstractC1108f, C1112b>> descendingIterator = this.f4609a.descendingIterator();
        while (descendingIterator.hasNext() && !this.f4614f) {
            Map.Entry<AbstractC1108f, C1112b> next = descendingIterator.next();
            C1112b value = next.getValue();
            while (value.f4618a.compareTo(this.f4610b) > 0 && !this.f4614f && this.f4609a.contains(next.getKey())) {
                Lifecycle.Event e = m34647e(value.f4618a);
                m34651c(m34656b(e));
                value.m34645a(gVar, e);
                m34652c();
            }
        }
    }

    /* renamed from: b */
    public final void m34655b(Lifecycle.State state) {
        if (this.f4610b != state) {
            this.f4610b = state;
            if (this.f4613e || this.f4612d != 0) {
                this.f4614f = true;
                return;
            }
            this.f4613e = true;
            m34649d();
            this.f4613e = false;
        }
    }

    @Override // androidx.lifecycle.Lifecycle
    /* renamed from: b */
    public void mo34654b(AbstractC1108f fVar) {
        this.f4609a.remove(fVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final void m34653b(AbstractC1109g gVar) {
        C0751b<AbstractC1108f, C1112b>.C0755d b = this.f4609a.m36140b();
        while (b.hasNext() && !this.f4614f) {
            Map.Entry next = b.next();
            C1112b bVar = (C1112b) next.getValue();
            while (bVar.f4618a.compareTo(this.f4610b) < 0 && !this.f4614f && this.f4609a.contains(next.getKey())) {
                m34651c(bVar.f4618a);
                bVar.m34645a(gVar, m34646f(bVar.f4618a));
                m34652c();
            }
        }
    }

    /* renamed from: b */
    public final boolean m34657b() {
        boolean z = true;
        if (this.f4609a.size() == 0) {
            return true;
        }
        Lifecycle.State state = this.f4609a.m36143a().getValue().f4618a;
        Lifecycle.State state2 = this.f4609a.m36138c().getValue().f4618a;
        if (!(state == state2 && this.f4610b == state2)) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public final Lifecycle.State m34650c(AbstractC1108f fVar) {
        Map.Entry<AbstractC1108f, C1112b> b = this.f4609a.m36144b(fVar);
        Lifecycle.State state = null;
        Lifecycle.State state2 = b != null ? b.getValue().f4618a : null;
        if (!this.f4615g.isEmpty()) {
            ArrayList<Lifecycle.State> arrayList = this.f4615g;
            state = arrayList.get(arrayList.size() - 1);
        }
        return m34660a(m34660a(this.f4610b, state2), state);
    }

    /* renamed from: c */
    public final void m34652c() {
        ArrayList<Lifecycle.State> arrayList = this.f4615g;
        arrayList.remove(arrayList.size() - 1);
    }

    /* renamed from: c */
    public final void m34651c(Lifecycle.State state) {
        this.f4615g.add(state);
    }

    /* renamed from: d */
    public final void m34649d() {
        AbstractC1109g gVar = this.f4611c.get();
        if (gVar != null) {
            while (!m34657b()) {
                this.f4614f = false;
                if (this.f4610b.compareTo(this.f4609a.m36143a().getValue().f4618a) < 0) {
                    m34658a(gVar);
                }
                Map.Entry<AbstractC1108f, C1112b> c = this.f4609a.m36138c();
                if (!this.f4614f && c != null && this.f4610b.compareTo(c.getValue().f4618a) > 0) {
                    m34653b(gVar);
                }
            }
            this.f4614f = false;
            return;
        }
        throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
    }

    /* renamed from: d */
    public void m34648d(Lifecycle.State state) {
        m34655b(state);
    }
}
