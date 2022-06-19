package androidx.fragment.app;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Rect;
import android.support.p012v4.media.C0082b;
import android.transition.Transition;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.AbstractC0484w0;
import androidx.fragment.app.C0473s;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import p120i0.C3056b;
import p163m0.C3589v;
import p163m0.C3611y;
import p163m0.ViewTreeObserver$OnPreDrawListenerC3583p;
import p226s.AbstractC4257f;
import p226s.C4251a;
/* renamed from: androidx.fragment.app.c */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/c.class */
public class C0416c extends AbstractC0484w0 {

    /* renamed from: androidx.fragment.app.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$a.class */
    public class RunnableC0417a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f1754a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC0484w0.C0488d f1755b;

        public RunnableC0417a(List list, AbstractC0484w0.C0488d c0488d) {
            C0416c.this = r4;
            this.f1754a = list;
            this.f1755b = c0488d;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f1754a.contains(this.f1755b)) {
                this.f1754a.remove(this.f1755b);
                C0416c c0416c = C0416c.this;
                AbstractC0484w0.C0488d c0488d = this.f1755b;
                Objects.requireNonNull(c0416c);
                c0488d.f1964a.m8038a(c0488d.f1966c.mView);
            }
        }
    }

    /* renamed from: androidx.fragment.app.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$b.class */
    public static class C0418b extends C0419c {

        /* renamed from: c */
        public boolean f1757c;

        /* renamed from: d */
        public boolean f1758d = false;

        /* renamed from: e */
        public C0473s.C0474a f1759e;

        public C0418b(AbstractC0484w0.C0488d c0488d, C3056b c3056b, boolean z) {
            super(c0488d, c3056b);
            this.f1757c = z;
        }

        /* renamed from: c */
        public C0473s.C0474a m8134c(Context context) {
            if (this.f1758d) {
                return this.f1759e;
            }
            AbstractC0484w0.C0488d c0488d = this.f1760a;
            C0473s.C0474a m8062a = C0473s.m8062a(context, c0488d.f1966c, c0488d.f1964a == AbstractC0484w0.C0488d.EnumC0491c.VISIBLE, this.f1757c);
            this.f1759e = m8062a;
            this.f1758d = true;
            return m8062a;
        }
    }

    /* renamed from: androidx.fragment.app.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$c.class */
    public static class C0419c {

        /* renamed from: a */
        public final AbstractC0484w0.C0488d f1760a;

        /* renamed from: b */
        public final C3056b f1761b;

        public C0419c(AbstractC0484w0.C0488d c0488d, C3056b c3056b) {
            this.f1760a = c0488d;
            this.f1761b = c3056b;
        }

        /* renamed from: a */
        public void m8133a() {
            AbstractC0484w0.C0488d c0488d = this.f1760a;
            if (!c0488d.f1968e.remove(this.f1761b) || !c0488d.f1968e.isEmpty()) {
                return;
            }
            c0488d.mo8041b();
        }

        /* renamed from: b */
        public boolean m8132b() {
            AbstractC0484w0.C0488d.EnumC0491c enumC0491c;
            AbstractC0484w0.C0488d.EnumC0491c m8036c = AbstractC0484w0.C0488d.EnumC0491c.m8036c(this.f1760a.f1966c.mView);
            AbstractC0484w0.C0488d.EnumC0491c enumC0491c2 = this.f1760a.f1964a;
            return m8036c == enumC0491c2 || !(m8036c == (enumC0491c = AbstractC0484w0.C0488d.EnumC0491c.VISIBLE) || enumC0491c2 == enumC0491c);
        }
    }

    /* renamed from: androidx.fragment.app.c$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$d.class */
    public static class C0420d extends C0419c {

        /* renamed from: c */
        public final Object f1762c;

        /* renamed from: d */
        public final boolean f1763d;

        /* renamed from: e */
        public final Object f1764e;

        public C0420d(AbstractC0484w0.C0488d c0488d, C3056b c3056b, boolean z, boolean z2) {
            super(c0488d, c3056b);
            if (c0488d.f1964a == AbstractC0484w0.C0488d.EnumC0491c.VISIBLE) {
                this.f1762c = z ? c0488d.f1966c.getReenterTransition() : c0488d.f1966c.getEnterTransition();
                this.f1763d = z ? c0488d.f1966c.getAllowReturnTransitionOverlap() : c0488d.f1966c.getAllowEnterTransitionOverlap();
            } else {
                this.f1762c = z ? c0488d.f1966c.getReturnTransition() : c0488d.f1966c.getExitTransition();
                this.f1763d = true;
            }
            if (!z2) {
                this.f1764e = null;
            } else if (z) {
                this.f1764e = c0488d.f1966c.getSharedElementReturnTransition();
            } else {
                this.f1764e = c0488d.f1966c.getSharedElementEnterTransition();
            }
        }

        /* renamed from: c */
        public final AbstractC0471r0 m8131c(Object obj) {
            if (obj == null) {
                return null;
            }
            AbstractC0471r0 abstractC0471r0 = C0459p0.f1898b;
            if (obj instanceof Transition) {
                return abstractC0471r0;
            }
            AbstractC0471r0 abstractC0471r02 = C0459p0.f1899c;
            if (abstractC0471r02 != null && abstractC0471r02.mo2296e(obj)) {
                return abstractC0471r02;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + this.f1760a.f1966c + " is not a valid framework Transition or AndroidX Transition");
        }
    }

    public C0416c(ViewGroup viewGroup) {
        super(viewGroup);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.AbstractC0484w0
    /* renamed from: b */
    public void mo8050b(List<AbstractC0484w0.C0488d> list, boolean z) {
        ArrayList arrayList;
        AbstractC0484w0.C0488d.EnumC0491c enumC0491c;
        HashMap hashMap;
        AbstractC0484w0.C0488d c0488d;
        View view;
        AbstractC0484w0.C0488d.EnumC0491c enumC0491c2 = AbstractC0484w0.C0488d.EnumC0491c.GONE;
        AbstractC0484w0.C0488d.EnumC0491c enumC0491c3 = AbstractC0484w0.C0488d.EnumC0491c.VISIBLE;
        AbstractC0484w0.C0488d c0488d2 = null;
        AbstractC0484w0.C0488d c0488d3 = null;
        for (AbstractC0484w0.C0488d c0488d4 : list) {
            AbstractC0484w0.C0488d.EnumC0491c m8036c = AbstractC0484w0.C0488d.EnumC0491c.m8036c(c0488d4.f1966c.mView);
            int ordinal = c0488d4.f1964a.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal != 2 && ordinal != 3) {
                    }
                } else if (m8036c != enumC0491c3) {
                    c0488d3 = c0488d4;
                }
            }
            if (m8036c == enumC0491c3 && c0488d2 == null) {
                c0488d2 = c0488d4;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList(list);
        Iterator<AbstractC0484w0.C0488d> it2 = list.iterator();
        while (it2.hasNext()) {
            AbstractC0484w0.C0488d next = it2.next();
            C3056b c3056b = new C3056b();
            next.mo8039d();
            next.f1968e.add(c3056b);
            arrayList2.add(new C0418b(next, c3056b, z));
            C3056b c3056b2 = new C3056b();
            next.mo8039d();
            next.f1968e.add(c3056b2);
            arrayList3.add(new C0420d(next, c3056b2, z, !z ? next == c0488d3 : next == c0488d2));
            next.f1967d.add(new RunnableC0417a(arrayList4, next));
        }
        HashMap hashMap2 = new HashMap();
        Iterator it3 = arrayList3.iterator();
        AbstractC0471r0 abstractC0471r0 = null;
        while (it3.hasNext()) {
            C0420d c0420d = (C0420d) it3.next();
            if (!c0420d.m8132b()) {
                AbstractC0471r0 m8131c = c0420d.m8131c(c0420d.f1762c);
                AbstractC0471r0 m8131c2 = c0420d.m8131c(c0420d.f1764e);
                if (m8131c != null && m8131c2 != null && m8131c != m8131c2) {
                    StringBuilder m8752j = C0082b.m8752j("Mixing framework transitions and AndroidX transitions is not allowed. Fragment ");
                    m8752j.append(c0420d.f1760a.f1966c);
                    m8752j.append(" returned Transition ");
                    m8752j.append(c0420d.f1762c);
                    m8752j.append(" which uses a different Transition  type than its shared element transition ");
                    m8752j.append(c0420d.f1764e);
                    throw new IllegalArgumentException(m8752j.toString());
                }
                if (m8131c == null) {
                    m8131c = m8131c2;
                }
                if (abstractC0471r0 == null) {
                    abstractC0471r0 = m8131c;
                } else if (m8131c != null && abstractC0471r0 != m8131c) {
                    StringBuilder m8752j2 = C0082b.m8752j("Mixing framework transitions and AndroidX transitions is not allowed. Fragment ");
                    m8752j2.append(c0420d.f1760a.f1966c);
                    m8752j2.append(" returned Transition ");
                    m8752j2.append(c0420d.f1762c);
                    m8752j2.append(" which uses a different Transition  type than other Fragments.");
                    throw new IllegalArgumentException(m8752j2.toString());
                }
            }
        }
        if (abstractC0471r0 == null) {
            Iterator it4 = arrayList3.iterator();
            while (it4.hasNext()) {
                C0420d c0420d2 = (C0420d) it4.next();
                hashMap2.put(c0420d2.f1760a, Boolean.FALSE);
                c0420d2.m8133a();
            }
            arrayList = arrayList4;
            enumC0491c = enumC0491c2;
            hashMap = hashMap2;
        } else {
            View view2 = new View(this.f1954a.getContext());
            Rect rect = new Rect();
            ArrayList<View> arrayList5 = new ArrayList<>();
            ArrayList<View> arrayList6 = new ArrayList<>();
            C4251a c4251a = new C4251a();
            Iterator it5 = arrayList3.iterator();
            Object obj = null;
            View view3 = null;
            boolean z2 = false;
            AbstractC0484w0.C0488d c0488d5 = c0488d2;
            AbstractC0484w0.C0488d c0488d6 = c0488d3;
            AbstractC0484w0.C0488d c0488d7 = c0488d2;
            while (it5.hasNext()) {
                Object obj2 = ((C0420d) it5.next()).f1764e;
                if ((obj2 != null) && c0488d5 != null && c0488d6 != null) {
                    Object mo2284y = abstractC0471r0.mo2284y(abstractC0471r0.mo2295g(obj2));
                    ArrayList<String> sharedElementSourceNames = c0488d6.f1966c.getSharedElementSourceNames();
                    ArrayList<String> sharedElementSourceNames2 = c0488d5.f1966c.getSharedElementSourceNames();
                    ArrayList<String> sharedElementTargetNames = c0488d5.f1966c.getSharedElementTargetNames();
                    for (int i = 0; i < sharedElementTargetNames.size(); i++) {
                        int indexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i));
                        if (indexOf != -1) {
                            sharedElementSourceNames.set(indexOf, sharedElementSourceNames2.get(i));
                        }
                    }
                    ArrayList<String> sharedElementTargetNames2 = c0488d6.f1966c.getSharedElementTargetNames();
                    if (!z) {
                        c0488d5.f1966c.getExitTransitionCallback();
                        c0488d6.f1966c.getEnterTransitionCallback();
                    } else {
                        c0488d5.f1966c.getEnterTransitionCallback();
                        c0488d6.f1966c.getExitTransitionCallback();
                    }
                    int size = sharedElementSourceNames.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        c4251a.put(sharedElementSourceNames.get(i2), sharedElementTargetNames2.get(i2));
                    }
                    C4251a<String, View> c4251a2 = new C4251a<>();
                    m8136k(c4251a2, c0488d5.f1966c.mView);
                    AbstractC4257f.m1205k(c4251a2, sharedElementSourceNames);
                    AbstractC4257f.m1205k(c4251a, c4251a2.keySet());
                    C4251a<String, View> c4251a3 = new C4251a<>();
                    m8136k(c4251a3, c0488d6.f1966c.mView);
                    AbstractC4257f.m1205k(c4251a3, sharedElementTargetNames2);
                    AbstractC4257f.m1205k(c4251a3, c4251a.values());
                    C0459p0.m8076n(c4251a, c4251a3);
                    m8135l(c4251a2, c4251a.keySet());
                    m8135l(c4251a3, c4251a.values());
                    if (c4251a.isEmpty()) {
                        arrayList5.clear();
                        arrayList6.clear();
                        obj = null;
                    } else {
                        C0459p0.m8087c(c0488d6.f1966c, c0488d5.f1966c, z, c4251a2, true);
                        AbstractC0471r0 abstractC0471r02 = abstractC0471r0;
                        ViewTreeObserver$OnPreDrawListenerC3583p.m2126a(this.f1954a, new RunnableC0435h(this, c0488d3, c0488d7, z, c4251a3));
                        arrayList5.addAll(c4251a2.values());
                        if (!sharedElementSourceNames.isEmpty()) {
                            view3 = c4251a2.get(sharedElementSourceNames.get(0));
                            abstractC0471r02.mo2287t(mo2284y, view3);
                        }
                        arrayList6.addAll(c4251a3.values());
                        if (!sharedElementTargetNames2.isEmpty() && (view = c4251a3.get(sharedElementTargetNames2.get(0))) != null) {
                            ViewTreeObserver$OnPreDrawListenerC3583p.m2126a(this.f1954a, new RunnableC0437i(this, abstractC0471r02, view, rect));
                            z2 = true;
                        }
                        abstractC0471r02.mo2286w(mo2284y, view2, arrayList5);
                        abstractC0471r02.mo2289r(mo2284y, null, null, null, null, mo2284y, arrayList6);
                        Boolean bool = Boolean.TRUE;
                        c0488d5 = c0488d7;
                        hashMap2.put(c0488d5, bool);
                        hashMap2.put(c0488d3, bool);
                        obj = mo2284y;
                        c0488d6 = c0488d3;
                    }
                }
            }
            ArrayList arrayList7 = new ArrayList();
            Iterator it6 = arrayList3.iterator();
            Object obj3 = null;
            View view4 = view3;
            Object obj4 = null;
            while (it6.hasNext()) {
                C0420d c0420d3 = (C0420d) it6.next();
                if (c0420d3.m8132b()) {
                    hashMap2.put(c0420d3.f1760a, Boolean.FALSE);
                    c0420d3.m8133a();
                    c0488d = c0488d6;
                } else {
                    Object mo2295g = abstractC0471r0.mo2295g(c0420d3.f1762c);
                    AbstractC0484w0.C0488d c0488d8 = c0420d3.f1760a;
                    boolean z3 = obj != null && (c0488d8 == c0488d5 || c0488d8 == c0488d6);
                    if (mo2295g != null) {
                        ArrayList<View> arrayList8 = new ArrayList<>();
                        m8137j(arrayList8, c0488d8.f1966c.mView);
                        if (z3) {
                            if (c0488d8 == c0488d5) {
                                arrayList8.removeAll(arrayList5);
                            } else {
                                arrayList8.removeAll(arrayList6);
                            }
                        }
                        if (arrayList8.isEmpty()) {
                            abstractC0471r0.mo2299a(mo2295g, view2);
                        } else {
                            abstractC0471r0.mo2298b(mo2295g, arrayList8);
                            abstractC0471r0.mo2289r(mo2295g, mo2295g, arrayList8, null, null, null, null);
                            if (c0488d8.f1964a == enumC0491c2) {
                                arrayList4.remove(c0488d8);
                                ArrayList<View> arrayList9 = new ArrayList<>(arrayList8);
                                arrayList9.remove(c0488d8.f1966c.mView);
                                abstractC0471r0.mo2290q(mo2295g, c0488d8.f1966c.mView, arrayList9);
                                ViewTreeObserver$OnPreDrawListenerC3583p.m2126a(this.f1954a, new RunnableC0440j(this, arrayList8));
                            }
                        }
                        if (c0488d8.f1964a == enumC0491c3) {
                            arrayList7.addAll(arrayList8);
                            if (z2) {
                                abstractC0471r0.mo2288s(mo2295g, rect);
                            }
                        } else {
                            abstractC0471r0.mo2287t(mo2295g, view4);
                        }
                        hashMap2.put(c0488d8, Boolean.TRUE);
                        if (c0420d3.f1763d) {
                            obj4 = abstractC0471r0.mo2293m(obj4, mo2295g, null);
                        } else {
                            obj3 = abstractC0471r0.mo2293m(obj3, mo2295g, null);
                        }
                    } else if (!z3) {
                        hashMap2.put(c0488d8, Boolean.FALSE);
                        c0420d3.m8133a();
                    }
                    c0488d = c0488d3;
                }
                c0488d6 = c0488d;
            }
            AbstractC0484w0.C0488d c0488d9 = c0488d3;
            enumC0491c = enumC0491c2;
            Object mo2294l = abstractC0471r0.mo2294l(obj4, obj3, obj);
            Iterator it7 = arrayList3.iterator();
            while (it7.hasNext()) {
                C0420d c0420d4 = (C0420d) it7.next();
                if (!c0420d4.m8132b()) {
                    Object obj5 = c0420d4.f1762c;
                    AbstractC0484w0.C0488d c0488d10 = c0420d4.f1760a;
                    boolean z4 = obj != null && (c0488d10 == c0488d5 || c0488d10 == c0488d9);
                    if (obj5 != null || z4) {
                        ViewGroup viewGroup = this.f1954a;
                        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                        if (!C3589v.C3596g.m2058c(viewGroup)) {
                            if (AbstractC0397a0.m8192N(2)) {
                                Objects.toString(this.f1954a);
                                Objects.toString(c0488d10);
                            }
                            c0420d4.m8133a();
                        } else {
                            abstractC0471r0.mo8064u(c0420d4.f1760a.f1966c, mo2294l, c0420d4.f1761b, new RunnableC0442k(this, c0420d4));
                        }
                    }
                }
            }
            ViewGroup viewGroup2 = this.f1954a;
            WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
            if (!C3589v.C3596g.m2058c(viewGroup2)) {
                hashMap = hashMap2;
                arrayList = arrayList4;
            } else {
                C0459p0.m8074p(arrayList7, 4);
                ArrayList<String> m8065n = abstractC0471r0.m8065n(arrayList6);
                abstractC0471r0.mo2297c(this.f1954a, mo2294l);
                abstractC0471r0.m8063v(this.f1954a, arrayList5, arrayList6, m8065n, c4251a);
                C0459p0.m8074p(arrayList7, 0);
                abstractC0471r0.mo2285x(obj, arrayList5, arrayList6);
                arrayList = arrayList4;
                hashMap = hashMap2;
            }
        }
        boolean containsValue = hashMap.containsValue(Boolean.TRUE);
        ViewGroup viewGroup3 = this.f1954a;
        Context context = viewGroup3.getContext();
        ArrayList arrayList10 = new ArrayList();
        Iterator it8 = arrayList2.iterator();
        boolean z5 = false;
        while (it8.hasNext()) {
            C0418b c0418b = (C0418b) it8.next();
            if (c0418b.m8132b()) {
                c0418b.m8133a();
            } else {
                C0473s.C0474a m8134c = c0418b.m8134c(context);
                if (m8134c == null) {
                    c0418b.m8133a();
                } else {
                    Animator animator = m8134c.f1934b;
                    if (animator == null) {
                        arrayList10.add(c0418b);
                    } else {
                        AbstractC0484w0.C0488d c0488d11 = c0418b.f1760a;
                        Fragment fragment = c0488d11.f1966c;
                        if (Boolean.TRUE.equals(hashMap.get(c0488d11))) {
                            if (AbstractC0397a0.m8192N(2)) {
                                Objects.toString(fragment);
                            }
                            c0418b.m8133a();
                        } else {
                            boolean z6 = c0488d11.f1964a == enumC0491c;
                            if (z6) {
                                arrayList.remove(c0488d11);
                            }
                            View view5 = fragment.mView;
                            viewGroup3.startViewTransition(view5);
                            animator.addListener(new C0423d(this, viewGroup3, view5, z6, c0488d11, c0418b));
                            animator.setTarget(view5);
                            animator.start();
                            c0418b.f1761b.m2666b(new C0426e(this, animator));
                            z5 = true;
                        }
                    }
                }
            }
        }
        Iterator it9 = arrayList10.iterator();
        while (it9.hasNext()) {
            C0418b c0418b2 = (C0418b) it9.next();
            AbstractC0484w0.C0488d c0488d12 = c0418b2.f1760a;
            Fragment fragment2 = c0488d12.f1966c;
            if (containsValue) {
                if (AbstractC0397a0.m8192N(2)) {
                    Objects.toString(fragment2);
                }
                c0418b2.m8133a();
            } else if (z5) {
                if (AbstractC0397a0.m8192N(2)) {
                    Objects.toString(fragment2);
                }
                c0418b2.m8133a();
            } else {
                View view6 = fragment2.mView;
                C0473s.C0474a m8134c2 = c0418b2.m8134c(context);
                Objects.requireNonNull(m8134c2);
                Animation animation = m8134c2.f1933a;
                Objects.requireNonNull(animation);
                if (c0488d12.f1964a != AbstractC0484w0.C0488d.EnumC0491c.REMOVED) {
                    view6.startAnimation(animation);
                    c0418b2.m8133a();
                } else {
                    viewGroup3.startViewTransition(view6);
                    C0473s.RunnableC0475b runnableC0475b = new C0473s.RunnableC0475b(animation, viewGroup3, view6);
                    runnableC0475b.setAnimationListener(new animationAnimation$AnimationListenerC0428f(this, viewGroup3, view6, c0418b2));
                    view6.startAnimation(runnableC0475b);
                }
                c0418b2.f1761b.m2666b(new C0432g(this, view6, viewGroup3, c0418b2));
            }
        }
        Iterator it10 = arrayList.iterator();
        while (it10.hasNext()) {
            AbstractC0484w0.C0488d c0488d13 = (AbstractC0484w0.C0488d) it10.next();
            c0488d13.f1964a.m8038a(c0488d13.f1966c.mView);
        }
        arrayList.clear();
    }

    /* renamed from: j */
    public void m8137j(ArrayList<View> arrayList, View view) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (viewGroup.isTransitionGroup()) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(viewGroup);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getVisibility() == 0) {
                m8137j(arrayList, childAt);
            }
        }
    }

    /* renamed from: k */
    public void m8136k(Map<String, View> map, View view) {
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        String m2040k = C3589v.C3598i.m2040k(view);
        if (m2040k != null) {
            map.put(m2040k, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    m8136k(map, childAt);
                }
            }
        }
    }

    /* renamed from: l */
    public void m8135l(C4251a<String, View> c4251a, Collection<String> collection) {
        Iterator it2 = ((AbstractC4257f.C4259b) c4251a.entrySet()).iterator();
        while (true) {
            AbstractC4257f.C4261d c4261d = (AbstractC4257f.C4261d) it2;
            if (c4261d.hasNext()) {
                c4261d.next();
                View view = (View) c4261d.getValue();
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                if (!collection.contains(C3589v.C3598i.m2040k(view))) {
                    c4261d.remove();
                }
            } else {
                return;
            }
        }
    }
}
