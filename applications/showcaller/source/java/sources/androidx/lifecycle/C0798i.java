package androidx.lifecycle;

import android.annotation.SuppressLint;
import androidx.lifecycle.Lifecycle;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import p020b.p029b.p030a.p031a.C1468a;
import p020b.p029b.p030a.p032b.C1474a;
import p020b.p029b.p030a.p032b.C1475b;
/* renamed from: androidx.lifecycle.i */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/i.class */
public class C0798i extends Lifecycle {

    /* renamed from: b */
    private C1474a<AbstractC0796g, C0799a> f3703b;

    /* renamed from: c */
    private Lifecycle.State f3704c;

    /* renamed from: d */
    private final WeakReference<AbstractC0797h> f3705d;

    /* renamed from: e */
    private int f3706e;

    /* renamed from: f */
    private boolean f3707f;

    /* renamed from: g */
    private boolean f3708g;

    /* renamed from: h */
    private ArrayList<Lifecycle.State> f3709h;

    /* renamed from: i */
    private final boolean f3710i;

    /* renamed from: androidx.lifecycle.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/i$a.class */
    public static class C0799a {

        /* renamed from: a */
        Lifecycle.State f3711a;

        /* renamed from: b */
        AbstractC0795f f3712b;

        C0799a(AbstractC0796g abstractC0796g, Lifecycle.State state) {
            this.f3712b = C0801k.m32376f(abstractC0796g);
            this.f3711a = state;
        }

        /* renamed from: a */
        void m32382a(AbstractC0797h abstractC0797h, Lifecycle.Event event) {
            Lifecycle.State targetState = event.getTargetState();
            this.f3711a = C0798i.m32388k(this.f3711a, targetState);
            this.f3712b.mo30701c(abstractC0797h, event);
            this.f3711a = targetState;
        }
    }

    public C0798i(AbstractC0797h abstractC0797h) {
        this(abstractC0797h, true);
    }

    private C0798i(AbstractC0797h abstractC0797h, boolean z) {
        this.f3703b = new C1474a<>();
        this.f3706e = 0;
        this.f3707f = false;
        this.f3708g = false;
        this.f3709h = new ArrayList<>();
        this.f3705d = new WeakReference<>(abstractC0797h);
        this.f3704c = Lifecycle.State.INITIALIZED;
        this.f3710i = z;
    }

    /* renamed from: d */
    private void m32395d(AbstractC0797h abstractC0797h) {
        Iterator<Map.Entry<AbstractC0796g, C0799a>> descendingIterator = this.f3703b.descendingIterator();
        while (descendingIterator.hasNext() && !this.f3708g) {
            Map.Entry<AbstractC0796g, C0799a> next = descendingIterator.next();
            C0799a value = next.getValue();
            while (value.f3711a.compareTo(this.f3704c) > 0 && !this.f3708g && this.f3703b.contains(next.getKey())) {
                Lifecycle.Event downFrom = Lifecycle.Event.downFrom(value.f3711a);
                if (downFrom == null) {
                    throw new IllegalStateException("no event down from " + value.f3711a);
                }
                m32385n(downFrom.getTargetState());
                value.m32382a(abstractC0797h, downFrom);
                m32386m();
            }
        }
    }

    /* renamed from: e */
    private Lifecycle.State m32394e(AbstractC0796g abstractC0796g) {
        Map.Entry<AbstractC0796g, C0799a> m29988m = this.f3703b.m29988m(abstractC0796g);
        Lifecycle.State state = null;
        Lifecycle.State state2 = m29988m != null ? m29988m.getValue().f3711a : null;
        if (!this.f3709h.isEmpty()) {
            ArrayList<Lifecycle.State> arrayList = this.f3709h;
            state = arrayList.get(arrayList.size() - 1);
        }
        return m32388k(m32388k(this.f3704c, state2), state);
    }

    @SuppressLint({"RestrictedApi"})
    /* renamed from: f */
    private void m32393f(String str) {
        if (!this.f3710i || C1468a.m29993e().mo29990b()) {
            return;
        }
        throw new IllegalStateException("Method " + str + " must be called on the main thread");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    private void m32392g(AbstractC0797h abstractC0797h) {
        C1475b<AbstractC0796g, C0799a>.C1479d m29985e = this.f3703b.m29985e();
        while (m29985e.hasNext() && !this.f3708g) {
            Map.Entry next = m29985e.next();
            C0799a c0799a = (C0799a) next.getValue();
            while (c0799a.f3711a.compareTo(this.f3704c) < 0 && !this.f3708g && this.f3703b.contains(next.getKey())) {
                m32385n(c0799a.f3711a);
                Lifecycle.Event upFrom = Lifecycle.Event.upFrom(c0799a.f3711a);
                if (upFrom == null) {
                    throw new IllegalStateException("no event up from " + c0799a.f3711a);
                }
                c0799a.m32382a(abstractC0797h, upFrom);
                m32386m();
            }
        }
    }

    /* renamed from: i */
    private boolean m32390i() {
        boolean z = true;
        if (this.f3703b.size() == 0) {
            return true;
        }
        Lifecycle.State state = this.f3703b.m29987c().getValue().f3711a;
        Lifecycle.State state2 = this.f3703b.m29984h().getValue().f3711a;
        if (state != state2 || this.f3704c != state2) {
            z = false;
        }
        return z;
    }

    /* renamed from: k */
    static Lifecycle.State m32388k(Lifecycle.State state, Lifecycle.State state2) {
        Lifecycle.State state3 = state;
        if (state2 != null) {
            state3 = state;
            if (state2.compareTo(state) < 0) {
                state3 = state2;
            }
        }
        return state3;
    }

    /* renamed from: l */
    private void m32387l(Lifecycle.State state) {
        if (this.f3704c == state) {
            return;
        }
        this.f3704c = state;
        if (this.f3707f || this.f3706e != 0) {
            this.f3708g = true;
            return;
        }
        this.f3707f = true;
        m32383p();
        this.f3707f = false;
    }

    /* renamed from: m */
    private void m32386m() {
        ArrayList<Lifecycle.State> arrayList = this.f3709h;
        arrayList.remove(arrayList.size() - 1);
    }

    /* renamed from: n */
    private void m32385n(Lifecycle.State state) {
        this.f3709h.add(state);
    }

    /* renamed from: p */
    private void m32383p() {
        AbstractC0797h abstractC0797h = this.f3705d.get();
        if (abstractC0797h != null) {
            while (!m32390i()) {
                this.f3708g = false;
                if (this.f3704c.compareTo(this.f3703b.m29987c().getValue().f3711a) < 0) {
                    m32395d(abstractC0797h);
                }
                Map.Entry<AbstractC0796g, C0799a> m29984h = this.f3703b.m29984h();
                if (!this.f3708g && m29984h != null && this.f3704c.compareTo(m29984h.getValue().f3711a) > 0) {
                    m32392g(abstractC0797h);
                }
            }
            this.f3708g = false;
            return;
        }
        throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
    }

    @Override // androidx.lifecycle.Lifecycle
    /* renamed from: a */
    public void mo32398a(AbstractC0796g abstractC0796g) {
        AbstractC0797h abstractC0797h;
        m32393f("addObserver");
        Lifecycle.State state = this.f3704c;
        Lifecycle.State state2 = Lifecycle.State.DESTROYED;
        if (state != state2) {
            state2 = Lifecycle.State.INITIALIZED;
        }
        C0799a c0799a = new C0799a(abstractC0796g, state2);
        if (this.f3703b.mo29982j(abstractC0796g, c0799a) == null && (abstractC0797h = this.f3705d.get()) != null) {
            boolean z = this.f3706e != 0 || this.f3707f;
            Lifecycle.State m32394e = m32394e(abstractC0796g);
            this.f3706e++;
            while (c0799a.f3711a.compareTo(m32394e) < 0 && this.f3703b.contains(abstractC0796g)) {
                m32385n(c0799a.f3711a);
                Lifecycle.Event upFrom = Lifecycle.Event.upFrom(c0799a.f3711a);
                if (upFrom == null) {
                    throw new IllegalStateException("no event up from " + c0799a.f3711a);
                }
                c0799a.m32382a(abstractC0797h, upFrom);
                m32386m();
                m32394e = m32394e(abstractC0796g);
            }
            if (!z) {
                m32383p();
            }
            this.f3706e--;
        }
    }

    @Override // androidx.lifecycle.Lifecycle
    /* renamed from: b */
    public Lifecycle.State mo32397b() {
        return this.f3704c;
    }

    @Override // androidx.lifecycle.Lifecycle
    /* renamed from: c */
    public void mo32396c(AbstractC0796g abstractC0796g) {
        m32393f("removeObserver");
        this.f3703b.mo29981l(abstractC0796g);
    }

    /* renamed from: h */
    public void m32391h(Lifecycle.Event event) {
        m32393f("handleLifecycleEvent");
        m32387l(event.getTargetState());
    }

    @Deprecated
    /* renamed from: j */
    public void m32389j(Lifecycle.State state) {
        m32393f("markState");
        m32384o(state);
    }

    /* renamed from: o */
    public void m32384o(Lifecycle.State state) {
        m32393f("setCurrentState");
        m32387l(state);
    }
}
