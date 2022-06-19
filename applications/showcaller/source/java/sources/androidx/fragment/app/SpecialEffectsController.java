package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p008os.C0623b;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import p020b.p041h.p050l.C1679w;
import p020b.p061m.C1751b;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/SpecialEffectsController.class */
public abstract class SpecialEffectsController {

    /* renamed from: a */
    private final ViewGroup f3389a;

    /* renamed from: b */
    final ArrayList<Operation> f3390b = new ArrayList<>();

    /* renamed from: c */
    final ArrayList<Operation> f3391c = new ArrayList<>();

    /* renamed from: d */
    boolean f3392d = false;

    /* renamed from: e */
    boolean f3393e = false;

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/SpecialEffectsController$Operation.class */
    public static class Operation {

        /* renamed from: a */
        private State f3394a;

        /* renamed from: b */
        private LifecycleImpact f3395b;

        /* renamed from: c */
        private final Fragment f3396c;

        /* renamed from: d */
        private final List<Runnable> f3397d = new ArrayList();

        /* renamed from: e */
        private final HashSet<C0623b> f3398e = new HashSet<>();

        /* renamed from: f */
        private boolean f3399f = false;

        /* renamed from: g */
        private boolean f3400g = false;

        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact.class */
        public enum LifecycleImpact {
            NONE,
            ADDING,
            REMOVING
        }

        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/SpecialEffectsController$Operation$State.class */
        public enum State {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            public static State from(int i) {
                if (i != 0) {
                    if (i == 4) {
                        return INVISIBLE;
                    }
                    if (i == 8) {
                        return GONE;
                    }
                    throw new IllegalArgumentException("Unknown visibility " + i);
                }
                return VISIBLE;
            }

            public static State from(View view) {
                return (view.getAlpha() == 0.0f && view.getVisibility() == 0) ? INVISIBLE : from(view.getVisibility());
            }

            public void applyState(View view) {
                int i = C0704c.f3415a[ordinal()];
                if (i == 1) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup == null) {
                        return;
                    }
                    if (FragmentManager.m32848G0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                    }
                    viewGroup.removeView(view);
                } else if (i == 2) {
                    if (FragmentManager.m32848G0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
                    }
                    view.setVisibility(0);
                } else if (i == 3) {
                    if (FragmentManager.m32848G0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
                    }
                    view.setVisibility(8);
                } else if (i != 4) {
                } else {
                    if (FragmentManager.m32848G0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
                    }
                    view.setVisibility(4);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.fragment.app.SpecialEffectsController$Operation$a */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/SpecialEffectsController$Operation$a.class */
        public class C0701a implements C0623b.AbstractC0624a {
            C0701a() {
                Operation.this = r4;
            }

            @Override // androidx.core.p008os.C0623b.AbstractC0624a
            /* renamed from: a */
            public void mo32626a() {
                Operation.this.m32693b();
            }
        }

        Operation(State state, LifecycleImpact lifecycleImpact, Fragment fragment, C0623b c0623b) {
            this.f3394a = state;
            this.f3395b = lifecycleImpact;
            this.f3396c = fragment;
            c0623b.m33197c(new C0701a());
        }

        /* renamed from: a */
        public final void m32694a(Runnable runnable) {
            this.f3397d.add(runnable);
        }

        /* renamed from: b */
        final void m32693b() {
            if (m32688h()) {
                return;
            }
            this.f3399f = true;
            if (this.f3398e.isEmpty()) {
                mo32684c();
                return;
            }
            Iterator it = new ArrayList(this.f3398e).iterator();
            while (it.hasNext()) {
                ((C0623b) it.next()).m33199a();
            }
        }

        /* renamed from: c */
        public void mo32684c() {
            if (this.f3400g) {
                return;
            }
            if (FragmentManager.m32848G0(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.f3400g = true;
            for (Runnable runnable : this.f3397d) {
                runnable.run();
            }
        }

        /* renamed from: d */
        public final void m32692d(C0623b c0623b) {
            if (!this.f3398e.remove(c0623b) || !this.f3398e.isEmpty()) {
                return;
            }
            mo32684c();
        }

        /* renamed from: e */
        public State m32691e() {
            return this.f3394a;
        }

        /* renamed from: f */
        public final Fragment m32690f() {
            return this.f3396c;
        }

        /* renamed from: g */
        LifecycleImpact m32689g() {
            return this.f3395b;
        }

        /* renamed from: h */
        final boolean m32688h() {
            return this.f3399f;
        }

        /* renamed from: i */
        final boolean m32687i() {
            return this.f3400g;
        }

        /* renamed from: j */
        public final void m32686j(C0623b c0623b) {
            mo32683l();
            this.f3398e.add(c0623b);
        }

        /* renamed from: k */
        final void m32685k(State state, LifecycleImpact lifecycleImpact) {
            int i = C0704c.f3416b[lifecycleImpact.ordinal()];
            if (i == 1) {
                if (this.f3394a != State.REMOVED) {
                    return;
                }
                if (FragmentManager.m32848G0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f3396c + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.f3395b + " to ADDING.");
                }
                this.f3394a = State.VISIBLE;
                this.f3395b = LifecycleImpact.ADDING;
            } else if (i == 2) {
                if (FragmentManager.m32848G0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f3396c + " mFinalState = " + this.f3394a + " -> REMOVED. mLifecycleImpact  = " + this.f3395b + " to REMOVING.");
                }
                this.f3394a = State.REMOVED;
                this.f3395b = LifecycleImpact.REMOVING;
            } else if (i != 3 || this.f3394a == State.REMOVED) {
            } else {
                if (FragmentManager.m32848G0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f3396c + " mFinalState = " + this.f3394a + " -> " + state + ". ");
                }
                this.f3394a = state;
            }
        }

        /* renamed from: l */
        void mo32683l() {
        }

        public String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + this.f3394a + "} {mLifecycleImpact = " + this.f3395b + "} {mFragment = " + this.f3396c + "}";
        }
    }

    /* renamed from: androidx.fragment.app.SpecialEffectsController$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/SpecialEffectsController$a.class */
    public class RunnableC0702a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ C0705d f3411d;

        RunnableC0702a(C0705d c0705d) {
            SpecialEffectsController.this = r4;
            this.f3411d = c0705d;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SpecialEffectsController.this.f3390b.contains(this.f3411d)) {
                this.f3411d.m32691e().applyState(this.f3411d.m32690f().f3201L);
            }
        }
    }

    /* renamed from: androidx.fragment.app.SpecialEffectsController$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/SpecialEffectsController$b.class */
    public class RunnableC0703b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ C0705d f3413d;

        RunnableC0703b(C0705d c0705d) {
            SpecialEffectsController.this = r4;
            this.f3413d = c0705d;
        }

        @Override // java.lang.Runnable
        public void run() {
            SpecialEffectsController.this.f3390b.remove(this.f3413d);
            SpecialEffectsController.this.f3391c.remove(this.f3413d);
        }
    }

    /* renamed from: androidx.fragment.app.SpecialEffectsController$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/SpecialEffectsController$c.class */
    public static /* synthetic */ class C0704c {

        /* renamed from: a */
        static final /* synthetic */ int[] f3415a;

        /* renamed from: b */
        static final /* synthetic */ int[] f3416b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0060 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0064 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0068 -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006c -> B:35:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0070 -> B:31:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0074 -> B:27:0x0054). Please submit an issue!!! */
        static {
            int[] iArr = new int[Operation.LifecycleImpact.values().length];
            f3416b = iArr;
            try {
                iArr[Operation.LifecycleImpact.ADDING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3416b[Operation.LifecycleImpact.REMOVING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3416b[Operation.LifecycleImpact.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[Operation.State.values().length];
            f3415a = iArr2;
            try {
                iArr2[Operation.State.REMOVED.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3415a[Operation.State.VISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f3415a[Operation.State.GONE.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f3415a[Operation.State.INVISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: androidx.fragment.app.SpecialEffectsController$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/SpecialEffectsController$d.class */
    public static class C0705d extends Operation {

        /* renamed from: h */
        private final C0749p f3417h;

        C0705d(Operation.State state, Operation.LifecycleImpact lifecycleImpact, C0749p c0749p, C0623b c0623b) {
            super(state, lifecycleImpact, c0749p.m32546k(), c0623b);
            this.f3417h = c0749p;
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        /* renamed from: c */
        public void mo32684c() {
            super.mo32684c();
            this.f3417h.m32544m();
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        /* renamed from: l */
        void mo32683l() {
            if (m32689g() == Operation.LifecycleImpact.ADDING) {
                Fragment m32546k = this.f3417h.m32546k();
                View findFocus = m32546k.f3201L.findFocus();
                if (findFocus != null) {
                    m32546k.m32969M1(findFocus);
                    if (FragmentManager.m32848G0(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + m32546k);
                    }
                }
                View m32987E1 = m32690f().m32987E1();
                if (m32987E1.getParent() == null) {
                    this.f3417h.m32555b();
                    m32987E1.setAlpha(0.0f);
                }
                if (m32987E1.getAlpha() == 0.0f && m32987E1.getVisibility() == 0) {
                    m32987E1.setVisibility(4);
                }
                m32987E1.setAlpha(m32546k.m32946V());
            }
        }
    }

    public SpecialEffectsController(ViewGroup viewGroup) {
        this.f3389a = viewGroup;
    }

    /* renamed from: a */
    private void m32711a(Operation.State state, Operation.LifecycleImpact lifecycleImpact, C0749p c0749p) {
        synchronized (this.f3390b) {
            C0623b c0623b = new C0623b();
            Operation m32705h = m32705h(c0749p.m32546k());
            if (m32705h != null) {
                m32705h.m32685k(state, lifecycleImpact);
                return;
            }
            C0705d c0705d = new C0705d(state, lifecycleImpact, c0749p, c0623b);
            this.f3390b.add(c0705d);
            c0705d.m32694a(new RunnableC0702a(c0705d));
            c0705d.m32694a(new RunnableC0703b(c0705d));
        }
    }

    /* renamed from: h */
    private Operation m32705h(Fragment fragment) {
        Iterator<Operation> it = this.f3390b.iterator();
        while (it.hasNext()) {
            Operation next = it.next();
            if (next.m32690f().equals(fragment) && !next.m32688h()) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: i */
    private Operation m32704i(Fragment fragment) {
        Iterator<Operation> it = this.f3391c.iterator();
        while (it.hasNext()) {
            Operation next = it.next();
            if (next.m32690f().equals(fragment) && !next.m32688h()) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: n */
    public static SpecialEffectsController m32699n(ViewGroup viewGroup, FragmentManager fragmentManager) {
        return m32698o(viewGroup, fragmentManager.m32740z0());
    }

    /* renamed from: o */
    public static SpecialEffectsController m32698o(ViewGroup viewGroup, AbstractC0777y abstractC0777y) {
        int i = C1751b.special_effects_controller_view_tag;
        Object tag = viewGroup.getTag(i);
        if (tag instanceof SpecialEffectsController) {
            return (SpecialEffectsController) tag;
        }
        SpecialEffectsController mo32441a = abstractC0777y.mo32441a(viewGroup);
        viewGroup.setTag(i, mo32441a);
        return mo32441a;
    }

    /* renamed from: q */
    private void m32696q() {
        Iterator<Operation> it = this.f3390b.iterator();
        while (it.hasNext()) {
            Operation next = it.next();
            if (next.m32689g() == Operation.LifecycleImpact.ADDING) {
                next.m32685k(Operation.State.from(next.m32690f().m32987E1().getVisibility()), Operation.LifecycleImpact.NONE);
            }
        }
    }

    /* renamed from: b */
    public void m32710b(Operation.State state, C0749p c0749p) {
        if (FragmentManager.m32848G0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + c0749p.m32546k());
        }
        m32711a(state, Operation.LifecycleImpact.ADDING, c0749p);
    }

    /* renamed from: c */
    public void m32709c(C0749p c0749p) {
        if (FragmentManager.m32848G0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + c0749p.m32546k());
        }
        m32711a(Operation.State.GONE, Operation.LifecycleImpact.NONE, c0749p);
    }

    /* renamed from: d */
    public void m32708d(C0749p c0749p) {
        if (FragmentManager.m32848G0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + c0749p.m32546k());
        }
        m32711a(Operation.State.REMOVED, Operation.LifecycleImpact.REMOVING, c0749p);
    }

    /* renamed from: e */
    public void m32707e(C0749p c0749p) {
        if (FragmentManager.m32848G0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + c0749p.m32546k());
        }
        m32711a(Operation.State.VISIBLE, Operation.LifecycleImpact.NONE, c0749p);
    }

    /* renamed from: f */
    abstract void mo32666f(List<Operation> list, boolean z);

    /* renamed from: g */
    public void m32706g() {
        if (this.f3393e) {
            return;
        }
        if (!C1679w.m29314U(this.f3389a)) {
            m32703j();
            this.f3392d = false;
            return;
        }
        synchronized (this.f3390b) {
            if (!this.f3390b.isEmpty()) {
                ArrayList arrayList = new ArrayList(this.f3391c);
                this.f3391c.clear();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Operation operation = (Operation) it.next();
                    if (FragmentManager.m32848G0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + operation);
                    }
                    operation.m32693b();
                    if (!operation.m32687i()) {
                        this.f3391c.add(operation);
                    }
                }
                m32696q();
                ArrayList arrayList2 = new ArrayList(this.f3390b);
                this.f3390b.clear();
                this.f3391c.addAll(arrayList2);
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    ((Operation) it2.next()).mo32683l();
                }
                mo32666f(arrayList2, this.f3392d);
                this.f3392d = false;
            }
        }
    }

    /* renamed from: j */
    public void m32703j() {
        String str;
        String str2;
        boolean m29314U = C1679w.m29314U(this.f3389a);
        synchronized (this.f3390b) {
            m32696q();
            Iterator<Operation> it = this.f3390b.iterator();
            while (it.hasNext()) {
                it.next().mo32683l();
            }
            Iterator it2 = new ArrayList(this.f3391c).iterator();
            while (it2.hasNext()) {
                Operation operation = (Operation) it2.next();
                if (FragmentManager.m32848G0(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("SpecialEffectsController: ");
                    if (m29314U) {
                        str2 = "";
                    } else {
                        str2 = "Container " + this.f3389a + " is not attached to window. ";
                    }
                    sb.append(str2);
                    sb.append("Cancelling running operation ");
                    sb.append(operation);
                    Log.v("FragmentManager", sb.toString());
                }
                operation.m32693b();
            }
            Iterator it3 = new ArrayList(this.f3390b).iterator();
            while (it3.hasNext()) {
                Operation operation2 = (Operation) it3.next();
                if (FragmentManager.m32848G0(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("SpecialEffectsController: ");
                    if (m29314U) {
                        str = "";
                    } else {
                        str = "Container " + this.f3389a + " is not attached to window. ";
                    }
                    sb2.append(str);
                    sb2.append("Cancelling pending operation ");
                    sb2.append(operation2);
                    Log.v("FragmentManager", sb2.toString());
                }
                operation2.m32693b();
            }
        }
    }

    /* renamed from: k */
    public void m32702k() {
        if (this.f3393e) {
            this.f3393e = false;
            m32706g();
        }
    }

    /* renamed from: l */
    public Operation.LifecycleImpact m32701l(C0749p c0749p) {
        Operation m32705h = m32705h(c0749p.m32546k());
        if (m32705h != null) {
            return m32705h.m32689g();
        }
        Operation m32704i = m32704i(c0749p.m32546k());
        if (m32704i == null) {
            return null;
        }
        return m32704i.m32689g();
    }

    /* renamed from: m */
    public ViewGroup m32700m() {
        return this.f3389a;
    }

    /* renamed from: p */
    public void m32697p() {
        synchronized (this.f3390b) {
            m32696q();
            this.f3393e = false;
            int size = this.f3390b.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                Operation operation = this.f3390b.get(size);
                Operation.State from = Operation.State.from(operation.m32690f().f3201L);
                Operation.State m32691e = operation.m32691e();
                Operation.State state = Operation.State.VISIBLE;
                if (m32691e == state && from != state) {
                    this.f3393e = operation.m32690f().m32906q0();
                    break;
                }
                size--;
            }
        }
    }

    /* renamed from: r */
    public void m32695r(boolean z) {
        this.f3392d = z;
    }
}
