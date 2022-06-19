package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.p023g.C0552u;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.recyclerview.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c.class */
public class C0990c extends AbstractC1020l {

    /* renamed from: i */
    private static TimeInterpolator f3085i;

    /* renamed from: j */
    private ArrayList<RecyclerView.AbstractC0977w> f3093j = new ArrayList<>();

    /* renamed from: k */
    private ArrayList<RecyclerView.AbstractC0977w> f3094k = new ArrayList<>();

    /* renamed from: l */
    private ArrayList<C1000b> f3095l = new ArrayList<>();

    /* renamed from: m */
    private ArrayList<C0999a> f3096m = new ArrayList<>();

    /* renamed from: a */
    ArrayList<ArrayList<RecyclerView.AbstractC0977w>> f3086a = new ArrayList<>();

    /* renamed from: b */
    ArrayList<ArrayList<C1000b>> f3087b = new ArrayList<>();

    /* renamed from: c */
    ArrayList<ArrayList<C0999a>> f3088c = new ArrayList<>();

    /* renamed from: d */
    ArrayList<RecyclerView.AbstractC0977w> f3089d = new ArrayList<>();

    /* renamed from: e */
    ArrayList<RecyclerView.AbstractC0977w> f3090e = new ArrayList<>();

    /* renamed from: f */
    ArrayList<RecyclerView.AbstractC0977w> f3091f = new ArrayList<>();

    /* renamed from: g */
    ArrayList<RecyclerView.AbstractC0977w> f3092g = new ArrayList<>();

    /* renamed from: androidx.recyclerview.widget.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$a.class */
    public static class C0999a {

        /* renamed from: a */
        public RecyclerView.AbstractC0977w f3125a;

        /* renamed from: b */
        public RecyclerView.AbstractC0977w f3126b;

        /* renamed from: c */
        public int f3127c;

        /* renamed from: d */
        public int f3128d;

        /* renamed from: e */
        public int f3129e;

        /* renamed from: f */
        public int f3130f;

        private C0999a(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0977w abstractC0977w2) {
            this.f3125a = abstractC0977w;
            this.f3126b = abstractC0977w2;
        }

        C0999a(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0977w abstractC0977w2, int i, int i2, int i3, int i4) {
            this(abstractC0977w, abstractC0977w2);
            this.f3127c = i;
            this.f3128d = i2;
            this.f3129e = i3;
            this.f3130f = i4;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f3125a + ", newHolder=" + this.f3126b + ", fromX=" + this.f3127c + ", fromY=" + this.f3128d + ", toX=" + this.f3129e + ", toY=" + this.f3130f + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$b.class */
    public static class C1000b {

        /* renamed from: a */
        public RecyclerView.AbstractC0977w f3131a;

        /* renamed from: b */
        public int f3132b;

        /* renamed from: c */
        public int f3133c;

        /* renamed from: d */
        public int f3134d;

        /* renamed from: e */
        public int f3135e;

        C1000b(RecyclerView.AbstractC0977w abstractC0977w, int i, int i2, int i3, int i4) {
            this.f3131a = abstractC0977w;
            this.f3132b = i;
            this.f3133c = i2;
            this.f3134d = i3;
            this.f3135e = i4;
        }
    }

    /* renamed from: a */
    private void m4644a(List<C0999a> list, RecyclerView.AbstractC0977w abstractC0977w) {
        for (int size = list.size() - 1; size >= 0; size--) {
            C0999a c0999a = list.get(size);
            if (m4646a(c0999a, abstractC0977w) && c0999a.f3125a == null && c0999a.f3126b == null) {
                list.remove(c0999a);
            }
        }
    }

    /* renamed from: a */
    private boolean m4646a(C0999a c0999a, RecyclerView.AbstractC0977w abstractC0977w) {
        boolean z = false;
        if (c0999a.f3126b == abstractC0977w) {
            c0999a.f3126b = null;
        } else if (c0999a.f3125a != abstractC0977w) {
            return false;
        } else {
            c0999a.f3125a = null;
            z = true;
        }
        abstractC0977w.itemView.setAlpha(1.0f);
        abstractC0977w.itemView.setTranslationX(FlexItem.FLEX_GROW_DEFAULT);
        abstractC0977w.itemView.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
        m4552a(abstractC0977w, z);
        return true;
    }

    /* renamed from: b */
    private void m4642b(C0999a c0999a) {
        if (c0999a.f3125a != null) {
            m4646a(c0999a, c0999a.f3125a);
        }
        if (c0999a.f3126b != null) {
            m4646a(c0999a, c0999a.f3126b);
        }
    }

    /* renamed from: u */
    private void m4639u(final RecyclerView.AbstractC0977w abstractC0977w) {
        final View view = abstractC0977w.itemView;
        final ViewPropertyAnimator animate = view.animate();
        this.f3091f.add(abstractC0977w);
        animate.setDuration(m4932g()).alpha(FlexItem.FLEX_GROW_DEFAULT).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                view.setAlpha(1.0f);
                C0990c.this.m4546i(abstractC0977w);
                C0990c.this.f3091f.remove(abstractC0977w);
                C0990c.this.m4641c();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                C0990c.this.m4543l(abstractC0977w);
            }
        }).start();
    }

    /* renamed from: v */
    private void m4638v(RecyclerView.AbstractC0977w abstractC0977w) {
        if (f3085i == null) {
            f3085i = new ValueAnimator().getInterpolator();
        }
        abstractC0977w.itemView.animate().setInterpolator(f3085i);
        mo4167d(abstractC0977w);
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
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0950f
    /* renamed from: a */
    public void mo4179a() {
        boolean z = !this.f3093j.isEmpty();
        boolean z2 = !this.f3095l.isEmpty();
        boolean z3 = !this.f3096m.isEmpty();
        boolean z4 = !this.f3094k.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.AbstractC0977w> it = this.f3093j.iterator();
            while (it.hasNext()) {
                m4639u(it.next());
            }
            this.f3093j.clear();
            if (z2) {
                final ArrayList<C1000b> arrayList = new ArrayList<>();
                arrayList.addAll(this.f3095l);
                this.f3087b.add(arrayList);
                this.f3095l.clear();
                Runnable runnable = new Runnable() { // from class: androidx.recyclerview.widget.c.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            C1000b c1000b = (C1000b) it2.next();
                            C0990c.this.m4643b(c1000b.f3131a, c1000b.f3132b, c1000b.f3133c, c1000b.f3134d, c1000b.f3135e);
                        }
                        arrayList.clear();
                        C0990c.this.f3087b.remove(arrayList);
                    }
                };
                if (z) {
                    C0552u.m6264a(arrayList.get(0).f3131a.itemView, runnable, m4932g());
                } else {
                    runnable.run();
                }
            }
            if (z3) {
                final ArrayList<C0999a> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.f3096m);
                this.f3088c.add(arrayList2);
                this.f3096m.clear();
                Runnable runnable2 = new Runnable() { // from class: androidx.recyclerview.widget.c.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            C0990c.this.m4647a((C0999a) it2.next());
                        }
                        arrayList2.clear();
                        C0990c.this.f3088c.remove(arrayList2);
                    }
                };
                if (z) {
                    C0552u.m6264a(arrayList2.get(0).f3125a.itemView, runnable2, m4932g());
                } else {
                    runnable2.run();
                }
            }
            if (!z4) {
                return;
            }
            final ArrayList<RecyclerView.AbstractC0977w> arrayList3 = new ArrayList<>();
            arrayList3.addAll(this.f3094k);
            this.f3086a.add(arrayList3);
            this.f3094k.clear();
            Runnable runnable3 = new Runnable() { // from class: androidx.recyclerview.widget.c.3
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it2 = arrayList3.iterator();
                    while (it2.hasNext()) {
                        C0990c.this.m4640c((RecyclerView.AbstractC0977w) it2.next());
                    }
                    arrayList3.clear();
                    C0990c.this.f3086a.remove(arrayList3);
                }
            };
            if (!z && !z2 && !z3) {
                runnable3.run();
                return;
            }
            ?? r14 = false;
            ?? g = z ? m4932g() : false;
            ?? e = z2 ? m4936e() : false;
            if (z3) {
                r14 = m4930h();
            }
            C0552u.m6264a(arrayList3.get(0).itemView, runnable3, (g == true ? 1L : 0L) + Math.max(e == true ? 1L : 0L, r14 == true ? 1L : 0L));
        }
    }

    /* renamed from: a */
    void m4647a(final C0999a c0999a) {
        RecyclerView.AbstractC0977w abstractC0977w = c0999a.f3125a;
        View view = null;
        View view2 = abstractC0977w == null ? null : abstractC0977w.itemView;
        RecyclerView.AbstractC0977w abstractC0977w2 = c0999a.f3126b;
        if (abstractC0977w2 != null) {
            view = abstractC0977w2.itemView;
        }
        if (view2 != null) {
            final ViewPropertyAnimator duration = view2.animate().setDuration(m4930h());
            this.f3092g.add(c0999a.f3125a);
            duration.translationX(c0999a.f3129e - c0999a.f3127c);
            duration.translationY(c0999a.f3130f - c0999a.f3128d);
            final View view3 = view2;
            duration.alpha(FlexItem.FLEX_GROW_DEFAULT).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    duration.setListener(null);
                    view3.setAlpha(1.0f);
                    view3.setTranslationX(FlexItem.FLEX_GROW_DEFAULT);
                    view3.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
                    C0990c.this.m4552a(c0999a.f3125a, true);
                    C0990c.this.f3092g.remove(c0999a.f3125a);
                    C0990c.this.m4641c();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    C0990c.this.m4549b(c0999a.f3125a, true);
                }
            }).start();
        }
        if (view != null) {
            final ViewPropertyAnimator animate = view.animate();
            this.f3092g.add(c0999a.f3126b);
            final View view4 = view;
            animate.translationX(FlexItem.FLEX_GROW_DEFAULT).translationY(FlexItem.FLEX_GROW_DEFAULT).setDuration(m4930h()).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    animate.setListener(null);
                    view4.setAlpha(1.0f);
                    view4.setTranslationX(FlexItem.FLEX_GROW_DEFAULT);
                    view4.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
                    C0990c.this.m4552a(c0999a.f3126b, false);
                    C0990c.this.f3092g.remove(c0999a.f3126b);
                    C0990c.this.m4641c();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    C0990c.this.m4549b(c0999a.f3126b, false);
                }
            }).start();
        }
    }

    /* renamed from: a */
    void m4645a(List<RecyclerView.AbstractC0977w> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).itemView.animate().cancel();
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC1020l
    /* renamed from: a */
    public boolean mo4178a(RecyclerView.AbstractC0977w abstractC0977w) {
        m4638v(abstractC0977w);
        this.f3093j.add(abstractC0977w);
        return true;
    }

    @Override // androidx.recyclerview.widget.AbstractC1020l
    /* renamed from: a */
    public boolean mo4177a(RecyclerView.AbstractC0977w abstractC0977w, int i, int i2, int i3, int i4) {
        View view = abstractC0977w.itemView;
        int translationX = i + ((int) abstractC0977w.itemView.getTranslationX());
        int translationY = i2 + ((int) abstractC0977w.itemView.getTranslationY());
        m4638v(abstractC0977w);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            m4545j(abstractC0977w);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        this.f3095l.add(new C1000b(abstractC0977w, translationX, translationY, i3, i4));
        return true;
    }

    @Override // androidx.recyclerview.widget.AbstractC1020l
    /* renamed from: a */
    public boolean mo4176a(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0977w abstractC0977w2, int i, int i2, int i3, int i4) {
        if (abstractC0977w == abstractC0977w2) {
            return mo4177a(abstractC0977w, i, i2, i3, i4);
        }
        float translationX = abstractC0977w.itemView.getTranslationX();
        float translationY = abstractC0977w.itemView.getTranslationY();
        float alpha = abstractC0977w.itemView.getAlpha();
        m4638v(abstractC0977w);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        abstractC0977w.itemView.setTranslationX(translationX);
        abstractC0977w.itemView.setTranslationY(translationY);
        abstractC0977w.itemView.setAlpha(alpha);
        if (abstractC0977w2 != null) {
            m4638v(abstractC0977w2);
            abstractC0977w2.itemView.setTranslationX(-i5);
            abstractC0977w2.itemView.setTranslationY(-i6);
            abstractC0977w2.itemView.setAlpha(FlexItem.FLEX_GROW_DEFAULT);
        }
        this.f3096m.add(new C0999a(abstractC0977w, abstractC0977w2, i, i2, i3, i4));
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0950f
    /* renamed from: a */
    public boolean mo4161a(RecyclerView.AbstractC0977w abstractC0977w, List<Object> list) {
        return !list.isEmpty() || super.mo4161a(abstractC0977w, list);
    }

    /* renamed from: b */
    void m4643b(final RecyclerView.AbstractC0977w abstractC0977w, int i, int i2, int i3, int i4) {
        final View view = abstractC0977w.itemView;
        final int i5 = i3 - i;
        final int i6 = i4 - i2;
        if (i5 != 0) {
            view.animate().translationX(FlexItem.FLEX_GROW_DEFAULT);
        }
        if (i6 != 0) {
            view.animate().translationY(FlexItem.FLEX_GROW_DEFAULT);
        }
        final ViewPropertyAnimator animate = view.animate();
        this.f3090e.add(abstractC0977w);
        animate.setDuration(m4936e()).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (i5 != 0) {
                    view.setTranslationX(FlexItem.FLEX_GROW_DEFAULT);
                }
                if (i6 != 0) {
                    view.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                C0990c.this.m4545j(abstractC0977w);
                C0990c.this.f3090e.remove(abstractC0977w);
                C0990c.this.m4641c();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                C0990c.this.m4542m(abstractC0977w);
            }
        }).start();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0950f
    /* renamed from: b */
    public boolean mo4171b() {
        return !this.f3094k.isEmpty() || !this.f3096m.isEmpty() || !this.f3095l.isEmpty() || !this.f3093j.isEmpty() || !this.f3090e.isEmpty() || !this.f3091f.isEmpty() || !this.f3089d.isEmpty() || !this.f3092g.isEmpty() || !this.f3087b.isEmpty() || !this.f3086a.isEmpty() || !this.f3088c.isEmpty();
    }

    @Override // androidx.recyclerview.widget.AbstractC1020l
    /* renamed from: b */
    public boolean mo4170b(RecyclerView.AbstractC0977w abstractC0977w) {
        m4638v(abstractC0977w);
        abstractC0977w.itemView.setAlpha(FlexItem.FLEX_GROW_DEFAULT);
        this.f3094k.add(abstractC0977w);
        return true;
    }

    /* renamed from: c */
    void m4641c() {
        if (!mo4171b()) {
            m4929i();
        }
    }

    /* renamed from: c */
    void m4640c(final RecyclerView.AbstractC0977w abstractC0977w) {
        final View view = abstractC0977w.itemView;
        final ViewPropertyAnimator animate = view.animate();
        this.f3089d.add(abstractC0977w);
        animate.alpha(1.0f).setDuration(m4934f()).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                view.setAlpha(1.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                C0990c.this.m4544k(abstractC0977w);
                C0990c.this.f3089d.remove(abstractC0977w);
                C0990c.this.m4641c();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                C0990c.this.m4541n(abstractC0977w);
            }
        }).start();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0950f
    /* renamed from: d */
    public void mo4168d() {
        for (int size = this.f3095l.size() - 1; size >= 0; size--) {
            C1000b c1000b = this.f3095l.get(size);
            View view = c1000b.f3131a.itemView;
            view.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
            view.setTranslationX(FlexItem.FLEX_GROW_DEFAULT);
            m4545j(c1000b.f3131a);
            this.f3095l.remove(size);
        }
        for (int size2 = this.f3093j.size() - 1; size2 >= 0; size2--) {
            m4546i(this.f3093j.get(size2));
            this.f3093j.remove(size2);
        }
        for (int size3 = this.f3094k.size() - 1; size3 >= 0; size3--) {
            RecyclerView.AbstractC0977w abstractC0977w = this.f3094k.get(size3);
            abstractC0977w.itemView.setAlpha(1.0f);
            m4544k(abstractC0977w);
            this.f3094k.remove(size3);
        }
        for (int size4 = this.f3096m.size() - 1; size4 >= 0; size4--) {
            m4642b(this.f3096m.get(size4));
        }
        this.f3096m.clear();
        if (!mo4171b()) {
            return;
        }
        for (int size5 = this.f3087b.size() - 1; size5 >= 0; size5--) {
            ArrayList<C1000b> arrayList = this.f3087b.get(size5);
            for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                C1000b c1000b2 = arrayList.get(size6);
                View view2 = c1000b2.f3131a.itemView;
                view2.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
                view2.setTranslationX(FlexItem.FLEX_GROW_DEFAULT);
                m4545j(c1000b2.f3131a);
                arrayList.remove(size6);
                if (arrayList.isEmpty()) {
                    this.f3087b.remove(arrayList);
                }
            }
        }
        for (int size7 = this.f3086a.size() - 1; size7 >= 0; size7--) {
            ArrayList<RecyclerView.AbstractC0977w> arrayList2 = this.f3086a.get(size7);
            for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                RecyclerView.AbstractC0977w abstractC0977w2 = arrayList2.get(size8);
                abstractC0977w2.itemView.setAlpha(1.0f);
                m4544k(abstractC0977w2);
                arrayList2.remove(size8);
                if (arrayList2.isEmpty()) {
                    this.f3086a.remove(arrayList2);
                }
            }
        }
        for (int size9 = this.f3088c.size() - 1; size9 >= 0; size9--) {
            ArrayList<C0999a> arrayList3 = this.f3088c.get(size9);
            for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                m4642b(arrayList3.get(size10));
                if (arrayList3.isEmpty()) {
                    this.f3088c.remove(arrayList3);
                }
            }
        }
        m4645a(this.f3091f);
        m4645a(this.f3090e);
        m4645a(this.f3089d);
        m4645a(this.f3092g);
        m4929i();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0950f
    /* renamed from: d */
    public void mo4167d(RecyclerView.AbstractC0977w abstractC0977w) {
        View view = abstractC0977w.itemView;
        view.animate().cancel();
        for (int size = this.f3095l.size() - 1; size >= 0; size--) {
            if (this.f3095l.get(size).f3131a == abstractC0977w) {
                view.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
                view.setTranslationX(FlexItem.FLEX_GROW_DEFAULT);
                m4545j(abstractC0977w);
                this.f3095l.remove(size);
            }
        }
        m4644a(this.f3096m, abstractC0977w);
        if (this.f3093j.remove(abstractC0977w)) {
            view.setAlpha(1.0f);
            m4546i(abstractC0977w);
        }
        if (this.f3094k.remove(abstractC0977w)) {
            view.setAlpha(1.0f);
            m4544k(abstractC0977w);
        }
        for (int size2 = this.f3088c.size() - 1; size2 >= 0; size2--) {
            ArrayList<C0999a> arrayList = this.f3088c.get(size2);
            m4644a(arrayList, abstractC0977w);
            if (arrayList.isEmpty()) {
                this.f3088c.remove(size2);
            }
        }
        for (int size3 = this.f3087b.size() - 1; size3 >= 0; size3--) {
            ArrayList<C1000b> arrayList2 = this.f3087b.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                } else if (arrayList2.get(size4).f3131a == abstractC0977w) {
                    view.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
                    view.setTranslationX(FlexItem.FLEX_GROW_DEFAULT);
                    m4545j(abstractC0977w);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f3087b.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f3086a.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.AbstractC0977w> arrayList3 = this.f3086a.get(size5);
            if (arrayList3.remove(abstractC0977w)) {
                view.setAlpha(1.0f);
                m4544k(abstractC0977w);
                if (arrayList3.isEmpty()) {
                    this.f3086a.remove(size5);
                }
            }
        }
        this.f3091f.remove(abstractC0977w);
        this.f3089d.remove(abstractC0977w);
        this.f3092g.remove(abstractC0977w);
        this.f3090e.remove(abstractC0977w);
        m4641c();
    }
}
