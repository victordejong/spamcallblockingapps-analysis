package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.p026h.C0595u;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.recyclerview.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c.class */
public class C0964c extends AbstractC0998o {

    /* renamed from: i */
    private static TimeInterpolator f3274i;

    /* renamed from: j */
    private ArrayList<RecyclerView.AbstractC0948x> f3282j = new ArrayList<>();

    /* renamed from: k */
    private ArrayList<RecyclerView.AbstractC0948x> f3283k = new ArrayList<>();

    /* renamed from: l */
    private ArrayList<C0974b> f3284l = new ArrayList<>();

    /* renamed from: m */
    private ArrayList<C0973a> f3285m = new ArrayList<>();

    /* renamed from: a */
    ArrayList<ArrayList<RecyclerView.AbstractC0948x>> f3275a = new ArrayList<>();

    /* renamed from: b */
    ArrayList<ArrayList<C0974b>> f3276b = new ArrayList<>();

    /* renamed from: c */
    ArrayList<ArrayList<C0973a>> f3277c = new ArrayList<>();

    /* renamed from: d */
    ArrayList<RecyclerView.AbstractC0948x> f3278d = new ArrayList<>();

    /* renamed from: e */
    ArrayList<RecyclerView.AbstractC0948x> f3279e = new ArrayList<>();

    /* renamed from: f */
    ArrayList<RecyclerView.AbstractC0948x> f3280f = new ArrayList<>();

    /* renamed from: g */
    ArrayList<RecyclerView.AbstractC0948x> f3281g = new ArrayList<>();

    /* renamed from: androidx.recyclerview.widget.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$a.class */
    public static class C0973a {

        /* renamed from: a */
        public RecyclerView.AbstractC0948x f3314a;

        /* renamed from: b */
        public RecyclerView.AbstractC0948x f3315b;

        /* renamed from: c */
        public int f3316c;

        /* renamed from: d */
        public int f3317d;

        /* renamed from: e */
        public int f3318e;

        /* renamed from: f */
        public int f3319f;

        private C0973a(RecyclerView.AbstractC0948x abstractC0948x, RecyclerView.AbstractC0948x abstractC0948x2) {
            this.f3314a = abstractC0948x;
            this.f3315b = abstractC0948x2;
        }

        C0973a(RecyclerView.AbstractC0948x abstractC0948x, RecyclerView.AbstractC0948x abstractC0948x2, int i, int i2, int i3, int i4) {
            this(abstractC0948x, abstractC0948x2);
            this.f3316c = i;
            this.f3317d = i2;
            this.f3318e = i3;
            this.f3319f = i4;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f3314a + ", newHolder=" + this.f3315b + ", fromX=" + this.f3316c + ", fromY=" + this.f3317d + ", toX=" + this.f3318e + ", toY=" + this.f3319f + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$b.class */
    public static class C0974b {

        /* renamed from: a */
        public RecyclerView.AbstractC0948x f3320a;

        /* renamed from: b */
        public int f3321b;

        /* renamed from: c */
        public int f3322c;

        /* renamed from: d */
        public int f3323d;

        /* renamed from: e */
        public int f3324e;

        C0974b(RecyclerView.AbstractC0948x abstractC0948x, int i, int i2, int i3, int i4) {
            this.f3320a = abstractC0948x;
            this.f3321b = i;
            this.f3322c = i2;
            this.f3323d = i3;
            this.f3324e = i4;
        }
    }

    /* renamed from: a */
    private void m18549a(List<C0973a> list, RecyclerView.AbstractC0948x abstractC0948x) {
        for (int size = list.size() - 1; size >= 0; size--) {
            C0973a c0973a = list.get(size);
            if (m18551a(c0973a, abstractC0948x) && c0973a.f3314a == null && c0973a.f3315b == null) {
                list.remove(c0973a);
            }
        }
    }

    /* renamed from: a */
    private boolean m18551a(C0973a c0973a, RecyclerView.AbstractC0948x abstractC0948x) {
        boolean z;
        boolean z2 = false;
        if (c0973a.f3315b != abstractC0948x) {
            z = false;
            if (c0973a.f3314a == abstractC0948x) {
                c0973a.f3314a = null;
                z2 = true;
            }
            return z;
        }
        c0973a.f3315b = null;
        abstractC0948x.f3183a.setAlpha(1.0f);
        abstractC0948x.f3183a.setTranslationX(0.0f);
        abstractC0948x.f3183a.setTranslationY(0.0f);
        m18424a(abstractC0948x, z2);
        z = true;
        return z;
    }

    /* renamed from: b */
    private void m18546b(C0973a c0973a) {
        if (c0973a.f3314a != null) {
            m18551a(c0973a, c0973a.f3314a);
        }
        if (c0973a.f3315b != null) {
            m18551a(c0973a, c0973a.f3315b);
        }
    }

    /* renamed from: u */
    private void m18541u(final RecyclerView.AbstractC0948x abstractC0948x) {
        final View view = abstractC0948x.f3183a;
        final ViewPropertyAnimator animate = view.animate();
        this.f3280f.add(abstractC0948x);
        animate.setDuration(m19023g()).alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                view.setAlpha(1.0f);
                C0964c.this.m18416i(abstractC0948x);
                C0964c.this.f3280f.remove(abstractC0948x);
                C0964c.this.m18545c();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                C0964c.this.m18413l(abstractC0948x);
            }
        }).start();
    }

    /* renamed from: v */
    private void m18540v(RecyclerView.AbstractC0948x abstractC0948x) {
        if (f3274i == null) {
            f3274i = new ValueAnimator().getInterpolator();
        }
        abstractC0948x.f3183a.animate().setInterpolator(f3274i);
        mo18542d(abstractC0948x);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55 */
    /* JADX WARN: Type inference failed for: r0v56 */
    /* JADX WARN: Type inference failed for: r0v67 */
    /* JADX WARN: Type inference failed for: r0v83 */
    /* JADX WARN: Type inference failed for: r0v91 */
    /* JADX WARN: Type inference failed for: r0v92 */
    /* JADX WARN: Type inference failed for: r0v93 */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0919f
    /* renamed from: a */
    public void mo18554a() {
        ?? r8 = !this.f3282j.isEmpty();
        ?? r9 = !this.f3284l.isEmpty();
        ?? r10 = !this.f3285m.isEmpty();
        ?? r11 = !this.f3283k.isEmpty();
        if (r8 == true || r9 == true || r11 == true || r10 == true) {
            Iterator<RecyclerView.AbstractC0948x> it = this.f3282j.iterator();
            while (it.hasNext()) {
                m18541u(it.next());
            }
            this.f3282j.clear();
            if (r9 != false) {
                final ArrayList<C0974b> arrayList = new ArrayList<>();
                arrayList.addAll(this.f3284l);
                this.f3276b.add(arrayList);
                this.f3284l.clear();
                Runnable runnable = new Runnable() { // from class: androidx.recyclerview.widget.c.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            C0974b c0974b = (C0974b) it2.next();
                            C0964c.this.m18547b(c0974b.f3320a, c0974b.f3321b, c0974b.f3322c, c0974b.f3323d, c0974b.f3324e);
                        }
                        arrayList.clear();
                        C0964c.this.f3276b.remove(arrayList);
                    }
                };
                if (r8 == true) {
                    C0595u.m20340a(arrayList.get(0).f3320a.f3183a, runnable, m19023g());
                } else {
                    runnable.run();
                }
            }
            if (r10 != false) {
                final ArrayList<C0973a> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.f3285m);
                this.f3277c.add(arrayList2);
                this.f3285m.clear();
                Runnable runnable2 = new Runnable() { // from class: androidx.recyclerview.widget.c.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            C0964c.this.m18552a((C0973a) it2.next());
                        }
                        arrayList2.clear();
                        C0964c.this.f3277c.remove(arrayList2);
                    }
                };
                if (r8 == true) {
                    C0595u.m20340a(arrayList2.get(0).f3314a.f3183a, runnable2, m19023g());
                } else {
                    runnable2.run();
                }
            }
            if (r11 != true) {
                return;
            }
            final ArrayList<RecyclerView.AbstractC0948x> arrayList3 = new ArrayList<>();
            arrayList3.addAll(this.f3283k);
            this.f3275a.add(arrayList3);
            this.f3283k.clear();
            Runnable runnable3 = new Runnable() { // from class: androidx.recyclerview.widget.c.3
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it2 = arrayList3.iterator();
                    while (it2.hasNext()) {
                        C0964c.this.m18544c((RecyclerView.AbstractC0948x) it2.next());
                    }
                    arrayList3.clear();
                    C0964c.this.f3275a.remove(arrayList3);
                }
            };
            if (r8 != true && r9 != true && r10 != true) {
                runnable3.run();
                return;
            }
            C0595u.m20340a(arrayList3.get(0).f3183a, runnable3, ((r8 != false ? m19023g() : false) == true ? 1L : 0L) + Math.max((r9 != false ? m19027e() : false) == true ? 1L : 0L, (r10 != false ? m19021h() : false) == true ? 1L : 0L));
        }
    }

    /* renamed from: a */
    void m18552a(final C0973a c0973a) {
        View view = null;
        RecyclerView.AbstractC0948x abstractC0948x = c0973a.f3314a;
        View view2 = abstractC0948x == null ? null : abstractC0948x.f3183a;
        RecyclerView.AbstractC0948x abstractC0948x2 = c0973a.f3315b;
        if (abstractC0948x2 != null) {
            view = abstractC0948x2.f3183a;
        }
        if (view2 != null) {
            final ViewPropertyAnimator duration = view2.animate().setDuration(m19021h());
            this.f3281g.add(c0973a.f3314a);
            duration.translationX(c0973a.f3318e - c0973a.f3316c);
            duration.translationY(c0973a.f3319f - c0973a.f3317d);
            final View view3 = view2;
            duration.alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    duration.setListener(null);
                    view3.setAlpha(1.0f);
                    view3.setTranslationX(0.0f);
                    view3.setTranslationY(0.0f);
                    C0964c.this.m18424a(c0973a.f3314a, true);
                    C0964c.this.f3281g.remove(c0973a.f3314a);
                    C0964c.this.m18545c();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    C0964c.this.m18421b(c0973a.f3314a, true);
                }
            }).start();
        }
        if (view != null) {
            final ViewPropertyAnimator animate = view.animate();
            this.f3281g.add(c0973a.f3315b);
            final View view4 = view;
            animate.translationX(0.0f).translationY(0.0f).setDuration(m19021h()).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    animate.setListener(null);
                    view4.setAlpha(1.0f);
                    view4.setTranslationX(0.0f);
                    view4.setTranslationY(0.0f);
                    C0964c.this.m18424a(c0973a.f3315b, false);
                    C0964c.this.f3281g.remove(c0973a.f3315b);
                    C0964c.this.m18545c();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    C0964c.this.m18421b(c0973a.f3315b, false);
                }
            }).start();
        }
    }

    /* renamed from: a */
    void m18550a(List<RecyclerView.AbstractC0948x> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).f3183a.animate().cancel();
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC0998o
    /* renamed from: a */
    public boolean mo18429a(RecyclerView.AbstractC0948x abstractC0948x) {
        m18540v(abstractC0948x);
        this.f3282j.add(abstractC0948x);
        return true;
    }

    @Override // androidx.recyclerview.widget.AbstractC0998o
    /* renamed from: a */
    public boolean mo18428a(RecyclerView.AbstractC0948x abstractC0948x, int i, int i2, int i3, int i4) {
        boolean z;
        View view = abstractC0948x.f3183a;
        int translationX = i + ((int) abstractC0948x.f3183a.getTranslationX());
        int translationY = i2 + ((int) abstractC0948x.f3183a.getTranslationY());
        m18540v(abstractC0948x);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            m18415j(abstractC0948x);
            z = false;
        } else {
            if (i5 != 0) {
                view.setTranslationX(-i5);
            }
            if (i6 != 0) {
                view.setTranslationY(-i6);
            }
            this.f3284l.add(new C0974b(abstractC0948x, translationX, translationY, i3, i4));
            z = true;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.AbstractC0998o
    /* renamed from: a */
    public boolean mo18426a(RecyclerView.AbstractC0948x abstractC0948x, RecyclerView.AbstractC0948x abstractC0948x2, int i, int i2, int i3, int i4) {
        boolean z;
        if (abstractC0948x == abstractC0948x2) {
            z = mo18428a(abstractC0948x, i, i2, i3, i4);
        } else {
            float translationX = abstractC0948x.f3183a.getTranslationX();
            float translationY = abstractC0948x.f3183a.getTranslationY();
            float alpha = abstractC0948x.f3183a.getAlpha();
            m18540v(abstractC0948x);
            int i5 = (int) ((i3 - i) - translationX);
            int i6 = (int) ((i4 - i2) - translationY);
            abstractC0948x.f3183a.setTranslationX(translationX);
            abstractC0948x.f3183a.setTranslationY(translationY);
            abstractC0948x.f3183a.setAlpha(alpha);
            if (abstractC0948x2 != null) {
                m18540v(abstractC0948x2);
                abstractC0948x2.f3183a.setTranslationX(-i5);
                abstractC0948x2.f3183a.setTranslationY(-i6);
                abstractC0948x2.f3183a.setAlpha(0.0f);
            }
            this.f3285m.add(new C0973a(abstractC0948x, abstractC0948x2, i, i2, i3, i4));
            z = true;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0919f
    /* renamed from: a */
    public boolean mo18553a(RecyclerView.AbstractC0948x abstractC0948x, List<Object> list) {
        return !list.isEmpty() || super.mo18553a(abstractC0948x, list);
    }

    /* renamed from: b */
    void m18547b(final RecyclerView.AbstractC0948x abstractC0948x, int i, int i2, int i3, int i4) {
        final View view = abstractC0948x.f3183a;
        final int i5 = i3 - i;
        final int i6 = i4 - i2;
        if (i5 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i6 != 0) {
            view.animate().translationY(0.0f);
        }
        final ViewPropertyAnimator animate = view.animate();
        this.f3279e.add(abstractC0948x);
        animate.setDuration(m19027e()).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (i5 != 0) {
                    view.setTranslationX(0.0f);
                }
                if (i6 != 0) {
                    view.setTranslationY(0.0f);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                C0964c.this.m18415j(abstractC0948x);
                C0964c.this.f3279e.remove(abstractC0948x);
                C0964c.this.m18545c();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                C0964c.this.m18412m(abstractC0948x);
            }
        }).start();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0919f
    /* renamed from: b */
    public boolean mo18548b() {
        return !this.f3283k.isEmpty() || !this.f3285m.isEmpty() || !this.f3284l.isEmpty() || !this.f3282j.isEmpty() || !this.f3279e.isEmpty() || !this.f3280f.isEmpty() || !this.f3278d.isEmpty() || !this.f3281g.isEmpty() || !this.f3276b.isEmpty() || !this.f3275a.isEmpty() || !this.f3277c.isEmpty();
    }

    @Override // androidx.recyclerview.widget.AbstractC0998o
    /* renamed from: b */
    public boolean mo18423b(RecyclerView.AbstractC0948x abstractC0948x) {
        m18540v(abstractC0948x);
        abstractC0948x.f3183a.setAlpha(0.0f);
        this.f3283k.add(abstractC0948x);
        return true;
    }

    /* renamed from: c */
    void m18545c() {
        if (!mo18548b()) {
            m19020i();
        }
    }

    /* renamed from: c */
    void m18544c(final RecyclerView.AbstractC0948x abstractC0948x) {
        final View view = abstractC0948x.f3183a;
        final ViewPropertyAnimator animate = view.animate();
        this.f3278d.add(abstractC0948x);
        animate.alpha(1.0f).setDuration(m19025f()).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                view.setAlpha(1.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                C0964c.this.m18414k(abstractC0948x);
                C0964c.this.f3278d.remove(abstractC0948x);
                C0964c.this.m18545c();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                C0964c.this.m18411n(abstractC0948x);
            }
        }).start();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0919f
    /* renamed from: d */
    public void mo18543d() {
        for (int size = this.f3284l.size() - 1; size >= 0; size--) {
            C0974b c0974b = this.f3284l.get(size);
            View view = c0974b.f3320a.f3183a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            m18415j(c0974b.f3320a);
            this.f3284l.remove(size);
        }
        for (int size2 = this.f3282j.size() - 1; size2 >= 0; size2--) {
            m18416i(this.f3282j.get(size2));
            this.f3282j.remove(size2);
        }
        for (int size3 = this.f3283k.size() - 1; size3 >= 0; size3--) {
            RecyclerView.AbstractC0948x abstractC0948x = this.f3283k.get(size3);
            abstractC0948x.f3183a.setAlpha(1.0f);
            m18414k(abstractC0948x);
            this.f3283k.remove(size3);
        }
        for (int size4 = this.f3285m.size() - 1; size4 >= 0; size4--) {
            m18546b(this.f3285m.get(size4));
        }
        this.f3285m.clear();
        if (!mo18548b()) {
            return;
        }
        for (int size5 = this.f3276b.size() - 1; size5 >= 0; size5--) {
            ArrayList<C0974b> arrayList = this.f3276b.get(size5);
            for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                C0974b c0974b2 = arrayList.get(size6);
                View view2 = c0974b2.f3320a.f3183a;
                view2.setTranslationY(0.0f);
                view2.setTranslationX(0.0f);
                m18415j(c0974b2.f3320a);
                arrayList.remove(size6);
                if (arrayList.isEmpty()) {
                    this.f3276b.remove(arrayList);
                }
            }
        }
        for (int size7 = this.f3275a.size() - 1; size7 >= 0; size7--) {
            ArrayList<RecyclerView.AbstractC0948x> arrayList2 = this.f3275a.get(size7);
            for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                RecyclerView.AbstractC0948x abstractC0948x2 = arrayList2.get(size8);
                abstractC0948x2.f3183a.setAlpha(1.0f);
                m18414k(abstractC0948x2);
                arrayList2.remove(size8);
                if (arrayList2.isEmpty()) {
                    this.f3275a.remove(arrayList2);
                }
            }
        }
        for (int size9 = this.f3277c.size() - 1; size9 >= 0; size9--) {
            ArrayList<C0973a> arrayList3 = this.f3277c.get(size9);
            for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                m18546b(arrayList3.get(size10));
                if (arrayList3.isEmpty()) {
                    this.f3277c.remove(arrayList3);
                }
            }
        }
        m18550a(this.f3280f);
        m18550a(this.f3279e);
        m18550a(this.f3278d);
        m18550a(this.f3281g);
        m19020i();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0919f
    /* renamed from: d */
    public void mo18542d(RecyclerView.AbstractC0948x abstractC0948x) {
        View view = abstractC0948x.f3183a;
        view.animate().cancel();
        for (int size = this.f3284l.size() - 1; size >= 0; size--) {
            if (this.f3284l.get(size).f3320a == abstractC0948x) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                m18415j(abstractC0948x);
                this.f3284l.remove(size);
            }
        }
        m18549a(this.f3285m, abstractC0948x);
        if (this.f3282j.remove(abstractC0948x)) {
            view.setAlpha(1.0f);
            m18416i(abstractC0948x);
        }
        if (this.f3283k.remove(abstractC0948x)) {
            view.setAlpha(1.0f);
            m18414k(abstractC0948x);
        }
        for (int size2 = this.f3277c.size() - 1; size2 >= 0; size2--) {
            ArrayList<C0973a> arrayList = this.f3277c.get(size2);
            m18549a(arrayList, abstractC0948x);
            if (arrayList.isEmpty()) {
                this.f3277c.remove(size2);
            }
        }
        for (int size3 = this.f3276b.size() - 1; size3 >= 0; size3--) {
            ArrayList<C0974b> arrayList2 = this.f3276b.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                } else if (arrayList2.get(size4).f3320a == abstractC0948x) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    m18415j(abstractC0948x);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f3276b.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f3275a.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.AbstractC0948x> arrayList3 = this.f3275a.get(size5);
            if (arrayList3.remove(abstractC0948x)) {
                view.setAlpha(1.0f);
                m18414k(abstractC0948x);
                if (arrayList3.isEmpty()) {
                    this.f3275a.remove(size5);
                }
            }
        }
        if (this.f3280f.remove(abstractC0948x)) {
        }
        if (this.f3278d.remove(abstractC0948x)) {
        }
        if (this.f3281g.remove(abstractC0948x)) {
        }
        if (this.f3279e.remove(abstractC0948x)) {
        }
        m18545c();
    }
}
