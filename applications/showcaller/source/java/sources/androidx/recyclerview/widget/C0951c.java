package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p020b.p041h.p050l.C1679w;
/* renamed from: androidx.recyclerview.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c.class */
public class C0951c extends AbstractC0983m {

    /* renamed from: h */
    private static TimeInterpolator f4249h;

    /* renamed from: i */
    private ArrayList<RecyclerView.AbstractC0905b0> f4250i = new ArrayList<>();

    /* renamed from: j */
    private ArrayList<RecyclerView.AbstractC0905b0> f4251j = new ArrayList<>();

    /* renamed from: k */
    private ArrayList<C0961j> f4252k = new ArrayList<>();

    /* renamed from: l */
    private ArrayList<C0960i> f4253l = new ArrayList<>();

    /* renamed from: m */
    ArrayList<ArrayList<RecyclerView.AbstractC0905b0>> f4254m = new ArrayList<>();

    /* renamed from: n */
    ArrayList<ArrayList<C0961j>> f4255n = new ArrayList<>();

    /* renamed from: o */
    ArrayList<ArrayList<C0960i>> f4256o = new ArrayList<>();

    /* renamed from: p */
    ArrayList<RecyclerView.AbstractC0905b0> f4257p = new ArrayList<>();

    /* renamed from: q */
    ArrayList<RecyclerView.AbstractC0905b0> f4258q = new ArrayList<>();

    /* renamed from: r */
    ArrayList<RecyclerView.AbstractC0905b0> f4259r = new ArrayList<>();

    /* renamed from: s */
    ArrayList<RecyclerView.AbstractC0905b0> f4260s = new ArrayList<>();

    /* renamed from: androidx.recyclerview.widget.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$a.class */
    class RunnableC0952a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ ArrayList f4261d;

        RunnableC0952a(ArrayList arrayList) {
            C0951c.this = r4;
            this.f4261d = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f4261d.iterator();
            while (it.hasNext()) {
                C0961j c0961j = (C0961j) it.next();
                C0951c.this.m31477S(c0961j.f4295a, c0961j.f4296b, c0961j.f4297c, c0961j.f4298d, c0961j.f4299e);
            }
            this.f4261d.clear();
            C0951c.this.f4255n.remove(this.f4261d);
        }
    }

    /* renamed from: androidx.recyclerview.widget.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$b.class */
    class RunnableC0953b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ ArrayList f4263d;

        RunnableC0953b(ArrayList arrayList) {
            C0951c.this = r4;
            this.f4263d = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f4263d.iterator();
            while (it.hasNext()) {
                C0951c.this.m31478R((C0960i) it.next());
            }
            this.f4263d.clear();
            C0951c.this.f4256o.remove(this.f4263d);
        }
    }

    /* renamed from: androidx.recyclerview.widget.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$c.class */
    class RunnableC0954c implements Runnable {

        /* renamed from: d */
        final /* synthetic */ ArrayList f4265d;

        RunnableC0954c(ArrayList arrayList) {
            C0951c.this = r4;
            this.f4265d = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f4265d.iterator();
            while (it.hasNext()) {
                C0951c.this.m31479Q((RecyclerView.AbstractC0905b0) it.next());
            }
            this.f4265d.clear();
            C0951c.this.f4254m.remove(this.f4265d);
        }
    }

    /* renamed from: androidx.recyclerview.widget.c$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$d.class */
    public class C0955d extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ RecyclerView.AbstractC0905b0 f4267a;

        /* renamed from: b */
        final /* synthetic */ ViewPropertyAnimator f4268b;

        /* renamed from: c */
        final /* synthetic */ View f4269c;

        C0955d(RecyclerView.AbstractC0905b0 abstractC0905b0, ViewPropertyAnimator viewPropertyAnimator, View view) {
            C0951c.this = r4;
            this.f4267a = abstractC0905b0;
            this.f4268b = viewPropertyAnimator;
            this.f4269c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f4268b.setListener(null);
            this.f4269c.setAlpha(1.0f);
            C0951c.this.m31360G(this.f4267a);
            C0951c.this.f4259r.remove(this.f4267a);
            C0951c.this.m31474V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C0951c.this.m31359H(this.f4267a);
        }
    }

    /* renamed from: androidx.recyclerview.widget.c$e */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$e.class */
    public class C0956e extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ RecyclerView.AbstractC0905b0 f4271a;

        /* renamed from: b */
        final /* synthetic */ View f4272b;

        /* renamed from: c */
        final /* synthetic */ ViewPropertyAnimator f4273c;

        C0956e(RecyclerView.AbstractC0905b0 abstractC0905b0, View view, ViewPropertyAnimator viewPropertyAnimator) {
            C0951c.this = r4;
            this.f4271a = abstractC0905b0;
            this.f4272b = view;
            this.f4273c = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f4272b.setAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f4273c.setListener(null);
            C0951c.this.m31366A(this.f4271a);
            C0951c.this.f4257p.remove(this.f4271a);
            C0951c.this.m31474V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C0951c.this.m31365B(this.f4271a);
        }
    }

    /* renamed from: androidx.recyclerview.widget.c$f */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$f.class */
    public class C0957f extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ RecyclerView.AbstractC0905b0 f4275a;

        /* renamed from: b */
        final /* synthetic */ int f4276b;

        /* renamed from: c */
        final /* synthetic */ View f4277c;

        /* renamed from: d */
        final /* synthetic */ int f4278d;

        /* renamed from: e */
        final /* synthetic */ ViewPropertyAnimator f4279e;

        C0957f(RecyclerView.AbstractC0905b0 abstractC0905b0, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
            C0951c.this = r4;
            this.f4275a = abstractC0905b0;
            this.f4276b = i;
            this.f4277c = view;
            this.f4278d = i2;
            this.f4279e = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.f4276b != 0) {
                this.f4277c.setTranslationX(0.0f);
            }
            if (this.f4278d != 0) {
                this.f4277c.setTranslationY(0.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f4279e.setListener(null);
            C0951c.this.m31362E(this.f4275a);
            C0951c.this.f4258q.remove(this.f4275a);
            C0951c.this.m31474V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C0951c.this.m31361F(this.f4275a);
        }
    }

    /* renamed from: androidx.recyclerview.widget.c$g */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$g.class */
    public class C0958g extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ C0960i f4281a;

        /* renamed from: b */
        final /* synthetic */ ViewPropertyAnimator f4282b;

        /* renamed from: c */
        final /* synthetic */ View f4283c;

        C0958g(C0960i c0960i, ViewPropertyAnimator viewPropertyAnimator, View view) {
            C0951c.this = r4;
            this.f4281a = c0960i;
            this.f4282b = viewPropertyAnimator;
            this.f4283c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f4282b.setListener(null);
            this.f4283c.setAlpha(1.0f);
            this.f4283c.setTranslationX(0.0f);
            this.f4283c.setTranslationY(0.0f);
            C0951c.this.m31364C(this.f4281a.f4289a, true);
            C0951c.this.f4260s.remove(this.f4281a.f4289a);
            C0951c.this.m31474V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C0951c.this.m31363D(this.f4281a.f4289a, true);
        }
    }

    /* renamed from: androidx.recyclerview.widget.c$h */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$h.class */
    public class C0959h extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ C0960i f4285a;

        /* renamed from: b */
        final /* synthetic */ ViewPropertyAnimator f4286b;

        /* renamed from: c */
        final /* synthetic */ View f4287c;

        C0959h(C0960i c0960i, ViewPropertyAnimator viewPropertyAnimator, View view) {
            C0951c.this = r4;
            this.f4285a = c0960i;
            this.f4286b = viewPropertyAnimator;
            this.f4287c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f4286b.setListener(null);
            this.f4287c.setAlpha(1.0f);
            this.f4287c.setTranslationX(0.0f);
            this.f4287c.setTranslationY(0.0f);
            C0951c.this.m31364C(this.f4285a.f4290b, false);
            C0951c.this.f4260s.remove(this.f4285a.f4290b);
            C0951c.this.m31474V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C0951c.this.m31363D(this.f4285a.f4290b, false);
        }
    }

    /* renamed from: androidx.recyclerview.widget.c$i */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$i.class */
    public static class C0960i {

        /* renamed from: a */
        public RecyclerView.AbstractC0905b0 f4289a;

        /* renamed from: b */
        public RecyclerView.AbstractC0905b0 f4290b;

        /* renamed from: c */
        public int f4291c;

        /* renamed from: d */
        public int f4292d;

        /* renamed from: e */
        public int f4293e;

        /* renamed from: f */
        public int f4294f;

        private C0960i(RecyclerView.AbstractC0905b0 abstractC0905b0, RecyclerView.AbstractC0905b0 abstractC0905b02) {
            this.f4289a = abstractC0905b0;
            this.f4290b = abstractC0905b02;
        }

        C0960i(RecyclerView.AbstractC0905b0 abstractC0905b0, RecyclerView.AbstractC0905b0 abstractC0905b02, int i, int i2, int i3, int i4) {
            this(abstractC0905b0, abstractC0905b02);
            this.f4291c = i;
            this.f4292d = i2;
            this.f4293e = i3;
            this.f4294f = i4;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f4289a + ", newHolder=" + this.f4290b + ", fromX=" + this.f4291c + ", fromY=" + this.f4292d + ", toX=" + this.f4293e + ", toY=" + this.f4294f + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.c$j */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$j.class */
    public static class C0961j {

        /* renamed from: a */
        public RecyclerView.AbstractC0905b0 f4295a;

        /* renamed from: b */
        public int f4296b;

        /* renamed from: c */
        public int f4297c;

        /* renamed from: d */
        public int f4298d;

        /* renamed from: e */
        public int f4299e;

        C0961j(RecyclerView.AbstractC0905b0 abstractC0905b0, int i, int i2, int i3, int i4) {
            this.f4295a = abstractC0905b0;
            this.f4296b = i;
            this.f4297c = i2;
            this.f4298d = i3;
            this.f4299e = i4;
        }
    }

    /* renamed from: T */
    private void m31476T(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        View view = abstractC0905b0.f4070b;
        ViewPropertyAnimator animate = view.animate();
        this.f4259r.add(abstractC0905b0);
        animate.setDuration(m31890o()).alpha(0.0f).setListener(new C0955d(abstractC0905b0, animate, view)).start();
    }

    /* renamed from: W */
    private void m31473W(List<C0960i> list, RecyclerView.AbstractC0905b0 abstractC0905b0) {
        for (int size = list.size() - 1; size >= 0; size--) {
            C0960i c0960i = list.get(size);
            if (m31471Y(c0960i, abstractC0905b0) && c0960i.f4289a == null && c0960i.f4290b == null) {
                list.remove(c0960i);
            }
        }
    }

    /* renamed from: X */
    private void m31472X(C0960i c0960i) {
        RecyclerView.AbstractC0905b0 abstractC0905b0 = c0960i.f4289a;
        if (abstractC0905b0 != null) {
            m31471Y(c0960i, abstractC0905b0);
        }
        RecyclerView.AbstractC0905b0 abstractC0905b02 = c0960i.f4290b;
        if (abstractC0905b02 != null) {
            m31471Y(c0960i, abstractC0905b02);
        }
    }

    /* renamed from: Y */
    private boolean m31471Y(C0960i c0960i, RecyclerView.AbstractC0905b0 abstractC0905b0) {
        boolean z = false;
        if (c0960i.f4290b == abstractC0905b0) {
            c0960i.f4290b = null;
        } else if (c0960i.f4289a != abstractC0905b0) {
            return false;
        } else {
            c0960i.f4289a = null;
            z = true;
        }
        abstractC0905b0.f4070b.setAlpha(1.0f);
        abstractC0905b0.f4070b.setTranslationX(0.0f);
        abstractC0905b0.f4070b.setTranslationY(0.0f);
        m31364C(abstractC0905b0, z);
        return true;
    }

    /* renamed from: Z */
    private void m31470Z(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        if (f4249h == null) {
            f4249h = new ValueAnimator().getInterpolator();
        }
        abstractC0905b0.f4070b.animate().setInterpolator(f4249h);
        mo31468j(abstractC0905b0);
    }

    /* renamed from: Q */
    void m31479Q(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        View view = abstractC0905b0.f4070b;
        ViewPropertyAnimator animate = view.animate();
        this.f4257p.add(abstractC0905b0);
        animate.alpha(1.0f).setDuration(m31893l()).setListener(new C0956e(abstractC0905b0, view, animate)).start();
    }

    /* renamed from: R */
    void m31478R(C0960i c0960i) {
        RecyclerView.AbstractC0905b0 abstractC0905b0 = c0960i.f4289a;
        View view = null;
        View view2 = abstractC0905b0 == null ? null : abstractC0905b0.f4070b;
        RecyclerView.AbstractC0905b0 abstractC0905b02 = c0960i.f4290b;
        if (abstractC0905b02 != null) {
            view = abstractC0905b02.f4070b;
        }
        if (view2 != null) {
            ViewPropertyAnimator duration = view2.animate().setDuration(m31892m());
            this.f4260s.add(c0960i.f4289a);
            duration.translationX(c0960i.f4293e - c0960i.f4291c);
            duration.translationY(c0960i.f4294f - c0960i.f4292d);
            duration.alpha(0.0f).setListener(new C0958g(c0960i, duration, view2)).start();
        }
        if (view != null) {
            ViewPropertyAnimator animate = view.animate();
            this.f4260s.add(c0960i.f4290b);
            animate.translationX(0.0f).translationY(0.0f).setDuration(m31892m()).alpha(1.0f).setListener(new C0959h(c0960i, animate, view)).start();
        }
    }

    /* renamed from: S */
    void m31477S(RecyclerView.AbstractC0905b0 abstractC0905b0, int i, int i2, int i3, int i4) {
        View view = abstractC0905b0.f4070b;
        int i5 = i3 - i;
        int i6 = i4 - i2;
        if (i5 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i6 != 0) {
            view.animate().translationY(0.0f);
        }
        ViewPropertyAnimator animate = view.animate();
        this.f4258q.add(abstractC0905b0);
        animate.setDuration(m31891n()).setListener(new C0957f(abstractC0905b0, i5, view, i6, animate)).start();
    }

    /* renamed from: U */
    void m31475U(List<RecyclerView.AbstractC0905b0> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).f4070b.animate().cancel();
        }
    }

    /* renamed from: V */
    void m31474V() {
        if (!mo31466p()) {
            m31894i();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0915l
    /* renamed from: g */
    public boolean mo31469g(RecyclerView.AbstractC0905b0 abstractC0905b0, List<Object> list) {
        return !list.isEmpty() || super.mo31469g(abstractC0905b0, list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0915l
    /* renamed from: j */
    public void mo31468j(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        View view = abstractC0905b0.f4070b;
        view.animate().cancel();
        for (int size = this.f4252k.size() - 1; size >= 0; size--) {
            if (this.f4252k.get(size).f4295a == abstractC0905b0) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                m31362E(abstractC0905b0);
                this.f4252k.remove(size);
            }
        }
        m31473W(this.f4253l, abstractC0905b0);
        if (this.f4250i.remove(abstractC0905b0)) {
            view.setAlpha(1.0f);
            m31360G(abstractC0905b0);
        }
        if (this.f4251j.remove(abstractC0905b0)) {
            view.setAlpha(1.0f);
            m31366A(abstractC0905b0);
        }
        for (int size2 = this.f4256o.size() - 1; size2 >= 0; size2--) {
            ArrayList<C0960i> arrayList = this.f4256o.get(size2);
            m31473W(arrayList, abstractC0905b0);
            if (arrayList.isEmpty()) {
                this.f4256o.remove(size2);
            }
        }
        for (int size3 = this.f4255n.size() - 1; size3 >= 0; size3--) {
            ArrayList<C0961j> arrayList2 = this.f4255n.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                } else if (arrayList2.get(size4).f4295a == abstractC0905b0) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    m31362E(abstractC0905b0);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f4255n.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f4254m.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.AbstractC0905b0> arrayList3 = this.f4254m.get(size5);
            if (arrayList3.remove(abstractC0905b0)) {
                view.setAlpha(1.0f);
                m31366A(abstractC0905b0);
                if (arrayList3.isEmpty()) {
                    this.f4254m.remove(size5);
                }
            }
        }
        this.f4259r.remove(abstractC0905b0);
        this.f4257p.remove(abstractC0905b0);
        this.f4260s.remove(abstractC0905b0);
        this.f4258q.remove(abstractC0905b0);
        m31474V();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0915l
    /* renamed from: k */
    public void mo31467k() {
        for (int size = this.f4252k.size() - 1; size >= 0; size--) {
            C0961j c0961j = this.f4252k.get(size);
            View view = c0961j.f4295a.f4070b;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            m31362E(c0961j.f4295a);
            this.f4252k.remove(size);
        }
        for (int size2 = this.f4250i.size() - 1; size2 >= 0; size2--) {
            m31360G(this.f4250i.get(size2));
            this.f4250i.remove(size2);
        }
        for (int size3 = this.f4251j.size() - 1; size3 >= 0; size3--) {
            RecyclerView.AbstractC0905b0 abstractC0905b0 = this.f4251j.get(size3);
            abstractC0905b0.f4070b.setAlpha(1.0f);
            m31366A(abstractC0905b0);
            this.f4251j.remove(size3);
        }
        for (int size4 = this.f4253l.size() - 1; size4 >= 0; size4--) {
            m31472X(this.f4253l.get(size4));
        }
        this.f4253l.clear();
        if (!mo31466p()) {
            return;
        }
        for (int size5 = this.f4255n.size() - 1; size5 >= 0; size5--) {
            ArrayList<C0961j> arrayList = this.f4255n.get(size5);
            for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                C0961j c0961j2 = arrayList.get(size6);
                View view2 = c0961j2.f4295a.f4070b;
                view2.setTranslationY(0.0f);
                view2.setTranslationX(0.0f);
                m31362E(c0961j2.f4295a);
                arrayList.remove(size6);
                if (arrayList.isEmpty()) {
                    this.f4255n.remove(arrayList);
                }
            }
        }
        for (int size7 = this.f4254m.size() - 1; size7 >= 0; size7--) {
            ArrayList<RecyclerView.AbstractC0905b0> arrayList2 = this.f4254m.get(size7);
            for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                RecyclerView.AbstractC0905b0 abstractC0905b02 = arrayList2.get(size8);
                abstractC0905b02.f4070b.setAlpha(1.0f);
                m31366A(abstractC0905b02);
                arrayList2.remove(size8);
                if (arrayList2.isEmpty()) {
                    this.f4254m.remove(arrayList2);
                }
            }
        }
        for (int size9 = this.f4256o.size() - 1; size9 >= 0; size9--) {
            ArrayList<C0960i> arrayList3 = this.f4256o.get(size9);
            for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                m31472X(arrayList3.get(size10));
                if (arrayList3.isEmpty()) {
                    this.f4256o.remove(arrayList3);
                }
            }
        }
        m31475U(this.f4259r);
        m31475U(this.f4258q);
        m31475U(this.f4257p);
        m31475U(this.f4260s);
        m31894i();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0915l
    /* renamed from: p */
    public boolean mo31466p() {
        return !this.f4251j.isEmpty() || !this.f4253l.isEmpty() || !this.f4252k.isEmpty() || !this.f4250i.isEmpty() || !this.f4258q.isEmpty() || !this.f4259r.isEmpty() || !this.f4257p.isEmpty() || !this.f4260s.isEmpty() || !this.f4255n.isEmpty() || !this.f4254m.isEmpty() || !this.f4256o.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v1 */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0915l
    /* renamed from: u */
    public void mo31465u() {
        boolean z = !this.f4250i.isEmpty();
        boolean z2 = !this.f4252k.isEmpty();
        boolean z3 = !this.f4253l.isEmpty();
        boolean z4 = !this.f4251j.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.AbstractC0905b0> it = this.f4250i.iterator();
            while (it.hasNext()) {
                m31476T(it.next());
            }
            this.f4250i.clear();
            if (z2) {
                ArrayList<C0961j> arrayList = new ArrayList<>();
                arrayList.addAll(this.f4252k);
                this.f4255n.add(arrayList);
                this.f4252k.clear();
                RunnableC0952a runnableC0952a = new RunnableC0952a(arrayList);
                if (z) {
                    C1679w.m29287k0(arrayList.get(0).f4295a.f4070b, runnableC0952a, m31890o());
                } else {
                    runnableC0952a.run();
                }
            }
            if (z3) {
                ArrayList<C0960i> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.f4253l);
                this.f4256o.add(arrayList2);
                this.f4253l.clear();
                RunnableC0953b runnableC0953b = new RunnableC0953b(arrayList2);
                if (z) {
                    C1679w.m29287k0(arrayList2.get(0).f4289a.f4070b, runnableC0953b, m31890o());
                } else {
                    runnableC0953b.run();
                }
            }
            if (!z4) {
                return;
            }
            ArrayList<RecyclerView.AbstractC0905b0> arrayList3 = new ArrayList<>();
            arrayList3.addAll(this.f4251j);
            this.f4254m.add(arrayList3);
            this.f4251j.clear();
            RunnableC0954c runnableC0954c = new RunnableC0954c(arrayList3);
            if (!z && !z2 && !z3) {
                runnableC0954c.run();
                return;
            }
            ?? r14 = false;
            ?? m31890o = z ? m31890o() : false;
            ?? m31891n = z2 ? m31891n() : false;
            if (z3) {
                r14 = m31892m();
            }
            C1679w.m29287k0(arrayList3.get(0).f4070b, runnableC0954c, (m31890o == true ? 1L : 0L) + Math.max(m31891n == true ? 1L : 0L, r14 == true ? 1L : 0L));
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC0983m
    /* renamed from: w */
    public boolean mo31345w(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        m31470Z(abstractC0905b0);
        abstractC0905b0.f4070b.setAlpha(0.0f);
        this.f4251j.add(abstractC0905b0);
        return true;
    }

    @Override // androidx.recyclerview.widget.AbstractC0983m
    /* renamed from: x */
    public boolean mo31344x(RecyclerView.AbstractC0905b0 abstractC0905b0, RecyclerView.AbstractC0905b0 abstractC0905b02, int i, int i2, int i3, int i4) {
        if (abstractC0905b0 == abstractC0905b02) {
            return mo31343y(abstractC0905b0, i, i2, i3, i4);
        }
        float translationX = abstractC0905b0.f4070b.getTranslationX();
        float translationY = abstractC0905b0.f4070b.getTranslationY();
        float alpha = abstractC0905b0.f4070b.getAlpha();
        m31470Z(abstractC0905b0);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        abstractC0905b0.f4070b.setTranslationX(translationX);
        abstractC0905b0.f4070b.setTranslationY(translationY);
        abstractC0905b0.f4070b.setAlpha(alpha);
        if (abstractC0905b02 != null) {
            m31470Z(abstractC0905b02);
            abstractC0905b02.f4070b.setTranslationX(-i5);
            abstractC0905b02.f4070b.setTranslationY(-i6);
            abstractC0905b02.f4070b.setAlpha(0.0f);
        }
        this.f4253l.add(new C0960i(abstractC0905b0, abstractC0905b02, i, i2, i3, i4));
        return true;
    }

    @Override // androidx.recyclerview.widget.AbstractC0983m
    /* renamed from: y */
    public boolean mo31343y(RecyclerView.AbstractC0905b0 abstractC0905b0, int i, int i2, int i3, int i4) {
        View view = abstractC0905b0.f4070b;
        int translationX = i + ((int) view.getTranslationX());
        int translationY = i2 + ((int) abstractC0905b0.f4070b.getTranslationY());
        m31470Z(abstractC0905b0);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            m31362E(abstractC0905b0);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        this.f4252k.add(new C0961j(abstractC0905b0, translationX, translationY, i3, i4));
        return true;
    }

    @Override // androidx.recyclerview.widget.AbstractC0983m
    /* renamed from: z */
    public boolean mo31342z(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        m31470Z(abstractC0905b0);
        this.f4250i.add(abstractC0905b0);
        return true;
    }
}
