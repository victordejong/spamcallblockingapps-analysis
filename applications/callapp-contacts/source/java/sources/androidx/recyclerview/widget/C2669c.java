package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.view.C0926v;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.recyclerview.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c.class */
public final class C2669c extends AbstractC2702n {

    /* renamed from: m */
    private static TimeInterpolator f10175m;

    /* renamed from: n */
    private ArrayList<RecyclerView.AbstractC2657v> f10183n = new ArrayList<>();

    /* renamed from: o */
    private ArrayList<RecyclerView.AbstractC2657v> f10184o = new ArrayList<>();

    /* renamed from: p */
    private ArrayList<C2679b> f10185p = new ArrayList<>();

    /* renamed from: q */
    private ArrayList<C2678a> f10186q = new ArrayList<>();

    /* renamed from: a */
    ArrayList<ArrayList<RecyclerView.AbstractC2657v>> f10176a = new ArrayList<>();

    /* renamed from: b */
    ArrayList<ArrayList<C2679b>> f10177b = new ArrayList<>();

    /* renamed from: c */
    ArrayList<ArrayList<C2678a>> f10178c = new ArrayList<>();

    /* renamed from: d */
    ArrayList<RecyclerView.AbstractC2657v> f10179d = new ArrayList<>();

    /* renamed from: e */
    ArrayList<RecyclerView.AbstractC2657v> f10180e = new ArrayList<>();

    /* renamed from: f */
    ArrayList<RecyclerView.AbstractC2657v> f10181f = new ArrayList<>();

    /* renamed from: g */
    ArrayList<RecyclerView.AbstractC2657v> f10182g = new ArrayList<>();

    /* renamed from: androidx.recyclerview.widget.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$a.class */
    public static final class C2678a {

        /* renamed from: a */
        public RecyclerView.AbstractC2657v f10215a;

        /* renamed from: b */
        public RecyclerView.AbstractC2657v f10216b;

        /* renamed from: c */
        public int f10217c;

        /* renamed from: d */
        public int f10218d;

        /* renamed from: e */
        public int f10219e;

        /* renamed from: f */
        public int f10220f;

        private C2678a(RecyclerView.AbstractC2657v abstractC2657v, RecyclerView.AbstractC2657v abstractC2657v2) {
            this.f10215a = abstractC2657v;
            this.f10216b = abstractC2657v2;
        }

        C2678a(RecyclerView.AbstractC2657v abstractC2657v, RecyclerView.AbstractC2657v abstractC2657v2, int i, int i2, int i3, int i4) {
            this(abstractC2657v, abstractC2657v2);
            this.f10217c = i;
            this.f10218d = i2;
            this.f10219e = i3;
            this.f10220f = i4;
        }

        public final String toString() {
            return "ChangeInfo{oldHolder=" + this.f10215a + ", newHolder=" + this.f10216b + ", fromX=" + this.f10217c + ", fromY=" + this.f10218d + ", toX=" + this.f10219e + ", toY=" + this.f10220f + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$b.class */
    public static final class C2679b {

        /* renamed from: a */
        public RecyclerView.AbstractC2657v f10221a;

        /* renamed from: b */
        public int f10222b;

        /* renamed from: c */
        public int f10223c;

        /* renamed from: d */
        public int f10224d;

        /* renamed from: e */
        public int f10225e;

        C2679b(RecyclerView.AbstractC2657v abstractC2657v, int i, int i2, int i3, int i4) {
            this.f10221a = abstractC2657v;
            this.f10222b = i;
            this.f10223c = i2;
            this.f10224d = i3;
            this.f10225e = i4;
        }
    }

    /* renamed from: a */
    private void m40115a(C2678a c2678a) {
        if (c2678a.f10215a != null) {
            m40114a(c2678a, c2678a.f10215a);
        }
        if (c2678a.f10216b != null) {
            m40114a(c2678a, c2678a.f10216b);
        }
    }

    /* renamed from: a */
    private static void m40113a(List<RecyclerView.AbstractC2657v> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).itemView.animate().cancel();
        }
    }

    /* renamed from: a */
    private void m40112a(List<C2678a> list, RecyclerView.AbstractC2657v abstractC2657v) {
        for (int size = list.size() - 1; size >= 0; size--) {
            C2678a c2678a = list.get(size);
            if (m40114a(c2678a, abstractC2657v) && c2678a.f10215a == null && c2678a.f10216b == null) {
                list.remove(c2678a);
            }
        }
    }

    /* renamed from: a */
    private boolean m40114a(C2678a c2678a, RecyclerView.AbstractC2657v abstractC2657v) {
        if (c2678a.f10216b == abstractC2657v) {
            c2678a.f10216b = null;
        } else if (c2678a.f10215a != abstractC2657v) {
            return false;
        } else {
            c2678a.f10215a = null;
        }
        abstractC2657v.itemView.setAlpha(1.0f);
        abstractC2657v.itemView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        abstractC2657v.itemView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        m40398f(abstractC2657v);
        return true;
    }

    /* renamed from: h */
    private void m40107h(RecyclerView.AbstractC2657v abstractC2657v) {
        if (f10175m == null) {
            f10175m = new ValueAnimator().getInterpolator();
        }
        abstractC2657v.itemView.animate().setInterpolator(f10175m);
        mo40109c(abstractC2657v);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r2v1 */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2632f
    /* renamed from: a */
    public final void mo40117a() {
        boolean z = !this.f10183n.isEmpty();
        boolean z2 = !this.f10185p.isEmpty();
        boolean z3 = !this.f10186q.isEmpty();
        boolean z4 = !this.f10184o.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.AbstractC2657v> it2 = this.f10183n.iterator();
            while (it2.hasNext()) {
                final RecyclerView.AbstractC2657v next = it2.next();
                final View view = next.itemView;
                final ViewPropertyAnimator animate = view.animate();
                this.f10181f.add(next);
                animate.setDuration(m40401e()).alpha(BitmapDescriptorFactory.HUE_RED).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        animate.setListener(null);
                        view.setAlpha(1.0f);
                        C2669c.this.m40398f(next);
                        C2669c.this.f10181f.remove(next);
                        C2669c.this.m40110c();
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                    }
                }).start();
            }
            this.f10183n.clear();
            if (z2) {
                final ArrayList<C2679b> arrayList = new ArrayList<>();
                arrayList.addAll(this.f10185p);
                this.f10177b.add(arrayList);
                this.f10185p.clear();
                Runnable runnable = new Runnable() { // from class: androidx.recyclerview.widget.c.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Iterator it3 = arrayList.iterator();
                        while (it3.hasNext()) {
                            C2679b c2679b = (C2679b) it3.next();
                            final C2669c c2669c = C2669c.this;
                            final RecyclerView.AbstractC2657v abstractC2657v = c2679b.f10221a;
                            int i = c2679b.f10222b;
                            int i2 = c2679b.f10223c;
                            int i3 = c2679b.f10224d;
                            int i4 = c2679b.f10225e;
                            final View view2 = abstractC2657v.itemView;
                            final int i5 = i3 - i;
                            final int i6 = i4 - i2;
                            if (i5 != 0) {
                                view2.animate().translationX(BitmapDescriptorFactory.HUE_RED);
                            }
                            if (i6 != 0) {
                                view2.animate().translationY(BitmapDescriptorFactory.HUE_RED);
                            }
                            final ViewPropertyAnimator animate2 = view2.animate();
                            c2669c.f10180e.add(abstractC2657v);
                            animate2.setDuration(c2669c.f10011j).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.6
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationCancel(Animator animator) {
                                    if (i5 != 0) {
                                        view2.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                                    }
                                    if (i6 != 0) {
                                        view2.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                                    }
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationEnd(Animator animator) {
                                    animate2.setListener(null);
                                    c2669c.m40398f(abstractC2657v);
                                    c2669c.f10180e.remove(abstractC2657v);
                                    c2669c.m40110c();
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationStart(Animator animator) {
                                }
                            }).start();
                        }
                        arrayList.clear();
                        C2669c.this.f10177b.remove(arrayList);
                    }
                };
                if (z) {
                    C0926v.m44116a(arrayList.get(0).f10221a.itemView, runnable, m40401e());
                } else {
                    runnable.run();
                }
            }
            if (z3) {
                final ArrayList<C2678a> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.f10186q);
                this.f10178c.add(arrayList2);
                this.f10186q.clear();
                Runnable runnable2 = new Runnable() { // from class: androidx.recyclerview.widget.c.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        Iterator it3 = arrayList2.iterator();
                        while (it3.hasNext()) {
                            final C2678a c2678a = (C2678a) it3.next();
                            final C2669c c2669c = C2669c.this;
                            RecyclerView.AbstractC2657v abstractC2657v = c2678a.f10215a;
                            View view2 = null;
                            View view3 = abstractC2657v == null ? null : abstractC2657v.itemView;
                            RecyclerView.AbstractC2657v abstractC2657v2 = c2678a.f10216b;
                            if (abstractC2657v2 != null) {
                                view2 = abstractC2657v2.itemView;
                            }
                            if (view3 != null) {
                                final ViewPropertyAnimator duration = view3.animate().setDuration(c2669c.f10012k);
                                c2669c.f10182g.add(c2678a.f10215a);
                                duration.translationX(c2678a.f10219e - c2678a.f10217c);
                                duration.translationY(c2678a.f10220f - c2678a.f10218d);
                                final View view4 = view3;
                                duration.alpha(BitmapDescriptorFactory.HUE_RED).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.7
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public final void onAnimationEnd(Animator animator) {
                                        duration.setListener(null);
                                        view4.setAlpha(1.0f);
                                        view4.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                                        view4.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                                        c2669c.m40398f(c2678a.f10215a);
                                        c2669c.f10182g.remove(c2678a.f10215a);
                                        c2669c.m40110c();
                                    }

                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public final void onAnimationStart(Animator animator) {
                                    }
                                }).start();
                            }
                            if (view2 != null) {
                                final ViewPropertyAnimator animate2 = view2.animate();
                                c2669c.f10182g.add(c2678a.f10216b);
                                final View view5 = view2;
                                animate2.translationX(BitmapDescriptorFactory.HUE_RED).translationY(BitmapDescriptorFactory.HUE_RED).setDuration(c2669c.f10012k).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.8
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public final void onAnimationEnd(Animator animator) {
                                        animate2.setListener(null);
                                        view5.setAlpha(1.0f);
                                        view5.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                                        view5.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                                        c2669c.m40398f(c2678a.f10216b);
                                        c2669c.f10182g.remove(c2678a.f10216b);
                                        c2669c.m40110c();
                                    }

                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public final void onAnimationStart(Animator animator) {
                                    }
                                }).start();
                            }
                        }
                        arrayList2.clear();
                        C2669c.this.f10178c.remove(arrayList2);
                    }
                };
                if (z) {
                    C0926v.m44116a(arrayList2.get(0).f10215a.itemView, runnable2, m40401e());
                } else {
                    runnable2.run();
                }
            }
            if (!z4) {
                return;
            }
            final ArrayList<RecyclerView.AbstractC2657v> arrayList3 = new ArrayList<>();
            arrayList3.addAll(this.f10184o);
            this.f10176a.add(arrayList3);
            this.f10184o.clear();
            Runnable runnable3 = new Runnable() { // from class: androidx.recyclerview.widget.c.3
                @Override // java.lang.Runnable
                public final void run() {
                    Iterator it3 = arrayList3.iterator();
                    while (it3.hasNext()) {
                        final RecyclerView.AbstractC2657v abstractC2657v = (RecyclerView.AbstractC2657v) it3.next();
                        final C2669c c2669c = C2669c.this;
                        final View view2 = abstractC2657v.itemView;
                        final ViewPropertyAnimator animate2 = view2.animate();
                        c2669c.f10179d.add(abstractC2657v);
                        animate2.alpha(1.0f).setDuration(c2669c.f10010i).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.5
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationCancel(Animator animator) {
                                view2.setAlpha(1.0f);
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator) {
                                animate2.setListener(null);
                                c2669c.m40398f(abstractC2657v);
                                c2669c.f10179d.remove(abstractC2657v);
                                c2669c.m40110c();
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationStart(Animator animator) {
                            }
                        }).start();
                    }
                    arrayList3.clear();
                    C2669c.this.f10176a.remove(arrayList3);
                }
            };
            if (!z && !z2 && !z3) {
                runnable3.run();
                return;
            }
            ?? r17 = false;
            ?? e = z ? m40401e() : false;
            ?? r21 = z2 ? this.f10011j : false;
            if (z3) {
                r17 = this.f10012k;
            }
            C0926v.m44116a(arrayList3.get(0).itemView, runnable3, (e == true ? 1L : 0L) + Math.max(r21 == true ? 1L : 0L, r17 == true ? 1L : 0L));
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC2702n
    /* renamed from: a */
    public final boolean mo40045a(RecyclerView.AbstractC2657v abstractC2657v) {
        m40107h(abstractC2657v);
        this.f10183n.add(abstractC2657v);
        return true;
    }

    @Override // androidx.recyclerview.widget.AbstractC2702n
    /* renamed from: a */
    public final boolean mo40044a(RecyclerView.AbstractC2657v abstractC2657v, int i, int i2, int i3, int i4) {
        View view = abstractC2657v.itemView;
        int translationX = i + ((int) abstractC2657v.itemView.getTranslationX());
        int translationY = i2 + ((int) abstractC2657v.itemView.getTranslationY());
        m40107h(abstractC2657v);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            m40398f(abstractC2657v);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        this.f10185p.add(new C2679b(abstractC2657v, translationX, translationY, i3, i4));
        return true;
    }

    @Override // androidx.recyclerview.widget.AbstractC2702n
    /* renamed from: a */
    public final boolean mo40042a(RecyclerView.AbstractC2657v abstractC2657v, RecyclerView.AbstractC2657v abstractC2657v2, int i, int i2, int i3, int i4) {
        if (abstractC2657v == abstractC2657v2) {
            return mo40044a(abstractC2657v, i, i2, i3, i4);
        }
        float translationX = abstractC2657v.itemView.getTranslationX();
        float translationY = abstractC2657v.itemView.getTranslationY();
        float alpha = abstractC2657v.itemView.getAlpha();
        m40107h(abstractC2657v);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        abstractC2657v.itemView.setTranslationX(translationX);
        abstractC2657v.itemView.setTranslationY(translationY);
        abstractC2657v.itemView.setAlpha(alpha);
        if (abstractC2657v2 != null) {
            m40107h(abstractC2657v2);
            abstractC2657v2.itemView.setTranslationX(-i5);
            abstractC2657v2.itemView.setTranslationY(-i6);
            abstractC2657v2.itemView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        }
        this.f10186q.add(new C2678a(abstractC2657v, abstractC2657v2, i, i2, i3, i4));
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2632f
    /* renamed from: a */
    public final boolean mo40116a(RecyclerView.AbstractC2657v abstractC2657v, List<Object> list) {
        return !list.isEmpty() || super.mo40116a(abstractC2657v, list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2632f
    /* renamed from: b */
    public final boolean mo40111b() {
        return !this.f10184o.isEmpty() || !this.f10186q.isEmpty() || !this.f10185p.isEmpty() || !this.f10183n.isEmpty() || !this.f10180e.isEmpty() || !this.f10181f.isEmpty() || !this.f10179d.isEmpty() || !this.f10182g.isEmpty() || !this.f10177b.isEmpty() || !this.f10176a.isEmpty() || !this.f10178c.isEmpty();
    }

    @Override // androidx.recyclerview.widget.AbstractC2702n
    /* renamed from: b */
    public final boolean mo40040b(RecyclerView.AbstractC2657v abstractC2657v) {
        m40107h(abstractC2657v);
        abstractC2657v.itemView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.f10184o.add(abstractC2657v);
        return true;
    }

    /* renamed from: c */
    final void m40110c() {
        if (!mo40111b()) {
            m40399f();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2632f
    /* renamed from: c */
    public final void mo40109c(RecyclerView.AbstractC2657v abstractC2657v) {
        View view = abstractC2657v.itemView;
        view.animate().cancel();
        for (int size = this.f10185p.size() - 1; size >= 0; size--) {
            if (this.f10185p.get(size).f10221a == abstractC2657v) {
                view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                m40398f(abstractC2657v);
                this.f10185p.remove(size);
            }
        }
        m40112a(this.f10186q, abstractC2657v);
        if (this.f10183n.remove(abstractC2657v)) {
            view.setAlpha(1.0f);
            m40398f(abstractC2657v);
        }
        if (this.f10184o.remove(abstractC2657v)) {
            view.setAlpha(1.0f);
            m40398f(abstractC2657v);
        }
        for (int size2 = this.f10178c.size() - 1; size2 >= 0; size2--) {
            ArrayList<C2678a> arrayList = this.f10178c.get(size2);
            m40112a(arrayList, abstractC2657v);
            if (arrayList.isEmpty()) {
                this.f10178c.remove(size2);
            }
        }
        for (int size3 = this.f10177b.size() - 1; size3 >= 0; size3--) {
            ArrayList<C2679b> arrayList2 = this.f10177b.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                } else if (arrayList2.get(size4).f10221a == abstractC2657v) {
                    view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    m40398f(abstractC2657v);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f10177b.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f10176a.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.AbstractC2657v> arrayList3 = this.f10176a.get(size5);
            if (arrayList3.remove(abstractC2657v)) {
                view.setAlpha(1.0f);
                m40398f(abstractC2657v);
                if (arrayList3.isEmpty()) {
                    this.f10176a.remove(size5);
                }
            }
        }
        this.f10181f.remove(abstractC2657v);
        this.f10179d.remove(abstractC2657v);
        this.f10182g.remove(abstractC2657v);
        this.f10180e.remove(abstractC2657v);
        m40110c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2632f
    /* renamed from: d */
    public final void mo40108d() {
        for (int size = this.f10185p.size() - 1; size >= 0; size--) {
            C2679b c2679b = this.f10185p.get(size);
            View view = c2679b.f10221a.itemView;
            view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            m40398f(c2679b.f10221a);
            this.f10185p.remove(size);
        }
        for (int size2 = this.f10183n.size() - 1; size2 >= 0; size2--) {
            m40398f(this.f10183n.get(size2));
            this.f10183n.remove(size2);
        }
        for (int size3 = this.f10184o.size() - 1; size3 >= 0; size3--) {
            RecyclerView.AbstractC2657v abstractC2657v = this.f10184o.get(size3);
            abstractC2657v.itemView.setAlpha(1.0f);
            m40398f(abstractC2657v);
            this.f10184o.remove(size3);
        }
        for (int size4 = this.f10186q.size() - 1; size4 >= 0; size4--) {
            m40115a(this.f10186q.get(size4));
        }
        this.f10186q.clear();
        if (!mo40111b()) {
            return;
        }
        for (int size5 = this.f10177b.size() - 1; size5 >= 0; size5--) {
            ArrayList<C2679b> arrayList = this.f10177b.get(size5);
            for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                C2679b c2679b2 = arrayList.get(size6);
                View view2 = c2679b2.f10221a.itemView;
                view2.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                view2.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                m40398f(c2679b2.f10221a);
                arrayList.remove(size6);
                if (arrayList.isEmpty()) {
                    this.f10177b.remove(arrayList);
                }
            }
        }
        for (int size7 = this.f10176a.size() - 1; size7 >= 0; size7--) {
            ArrayList<RecyclerView.AbstractC2657v> arrayList2 = this.f10176a.get(size7);
            for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                RecyclerView.AbstractC2657v abstractC2657v2 = arrayList2.get(size8);
                abstractC2657v2.itemView.setAlpha(1.0f);
                m40398f(abstractC2657v2);
                arrayList2.remove(size8);
                if (arrayList2.isEmpty()) {
                    this.f10176a.remove(arrayList2);
                }
            }
        }
        for (int size9 = this.f10178c.size() - 1; size9 >= 0; size9--) {
            ArrayList<C2678a> arrayList3 = this.f10178c.get(size9);
            for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                m40115a(arrayList3.get(size10));
                if (arrayList3.isEmpty()) {
                    this.f10178c.remove(arrayList3);
                }
            }
        }
        m40113a(this.f10181f);
        m40113a(this.f10180e);
        m40113a(this.f10179d);
        m40113a(this.f10182g);
        m40399f();
    }
}
