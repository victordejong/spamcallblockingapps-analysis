package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.view.v;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c.class */
public final class c extends n {
    private static TimeInterpolator m;
    private ArrayList<RecyclerView.v> n = new ArrayList<>();
    private ArrayList<RecyclerView.v> o = new ArrayList<>();
    private ArrayList<b> p = new ArrayList<>();
    private ArrayList<a> q = new ArrayList<>();

    /* renamed from: a  reason: collision with root package name */
    ArrayList<ArrayList<RecyclerView.v>> f5411a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    ArrayList<ArrayList<b>> f5412b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    ArrayList<ArrayList<a>> f5413c = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    ArrayList<RecyclerView.v> f5414d = new ArrayList<>();
    ArrayList<RecyclerView.v> e = new ArrayList<>();
    ArrayList<RecyclerView.v> f = new ArrayList<>();
    ArrayList<RecyclerView.v> g = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public RecyclerView.v f5441a;

        /* renamed from: b  reason: collision with root package name */
        public RecyclerView.v f5442b;

        /* renamed from: c  reason: collision with root package name */
        public int f5443c;

        /* renamed from: d  reason: collision with root package name */
        public int f5444d;
        public int e;
        public int f;

        private a(RecyclerView.v vVar, RecyclerView.v vVar2) {
            this.f5441a = vVar;
            this.f5442b = vVar2;
        }

        a(RecyclerView.v vVar, RecyclerView.v vVar2, int i, int i2, int i3, int i4) {
            this(vVar, vVar2);
            this.f5443c = i;
            this.f5444d = i2;
            this.e = i3;
            this.f = i4;
        }

        public final String toString() {
            return "ChangeInfo{oldHolder=" + this.f5441a + ", newHolder=" + this.f5442b + ", fromX=" + this.f5443c + ", fromY=" + this.f5444d + ", toX=" + this.e + ", toY=" + this.f + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public RecyclerView.v f5445a;

        /* renamed from: b  reason: collision with root package name */
        public int f5446b;

        /* renamed from: c  reason: collision with root package name */
        public int f5447c;

        /* renamed from: d  reason: collision with root package name */
        public int f5448d;
        public int e;

        b(RecyclerView.v vVar, int i, int i2, int i3, int i4) {
            this.f5445a = vVar;
            this.f5446b = i;
            this.f5447c = i2;
            this.f5448d = i3;
            this.e = i4;
        }
    }

    private void a(a aVar) {
        if (aVar.f5441a != null) {
            a(aVar, aVar.f5441a);
        }
        if (aVar.f5442b != null) {
            a(aVar, aVar.f5442b);
        }
    }

    private static void a(List<RecyclerView.v> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).itemView.animate().cancel();
        }
    }

    private void a(List<a> list, RecyclerView.v vVar) {
        for (int size = list.size() - 1; size >= 0; size--) {
            a aVar = list.get(size);
            if (a(aVar, vVar) && aVar.f5441a == null && aVar.f5442b == null) {
                list.remove(aVar);
            }
        }
    }

    private boolean a(a aVar, RecyclerView.v vVar) {
        if (aVar.f5442b == vVar) {
            aVar.f5442b = null;
        } else if (aVar.f5441a != vVar) {
            return false;
        } else {
            aVar.f5441a = null;
        }
        vVar.itemView.setAlpha(1.0f);
        vVar.itemView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        vVar.itemView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        f(vVar);
        return true;
    }

    private void h(RecyclerView.v vVar) {
        if (m == null) {
            m = new ValueAnimator().getInterpolator();
        }
        vVar.itemView.animate().setInterpolator(m);
        c(vVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public final void a() {
        boolean z = !this.n.isEmpty();
        boolean z2 = !this.p.isEmpty();
        boolean z3 = !this.q.isEmpty();
        boolean z4 = !this.o.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.v> it2 = this.n.iterator();
            while (it2.hasNext()) {
                final RecyclerView.v next = it2.next();
                final View view = next.itemView;
                final ViewPropertyAnimator animate = view.animate();
                this.f.add(next);
                animate.setDuration(e()).alpha(BitmapDescriptorFactory.HUE_RED).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        animate.setListener(null);
                        view.setAlpha(1.0f);
                        c.this.f(next);
                        c.this.f.remove(next);
                        c.this.c();
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                    }
                }).start();
            }
            this.n.clear();
            if (z2) {
                final ArrayList<b> arrayList = new ArrayList<>();
                arrayList.addAll(this.p);
                this.f5412b.add(arrayList);
                this.p.clear();
                Runnable runnable = new Runnable() { // from class: androidx.recyclerview.widget.c.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Iterator it3 = arrayList.iterator();
                        while (it3.hasNext()) {
                            b bVar = (b) it3.next();
                            final c cVar = c.this;
                            final RecyclerView.v vVar = bVar.f5445a;
                            int i = bVar.f5446b;
                            int i2 = bVar.f5447c;
                            int i3 = bVar.f5448d;
                            int i4 = bVar.e;
                            final View view2 = vVar.itemView;
                            final int i5 = i3 - i;
                            final int i6 = i4 - i2;
                            if (i5 != 0) {
                                view2.animate().translationX(BitmapDescriptorFactory.HUE_RED);
                            }
                            if (i6 != 0) {
                                view2.animate().translationY(BitmapDescriptorFactory.HUE_RED);
                            }
                            final ViewPropertyAnimator animate2 = view2.animate();
                            cVar.e.add(vVar);
                            animate2.setDuration(cVar.j).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.6
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
                                    c.this.f(vVar);
                                    c.this.e.remove(vVar);
                                    c.this.c();
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationStart(Animator animator) {
                                }
                            }).start();
                        }
                        arrayList.clear();
                        c.this.f5412b.remove(arrayList);
                    }
                };
                if (z) {
                    v.a(arrayList.get(0).f5445a.itemView, runnable, e());
                } else {
                    runnable.run();
                }
            }
            if (z3) {
                final ArrayList<a> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.q);
                this.f5413c.add(arrayList2);
                this.q.clear();
                Runnable runnable2 = new Runnable() { // from class: androidx.recyclerview.widget.c.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        Iterator it3 = arrayList2.iterator();
                        while (it3.hasNext()) {
                            final a aVar = (a) it3.next();
                            final c cVar = c.this;
                            RecyclerView.v vVar = aVar.f5441a;
                            final View view2 = null;
                            final View view3 = vVar == null ? null : vVar.itemView;
                            RecyclerView.v vVar2 = aVar.f5442b;
                            if (vVar2 != null) {
                                view2 = vVar2.itemView;
                            }
                            if (view3 != null) {
                                final ViewPropertyAnimator duration = view3.animate().setDuration(cVar.k);
                                cVar.g.add(aVar.f5441a);
                                duration.translationX(aVar.e - aVar.f5443c);
                                duration.translationY(aVar.f - aVar.f5444d);
                                duration.alpha(BitmapDescriptorFactory.HUE_RED).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.7
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public final void onAnimationEnd(Animator animator) {
                                        duration.setListener(null);
                                        view3.setAlpha(1.0f);
                                        view3.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                                        view3.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                                        c.this.f(aVar.f5441a);
                                        c.this.g.remove(aVar.f5441a);
                                        c.this.c();
                                    }

                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public final void onAnimationStart(Animator animator) {
                                    }
                                }).start();
                            }
                            if (view2 != null) {
                                final ViewPropertyAnimator animate2 = view2.animate();
                                cVar.g.add(aVar.f5442b);
                                animate2.translationX(BitmapDescriptorFactory.HUE_RED).translationY(BitmapDescriptorFactory.HUE_RED).setDuration(cVar.k).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.8
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public final void onAnimationEnd(Animator animator) {
                                        animate2.setListener(null);
                                        view2.setAlpha(1.0f);
                                        view2.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                                        view2.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                                        c.this.f(aVar.f5442b);
                                        c.this.g.remove(aVar.f5442b);
                                        c.this.c();
                                    }

                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public final void onAnimationStart(Animator animator) {
                                    }
                                }).start();
                            }
                        }
                        arrayList2.clear();
                        c.this.f5413c.remove(arrayList2);
                    }
                };
                if (z) {
                    v.a(arrayList2.get(0).f5441a.itemView, runnable2, e());
                } else {
                    runnable2.run();
                }
            }
            if (z4) {
                final ArrayList<RecyclerView.v> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.o);
                this.f5411a.add(arrayList3);
                this.o.clear();
                Runnable runnable3 = new Runnable() { // from class: androidx.recyclerview.widget.c.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        Iterator it3 = arrayList3.iterator();
                        while (it3.hasNext()) {
                            final RecyclerView.v vVar = (RecyclerView.v) it3.next();
                            final c cVar = c.this;
                            final View view2 = vVar.itemView;
                            final ViewPropertyAnimator animate2 = view2.animate();
                            cVar.f5414d.add(vVar);
                            animate2.alpha(1.0f).setDuration(cVar.i).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.5
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationCancel(Animator animator) {
                                    view2.setAlpha(1.0f);
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationEnd(Animator animator) {
                                    animate2.setListener(null);
                                    c.this.f(vVar);
                                    c.this.f5414d.remove(vVar);
                                    c.this.c();
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationStart(Animator animator) {
                                }
                            }).start();
                        }
                        arrayList3.clear();
                        c.this.f5411a.remove(arrayList3);
                    }
                };
                if (z || z2 || z3) {
                    long j = 0;
                    long e = z ? e() : 0L;
                    long j2 = z2 ? this.j : 0L;
                    if (z3) {
                        j = this.k;
                    }
                    v.a(arrayList3.get(0).itemView, runnable3, e + Math.max(j2, j));
                    return;
                }
                runnable3.run();
            }
        }
    }

    @Override // androidx.recyclerview.widget.n
    public final boolean a(RecyclerView.v vVar) {
        h(vVar);
        this.n.add(vVar);
        return true;
    }

    @Override // androidx.recyclerview.widget.n
    public final boolean a(RecyclerView.v vVar, int i, int i2, int i3, int i4) {
        View view = vVar.itemView;
        int translationX = i + ((int) vVar.itemView.getTranslationX());
        int translationY = i2 + ((int) vVar.itemView.getTranslationY());
        h(vVar);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            f(vVar);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        this.p.add(new b(vVar, translationX, translationY, i3, i4));
        return true;
    }

    @Override // androidx.recyclerview.widget.n
    public final boolean a(RecyclerView.v vVar, RecyclerView.v vVar2, int i, int i2, int i3, int i4) {
        if (vVar == vVar2) {
            return a(vVar, i, i2, i3, i4);
        }
        float translationX = vVar.itemView.getTranslationX();
        float translationY = vVar.itemView.getTranslationY();
        float alpha = vVar.itemView.getAlpha();
        h(vVar);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        vVar.itemView.setTranslationX(translationX);
        vVar.itemView.setTranslationY(translationY);
        vVar.itemView.setAlpha(alpha);
        if (vVar2 != null) {
            h(vVar2);
            vVar2.itemView.setTranslationX(-i5);
            vVar2.itemView.setTranslationY(-i6);
            vVar2.itemView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        }
        this.q.add(new a(vVar, vVar2, i, i2, i3, i4));
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public final boolean a(RecyclerView.v vVar, List<Object> list) {
        return !list.isEmpty() || super.a(vVar, list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public final boolean b() {
        return !this.o.isEmpty() || !this.q.isEmpty() || !this.p.isEmpty() || !this.n.isEmpty() || !this.e.isEmpty() || !this.f.isEmpty() || !this.f5414d.isEmpty() || !this.g.isEmpty() || !this.f5412b.isEmpty() || !this.f5411a.isEmpty() || !this.f5413c.isEmpty();
    }

    @Override // androidx.recyclerview.widget.n
    public final boolean b(RecyclerView.v vVar) {
        h(vVar);
        vVar.itemView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.o.add(vVar);
        return true;
    }

    final void c() {
        if (!b()) {
            f();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public final void c(RecyclerView.v vVar) {
        View view = vVar.itemView;
        view.animate().cancel();
        for (int size = this.p.size() - 1; size >= 0; size--) {
            if (this.p.get(size).f5445a == vVar) {
                view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                f(vVar);
                this.p.remove(size);
            }
        }
        a(this.q, vVar);
        if (this.n.remove(vVar)) {
            view.setAlpha(1.0f);
            f(vVar);
        }
        if (this.o.remove(vVar)) {
            view.setAlpha(1.0f);
            f(vVar);
        }
        for (int size2 = this.f5413c.size() - 1; size2 >= 0; size2--) {
            ArrayList<a> arrayList = this.f5413c.get(size2);
            a(arrayList, vVar);
            if (arrayList.isEmpty()) {
                this.f5413c.remove(size2);
            }
        }
        for (int size3 = this.f5412b.size() - 1; size3 >= 0; size3--) {
            ArrayList<b> arrayList2 = this.f5412b.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                } else if (arrayList2.get(size4).f5445a == vVar) {
                    view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    f(vVar);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f5412b.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f5411a.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.v> arrayList3 = this.f5411a.get(size5);
            if (arrayList3.remove(vVar)) {
                view.setAlpha(1.0f);
                f(vVar);
                if (arrayList3.isEmpty()) {
                    this.f5411a.remove(size5);
                }
            }
        }
        this.f.remove(vVar);
        this.f5414d.remove(vVar);
        this.g.remove(vVar);
        this.e.remove(vVar);
        c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public final void d() {
        for (int size = this.p.size() - 1; size >= 0; size--) {
            b bVar = this.p.get(size);
            View view = bVar.f5445a.itemView;
            view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            f(bVar.f5445a);
            this.p.remove(size);
        }
        for (int size2 = this.n.size() - 1; size2 >= 0; size2--) {
            f(this.n.get(size2));
            this.n.remove(size2);
        }
        for (int size3 = this.o.size() - 1; size3 >= 0; size3--) {
            RecyclerView.v vVar = this.o.get(size3);
            vVar.itemView.setAlpha(1.0f);
            f(vVar);
            this.o.remove(size3);
        }
        for (int size4 = this.q.size() - 1; size4 >= 0; size4--) {
            a(this.q.get(size4));
        }
        this.q.clear();
        if (b()) {
            for (int size5 = this.f5412b.size() - 1; size5 >= 0; size5--) {
                ArrayList<b> arrayList = this.f5412b.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    b bVar2 = arrayList.get(size6);
                    View view2 = bVar2.f5445a.itemView;
                    view2.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    view2.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    f(bVar2.f5445a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f5412b.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f5411a.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.v> arrayList2 = this.f5411a.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.v vVar2 = arrayList2.get(size8);
                    vVar2.itemView.setAlpha(1.0f);
                    f(vVar2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f5411a.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.f5413c.size() - 1; size9 >= 0; size9--) {
                ArrayList<a> arrayList3 = this.f5413c.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    a(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.f5413c.remove(arrayList3);
                    }
                }
            }
            a(this.f);
            a(this.e);
            a(this.f5414d);
            a(this.g);
            f();
        }
    }
}
