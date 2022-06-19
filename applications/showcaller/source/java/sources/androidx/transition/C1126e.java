package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.AbstractC0771v;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.List;
@SuppressLint({"RestrictedApi"})
/* renamed from: androidx.transition.e */
/* loaded from: classes-dex2jar.jar:androidx/transition/e.class */
public class C1126e extends AbstractC0771v {

    /* renamed from: androidx.transition.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/e$a.class */
    class C1127a extends Transition.AbstractC1109e {

        /* renamed from: a */
        final /* synthetic */ Rect f4893a;

        C1127a(Rect rect) {
            C1126e.this = r4;
            this.f4893a = rect;
        }

        @Override // androidx.transition.Transition.AbstractC1109e
        /* renamed from: a */
        public Rect mo30914a(Transition transition) {
            return this.f4893a;
        }
    }

    /* renamed from: androidx.transition.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/e$b.class */
    class C1128b implements Transition.AbstractC1110f {

        /* renamed from: a */
        final /* synthetic */ View f4895a;

        /* renamed from: b */
        final /* synthetic */ ArrayList f4896b;

        C1128b(View view, ArrayList arrayList) {
            C1126e.this = r4;
            this.f4895a = view;
            this.f4896b = arrayList;
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: a */
        public void mo30830a(Transition transition) {
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: b */
        public void mo30829b(Transition transition) {
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: c */
        public void mo30821c(Transition transition) {
            transition.mo30982Y(this);
            this.f4895a.setVisibility(8);
            int size = this.f4896b.size();
            for (int i = 0; i < size; i++) {
                ((View) this.f4896b.get(i)).setVisibility(0);
            }
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: d */
        public void mo30828d(Transition transition) {
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: e */
        public void mo30827e(Transition transition) {
        }
    }

    /* renamed from: androidx.transition.e$c */
    /* loaded from: classes-dex2jar.jar:androidx/transition/e$c.class */
    class C1129c extends C1168u {

        /* renamed from: a */
        final /* synthetic */ Object f4898a;

        /* renamed from: b */
        final /* synthetic */ ArrayList f4899b;

        /* renamed from: c */
        final /* synthetic */ Object f4900c;

        /* renamed from: d */
        final /* synthetic */ ArrayList f4901d;

        /* renamed from: e */
        final /* synthetic */ Object f4902e;

        /* renamed from: f */
        final /* synthetic */ ArrayList f4903f;

        C1129c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            C1126e.this = r4;
            this.f4898a = obj;
            this.f4899b = arrayList;
            this.f4900c = obj2;
            this.f4901d = arrayList2;
            this.f4902e = obj3;
            this.f4903f = arrayList3;
        }

        @Override // androidx.transition.C1168u, androidx.transition.Transition.AbstractC1110f
        /* renamed from: a */
        public void mo30830a(Transition transition) {
            Object obj = this.f4898a;
            if (obj != null) {
                C1126e.this.mo30920q(obj, this.f4899b, null);
            }
            Object obj2 = this.f4900c;
            if (obj2 != null) {
                C1126e.this.mo30920q(obj2, this.f4901d, null);
            }
            Object obj3 = this.f4902e;
            if (obj3 != null) {
                C1126e.this.mo30920q(obj3, this.f4903f, null);
            }
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: c */
        public void mo30821c(Transition transition) {
            transition.mo30982Y(this);
        }
    }

    /* renamed from: androidx.transition.e$d */
    /* loaded from: classes-dex2jar.jar:androidx/transition/e$d.class */
    class C1130d extends Transition.AbstractC1109e {

        /* renamed from: a */
        final /* synthetic */ Rect f4905a;

        C1130d(Rect rect) {
            C1126e.this = r4;
            this.f4905a = rect;
        }

        @Override // androidx.transition.Transition.AbstractC1109e
        /* renamed from: a */
        public Rect mo30914a(Transition transition) {
            Rect rect = this.f4905a;
            if (rect == null || rect.isEmpty()) {
                return null;
            }
            return this.f4905a;
        }
    }

    /* renamed from: C */
    private static boolean m30929C(Transition transition) {
        return !AbstractC0771v.m32454l(transition.m31015F()) || !AbstractC0771v.m32454l(transition.m31014G()) || !AbstractC0771v.m32454l(transition.m31013H());
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: A */
    public void mo30931A(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.m31012I().clear();
            transitionSet.m31012I().addAll(arrayList2);
            mo30920q(transitionSet, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: B */
    public Object mo30930B(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.m30966o0((Transition) obj);
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: a */
    public void mo30928a(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).mo30978b(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: b */
    public void mo30927b(Object obj, ArrayList<View> arrayList) {
        Transition transition = (Transition) obj;
        if (transition == null) {
            return;
        }
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int m30961r0 = transitionSet.m30961r0();
            for (int i = 0; i < m30961r0; i++) {
                mo30927b(transitionSet.m30963q0(i), arrayList);
            }
        } else if (!m30929C(transition) && AbstractC0771v.m32454l(transition.m31012I())) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                transition.mo30978b(arrayList.get(i2));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: c */
    public void mo30926c(ViewGroup viewGroup, Object obj) {
        C1169v.m30826a(viewGroup, (Transition) obj);
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: e */
    public boolean mo30925e(Object obj) {
        return obj instanceof Transition;
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: g */
    public Object mo30924g(Object obj) {
        return obj != null ? ((Transition) obj).clone() : null;
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: m */
    public Object mo30923m(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = (Transition) obj;
        Transition transition = (Transition) obj2;
        Transition transition2 = (Transition) obj3;
        if (transitionSet != null && transition != null) {
            transitionSet = new TransitionSet().m30966o0(transitionSet).m30966o0(transition).m30956w0(1);
        } else if (transitionSet == null) {
            transitionSet = transition != null ? transition : null;
        }
        if (transition2 != null) {
            TransitionSet transitionSet2 = new TransitionSet();
            if (transitionSet != null) {
                transitionSet2.m30966o0(transitionSet);
            }
            transitionSet2.m30966o0(transition2);
            return transitionSet2;
        }
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: n */
    public Object mo30922n(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.m30966o0((Transition) obj);
        }
        if (obj2 != null) {
            transitionSet.m30966o0((Transition) obj2);
        }
        if (obj3 != null) {
            transitionSet.m30966o0((Transition) obj3);
        }
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: p */
    public void mo30921p(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).mo30981Z(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: q */
    public void mo30920q(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        Transition transition = (Transition) obj;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int m30961r0 = transitionSet.m30961r0();
            for (int i = 0; i < m30961r0; i++) {
                mo30920q(transitionSet.m30963q0(i), arrayList, arrayList2);
            }
        } else if (!m30929C(transition)) {
            List<View> m31012I = transition.m31012I();
            if (m31012I.size() != arrayList.size() || !m31012I.containsAll(arrayList)) {
                return;
            }
            int size = arrayList2 == null ? 0 : arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                transition.mo30978b(arrayList2.get(i2));
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                transition.mo30981Z(arrayList.get(size2));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: r */
    public void mo30919r(Object obj, View view, ArrayList<View> arrayList) {
        ((Transition) obj).mo30980a(new C1128b(view, arrayList));
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: t */
    public void mo30918t(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((Transition) obj).mo30980a(new C1129c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: u */
    public void mo30917u(Object obj, Rect rect) {
        if (obj != null) {
            ((Transition) obj).mo30975e0(new C1130d(rect));
        }
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: v */
    public void mo30916v(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            m32455k(view, rect);
            ((Transition) obj).mo30975e0(new C1127a(rect));
        }
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: z */
    public void mo30915z(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        List<View> m31012I = transitionSet.m31012I();
        m31012I.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AbstractC0771v.m32460d(m31012I, arrayList.get(i));
        }
        m31012I.add(view);
        arrayList.add(view);
        mo30927b(transitionSet, arrayList);
    }
}
