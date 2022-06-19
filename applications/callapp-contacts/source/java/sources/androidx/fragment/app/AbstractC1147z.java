package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.p037os.C0856a;
import androidx.core.view.C0926v;
import androidx.fragment.C1028a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.fragment.app.z */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/z.class */
public abstract class AbstractC1147z {

    /* renamed from: a */
    final ArrayList<C1152b> f4517a = new ArrayList<>();

    /* renamed from: b */
    final ArrayList<C1152b> f4518b = new ArrayList<>();

    /* renamed from: c */
    boolean f4519c = false;

    /* renamed from: d */
    boolean f4520d = false;

    /* renamed from: e */
    private final ViewGroup f4521e;

    /* renamed from: androidx.fragment.app.z$3 */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/z$3.class */
    public static final /* synthetic */ class C11503 {

        /* renamed from: a */
        static final /* synthetic */ int[] f4526a;

        /* renamed from: b */
        static final /* synthetic */ int[] f4527b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0060 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0064 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0068 -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006c -> B:35:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0070 -> B:31:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0074 -> B:27:0x0054). Please submit an issue!!! */
        static {
            int[] iArr = new int[C1152b.EnumC1154a.values().length];
            f4527b = iArr;
            try {
                iArr[C1152b.EnumC1154a.ADDING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4527b[C1152b.EnumC1154a.REMOVING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4527b[C1152b.EnumC1154a.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[C1152b.EnumC1155b.values().length];
            f4526a = iArr2;
            try {
                iArr2[C1152b.EnumC1155b.REMOVED.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f4526a[C1152b.EnumC1155b.VISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f4526a[C1152b.EnumC1155b.GONE.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f4526a[C1152b.EnumC1155b.INVISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: androidx.fragment.app.z$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/z$a.class */
    public static final class C1151a extends C1152b {

        /* renamed from: f */
        private final C1116p f4528f;

        C1151a(C1152b.EnumC1155b enumC1155b, C1152b.EnumC1154a enumC1154a, C1116p c1116p, C0856a c0856a) {
            super(enumC1155b, enumC1154a, c1116p.f4383a, c0856a);
            this.f4528f = c1116p;
        }

        @Override // androidx.fragment.app.AbstractC1147z.C1152b
        /* renamed from: a */
        final void mo43468a() {
            if (this.f4530b == C1152b.EnumC1154a.ADDING) {
                Fragment fragment = this.f4528f.f4383a;
                View findFocus = fragment.mView.findFocus();
                if (findFocus != null) {
                    fragment.setFocusedView(findFocus);
                    if (FragmentManager.m43764a(2)) {
                        StringBuilder sb = new StringBuilder("requestFocus: Saved focused view ");
                        sb.append(findFocus);
                        sb.append(" for Fragment ");
                        sb.append(fragment);
                    }
                }
                View requireView = this.f4531c.requireView();
                if (requireView.getParent() == null) {
                    this.f4528f.m43564r();
                    requireView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                }
                if (requireView.getAlpha() == BitmapDescriptorFactory.HUE_RED && requireView.getVisibility() == 0) {
                    requireView.setVisibility(4);
                }
                requireView.setAlpha(fragment.getPostOnViewCreatedAlpha());
            }
        }

        @Override // androidx.fragment.app.AbstractC1147z.C1152b
        /* renamed from: b */
        public final void mo43464b() {
            super.mo43464b();
            this.f4528f.m43580b();
        }
    }

    /* renamed from: androidx.fragment.app.z$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/z$b.class */
    public static class C1152b {

        /* renamed from: a */
        EnumC1155b f4529a;

        /* renamed from: b */
        EnumC1154a f4530b;

        /* renamed from: c */
        final Fragment f4531c;

        /* renamed from: f */
        private final List<Runnable> f4534f = new ArrayList();

        /* renamed from: g */
        private final HashSet<C0856a> f4535g = new HashSet<>();

        /* renamed from: d */
        boolean f4532d = false;

        /* renamed from: e */
        boolean f4533e = false;

        /* renamed from: androidx.fragment.app.z$b$a */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/z$b$a.class */
        public enum EnumC1154a {
            NONE,
            ADDING,
            REMOVING
        }

        /* renamed from: androidx.fragment.app.z$b$b */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/z$b$b.class */
        public enum EnumC1155b {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            public static EnumC1155b from(int i) {
                if (i != 0) {
                    if (i == 4) {
                        return INVISIBLE;
                    }
                    if (i != 8) {
                        throw new IllegalArgumentException("Unknown visibility ".concat(String.valueOf(i)));
                    }
                    return GONE;
                }
                return VISIBLE;
            }

            public static EnumC1155b from(View view) {
                return (view.getAlpha() == BitmapDescriptorFactory.HUE_RED && view.getVisibility() == 0) ? INVISIBLE : from(view.getVisibility());
            }

            public final void applyState(View view) {
                int i = C11503.f4526a[ordinal()];
                if (i == 1) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup == null) {
                        return;
                    }
                    if (FragmentManager.m43764a(2)) {
                        StringBuilder sb = new StringBuilder("SpecialEffectsController: Removing view ");
                        sb.append(view);
                        sb.append(" from container ");
                        sb.append(viewGroup);
                    }
                    viewGroup.removeView(view);
                } else if (i == 2) {
                    if (FragmentManager.m43764a(2)) {
                        StringBuilder sb2 = new StringBuilder("SpecialEffectsController: Setting view ");
                        sb2.append(view);
                        sb2.append(" to VISIBLE");
                    }
                    view.setVisibility(0);
                } else if (i == 3) {
                    if (FragmentManager.m43764a(2)) {
                        StringBuilder sb3 = new StringBuilder("SpecialEffectsController: Setting view ");
                        sb3.append(view);
                        sb3.append(" to GONE");
                    }
                    view.setVisibility(8);
                } else if (i != 4) {
                } else {
                    if (FragmentManager.m43764a(2)) {
                        StringBuilder sb4 = new StringBuilder("SpecialEffectsController: Setting view ");
                        sb4.append(view);
                        sb4.append(" to INVISIBLE");
                    }
                    view.setVisibility(4);
                }
            }
        }

        C1152b(EnumC1155b enumC1155b, EnumC1154a enumC1154a, Fragment fragment, C0856a c0856a) {
            this.f4529a = enumC1155b;
            this.f4530b = enumC1154a;
            this.f4531c = fragment;
            c0856a.m44302a(new C0856a.AbstractC0857a() { // from class: androidx.fragment.app.z.b.1
                @Override // androidx.core.p037os.C0856a.AbstractC0857a
                /* renamed from: a */
                public final void mo39700a() {
                    C1152b.this.m43462c();
                }
            });
        }

        /* renamed from: a */
        void mo43468a() {
        }

        /* renamed from: a */
        public final void m43467a(C0856a c0856a) {
            mo43468a();
            this.f4535g.add(c0856a);
        }

        /* renamed from: a */
        final void m43466a(EnumC1155b enumC1155b, EnumC1154a enumC1154a) {
            int i = C11503.f4527b[enumC1154a.ordinal()];
            if (i == 1) {
                if (this.f4529a != EnumC1155b.REMOVED) {
                    return;
                }
                if (FragmentManager.m43764a(2)) {
                    StringBuilder sb = new StringBuilder("SpecialEffectsController: For fragment ");
                    sb.append(this.f4531c);
                    sb.append(" mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = ");
                    sb.append(this.f4530b);
                    sb.append(" to ADDING.");
                }
                this.f4529a = EnumC1155b.VISIBLE;
                this.f4530b = EnumC1154a.ADDING;
            } else if (i == 2) {
                if (FragmentManager.m43764a(2)) {
                    StringBuilder sb2 = new StringBuilder("SpecialEffectsController: For fragment ");
                    sb2.append(this.f4531c);
                    sb2.append(" mFinalState = ");
                    sb2.append(this.f4529a);
                    sb2.append(" -> REMOVED. mLifecycleImpact  = ");
                    sb2.append(this.f4530b);
                    sb2.append(" to REMOVING.");
                }
                this.f4529a = EnumC1155b.REMOVED;
                this.f4530b = EnumC1154a.REMOVING;
            } else if (i != 3 || this.f4529a == EnumC1155b.REMOVED) {
            } else {
                if (FragmentManager.m43764a(2)) {
                    StringBuilder sb3 = new StringBuilder("SpecialEffectsController: For fragment ");
                    sb3.append(this.f4531c);
                    sb3.append(" mFinalState = ");
                    sb3.append(this.f4529a);
                    sb3.append(" -> ");
                    sb3.append(enumC1155b);
                    sb3.append(". ");
                }
                this.f4529a = enumC1155b;
            }
        }

        /* renamed from: a */
        public final void m43465a(Runnable runnable) {
            this.f4534f.add(runnable);
        }

        /* renamed from: b */
        public void mo43464b() {
            if (this.f4533e) {
                return;
            }
            if (FragmentManager.m43764a(2)) {
                StringBuilder sb = new StringBuilder("SpecialEffectsController: ");
                sb.append(this);
                sb.append(" has called complete.");
            }
            this.f4533e = true;
            for (Runnable runnable : this.f4534f) {
                runnable.run();
            }
        }

        /* renamed from: b */
        public final void m43463b(C0856a c0856a) {
            if (!this.f4535g.remove(c0856a) || !this.f4535g.isEmpty()) {
                return;
            }
            mo43464b();
        }

        /* renamed from: c */
        final void m43462c() {
            if (this.f4532d) {
                return;
            }
            this.f4532d = true;
            if (this.f4535g.isEmpty()) {
                mo43464b();
                return;
            }
            Iterator it2 = new ArrayList(this.f4535g).iterator();
            while (it2.hasNext()) {
                ((C0856a) it2.next()).m44301b();
            }
        }

        public String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + this.f4529a + "} {mLifecycleImpact = " + this.f4530b + "} {mFragment = " + this.f4531c + "}";
        }
    }

    public AbstractC1147z(ViewGroup viewGroup) {
        this.f4521e = viewGroup;
    }

    /* renamed from: a */
    private C1152b m43482a(Fragment fragment) {
        Iterator<C1152b> it2 = this.f4517a.iterator();
        while (it2.hasNext()) {
            C1152b next = it2.next();
            if (next.f4531c.equals(fragment) && !next.f4532d) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static AbstractC1147z m43484a(ViewGroup viewGroup, FragmentManager fragmentManager) {
        return m43483a(viewGroup, fragmentManager.m43683r());
    }

    /* renamed from: a */
    public static AbstractC1147z m43483a(ViewGroup viewGroup, AbstractC1072aa abstractC1072aa) {
        Object tag = viewGroup.getTag(C1028a.C1030b.special_effects_controller_view_tag);
        if (tag instanceof AbstractC1147z) {
            return (AbstractC1147z) tag;
        }
        AbstractC1147z mo43640a = abstractC1072aa.mo43640a(viewGroup);
        viewGroup.setTag(C1028a.C1030b.special_effects_controller_view_tag, mo43640a);
        return mo43640a;
    }

    /* renamed from: a */
    private void m43479a(C1152b.EnumC1155b enumC1155b, C1152b.EnumC1154a enumC1154a, C1116p c1116p) {
        synchronized (this.f4517a) {
            C0856a c0856a = new C0856a();
            C1152b m43482a = m43482a(c1116p.f4383a);
            if (m43482a != null) {
                m43482a.m43466a(enumC1155b, enumC1154a);
                return;
            }
            final C1151a c1151a = new C1151a(enumC1155b, enumC1154a, c1116p, c0856a);
            this.f4517a.add(c1151a);
            c1151a.m43465a(new Runnable() { // from class: androidx.fragment.app.z.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (AbstractC1147z.this.f4517a.contains(c1151a)) {
                        c1151a.f4529a.applyState(c1151a.f4531c.mView);
                    }
                }
            });
            c1151a.m43465a(new Runnable() { // from class: androidx.fragment.app.z.2
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC1147z.this.f4517a.remove(c1151a);
                    AbstractC1147z.this.f4518b.remove(c1151a);
                }
            });
        }
    }

    /* renamed from: b */
    private C1152b m43476b(Fragment fragment) {
        Iterator<C1152b> it2 = this.f4518b.iterator();
        while (it2.hasNext()) {
            C1152b next = it2.next();
            if (next.f4531c.equals(fragment) && !next.f4532d) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: f */
    private void m43469f() {
        Iterator<C1152b> it2 = this.f4517a.iterator();
        while (it2.hasNext()) {
            C1152b next = it2.next();
            if (next.f4530b == C1152b.EnumC1154a.ADDING) {
                next.m43466a(C1152b.EnumC1155b.from(next.f4531c.requireView().getVisibility()), C1152b.EnumC1154a.NONE);
            }
        }
    }

    /* renamed from: a */
    public final ViewGroup m43485a() {
        return this.f4521e;
    }

    /* renamed from: a */
    public final C1152b.EnumC1154a m43481a(C1116p c1116p) {
        C1152b m43482a = m43482a(c1116p.f4383a);
        if (m43482a != null) {
            return m43482a.f4530b;
        }
        C1152b m43476b = m43476b(c1116p.f4383a);
        if (m43476b == null) {
            return null;
        }
        return m43476b.f4530b;
    }

    /* renamed from: a */
    public final void m43480a(C1152b.EnumC1155b enumC1155b, C1116p c1116p) {
        if (FragmentManager.m43764a(2)) {
            new StringBuilder("SpecialEffectsController: Enqueuing add operation for fragment ").append(c1116p.f4383a);
        }
        m43479a(enumC1155b, C1152b.EnumC1154a.ADDING, c1116p);
    }

    /* renamed from: a */
    abstract void mo43478a(List<C1152b> list, boolean z);

    /* renamed from: b */
    public final void m43477b() {
        synchronized (this.f4517a) {
            m43469f();
            this.f4520d = false;
            int size = this.f4517a.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                C1152b c1152b = this.f4517a.get(size);
                C1152b.EnumC1155b from = C1152b.EnumC1155b.from(c1152b.f4531c.mView);
                if (c1152b.f4529a == C1152b.EnumC1155b.VISIBLE && from != C1152b.EnumC1155b.VISIBLE) {
                    this.f4520d = c1152b.f4531c.isPostponed();
                    break;
                }
                size--;
            }
        }
    }

    /* renamed from: b */
    public final void m43475b(C1116p c1116p) {
        if (FragmentManager.m43764a(2)) {
            new StringBuilder("SpecialEffectsController: Enqueuing show operation for fragment ").append(c1116p.f4383a);
        }
        m43479a(C1152b.EnumC1155b.VISIBLE, C1152b.EnumC1154a.NONE, c1116p);
    }

    /* renamed from: c */
    public final void m43474c() {
        if (this.f4520d) {
            this.f4520d = false;
            m43472d();
        }
    }

    /* renamed from: c */
    public final void m43473c(C1116p c1116p) {
        if (FragmentManager.m43764a(2)) {
            new StringBuilder("SpecialEffectsController: Enqueuing hide operation for fragment ").append(c1116p.f4383a);
        }
        m43479a(C1152b.EnumC1155b.GONE, C1152b.EnumC1154a.NONE, c1116p);
    }

    /* renamed from: d */
    public final void m43472d() {
        if (this.f4520d) {
            return;
        }
        if (!C0926v.m44154E(this.f4521e)) {
            m43470e();
            this.f4519c = false;
            return;
        }
        synchronized (this.f4517a) {
            if (!this.f4517a.isEmpty()) {
                ArrayList arrayList = new ArrayList(this.f4518b);
                this.f4518b.clear();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    C1152b c1152b = (C1152b) it2.next();
                    if (FragmentManager.m43764a(2)) {
                        new StringBuilder("SpecialEffectsController: Cancelling operation ").append(c1152b);
                    }
                    c1152b.m43462c();
                    if (!c1152b.f4533e) {
                        this.f4518b.add(c1152b);
                    }
                }
                m43469f();
                ArrayList arrayList2 = new ArrayList(this.f4517a);
                this.f4517a.clear();
                this.f4518b.addAll(arrayList2);
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    ((C1152b) it3.next()).mo43468a();
                }
                mo43478a(arrayList2, this.f4519c);
                this.f4519c = false;
            }
        }
    }

    /* renamed from: d */
    public final void m43471d(C1116p c1116p) {
        if (FragmentManager.m43764a(2)) {
            new StringBuilder("SpecialEffectsController: Enqueuing remove operation for fragment ").append(c1116p.f4383a);
        }
        m43479a(C1152b.EnumC1155b.REMOVED, C1152b.EnumC1154a.REMOVING, c1116p);
    }

    /* renamed from: e */
    public final void m43470e() {
        String str;
        String str2;
        boolean m44154E = C0926v.m44154E(this.f4521e);
        synchronized (this.f4517a) {
            m43469f();
            Iterator<C1152b> it2 = this.f4517a.iterator();
            while (it2.hasNext()) {
                it2.next().mo43468a();
            }
            Iterator it3 = new ArrayList(this.f4518b).iterator();
            while (it3.hasNext()) {
                C1152b c1152b = (C1152b) it3.next();
                if (FragmentManager.m43764a(2)) {
                    StringBuilder sb = new StringBuilder("SpecialEffectsController: ");
                    if (m44154E) {
                        str2 = "";
                    } else {
                        str2 = "Container " + this.f4521e + " is not attached to window. ";
                    }
                    sb.append(str2);
                    sb.append("Cancelling running operation ");
                    sb.append(c1152b);
                }
                c1152b.m43462c();
            }
            Iterator it4 = new ArrayList(this.f4517a).iterator();
            while (it4.hasNext()) {
                C1152b c1152b2 = (C1152b) it4.next();
                if (FragmentManager.m43764a(2)) {
                    StringBuilder sb2 = new StringBuilder("SpecialEffectsController: ");
                    if (m44154E) {
                        str = "";
                    } else {
                        str = "Container " + this.f4521e + " is not attached to window. ";
                    }
                    sb2.append(str);
                    sb2.append("Cancelling pending operation ");
                    sb2.append(c1152b2);
                }
                c1152b2.m43462c();
            }
        }
    }
}
