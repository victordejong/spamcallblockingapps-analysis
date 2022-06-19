package p1727n3.p1859r.p1860a;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Rect;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.transition.Transition;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1788g.AbstractC26181g;
import p1727n3.p1788g.C26174a;
import p1727n3.p1807k.p1808a.AbstractC26415b0;
import p1727n3.p1807k.p1816e.C26508a;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1807k.p1821i.ViewTreeObserver$OnPreDrawListenerC26612q;
import p1727n3.p1859r.p1860a.AbstractC26960u0;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.r.a.b */
/* loaded from: classes-dex2jar.jar:n3/r/a/b.class */
public class C26909b extends AbstractC26960u0 {

    /* renamed from: n3.r.a.b$a */
    /* loaded from: classes-dex2jar.jar:n3/r/a/b$a.class */
    public class RunnableC26910a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f75277a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC26960u0.C26964d f75278b;

        public RunnableC26910a(List list, AbstractC26960u0.C26964d c26964d) {
            C26909b.this = r4;
            this.f75277a = list;
            this.f75278b = c26964d;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f75277a.contains(this.f75278b)) {
                this.f75277a.remove(this.f75278b);
                C26909b c26909b = C26909b.this;
                AbstractC26960u0.C26964d c26964d = this.f75278b;
                Objects.requireNonNull(c26909b);
                c26964d.f75457a.m1048a(c26964d.f75459c.mView);
            }
        }
    }

    /* renamed from: n3.r.a.b$b */
    /* loaded from: classes-dex2jar.jar:n3/r/a/b$b.class */
    public static class C26911b extends C26912c {

        /* renamed from: c */
        public boolean f75280c;

        /* renamed from: d */
        public boolean f75281d = false;

        /* renamed from: e */
        public C26951p f75282e;

        public C26911b(AbstractC26960u0.C26964d c26964d, C26508a c26508a, boolean z) {
            super(c26964d, c26508a);
            this.f75280c = z;
        }

        /* renamed from: c */
        public C26951p m1172c(Context context) {
            if (this.f75281d) {
                return this.f75282e;
            }
            AbstractC26960u0.C26964d c26964d = this.f75283a;
            C26951p m43282N0 = MediaSessionCompat.m43282N0(context, c26964d.f75459c, c26964d.f75457a == AbstractC26960u0.C26964d.EnumC26967c.VISIBLE, this.f75280c);
            this.f75282e = m43282N0;
            this.f75281d = true;
            return m43282N0;
        }
    }

    /* renamed from: n3.r.a.b$c */
    /* loaded from: classes-dex2jar.jar:n3/r/a/b$c.class */
    public static class C26912c {

        /* renamed from: a */
        public final AbstractC26960u0.C26964d f75283a;

        /* renamed from: b */
        public final C26508a f75284b;

        public C26912c(AbstractC26960u0.C26964d c26964d, C26508a c26508a) {
            this.f75283a = c26964d;
            this.f75284b = c26508a;
        }

        /* renamed from: a */
        public void m1171a() {
            AbstractC26960u0.C26964d c26964d = this.f75283a;
            if (!c26964d.f75461e.remove(this.f75284b) || !c26964d.f75461e.isEmpty()) {
                return;
            }
            c26964d.mo1052b();
        }

        /* renamed from: b */
        public boolean m1170b() {
            AbstractC26960u0.C26964d.EnumC26967c enumC26967c;
            AbstractC26960u0.C26964d.EnumC26967c m1046d = AbstractC26960u0.C26964d.EnumC26967c.m1046d(this.f75283a.f75459c.mView);
            AbstractC26960u0.C26964d.EnumC26967c enumC26967c2 = this.f75283a.f75457a;
            return m1046d == enumC26967c2 || !(m1046d == (enumC26967c = AbstractC26960u0.C26964d.EnumC26967c.VISIBLE) || enumC26967c2 == enumC26967c);
        }
    }

    /* renamed from: n3.r.a.b$d */
    /* loaded from: classes-dex2jar.jar:n3/r/a/b$d.class */
    public static class C26913d extends C26912c {

        /* renamed from: c */
        public final Object f75285c;

        /* renamed from: d */
        public final boolean f75286d;

        /* renamed from: e */
        public final Object f75287e;

        public C26913d(AbstractC26960u0.C26964d c26964d, C26508a c26508a, boolean z, boolean z2) {
            super(c26964d, c26508a);
            if (c26964d.f75457a == AbstractC26960u0.C26964d.EnumC26967c.VISIBLE) {
                this.f75285c = z ? c26964d.f75459c.getReenterTransition() : c26964d.f75459c.getEnterTransition();
                this.f75286d = z ? c26964d.f75459c.getAllowReturnTransitionOverlap() : c26964d.f75459c.getAllowEnterTransitionOverlap();
            } else {
                this.f75285c = z ? c26964d.f75459c.getReturnTransition() : c26964d.f75459c.getExitTransition();
                this.f75286d = true;
            }
            if (!z2) {
                this.f75287e = null;
            } else if (z) {
                this.f75287e = c26964d.f75459c.getSharedElementReturnTransition();
            } else {
                this.f75287e = c26964d.f75459c.getSharedElementEnterTransition();
            }
        }

        /* renamed from: c */
        public final AbstractC26949o0 m1169c(Object obj) {
            if (obj == null) {
                return null;
            }
            AbstractC26949o0 abstractC26949o0 = C26937m0.f75394b;
            if (obj instanceof Transition) {
                return abstractC26949o0;
            }
            AbstractC26949o0 abstractC26949o02 = C26937m0.f75395c;
            if (abstractC26949o02 != null && abstractC26949o02.mo1093e(obj)) {
                return abstractC26949o02;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + this.f75283a.f75459c + " is not a valid framework Transition or AndroidX Transition");
        }
    }

    public C26909b(ViewGroup viewGroup) {
        super(viewGroup);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p1727n3.p1859r.p1860a.AbstractC26960u0
    /* renamed from: b */
    public void mo1061b(List<AbstractC26960u0.C26964d> list, boolean z) {
        ArrayList arrayList;
        Boolean bool;
        HashMap hashMap;
        AbstractC26960u0.C26964d.EnumC26967c enumC26967c;
        AbstractC26415b0 abstractC26415b0;
        AbstractC26415b0 abstractC26415b02;
        AbstractC26949o0 abstractC26949o0;
        AbstractC26960u0.C26964d.EnumC26967c enumC26967c2 = AbstractC26960u0.C26964d.EnumC26967c.GONE;
        Boolean bool2 = Boolean.TRUE;
        AbstractC26960u0.C26964d.EnumC26967c enumC26967c3 = AbstractC26960u0.C26964d.EnumC26967c.VISIBLE;
        AbstractC26960u0.C26964d c26964d = null;
        AbstractC26960u0.C26964d c26964d2 = null;
        for (AbstractC26960u0.C26964d c26964d3 : list) {
            AbstractC26960u0.C26964d.EnumC26967c m1046d = AbstractC26960u0.C26964d.EnumC26967c.m1046d(c26964d3.f75459c.mView);
            int ordinal = c26964d3.f75457a.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal != 2 && ordinal != 3) {
                    }
                } else if (m1046d != enumC26967c3) {
                    c26964d2 = c26964d3;
                }
            }
            if (m1046d == enumC26967c3 && c26964d == null) {
                c26964d = c26964d3;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList(list);
        Iterator<AbstractC26960u0.C26964d> it = list.iterator();
        while (it.hasNext()) {
            AbstractC26960u0.C26964d next = it.next();
            C26508a c26508a = new C26508a();
            next.mo1050d();
            next.f75461e.add(c26508a);
            arrayList2.add(new C26911b(next, c26508a, z));
            C26508a c26508a2 = new C26508a();
            next.mo1050d();
            next.f75461e.add(c26508a2);
            arrayList3.add(new C26913d(next, c26508a2, z, !z ? next == c26964d2 : next == c26964d));
            next.f75460d.add(new RunnableC26910a(arrayList4, next));
        }
        Boolean bool3 = Boolean.FALSE;
        HashMap hashMap2 = new HashMap();
        Iterator it2 = arrayList3.iterator();
        AbstractC26949o0 abstractC26949o02 = null;
        while (true) {
            AbstractC26949o0 abstractC26949o03 = abstractC26949o02;
            if (!it2.hasNext()) {
                if (abstractC26949o03 == null) {
                    Iterator it3 = arrayList3.iterator();
                    while (it3.hasNext()) {
                        C26913d c26913d = (C26913d) it3.next();
                        hashMap2.put(c26913d.f75283a, bool3);
                        c26913d.m1171a();
                    }
                    enumC26967c = enumC26967c2;
                    arrayList = arrayList4;
                    bool = bool2;
                    hashMap = hashMap2;
                } else {
                    View view = new View(this.f75447a.getContext());
                    Rect rect = new Rect();
                    ArrayList<View> arrayList5 = new ArrayList<>();
                    ArrayList<View> arrayList6 = new ArrayList<>();
                    C26174a c26174a = new C26174a();
                    Iterator it4 = arrayList3.iterator();
                    Object obj = null;
                    boolean z2 = false;
                    AbstractC26960u0.C26964d c26964d4 = c26964d;
                    AbstractC26960u0.C26964d c26964d5 = c26964d2;
                    View view2 = null;
                    AbstractC26960u0.C26964d c26964d6 = c26964d2;
                    AbstractC26960u0.C26964d c26964d7 = c26964d;
                    while (it4.hasNext()) {
                        Object obj2 = ((C26913d) it4.next()).f75287e;
                        if ((obj2 != null) && c26964d4 != null && c26964d5 != null) {
                            Object mo1073y = abstractC26949o03.mo1073y(abstractC26949o03.mo1091g(obj2));
                            ArrayList sharedElementSourceNames = c26964d5.f75459c.getSharedElementSourceNames();
                            ArrayList sharedElementSourceNames2 = c26964d4.f75459c.getSharedElementSourceNames();
                            ArrayList sharedElementTargetNames = c26964d4.f75459c.getSharedElementTargetNames();
                            for (int i = 0; i < sharedElementTargetNames.size(); i++) {
                                int indexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i));
                                if (indexOf != -1) {
                                    sharedElementSourceNames.set(indexOf, sharedElementSourceNames2.get(i));
                                }
                            }
                            ArrayList sharedElementTargetNames2 = c26964d5.f75459c.getSharedElementTargetNames();
                            if (!z) {
                                abstractC26415b02 = c26964d4.f75459c.getExitTransitionCallback();
                                abstractC26415b0 = c26964d5.f75459c.getEnterTransitionCallback();
                            } else {
                                abstractC26415b02 = c26964d4.f75459c.getEnterTransitionCallback();
                                abstractC26415b0 = c26964d5.f75459c.getExitTransitionCallback();
                            }
                            int size = sharedElementSourceNames.size();
                            obj = mo1073y;
                            for (int i2 = 0; i2 < size; i2++) {
                                c26174a.put((String) sharedElementSourceNames.get(i2), (String) sharedElementTargetNames2.get(i2));
                            }
                            C26174a<String, View> c26174a2 = new C26174a<>();
                            m1174k(c26174a2, c26964d4.f75459c.mView);
                            AbstractC26181g.m2586k(c26174a2, sharedElementSourceNames);
                            if (abstractC26415b02 != null) {
                                throw null;
                            }
                            AbstractC26181g.m2586k(c26174a, c26174a2.keySet());
                            C26174a<String, View> c26174a3 = new C26174a<>();
                            m1174k(c26174a3, c26964d5.f75459c.mView);
                            AbstractC26181g.m2586k(c26174a3, sharedElementTargetNames2);
                            AbstractC26181g.m2586k(c26174a3, c26174a.values());
                            if (abstractC26415b0 != null) {
                                throw null;
                            }
                            C26937m0.m1102n(c26174a, c26174a3);
                            m1173l(c26174a2, c26174a.keySet());
                            m1173l(c26174a3, c26174a.values());
                            if (c26174a.isEmpty()) {
                                arrayList5.clear();
                                arrayList6.clear();
                                obj = null;
                            } else {
                                C26937m0.m1113c(c26964d5.f75459c, c26964d4.f75459c, z, c26174a2, true);
                                ViewTreeObserver$OnPreDrawListenerC26612q.m1582a(this.f75447a, new RunnableC26926g(this, c26964d6, c26964d7, z, c26174a3));
                                arrayList5.addAll(c26174a2.values());
                                if (!sharedElementSourceNames.isEmpty()) {
                                    view2 = c26174a2.get((String) sharedElementSourceNames.get(0));
                                    abstractC26949o03.mo1078t(obj, view2);
                                }
                                arrayList6.addAll(c26174a3.values());
                                boolean z3 = z2;
                                if (!sharedElementTargetNames2.isEmpty()) {
                                    View view3 = c26174a3.get((String) sharedElementTargetNames2.get(0));
                                    z3 = z2;
                                    if (view3 != null) {
                                        ViewTreeObserver$OnPreDrawListenerC26612q.m1582a(this.f75447a, new RunnableC26928h(this, abstractC26949o03, view3, rect));
                                        z3 = true;
                                    }
                                }
                                abstractC26949o03.mo1075w(obj, view, arrayList5);
                                abstractC26949o03.mo1080r(obj, null, null, null, null, obj, arrayList6);
                                c26964d4 = c26964d7;
                                hashMap2.put(c26964d4, bool2);
                                c26964d5 = c26964d6;
                                hashMap2.put(c26964d5, bool2);
                                z2 = z3;
                            }
                        }
                    }
                    bool = bool2;
                    arrayList = arrayList4;
                    hashMap = hashMap2;
                    ArrayList arrayList7 = new ArrayList();
                    Iterator it5 = arrayList3.iterator();
                    Object obj3 = null;
                    enumC26967c = enumC26967c2;
                    View view4 = view2;
                    Object obj4 = null;
                    while (it5.hasNext()) {
                        C26913d c26913d2 = (C26913d) it5.next();
                        if (c26913d2.m1170b()) {
                            hashMap.put(c26913d2.f75283a, bool3);
                            c26913d2.m1171a();
                        } else {
                            Object mo1091g = abstractC26949o03.mo1091g(c26913d2.f75285c);
                            AbstractC26960u0.C26964d c26964d8 = c26913d2.f75283a;
                            boolean z4 = obj != null && (c26964d8 == c26964d4 || c26964d8 == c26964d5);
                            if (mo1091g != null) {
                                ArrayList<View> arrayList8 = new ArrayList<>();
                                m1175j(arrayList8, c26964d8.f75459c.mView);
                                if (z4) {
                                    if (c26964d8 == c26964d4) {
                                        arrayList8.removeAll(arrayList5);
                                    } else {
                                        arrayList8.removeAll(arrayList6);
                                    }
                                }
                                if (arrayList8.isEmpty()) {
                                    abstractC26949o03.mo1097a(mo1091g, view);
                                } else {
                                    abstractC26949o03.mo1096b(mo1091g, arrayList8);
                                    abstractC26949o03.mo1080r(mo1091g, mo1091g, arrayList8, null, null, null, null);
                                    if (c26964d8.f75457a == enumC26967c) {
                                        arrayList.remove(c26964d8);
                                        ArrayList<View> arrayList9 = new ArrayList<>(arrayList8);
                                        arrayList9.remove(c26964d8.f75459c.mView);
                                        abstractC26949o03.mo1081q(mo1091g, c26964d8.f75459c.mView, arrayList9);
                                        ViewTreeObserver$OnPreDrawListenerC26612q.m1582a(this.f75447a, new RunnableC26930i(this, arrayList8));
                                    }
                                }
                                if (c26964d8.f75457a == enumC26967c3) {
                                    arrayList7.addAll(arrayList8);
                                    if (z2) {
                                        abstractC26949o03.mo1079s(mo1091g, rect);
                                    }
                                } else {
                                    abstractC26949o03.mo1078t(mo1091g, view4);
                                }
                                hashMap.put(c26964d8, bool);
                                if (c26913d2.f75286d) {
                                    obj4 = abstractC26949o03.mo1085m(obj4, mo1091g, null);
                                } else {
                                    obj3 = abstractC26949o03.mo1085m(obj3, mo1091g, null);
                                }
                            } else if (!z4) {
                                hashMap.put(c26964d8, bool3);
                                c26913d2.m1171a();
                            }
                        }
                    }
                    Object mo1086l = abstractC26949o03.mo1086l(obj4, obj3, obj);
                    Iterator it6 = arrayList3.iterator();
                    AbstractC26960u0.C26964d c26964d9 = c26964d5;
                    while (it6.hasNext()) {
                        C26913d c26913d3 = (C26913d) it6.next();
                        if (!c26913d3.m1170b()) {
                            Object obj5 = c26913d3.f75285c;
                            AbstractC26960u0.C26964d c26964d10 = c26913d3.f75283a;
                            boolean z5 = obj != null && (c26964d10 == c26964d4 || c26964d10 == c26964d9);
                            if (obj5 != null || z5) {
                                ViewGroup viewGroup = this.f75447a;
                                AtomicInteger atomicInteger = C26614s.f74505a;
                                if (!viewGroup.isLaidOut()) {
                                    if (FragmentManager.m42933T(2)) {
                                        StringBuilder m8728C = C22128a.m8728C("SpecialEffectsController: Container ");
                                        m8728C.append(this.f75447a);
                                        m8728C.append(" has not been laid out. Completing operation ");
                                        m8728C.append(c26964d10);
                                        m8728C.toString();
                                    }
                                    c26913d3.m1171a();
                                } else {
                                    abstractC26949o03.mo1077u(c26913d3.f75283a.f75459c, mo1086l, c26913d3.f75284b, new RunnableC26932j(this, c26913d3));
                                }
                            }
                        }
                    }
                    ViewGroup viewGroup2 = this.f75447a;
                    AtomicInteger atomicInteger2 = C26614s.f74505a;
                    if (viewGroup2.isLaidOut()) {
                        C26937m0.m1100p(arrayList7, 4);
                        ArrayList<String> m1084n = abstractC26949o03.m1084n(arrayList6);
                        abstractC26949o03.mo1095c(this.f75447a, mo1086l);
                        abstractC26949o03.m1076v(this.f75447a, arrayList5, arrayList6, m1084n, c26174a);
                        C26937m0.m1100p(arrayList7, 0);
                        abstractC26949o03.mo1074x(obj, arrayList5, arrayList6);
                    }
                }
                boolean containsValue = hashMap.containsValue(bool);
                ViewGroup viewGroup3 = this.f75447a;
                Context context = viewGroup3.getContext();
                ArrayList arrayList10 = new ArrayList();
                Iterator it7 = arrayList2.iterator();
                boolean z6 = false;
                while (true) {
                    boolean z7 = false;
                    if (!it7.hasNext()) {
                        break;
                    }
                    C26911b c26911b = (C26911b) it7.next();
                    if (c26911b.m1170b()) {
                        c26911b.m1171a();
                    } else {
                        C26951p m1172c = c26911b.m1172c(context);
                        if (m1172c == null) {
                            c26911b.m1171a();
                        } else {
                            Animator animator = m1172c.f75430b;
                            if (animator == null) {
                                arrayList10.add(c26911b);
                            } else {
                                AbstractC26960u0.C26964d c26964d11 = c26911b.f75283a;
                                Fragment fragment = c26964d11.f75459c;
                                if (bool.equals(hashMap.get(c26964d11))) {
                                    if (FragmentManager.m42933T(2)) {
                                        String str = "Ignoring Animator set on " + fragment + " as this Fragment was involved in a Transition.";
                                    }
                                    c26911b.m1171a();
                                } else {
                                    if (c26964d11.f75457a == enumC26967c) {
                                        z7 = true;
                                    }
                                    if (z7) {
                                        arrayList.remove(c26964d11);
                                    }
                                    View view5 = fragment.mView;
                                    viewGroup3.startViewTransition(view5);
                                    animator.addListener(new C26915c(this, viewGroup3, view5, z7, c26964d11, c26911b));
                                    animator.setTarget(view5);
                                    animator.start();
                                    c26911b.f75284b.m1721b(new C26918d(this, animator));
                                    z6 = true;
                                }
                            }
                        }
                    }
                }
                Iterator it8 = arrayList10.iterator();
                while (it8.hasNext()) {
                    C26911b c26911b2 = (C26911b) it8.next();
                    AbstractC26960u0.C26964d c26964d12 = c26911b2.f75283a;
                    Fragment fragment2 = c26964d12.f75459c;
                    if (containsValue) {
                        if (FragmentManager.m42933T(2)) {
                            String str2 = "Ignoring Animation set on " + fragment2 + " as Animations cannot run alongside Transitions.";
                        }
                        c26911b2.m1171a();
                    } else if (z6) {
                        if (FragmentManager.m42933T(2)) {
                            String str3 = "Ignoring Animation set on " + fragment2 + " as Animations cannot run alongside Animators.";
                        }
                        c26911b2.m1171a();
                    } else {
                        View view6 = fragment2.mView;
                        C26951p m1172c2 = c26911b2.m1172c(context);
                        Objects.requireNonNull(m1172c2);
                        Animation animation = m1172c2.f75429a;
                        Objects.requireNonNull(animation);
                        if (c26964d12.f75457a != AbstractC26960u0.C26964d.EnumC26967c.REMOVED) {
                            view6.startAnimation(animation);
                            c26911b2.m1171a();
                        } else {
                            viewGroup3.startViewTransition(view6);
                            RunnableC26953q runnableC26953q = new RunnableC26953q(animation, viewGroup3, view6);
                            runnableC26953q.setAnimationListener(new animationAnimation$AnimationListenerC26920e(this, viewGroup3, view6, c26911b2));
                            view6.startAnimation(runnableC26953q);
                        }
                        c26911b2.f75284b.m1721b(new C26923f(this, view6, viewGroup3, c26911b2));
                    }
                }
                Iterator it9 = arrayList.iterator();
                while (it9.hasNext()) {
                    AbstractC26960u0.C26964d c26964d13 = (AbstractC26960u0.C26964d) it9.next();
                    c26964d13.f75457a.m1048a(c26964d13.f75459c.mView);
                }
                arrayList.clear();
                return;
            }
            C26913d c26913d4 = (C26913d) it2.next();
            if (c26913d4.m1170b()) {
                abstractC26949o0 = abstractC26949o03;
            } else {
                AbstractC26949o0 m1169c = c26913d4.m1169c(c26913d4.f75285c);
                AbstractC26949o0 m1169c2 = c26913d4.m1169c(c26913d4.f75287e);
                if (m1169c != null && m1169c2 != null && m1169c != m1169c2) {
                    StringBuilder m8728C2 = C22128a.m8728C("Mixing framework transitions and AndroidX transitions is not allowed. Fragment ");
                    m8728C2.append(c26913d4.f75283a.f75459c);
                    m8728C2.append(" returned Transition ");
                    m8728C2.append(c26913d4.f75285c);
                    m8728C2.append(" which uses a different Transition  type than its shared element transition ");
                    m8728C2.append(c26913d4.f75287e);
                    throw new IllegalArgumentException(m8728C2.toString());
                }
                if (m1169c != null) {
                    m1169c2 = m1169c;
                }
                if (abstractC26949o03 == null) {
                    abstractC26949o0 = m1169c2;
                } else {
                    abstractC26949o0 = abstractC26949o03;
                    if (m1169c2 == null) {
                        continue;
                    } else if (abstractC26949o03 != m1169c2) {
                        StringBuilder m8728C3 = C22128a.m8728C("Mixing framework transitions and AndroidX transitions is not allowed. Fragment ");
                        m8728C3.append(c26913d4.f75283a.f75459c);
                        m8728C3.append(" returned Transition ");
                        throw new IllegalArgumentException(C22128a.m8634d(m8728C3, c26913d4.f75285c, " which uses a different Transition  type than other Fragments."));
                    } else {
                        abstractC26949o0 = abstractC26949o03;
                    }
                }
            }
            abstractC26949o02 = abstractC26949o0;
        }
    }

    /* renamed from: j */
    public void m1175j(ArrayList<View> arrayList, View view) {
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
                m1175j(arrayList, childAt);
            }
        }
    }

    /* renamed from: k */
    public void m1174k(Map<String, View> map, View view) {
        AtomicInteger atomicInteger = C26614s.f74505a;
        String transitionName = view.getTransitionName();
        if (transitionName != null) {
            map.put(transitionName, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    m1174k(map, childAt);
                }
            }
        }
    }

    /* renamed from: l */
    public void m1173l(C26174a<String, View> c26174a, Collection<String> collection) {
        Iterator it = ((AbstractC26181g.C26183b) c26174a.entrySet()).iterator();
        while (true) {
            AbstractC26181g.C26185d c26185d = (AbstractC26181g.C26185d) it;
            if (c26185d.hasNext()) {
                c26185d.next();
                View view = (View) c26185d.getValue();
                AtomicInteger atomicInteger = C26614s.f74505a;
                if (!collection.contains(view.getTransitionName())) {
                    c26185d.remove();
                }
            } else {
                return;
            }
        }
    }
}
