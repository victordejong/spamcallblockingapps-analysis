package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.AbstractC0397a0;
import androidx.recyclerview.widget.C0608b;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import p007a6.C0033h;
import p120i0.C3056b;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: androidx.fragment.app.w0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/w0.class */
public abstract class AbstractC0484w0 {

    /* renamed from: a */
    public final ViewGroup f1954a;

    /* renamed from: b */
    public final ArrayList<C0488d> f1955b = new ArrayList<>();

    /* renamed from: c */
    public final ArrayList<C0488d> f1956c = new ArrayList<>();

    /* renamed from: d */
    public boolean f1957d = false;

    /* renamed from: e */
    public boolean f1958e = false;

    /* renamed from: androidx.fragment.app.w0$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/w0$a.class */
    public class RunnableC0485a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C0487c f1959a;

        public RunnableC0485a(C0487c c0487c) {
            AbstractC0484w0.this = r4;
            this.f1959a = c0487c;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AbstractC0484w0.this.f1955b.contains(this.f1959a)) {
                C0487c c0487c = this.f1959a;
                c0487c.f1964a.m8038a(c0487c.f1966c.mView);
            }
        }
    }

    /* renamed from: androidx.fragment.app.w0$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/w0$b.class */
    public class RunnableC0486b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C0487c f1961a;

        public RunnableC0486b(C0487c c0487c) {
            AbstractC0484w0.this = r4;
            this.f1961a = c0487c;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC0484w0.this.f1955b.remove(this.f1961a);
            AbstractC0484w0.this.f1956c.remove(this.f1961a);
        }
    }

    /* renamed from: androidx.fragment.app.w0$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/w0$c.class */
    public static class C0487c extends C0488d {

        /* renamed from: h */
        public final C0433g0 f1963h;

        public C0487c(C0488d.EnumC0491c enumC0491c, C0488d.EnumC0490b enumC0490b, C0433g0 c0433g0, C3056b c3056b) {
            super(enumC0491c, enumC0490b, c0433g0.f1808c, c3056b);
            this.f1963h = c0433g0;
        }

        @Override // androidx.fragment.app.AbstractC0484w0.C0488d
        /* renamed from: b */
        public void mo8041b() {
            super.mo8041b();
            this.f1963h.m8117k();
        }

        @Override // androidx.fragment.app.AbstractC0484w0.C0488d
        /* renamed from: d */
        public void mo8039d() {
            if (this.f1965b == C0488d.EnumC0490b.ADDING) {
                Fragment fragment = this.f1963h.f1808c;
                View findFocus = fragment.mView.findFocus();
                if (findFocus != null) {
                    fragment.setFocusedView(findFocus);
                    if (AbstractC0397a0.m8192N(2)) {
                        findFocus.toString();
                        fragment.toString();
                    }
                }
                View requireView = this.f1966c.requireView();
                if (requireView.getParent() == null) {
                    this.f1963h.m8126b();
                    requireView.setAlpha(0.0f);
                }
                if (requireView.getAlpha() == 0.0f && requireView.getVisibility() == 0) {
                    requireView.setVisibility(4);
                }
                requireView.setAlpha(fragment.getPostOnViewCreatedAlpha());
            }
        }
    }

    /* renamed from: androidx.fragment.app.w0$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/w0$d.class */
    public static class C0488d {

        /* renamed from: a */
        public EnumC0491c f1964a;

        /* renamed from: b */
        public EnumC0490b f1965b;

        /* renamed from: c */
        public final Fragment f1966c;

        /* renamed from: d */
        public final List<Runnable> f1967d = new ArrayList();

        /* renamed from: e */
        public final HashSet<C3056b> f1968e = new HashSet<>();

        /* renamed from: f */
        public boolean f1969f = false;

        /* renamed from: g */
        public boolean f1970g = false;

        /* renamed from: androidx.fragment.app.w0$d$a */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/w0$d$a.class */
        public class C0489a implements C3056b.AbstractC3057a {
            public C0489a() {
                C0488d.this = r4;
            }

            @Override // p120i0.C3056b.AbstractC3057a
            /* renamed from: a */
            public void mo2665a() {
                C0488d.this.m8042a();
            }
        }

        /* renamed from: androidx.fragment.app.w0$d$b */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/w0$d$b.class */
        public enum EnumC0490b {
            NONE,
            ADDING,
            REMOVING
        }

        /* renamed from: androidx.fragment.app.w0$d$c */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/w0$d$c.class */
        public enum EnumC0491c {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            /* renamed from: b */
            public static EnumC0491c m8037b(int i) {
                if (i != 0) {
                    if (i == 4) {
                        return INVISIBLE;
                    }
                    if (i != 8) {
                        throw new IllegalArgumentException(C0033h.m8886k("Unknown visibility ", i));
                    }
                    return GONE;
                }
                return VISIBLE;
            }

            /* renamed from: c */
            public static EnumC0491c m8036c(View view) {
                return (view.getAlpha() == 0.0f && view.getVisibility() == 0) ? INVISIBLE : m8037b(view.getVisibility());
            }

            /* renamed from: a */
            public void m8038a(View view) {
                int ordinal = ordinal();
                if (ordinal == 0) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup == null) {
                        return;
                    }
                    if (AbstractC0397a0.m8192N(2)) {
                        view.toString();
                        viewGroup.toString();
                    }
                    viewGroup.removeView(view);
                } else if (ordinal == 1) {
                    if (AbstractC0397a0.m8192N(2)) {
                        Objects.toString(view);
                    }
                    view.setVisibility(0);
                } else if (ordinal == 2) {
                    if (AbstractC0397a0.m8192N(2)) {
                        Objects.toString(view);
                    }
                    view.setVisibility(8);
                } else if (ordinal != 3) {
                } else {
                    if (AbstractC0397a0.m8192N(2)) {
                        Objects.toString(view);
                    }
                    view.setVisibility(4);
                }
            }
        }

        public C0488d(EnumC0491c enumC0491c, EnumC0490b enumC0490b, Fragment fragment, C3056b c3056b) {
            this.f1964a = enumC0491c;
            this.f1965b = enumC0490b;
            this.f1966c = fragment;
            c3056b.m2666b(new C0489a());
        }

        /* renamed from: a */
        public final void m8042a() {
            if (this.f1969f) {
                return;
            }
            this.f1969f = true;
            if (this.f1968e.isEmpty()) {
                mo8041b();
                return;
            }
            Iterator it2 = new ArrayList(this.f1968e).iterator();
            while (it2.hasNext()) {
                ((C3056b) it2.next()).m2667a();
            }
        }

        /* renamed from: b */
        public void mo8041b() {
            if (this.f1970g) {
                return;
            }
            if (AbstractC0397a0.m8192N(2)) {
                toString();
            }
            this.f1970g = true;
            for (Runnable runnable : this.f1967d) {
                runnable.run();
            }
        }

        /* renamed from: c */
        public final void m8040c(EnumC0491c enumC0491c, EnumC0490b enumC0490b) {
            EnumC0491c enumC0491c2 = EnumC0491c.REMOVED;
            int ordinal = enumC0490b.ordinal();
            if (ordinal == 0) {
                if (this.f1964a == enumC0491c2) {
                    return;
                }
                if (AbstractC0397a0.m8192N(2)) {
                    Objects.toString(this.f1966c);
                    Objects.toString(this.f1964a);
                    Objects.toString(enumC0491c);
                }
                this.f1964a = enumC0491c;
            } else if (ordinal == 1) {
                if (this.f1964a != enumC0491c2) {
                    return;
                }
                if (AbstractC0397a0.m8192N(2)) {
                    Objects.toString(this.f1966c);
                    Objects.toString(this.f1965b);
                }
                this.f1964a = EnumC0491c.VISIBLE;
                this.f1965b = EnumC0490b.ADDING;
            } else if (ordinal != 2) {
            } else {
                if (AbstractC0397a0.m8192N(2)) {
                    Objects.toString(this.f1966c);
                    Objects.toString(this.f1964a);
                    Objects.toString(this.f1965b);
                }
                this.f1964a = enumC0491c2;
                this.f1965b = EnumC0490b.REMOVING;
            }
        }

        /* renamed from: d */
        public void mo8039d() {
        }

        public String toString() {
            StringBuilder m7624k = C0608b.m7624k("Operation ", "{");
            m7624k.append(Integer.toHexString(System.identityHashCode(this)));
            m7624k.append("} ");
            m7624k.append("{");
            m7624k.append("mFinalState = ");
            m7624k.append(this.f1964a);
            m7624k.append("} ");
            m7624k.append("{");
            m7624k.append("mLifecycleImpact = ");
            m7624k.append(this.f1965b);
            m7624k.append("} ");
            m7624k.append("{");
            m7624k.append("mFragment = ");
            m7624k.append(this.f1966c);
            m7624k.append("}");
            return m7624k.toString();
        }
    }

    public AbstractC0484w0(ViewGroup viewGroup) {
        this.f1954a = viewGroup;
    }

    /* renamed from: f */
    public static AbstractC0484w0 m8046f(ViewGroup viewGroup, AbstractC0397a0 abstractC0397a0) {
        return m8045g(viewGroup, abstractC0397a0.m8194L());
    }

    /* renamed from: g */
    public static AbstractC0484w0 m8045g(ViewGroup viewGroup, AbstractC0493x0 abstractC0493x0) {
        Object tag = viewGroup.getTag(2131297034);
        if (tag instanceof AbstractC0484w0) {
            return (AbstractC0484w0) tag;
        }
        Objects.requireNonNull((AbstractC0397a0.C0403f) abstractC0493x0);
        C0416c c0416c = new C0416c(viewGroup);
        viewGroup.setTag(2131297034, c0416c);
        return c0416c;
    }

    /* renamed from: a */
    public final void m8051a(C0488d.EnumC0491c enumC0491c, C0488d.EnumC0490b enumC0490b, C0433g0 c0433g0) {
        synchronized (this.f1955b) {
            C3056b c3056b = new C3056b();
            C0488d m8048d = m8048d(c0433g0.f1808c);
            if (m8048d != null) {
                m8048d.m8040c(enumC0491c, enumC0490b);
                return;
            }
            C0487c c0487c = new C0487c(enumC0491c, enumC0490b, c0433g0, c3056b);
            this.f1955b.add(c0487c);
            c0487c.f1967d.add(new RunnableC0485a(c0487c));
            c0487c.f1967d.add(new RunnableC0486b(c0487c));
        }
    }

    /* renamed from: b */
    public abstract void mo8050b(List<C0488d> list, boolean z);

    /* renamed from: c */
    public void m8049c() {
        if (this.f1958e) {
            return;
        }
        ViewGroup viewGroup = this.f1954a;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        if (!C3589v.C3596g.m2059b(viewGroup)) {
            m8047e();
            this.f1957d = false;
            return;
        }
        synchronized (this.f1955b) {
            if (!this.f1955b.isEmpty()) {
                ArrayList arrayList = new ArrayList(this.f1956c);
                this.f1956c.clear();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    C0488d c0488d = (C0488d) it2.next();
                    if (AbstractC0397a0.m8192N(2)) {
                        Objects.toString(c0488d);
                    }
                    c0488d.m8042a();
                    if (!c0488d.f1970g) {
                        this.f1956c.add(c0488d);
                    }
                }
                m8043i();
                ArrayList arrayList2 = new ArrayList(this.f1955b);
                this.f1955b.clear();
                this.f1956c.addAll(arrayList2);
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    ((C0488d) it3.next()).mo8039d();
                }
                mo8050b(arrayList2, this.f1957d);
                this.f1957d = false;
            }
        }
    }

    /* renamed from: d */
    public final C0488d m8048d(Fragment fragment) {
        Iterator<C0488d> it2 = this.f1955b.iterator();
        while (it2.hasNext()) {
            C0488d next = it2.next();
            if (next.f1966c.equals(fragment) && !next.f1969f) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: e */
    public void m8047e() {
        ViewGroup viewGroup = this.f1954a;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        boolean m2059b = C3589v.C3596g.m2059b(viewGroup);
        synchronized (this.f1955b) {
            m8043i();
            Iterator<C0488d> it2 = this.f1955b.iterator();
            while (it2.hasNext()) {
                it2.next().mo8039d();
            }
            Iterator it3 = new ArrayList(this.f1956c).iterator();
            while (it3.hasNext()) {
                C0488d c0488d = (C0488d) it3.next();
                if (AbstractC0397a0.m8192N(2)) {
                    if (!m2059b) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Container ");
                        sb.append(this.f1954a);
                        sb.append(" is not attached to window. ");
                    }
                    Objects.toString(c0488d);
                }
                c0488d.m8042a();
            }
            Iterator it4 = new ArrayList(this.f1955b).iterator();
            while (it4.hasNext()) {
                C0488d c0488d2 = (C0488d) it4.next();
                if (AbstractC0397a0.m8192N(2)) {
                    if (!m2059b) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Container ");
                        sb2.append(this.f1954a);
                        sb2.append(" is not attached to window. ");
                    }
                    Objects.toString(c0488d2);
                }
                c0488d2.m8042a();
            }
        }
    }

    /* renamed from: h */
    public void m8044h() {
        synchronized (this.f1955b) {
            m8043i();
            this.f1958e = false;
            int size = this.f1955b.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                C0488d c0488d = this.f1955b.get(size);
                C0488d.EnumC0491c m8036c = C0488d.EnumC0491c.m8036c(c0488d.f1966c.mView);
                C0488d.EnumC0491c enumC0491c = c0488d.f1964a;
                C0488d.EnumC0491c enumC0491c2 = C0488d.EnumC0491c.VISIBLE;
                if (enumC0491c == enumC0491c2 && m8036c != enumC0491c2) {
                    this.f1958e = c0488d.f1966c.isPostponed();
                    break;
                }
                size--;
            }
        }
    }

    /* renamed from: i */
    public final void m8043i() {
        Iterator<C0488d> it2 = this.f1955b.iterator();
        while (it2.hasNext()) {
            C0488d next = it2.next();
            if (next.f1965b == C0488d.EnumC0490b.ADDING) {
                next.m8040c(C0488d.EnumC0491c.m8037b(next.f1966c.requireView().getVisibility()), C0488d.EnumC0490b.NONE);
            }
        }
    }
}
