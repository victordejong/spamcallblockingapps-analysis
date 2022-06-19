package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.core.app.AbstractC0581n;
import androidx.core.p008os.C0623b;
import androidx.fragment.app.C0728d;
import androidx.fragment.app.SpecialEffectsController;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p020b.p036e.C1489a;
import p020b.p041h.p049k.C1597h;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.ViewTreeObserver$OnPreDrawListenerC1676t;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.b */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/b.class */
public class C0707b extends SpecialEffectsController {

    /* renamed from: androidx.fragment.app.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$a.class */
    static /* synthetic */ class C0708a {

        /* renamed from: a */
        static final /* synthetic */ int[] f3421a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[SpecialEffectsController.Operation.State.values().length];
            f3421a = iArr;
            try {
                iArr[SpecialEffectsController.Operation.State.GONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3421a[SpecialEffectsController.Operation.State.INVISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3421a[SpecialEffectsController.Operation.State.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3421a[SpecialEffectsController.Operation.State.VISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: androidx.fragment.app.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$b.class */
    class RunnableC0709b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ List f3422d;

        /* renamed from: e */
        final /* synthetic */ SpecialEffectsController.Operation f3423e;

        RunnableC0709b(List list, SpecialEffectsController.Operation operation) {
            C0707b.this = r4;
            this.f3422d = list;
            this.f3423e = operation;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f3422d.contains(this.f3423e)) {
                this.f3422d.remove(this.f3423e);
                C0707b.this.m32665s(this.f3423e);
            }
        }
    }

    /* renamed from: androidx.fragment.app.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$c.class */
    public class C0710c extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ ViewGroup f3425a;

        /* renamed from: b */
        final /* synthetic */ View f3426b;

        /* renamed from: c */
        final /* synthetic */ boolean f3427c;

        /* renamed from: d */
        final /* synthetic */ SpecialEffectsController.Operation f3428d;

        /* renamed from: e */
        final /* synthetic */ C0719k f3429e;

        C0710c(ViewGroup viewGroup, View view, boolean z, SpecialEffectsController.Operation operation, C0719k c0719k) {
            C0707b.this = r4;
            this.f3425a = viewGroup;
            this.f3426b = view;
            this.f3427c = z;
            this.f3428d = operation;
            this.f3429e = c0719k;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f3425a.endViewTransition(this.f3426b);
            if (this.f3427c) {
                this.f3428d.m32691e().applyState(this.f3426b);
            }
            this.f3429e.m32658a();
        }
    }

    /* renamed from: androidx.fragment.app.b$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$d.class */
    public class C0711d implements C0623b.AbstractC0624a {

        /* renamed from: a */
        final /* synthetic */ Animator f3431a;

        C0711d(Animator animator) {
            C0707b.this = r4;
            this.f3431a = animator;
        }

        @Override // androidx.core.p008os.C0623b.AbstractC0624a
        /* renamed from: a */
        public void mo32626a() {
            this.f3431a.end();
        }
    }

    /* renamed from: androidx.fragment.app.b$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$e.class */
    public class animationAnimation$AnimationListenerC0712e implements Animation.AnimationListener {

        /* renamed from: a */
        final /* synthetic */ ViewGroup f3433a;

        /* renamed from: b */
        final /* synthetic */ View f3434b;

        /* renamed from: c */
        final /* synthetic */ C0719k f3435c;

        /* renamed from: androidx.fragment.app.b$e$a */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$e$a.class */
        class RunnableC0713a implements Runnable {
            RunnableC0713a() {
                animationAnimation$AnimationListenerC0712e.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                animationAnimation$AnimationListenerC0712e animationanimation_animationlistenerc0712e = animationAnimation$AnimationListenerC0712e.this;
                animationanimation_animationlistenerc0712e.f3433a.endViewTransition(animationanimation_animationlistenerc0712e.f3434b);
                animationAnimation$AnimationListenerC0712e.this.f3435c.m32658a();
            }
        }

        animationAnimation$AnimationListenerC0712e(ViewGroup viewGroup, View view, C0719k c0719k) {
            C0707b.this = r4;
            this.f3433a = viewGroup;
            this.f3434b = view;
            this.f3435c = c0719k;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f3433a.post(new RunnableC0713a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: androidx.fragment.app.b$f */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$f.class */
    public class C0714f implements C0623b.AbstractC0624a {

        /* renamed from: a */
        final /* synthetic */ View f3438a;

        /* renamed from: b */
        final /* synthetic */ ViewGroup f3439b;

        /* renamed from: c */
        final /* synthetic */ C0719k f3440c;

        C0714f(View view, ViewGroup viewGroup, C0719k c0719k) {
            C0707b.this = r4;
            this.f3438a = view;
            this.f3439b = viewGroup;
            this.f3440c = c0719k;
        }

        @Override // androidx.core.p008os.C0623b.AbstractC0624a
        /* renamed from: a */
        public void mo32626a() {
            this.f3438a.clearAnimation();
            this.f3439b.endViewTransition(this.f3438a);
            this.f3440c.m32658a();
        }
    }

    /* renamed from: androidx.fragment.app.b$g */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$g.class */
    public class RunnableC0715g implements Runnable {

        /* renamed from: d */
        final /* synthetic */ SpecialEffectsController.Operation f3442d;

        /* renamed from: e */
        final /* synthetic */ SpecialEffectsController.Operation f3443e;

        /* renamed from: f */
        final /* synthetic */ boolean f3444f;

        /* renamed from: g */
        final /* synthetic */ C1489a f3445g;

        RunnableC0715g(SpecialEffectsController.Operation operation, SpecialEffectsController.Operation operation2, boolean z, C1489a c1489a) {
            C0707b.this = r4;
            this.f3442d = operation;
            this.f3443e = operation2;
            this.f3444f = z;
            this.f3445g = c1489a;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0756t.m32484f(this.f3442d.m32690f(), this.f3443e.m32690f(), this.f3444f, this.f3445g, false);
        }
    }

    /* renamed from: androidx.fragment.app.b$h */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$h.class */
    public class RunnableC0716h implements Runnable {

        /* renamed from: d */
        final /* synthetic */ AbstractC0771v f3447d;

        /* renamed from: e */
        final /* synthetic */ View f3448e;

        /* renamed from: f */
        final /* synthetic */ Rect f3449f;

        RunnableC0716h(AbstractC0771v abstractC0771v, View view, Rect rect) {
            C0707b.this = r4;
            this.f3447d = abstractC0771v;
            this.f3448e = view;
            this.f3449f = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3447d.m32455k(this.f3448e, this.f3449f);
        }
    }

    /* renamed from: androidx.fragment.app.b$i */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$i.class */
    public class RunnableC0717i implements Runnable {

        /* renamed from: d */
        final /* synthetic */ ArrayList f3451d;

        RunnableC0717i(ArrayList arrayList) {
            C0707b.this = r4;
            this.f3451d = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0756t.m32491A(this.f3451d, 4);
        }
    }

    /* renamed from: androidx.fragment.app.b$j */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$j.class */
    public class RunnableC0718j implements Runnable {

        /* renamed from: d */
        final /* synthetic */ C0721m f3453d;

        RunnableC0718j(C0721m c0721m) {
            C0707b.this = r4;
            this.f3453d = c0721m;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3453d.m32658a();
        }
    }

    /* renamed from: androidx.fragment.app.b$k */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$k.class */
    public static class C0719k extends C0720l {

        /* renamed from: c */
        private boolean f3455c;

        /* renamed from: d */
        private boolean f3456d = false;

        /* renamed from: e */
        private C0728d.C0733d f3457e;

        C0719k(SpecialEffectsController.Operation operation, C0623b c0623b, boolean z) {
            super(operation, c0623b);
            this.f3455c = z;
        }

        /* renamed from: e */
        C0728d.C0733d m32659e(Context context) {
            if (this.f3456d) {
                return this.f3457e;
            }
            C0728d.C0733d m32628c = C0728d.m32628c(context, m32657b().m32690f(), m32657b().m32691e() == SpecialEffectsController.Operation.State.VISIBLE, this.f3455c);
            this.f3457e = m32628c;
            this.f3456d = true;
            return m32628c;
        }
    }

    /* renamed from: androidx.fragment.app.b$l */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$l.class */
    public static class C0720l {

        /* renamed from: a */
        private final SpecialEffectsController.Operation f3458a;

        /* renamed from: b */
        private final C0623b f3459b;

        C0720l(SpecialEffectsController.Operation operation, C0623b c0623b) {
            this.f3458a = operation;
            this.f3459b = c0623b;
        }

        /* renamed from: a */
        void m32658a() {
            this.f3458a.m32692d(this.f3459b);
        }

        /* renamed from: b */
        SpecialEffectsController.Operation m32657b() {
            return this.f3458a;
        }

        /* renamed from: c */
        C0623b m32656c() {
            return this.f3459b;
        }

        /* renamed from: d */
        boolean m32655d() {
            SpecialEffectsController.Operation.State state;
            SpecialEffectsController.Operation.State from = SpecialEffectsController.Operation.State.from(this.f3458a.m32690f().f3201L);
            SpecialEffectsController.Operation.State m32691e = this.f3458a.m32691e();
            return from == m32691e || !(from == (state = SpecialEffectsController.Operation.State.VISIBLE) || m32691e == state);
        }
    }

    /* renamed from: androidx.fragment.app.b$m */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$m.class */
    public static class C0721m extends C0720l {

        /* renamed from: c */
        private final Object f3460c;

        /* renamed from: d */
        private final boolean f3461d;

        /* renamed from: e */
        private final Object f3462e;

        C0721m(SpecialEffectsController.Operation operation, C0623b c0623b, boolean z, boolean z2) {
            super(operation, c0623b);
            if (operation.m32691e() == SpecialEffectsController.Operation.State.VISIBLE) {
                this.f3460c = z ? operation.m32690f().m32944W() : operation.m32690f().m32991D();
                this.f3461d = z ? operation.m32690f().m32891w() : operation.m32690f().m32893v();
            } else {
                this.f3460c = z ? operation.m32690f().m32938Y() : operation.m32690f().m32983G();
                this.f3461d = true;
            }
            if (!z2) {
                this.f3462e = null;
            } else if (z) {
                this.f3462e = operation.m32690f().m32934a0();
            } else {
                this.f3462e = operation.m32690f().m32936Z();
            }
        }

        /* renamed from: f */
        private AbstractC0771v m32653f(Object obj) {
            if (obj == null) {
                return null;
            }
            AbstractC0771v abstractC0771v = C0756t.f3576b;
            if (abstractC0771v != null && abstractC0771v.mo30925e(obj)) {
                return abstractC0771v;
            }
            AbstractC0771v abstractC0771v2 = C0756t.f3577c;
            if (abstractC0771v2 != null && abstractC0771v2.mo30925e(obj)) {
                return abstractC0771v2;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + m32657b().m32690f() + " is not a valid framework Transition or AndroidX Transition");
        }

        /* renamed from: e */
        AbstractC0771v m32654e() {
            AbstractC0771v m32653f = m32653f(this.f3460c);
            AbstractC0771v m32653f2 = m32653f(this.f3462e);
            if (m32653f == null || m32653f2 == null || m32653f == m32653f2) {
                if (m32653f == null) {
                    m32653f = m32653f2;
                }
                return m32653f;
            }
            throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + m32657b().m32690f() + " returned Transition " + this.f3460c + " which uses a different Transition  type than its shared element transition " + this.f3462e);
        }

        /* renamed from: g */
        public Object m32652g() {
            return this.f3462e;
        }

        /* renamed from: h */
        Object m32651h() {
            return this.f3460c;
        }

        /* renamed from: i */
        public boolean m32650i() {
            return this.f3462e != null;
        }

        /* renamed from: j */
        boolean m32649j() {
            return this.f3461d;
        }
    }

    public C0707b(ViewGroup viewGroup) {
        super(viewGroup);
    }

    /* renamed from: w */
    private void m32661w(List<C0719k> list, List<SpecialEffectsController.Operation> list2, boolean z, Map<SpecialEffectsController.Operation, Boolean> map) {
        ViewGroup m32700m = m32700m();
        Context context = m32700m.getContext();
        ArrayList arrayList = new ArrayList();
        boolean z2 = false;
        for (C0719k c0719k : list) {
            if (c0719k.m32655d()) {
                c0719k.m32658a();
            } else {
                C0728d.C0733d m32659e = c0719k.m32659e(context);
                if (m32659e == null) {
                    c0719k.m32658a();
                } else {
                    Animator animator = m32659e.f3497b;
                    if (animator == null) {
                        arrayList.add(c0719k);
                    } else {
                        SpecialEffectsController.Operation m32657b = c0719k.m32657b();
                        Fragment m32690f = m32657b.m32690f();
                        if (Boolean.TRUE.equals(map.get(m32657b))) {
                            if (FragmentManager.m32848G0(2)) {
                                Log.v("FragmentManager", "Ignoring Animator set on " + m32690f + " as this Fragment was involved in a Transition.");
                            }
                            c0719k.m32658a();
                        } else {
                            boolean z3 = m32657b.m32691e() == SpecialEffectsController.Operation.State.GONE;
                            if (z3) {
                                list2.remove(m32657b);
                            }
                            View view = m32690f.f3201L;
                            m32700m.startViewTransition(view);
                            animator.addListener(new C0710c(m32700m, view, z3, m32657b, c0719k));
                            animator.setTarget(view);
                            animator.start();
                            c0719k.m32656c().m33197c(new C0711d(animator));
                            z2 = true;
                        }
                    }
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C0719k c0719k2 = (C0719k) it.next();
            SpecialEffectsController.Operation m32657b2 = c0719k2.m32657b();
            Fragment m32690f2 = m32657b2.m32690f();
            if (z) {
                if (FragmentManager.m32848G0(2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + m32690f2 + " as Animations cannot run alongside Transitions.");
                }
                c0719k2.m32658a();
            } else if (z2) {
                if (FragmentManager.m32848G0(2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + m32690f2 + " as Animations cannot run alongside Animators.");
                }
                c0719k2.m32658a();
            } else {
                View view2 = m32690f2.f3201L;
                Animation animation = (Animation) C1597h.m29659e(((C0728d.C0733d) C1597h.m29659e(c0719k2.m32659e(context))).f3496a);
                if (m32657b2.m32691e() != SpecialEffectsController.Operation.State.REMOVED) {
                    view2.startAnimation(animation);
                    c0719k2.m32658a();
                } else {
                    m32700m.startViewTransition(view2);
                    C0728d.RunnableC0734e runnableC0734e = new C0728d.RunnableC0734e(animation, m32700m, view2);
                    runnableC0734e.setAnimationListener(new animationAnimation$AnimationListenerC0712e(m32700m, view2, c0719k2));
                    view2.startAnimation(runnableC0734e);
                }
                c0719k2.m32656c().m33197c(new C0714f(view2, m32700m, c0719k2));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: x */
    private Map<SpecialEffectsController.Operation, Boolean> m32660x(List<C0721m> list, List<SpecialEffectsController.Operation> list2, boolean z, SpecialEffectsController.Operation operation, SpecialEffectsController.Operation operation2) {
        AbstractC0581n abstractC0581n;
        AbstractC0581n abstractC0581n2;
        View view;
        SpecialEffectsController.Operation operation3 = operation;
        SpecialEffectsController.Operation operation4 = operation2;
        HashMap hashMap = new HashMap();
        AbstractC0771v abstractC0771v = null;
        for (C0721m c0721m : list) {
            if (!c0721m.m32655d()) {
                AbstractC0771v m32654e = c0721m.m32654e();
                if (abstractC0771v == null) {
                    abstractC0771v = m32654e;
                } else if (m32654e != null && abstractC0771v != m32654e) {
                    throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + c0721m.m32657b().m32690f() + " returned Transition " + c0721m.m32651h() + " which uses a different Transition  type than other Fragments.");
                }
            }
        }
        if (abstractC0771v == null) {
            for (C0721m c0721m2 : list) {
                hashMap.put(c0721m2.m32657b(), Boolean.FALSE);
                c0721m2.m32658a();
            }
            return hashMap;
        }
        View view2 = new View(m32700m().getContext());
        Rect rect = new Rect();
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        C1489a c1489a = new C1489a();
        Object obj = null;
        View view3 = null;
        boolean z2 = false;
        AbstractC0771v abstractC0771v2 = abstractC0771v;
        for (C0721m c0721m3 : list) {
            if (c0721m3.m32650i() && operation3 != null && operation4 != null) {
                obj = abstractC0771v2.mo30930B(abstractC0771v2.mo30924g(c0721m3.m32652g()));
                ArrayList<String> m32933b0 = operation2.m32690f().m32933b0();
                ArrayList<String> m32933b02 = operation.m32690f().m32933b0();
                ArrayList<String> m32932c0 = operation.m32690f().m32932c0();
                for (int i = 0; i < m32932c0.size(); i++) {
                    int indexOf = m32933b0.indexOf(m32932c0.get(i));
                    if (indexOf != -1) {
                        m32933b0.set(indexOf, m32933b02.get(i));
                    }
                }
                ArrayList<String> m32932c02 = operation2.m32690f().m32932c0();
                if (!z) {
                    abstractC0581n2 = operation.m32690f().m32981H();
                    abstractC0581n = operation2.m32690f().m32989E();
                } else {
                    abstractC0581n2 = operation.m32690f().m32989E();
                    abstractC0581n = operation2.m32690f().m32981H();
                }
                int size = m32933b0.size();
                for (int i2 = 0; i2 < size; i2++) {
                    c1489a.put(m32933b0.get(i2), m32932c02.get(i2));
                }
                C1489a<String, View> c1489a2 = new C1489a<>();
                m32663u(c1489a2, operation.m32690f().f3201L);
                c1489a2.m29973o(m32933b0);
                if (abstractC0581n2 != null) {
                    throw null;
                }
                c1489a.m29973o(c1489a2.keySet());
                C1489a<String, View> c1489a3 = new C1489a<>();
                m32663u(c1489a3, operation2.m32690f().f3201L);
                c1489a3.m29973o(m32932c02);
                c1489a3.m29973o(c1489a.values());
                if (abstractC0581n != null) {
                    throw null;
                }
                C0756t.m32466x(c1489a, c1489a3);
                m32662v(c1489a2, c1489a.keySet());
                m32662v(c1489a3, c1489a.values());
                if (c1489a.isEmpty()) {
                    arrayList.clear();
                    arrayList2.clear();
                    operation3 = operation;
                    obj = null;
                    operation4 = operation2;
                } else {
                    C0756t.m32484f(operation2.m32690f(), operation.m32690f(), z, c1489a2, true);
                    ViewTreeObserver$OnPreDrawListenerC1676t.m29354a(m32700m(), new RunnableC0715g(operation2, operation, z, c1489a3));
                    for (View view4 : c1489a2.values()) {
                        m32664t(arrayList, view4);
                    }
                    if (!m32933b0.isEmpty()) {
                        view3 = c1489a2.get(m32933b0.get(0));
                        abstractC0771v2.mo30916v(obj, view3);
                    }
                    for (View view5 : c1489a3.values()) {
                        m32664t(arrayList2, view5);
                    }
                    if (!m32932c02.isEmpty() && (view = c1489a3.get(m32932c02.get(0))) != null) {
                        ViewTreeObserver$OnPreDrawListenerC1676t.m29354a(m32700m(), new RunnableC0716h(abstractC0771v2, view, rect));
                        z2 = true;
                    }
                    abstractC0771v2.mo30915z(obj, view2, arrayList);
                    abstractC0771v2.mo30918t(obj, null, null, null, null, obj, arrayList2);
                    Boolean bool = Boolean.TRUE;
                    operation3 = operation;
                    hashMap.put(operation3, bool);
                    operation4 = operation2;
                    hashMap.put(operation4, bool);
                }
            }
        }
        View view6 = view3;
        ArrayList arrayList3 = new ArrayList();
        Object obj2 = null;
        Object obj3 = null;
        for (C0721m c0721m4 : list) {
            if (c0721m4.m32655d()) {
                hashMap.put(c0721m4.m32657b(), Boolean.FALSE);
                c0721m4.m32658a();
            } else {
                Object mo30924g = abstractC0771v2.mo30924g(c0721m4.m32651h());
                SpecialEffectsController.Operation m32657b = c0721m4.m32657b();
                boolean z3 = obj != null && (m32657b == operation3 || m32657b == operation4);
                if (mo30924g != null) {
                    ArrayList<View> arrayList4 = new ArrayList<>();
                    m32664t(arrayList4, m32657b.m32690f().f3201L);
                    if (z3) {
                        if (m32657b == operation3) {
                            arrayList4.removeAll(arrayList);
                        } else {
                            arrayList4.removeAll(arrayList2);
                        }
                    }
                    if (arrayList4.isEmpty()) {
                        abstractC0771v2.mo30928a(mo30924g, view2);
                    } else {
                        abstractC0771v2.mo30927b(mo30924g, arrayList4);
                        abstractC0771v2.mo30918t(mo30924g, mo30924g, arrayList4, null, null, null, null);
                        if (m32657b.m32691e() == SpecialEffectsController.Operation.State.GONE) {
                            list2.remove(m32657b);
                            abstractC0771v2.mo30919r(mo30924g, m32657b.m32690f().f3201L, arrayList4);
                            ViewTreeObserver$OnPreDrawListenerC1676t.m29354a(m32700m(), new RunnableC0717i(arrayList4));
                        }
                    }
                    if (m32657b.m32691e() == SpecialEffectsController.Operation.State.VISIBLE) {
                        arrayList3.addAll(arrayList4);
                        if (z2) {
                            abstractC0771v2.mo30917u(mo30924g, rect);
                        }
                    } else {
                        abstractC0771v2.mo30916v(mo30924g, view6);
                    }
                    hashMap.put(m32657b, Boolean.TRUE);
                    if (c0721m4.m32649j()) {
                        obj2 = abstractC0771v2.mo30922n(obj2, mo30924g, null);
                    } else {
                        obj3 = abstractC0771v2.mo30922n(obj3, mo30924g, null);
                    }
                } else if (!z3) {
                    hashMap.put(m32657b, Boolean.FALSE);
                    c0721m4.m32658a();
                }
            }
        }
        Object mo30923m = abstractC0771v2.mo30923m(obj2, obj3, obj);
        for (C0721m c0721m5 : list) {
            if (!c0721m5.m32655d()) {
                Object m32651h = c0721m5.m32651h();
                SpecialEffectsController.Operation m32657b2 = c0721m5.m32657b();
                boolean z4 = obj != null && (m32657b2 == operation3 || m32657b2 == operation4);
                if (m32651h != null || z4) {
                    if (!C1679w.m29313V(m32700m())) {
                        if (FragmentManager.m32848G0(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Container " + m32700m() + " has not been laid out. Completing operation " + m32657b2);
                        }
                        c0721m5.m32658a();
                    } else {
                        abstractC0771v2.mo32451w(c0721m5.m32657b().m32690f(), mo30923m, c0721m5.m32656c(), new RunnableC0718j(c0721m5));
                    }
                }
            }
        }
        if (!C1679w.m29313V(m32700m())) {
            return hashMap;
        }
        C0756t.m32491A(arrayList3, 4);
        ArrayList<String> m32453o = abstractC0771v2.m32453o(arrayList2);
        abstractC0771v2.mo30926c(m32700m(), mo30923m);
        abstractC0771v2.m32449y(m32700m(), arrayList, arrayList2, m32453o, c1489a);
        C0756t.m32491A(arrayList3, 0);
        abstractC0771v2.mo30931A(obj, arrayList, arrayList2);
        return hashMap;
    }

    @Override // androidx.fragment.app.SpecialEffectsController
    /* renamed from: f */
    void mo32666f(List<SpecialEffectsController.Operation> list, boolean z) {
        SpecialEffectsController.Operation operation = null;
        SpecialEffectsController.Operation operation2 = null;
        for (SpecialEffectsController.Operation operation3 : list) {
            SpecialEffectsController.Operation.State from = SpecialEffectsController.Operation.State.from(operation3.m32690f().f3201L);
            int i = C0708a.f3421a[operation3.m32691e().ordinal()];
            if (i == 1 || i == 2 || i == 3) {
                if (from == SpecialEffectsController.Operation.State.VISIBLE && operation == null) {
                    operation = operation3;
                }
            } else if (i == 4 && from != SpecialEffectsController.Operation.State.VISIBLE) {
                operation2 = operation3;
            }
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList<SpecialEffectsController.Operation> arrayList3 = new ArrayList(list);
        for (SpecialEffectsController.Operation operation4 : list) {
            C0623b c0623b = new C0623b();
            operation4.m32686j(c0623b);
            arrayList.add(new C0719k(operation4, c0623b, z));
            C0623b c0623b2 = new C0623b();
            operation4.m32686j(c0623b2);
            boolean z2 = false;
            if (z) {
                if (operation4 != operation) {
                    arrayList2.add(new C0721m(operation4, c0623b2, z, z2));
                    operation4.m32694a(new RunnableC0709b(arrayList3, operation4));
                }
                z2 = true;
                arrayList2.add(new C0721m(operation4, c0623b2, z, z2));
                operation4.m32694a(new RunnableC0709b(arrayList3, operation4));
            } else {
                if (operation4 != operation2) {
                    arrayList2.add(new C0721m(operation4, c0623b2, z, z2));
                    operation4.m32694a(new RunnableC0709b(arrayList3, operation4));
                }
                z2 = true;
                arrayList2.add(new C0721m(operation4, c0623b2, z, z2));
                operation4.m32694a(new RunnableC0709b(arrayList3, operation4));
            }
        }
        Map<SpecialEffectsController.Operation, Boolean> m32660x = m32660x(arrayList2, arrayList3, z, operation, operation2);
        m32661w(arrayList, arrayList3, m32660x.containsValue(Boolean.TRUE), m32660x);
        for (SpecialEffectsController.Operation operation5 : arrayList3) {
            m32665s(operation5);
        }
        arrayList3.clear();
    }

    /* renamed from: s */
    void m32665s(SpecialEffectsController.Operation operation) {
        operation.m32691e().applyState(operation.m32690f().f3201L);
    }

    /* renamed from: t */
    void m32664t(ArrayList<View> arrayList, View view) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        if (!arrayList.contains(view) && C1679w.m29326M(view) != null) {
            arrayList.add(view);
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getVisibility() == 0) {
                m32664t(arrayList, childAt);
            }
        }
    }

    /* renamed from: u */
    void m32663u(Map<String, View> map, View view) {
        String m29326M = C1679w.m29326M(view);
        if (m29326M != null) {
            map.put(m29326M, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    m32663u(map, childAt);
                }
            }
        }
    }

    /* renamed from: v */
    void m32662v(C1489a<String, View> c1489a, Collection<String> collection) {
        Iterator<Map.Entry<String, View>> it = c1489a.entrySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(C1679w.m29326M(it.next().getValue()))) {
                it.remove();
            }
        }
    }
}
