package p1727n3.p1859r.p1860a;

import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.C0158R;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1816e.C26508a;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.r.a.u0 */
/* loaded from: classes-dex2jar.jar:n3/r/a/u0.class */
public abstract class AbstractC26960u0 {

    /* renamed from: a */
    public final ViewGroup f75447a;

    /* renamed from: b */
    public final ArrayList<C26964d> f75448b = new ArrayList<>();

    /* renamed from: c */
    public final ArrayList<C26964d> f75449c = new ArrayList<>();

    /* renamed from: d */
    public boolean f75450d = false;

    /* renamed from: e */
    public boolean f75451e = false;

    /* renamed from: n3.r.a.u0$a */
    /* loaded from: classes-dex2jar.jar:n3/r/a/u0$a.class */
    public class RunnableC26961a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C26963c f75452a;

        public RunnableC26961a(C26963c c26963c) {
            AbstractC26960u0.this = r4;
            this.f75452a = c26963c;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AbstractC26960u0.this.f75448b.contains(this.f75452a)) {
                C26963c c26963c = this.f75452a;
                c26963c.f75457a.m1048a(c26963c.f75459c.mView);
            }
        }
    }

    /* renamed from: n3.r.a.u0$b */
    /* loaded from: classes-dex2jar.jar:n3/r/a/u0$b.class */
    public class RunnableC26962b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C26963c f75454a;

        public RunnableC26962b(C26963c c26963c) {
            AbstractC26960u0.this = r4;
            this.f75454a = c26963c;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC26960u0.this.f75448b.remove(this.f75454a);
            AbstractC26960u0.this.f75449c.remove(this.f75454a);
        }
    }

    /* renamed from: n3.r.a.u0$c */
    /* loaded from: classes-dex2jar.jar:n3/r/a/u0$c.class */
    public static class C26963c extends C26964d {

        /* renamed from: h */
        public final C26916c0 f75456h;

        public C26963c(C26964d.EnumC26967c enumC26967c, C26964d.EnumC26966b enumC26966b, C26916c0 c26916c0, C26508a c26508a) {
            super(enumC26967c, enumC26966b, c26916c0.f75295c, c26508a);
            this.f75456h = c26916c0;
        }

        @Override // p1727n3.p1859r.p1860a.AbstractC26960u0.C26964d
        /* renamed from: b */
        public void mo1052b() {
            super.mo1052b();
            this.f75456h.m1157k();
        }

        @Override // p1727n3.p1859r.p1860a.AbstractC26960u0.C26964d
        /* renamed from: d */
        public void mo1050d() {
            if (this.f75458b == C26964d.EnumC26966b.ADDING) {
                Fragment fragment = this.f75456h.f75295c;
                View findFocus = fragment.mView.findFocus();
                if (findFocus != null) {
                    fragment.setFocusedView(findFocus);
                    if (FragmentManager.m42933T(2)) {
                        String str = "requestFocus: Saved focused view " + findFocus + " for Fragment " + fragment;
                    }
                }
                View requireView = this.f75459c.requireView();
                if (requireView.getParent() == null) {
                    this.f75456h.m1166b();
                    requireView.setAlpha(0.0f);
                }
                if (requireView.getAlpha() == 0.0f && requireView.getVisibility() == 0) {
                    requireView.setVisibility(4);
                }
                requireView.setAlpha(fragment.getPostOnViewCreatedAlpha());
            }
        }
    }

    /* renamed from: n3.r.a.u0$d */
    /* loaded from: classes-dex2jar.jar:n3/r/a/u0$d.class */
    public static class C26964d {

        /* renamed from: a */
        public EnumC26967c f75457a;

        /* renamed from: b */
        public EnumC26966b f75458b;

        /* renamed from: c */
        public final Fragment f75459c;

        /* renamed from: d */
        public final List<Runnable> f75460d = new ArrayList();

        /* renamed from: e */
        public final HashSet<C26508a> f75461e = new HashSet<>();

        /* renamed from: f */
        public boolean f75462f = false;

        /* renamed from: g */
        public boolean f75463g = false;

        /* renamed from: n3.r.a.u0$d$a */
        /* loaded from: classes-dex2jar.jar:n3/r/a/u0$d$a.class */
        public class C26965a implements C26508a.AbstractC26509a {
            public C26965a() {
                C26964d.this = r4;
            }

            @Override // p1727n3.p1807k.p1816e.C26508a.AbstractC26509a
            /* renamed from: f0 */
            public void mo1049f0() {
                C26964d.this.m1053a();
            }
        }

        /* renamed from: n3.r.a.u0$d$b */
        /* loaded from: classes-dex2jar.jar:n3/r/a/u0$d$b.class */
        public enum EnumC26966b {
            NONE,
            ADDING,
            REMOVING
        }

        /* renamed from: n3.r.a.u0$d$c */
        /* loaded from: classes-dex2jar.jar:n3/r/a/u0$d$c.class */
        public enum EnumC26967c {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            /* renamed from: c */
            public static EnumC26967c m1047c(int i) {
                if (i != 0) {
                    if (i == 4) {
                        return INVISIBLE;
                    }
                    if (i != 8) {
                        throw new IllegalArgumentException(C22128a.m8611i2("Unknown visibility ", i));
                    }
                    return GONE;
                }
                return VISIBLE;
            }

            /* renamed from: d */
            public static EnumC26967c m1046d(View view) {
                return (view.getAlpha() == 0.0f && view.getVisibility() == 0) ? INVISIBLE : m1047c(view.getVisibility());
            }

            /* renamed from: a */
            public void m1048a(View view) {
                int ordinal = ordinal();
                if (ordinal == 0) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup == null) {
                        return;
                    }
                    if (FragmentManager.m42933T(2)) {
                        String str = "SpecialEffectsController: Removing view " + view + " from container " + viewGroup;
                    }
                    viewGroup.removeView(view);
                } else if (ordinal == 1) {
                    if (FragmentManager.m42933T(2)) {
                        String str2 = "SpecialEffectsController: Setting view " + view + " to VISIBLE";
                    }
                    view.setVisibility(0);
                } else if (ordinal == 2) {
                    if (FragmentManager.m42933T(2)) {
                        String str3 = "SpecialEffectsController: Setting view " + view + " to GONE";
                    }
                    view.setVisibility(8);
                } else if (ordinal != 3) {
                } else {
                    if (FragmentManager.m42933T(2)) {
                        String str4 = "SpecialEffectsController: Setting view " + view + " to INVISIBLE";
                    }
                    view.setVisibility(4);
                }
            }
        }

        public C26964d(EnumC26967c enumC26967c, EnumC26966b enumC26966b, Fragment fragment, C26508a c26508a) {
            this.f75457a = enumC26967c;
            this.f75458b = enumC26966b;
            this.f75459c = fragment;
            c26508a.m1721b(new C26965a());
        }

        /* renamed from: a */
        public final void m1053a() {
            if (this.f75462f) {
                return;
            }
            this.f75462f = true;
            if (this.f75461e.isEmpty()) {
                mo1052b();
                return;
            }
            Iterator it = new ArrayList(this.f75461e).iterator();
            while (it.hasNext()) {
                ((C26508a) it.next()).m1722a();
            }
        }

        /* renamed from: b */
        public void mo1052b() {
            if (this.f75463g) {
                return;
            }
            if (FragmentManager.m42933T(2)) {
                String str = "SpecialEffectsController: " + this + " has called complete.";
            }
            this.f75463g = true;
            for (Runnable runnable : this.f75460d) {
                runnable.run();
            }
        }

        /* renamed from: c */
        public final void m1051c(EnumC26967c enumC26967c, EnumC26966b enumC26966b) {
            EnumC26967c enumC26967c2 = EnumC26967c.REMOVED;
            int ordinal = enumC26966b.ordinal();
            if (ordinal == 0) {
                if (this.f75457a == enumC26967c2) {
                    return;
                }
                if (FragmentManager.m42933T(2)) {
                    StringBuilder m8728C = C22128a.m8728C("SpecialEffectsController: For fragment ");
                    m8728C.append(this.f75459c);
                    m8728C.append(" mFinalState = ");
                    m8728C.append(this.f75457a);
                    m8728C.append(" -> ");
                    m8728C.append(enumC26967c);
                    m8728C.append(". ");
                    m8728C.toString();
                }
                this.f75457a = enumC26967c;
            } else if (ordinal == 1) {
                if (this.f75457a != enumC26967c2) {
                    return;
                }
                if (FragmentManager.m42933T(2)) {
                    StringBuilder m8728C2 = C22128a.m8728C("SpecialEffectsController: For fragment ");
                    m8728C2.append(this.f75459c);
                    m8728C2.append(" mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = ");
                    m8728C2.append(this.f75458b);
                    m8728C2.append(" to ADDING.");
                    m8728C2.toString();
                }
                this.f75457a = EnumC26967c.VISIBLE;
                this.f75458b = EnumC26966b.ADDING;
            } else if (ordinal != 2) {
            } else {
                if (FragmentManager.m42933T(2)) {
                    StringBuilder m8728C3 = C22128a.m8728C("SpecialEffectsController: For fragment ");
                    m8728C3.append(this.f75459c);
                    m8728C3.append(" mFinalState = ");
                    m8728C3.append(this.f75457a);
                    m8728C3.append(" -> REMOVED. mLifecycleImpact  = ");
                    m8728C3.append(this.f75458b);
                    m8728C3.append(" to REMOVING.");
                    m8728C3.toString();
                }
                this.f75457a = enumC26967c2;
                this.f75458b = EnumC26966b.REMOVING;
            }
        }

        /* renamed from: d */
        public void mo1050d() {
        }

        public String toString() {
            StringBuilder m8696K = C22128a.m8696K("Operation ", "{");
            m8696K.append(Integer.toHexString(System.identityHashCode(this)));
            m8696K.append("} ");
            m8696K.append("{");
            m8696K.append("mFinalState = ");
            m8696K.append(this.f75457a);
            m8696K.append("} ");
            m8696K.append("{");
            m8696K.append("mLifecycleImpact = ");
            m8696K.append(this.f75458b);
            m8696K.append("} ");
            m8696K.append("{");
            m8696K.append("mFragment = ");
            m8696K.append(this.f75459c);
            m8696K.append("}");
            return m8696K.toString();
        }
    }

    public AbstractC26960u0(ViewGroup viewGroup) {
        this.f75447a = viewGroup;
    }

    /* renamed from: f */
    public static AbstractC26960u0 m1057f(ViewGroup viewGroup, FragmentManager fragmentManager) {
        return m1056g(viewGroup, fragmentManager.m42935R());
    }

    /* renamed from: g */
    public static AbstractC26960u0 m1056g(ViewGroup viewGroup, AbstractC26970v0 abstractC26970v0) {
        int i = C0158R.C0160id.special_effects_controller_view_tag;
        Object tag = viewGroup.getTag(i);
        if (tag instanceof AbstractC26960u0) {
            return (AbstractC26960u0) tag;
        }
        Objects.requireNonNull((FragmentManager.C0169f) abstractC26970v0);
        C26909b c26909b = new C26909b(viewGroup);
        viewGroup.setTag(i, c26909b);
        return c26909b;
    }

    /* renamed from: a */
    public final void m1062a(C26964d.EnumC26967c enumC26967c, C26964d.EnumC26966b enumC26966b, C26916c0 c26916c0) {
        synchronized (this.f75448b) {
            C26508a c26508a = new C26508a();
            C26964d m1059d = m1059d(c26916c0.f75295c);
            if (m1059d != null) {
                m1059d.m1051c(enumC26967c, enumC26966b);
                return;
            }
            C26963c c26963c = new C26963c(enumC26967c, enumC26966b, c26916c0, c26508a);
            this.f75448b.add(c26963c);
            c26963c.f75460d.add(new RunnableC26961a(c26963c));
            c26963c.f75460d.add(new RunnableC26962b(c26963c));
        }
    }

    /* renamed from: b */
    public abstract void mo1061b(List<C26964d> list, boolean z);

    /* renamed from: c */
    public void m1060c() {
        if (this.f75451e) {
            return;
        }
        ViewGroup viewGroup = this.f75447a;
        AtomicInteger atomicInteger = C26614s.f74505a;
        if (!viewGroup.isAttachedToWindow()) {
            m1058e();
            this.f75450d = false;
            return;
        }
        synchronized (this.f75448b) {
            if (!this.f75448b.isEmpty()) {
                ArrayList arrayList = new ArrayList(this.f75449c);
                this.f75449c.clear();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    C26964d c26964d = (C26964d) it.next();
                    if (FragmentManager.m42933T(2)) {
                        String str = "SpecialEffectsController: Cancelling operation " + c26964d;
                    }
                    c26964d.m1053a();
                    if (!c26964d.f75463g) {
                        this.f75449c.add(c26964d);
                    }
                }
                m1054i();
                ArrayList arrayList2 = new ArrayList(this.f75448b);
                this.f75448b.clear();
                this.f75449c.addAll(arrayList2);
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    ((C26964d) it2.next()).mo1050d();
                }
                mo1061b(arrayList2, this.f75450d);
                this.f75450d = false;
            }
        }
    }

    /* renamed from: d */
    public final C26964d m1059d(Fragment fragment) {
        Iterator<C26964d> it = this.f75448b.iterator();
        while (it.hasNext()) {
            C26964d next = it.next();
            if (next.f75459c.equals(fragment) && !next.f75462f) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: e */
    public void m1058e() {
        String str;
        String str2;
        ViewGroup viewGroup = this.f75447a;
        AtomicInteger atomicInteger = C26614s.f74505a;
        boolean isAttachedToWindow = viewGroup.isAttachedToWindow();
        synchronized (this.f75448b) {
            m1054i();
            Iterator<C26964d> it = this.f75448b.iterator();
            while (it.hasNext()) {
                it.next().mo1050d();
            }
            Iterator it2 = new ArrayList(this.f75449c).iterator();
            while (it2.hasNext()) {
                C26964d c26964d = (C26964d) it2.next();
                if (FragmentManager.m42933T(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("SpecialEffectsController: ");
                    if (isAttachedToWindow) {
                        str2 = "";
                    } else {
                        str2 = "Container " + this.f75447a + " is not attached to window. ";
                    }
                    sb.append(str2);
                    sb.append("Cancelling running operation ");
                    sb.append(c26964d);
                    sb.toString();
                }
                c26964d.m1053a();
            }
            Iterator it3 = new ArrayList(this.f75448b).iterator();
            while (it3.hasNext()) {
                C26964d c26964d2 = (C26964d) it3.next();
                if (FragmentManager.m42933T(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("SpecialEffectsController: ");
                    if (isAttachedToWindow) {
                        str = "";
                    } else {
                        str = "Container " + this.f75447a + " is not attached to window. ";
                    }
                    sb2.append(str);
                    sb2.append("Cancelling pending operation ");
                    sb2.append(c26964d2);
                    sb2.toString();
                }
                c26964d2.m1053a();
            }
        }
    }

    /* renamed from: h */
    public void m1055h() {
        synchronized (this.f75448b) {
            m1054i();
            this.f75451e = false;
            int size = this.f75448b.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                C26964d c26964d = this.f75448b.get(size);
                C26964d.EnumC26967c m1046d = C26964d.EnumC26967c.m1046d(c26964d.f75459c.mView);
                C26964d.EnumC26967c enumC26967c = c26964d.f75457a;
                C26964d.EnumC26967c enumC26967c2 = C26964d.EnumC26967c.VISIBLE;
                if (enumC26967c == enumC26967c2 && m1046d != enumC26967c2) {
                    this.f75451e = c26964d.f75459c.isPostponed();
                    break;
                }
                size--;
            }
        }
    }

    /* renamed from: i */
    public final void m1054i() {
        Iterator<C26964d> it = this.f75448b.iterator();
        while (it.hasNext()) {
            C26964d next = it.next();
            if (next.f75458b == C26964d.EnumC26966b.ADDING) {
                next.m1051c(C26964d.EnumC26967c.m1047c(next.f75459c.requireView().getVisibility()), C26964d.EnumC26966b.NONE);
            }
        }
    }
}
