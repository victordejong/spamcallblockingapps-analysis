package p012b.p122v.p123d;

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
import p012b.p042i.p054p.C1002u;
/* renamed from: b.v.d.c */
/* loaded from: classes-dex2jar.jar:b/v/d/c.class */
public class C1910c extends AbstractC1939k {

    /* renamed from: s */
    public static TimeInterpolator f7517s;

    /* renamed from: h */
    public ArrayList<RecyclerView.AbstractC0495b0> f7518h = new ArrayList<>();

    /* renamed from: i */
    public ArrayList<RecyclerView.AbstractC0495b0> f7519i = new ArrayList<>();

    /* renamed from: j */
    public ArrayList<C1920j> f7520j = new ArrayList<>();

    /* renamed from: k */
    public ArrayList<C1919i> f7521k = new ArrayList<>();

    /* renamed from: l */
    public ArrayList<ArrayList<RecyclerView.AbstractC0495b0>> f7522l = new ArrayList<>();

    /* renamed from: m */
    public ArrayList<ArrayList<C1920j>> f7523m = new ArrayList<>();

    /* renamed from: n */
    public ArrayList<ArrayList<C1919i>> f7524n = new ArrayList<>();

    /* renamed from: o */
    public ArrayList<RecyclerView.AbstractC0495b0> f7525o = new ArrayList<>();

    /* renamed from: p */
    public ArrayList<RecyclerView.AbstractC0495b0> f7526p = new ArrayList<>();

    /* renamed from: q */
    public ArrayList<RecyclerView.AbstractC0495b0> f7527q = new ArrayList<>();

    /* renamed from: r */
    public ArrayList<RecyclerView.AbstractC0495b0> f7528r = new ArrayList<>();

    /* renamed from: b.v.d.c$a */
    /* loaded from: classes-dex2jar.jar:b/v/d/c$a.class */
    public class RunnableC1911a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ArrayList f7529a;

        public RunnableC1911a(ArrayList arrayList) {
            this.f7529a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f7529a.iterator();
            while (it.hasNext()) {
                C1920j jVar = (C1920j) it.next();
                C1910c.this.m31667b(jVar.f7563a, jVar.f7564b, jVar.f7565c, jVar.f7566d, jVar.f7567e);
            }
            this.f7529a.clear();
            C1910c.this.f7523m.remove(this.f7529a);
        }
    }

    /* renamed from: b.v.d.c$b */
    /* loaded from: classes-dex2jar.jar:b/v/d/c$b.class */
    public class RunnableC1912b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ArrayList f7531a;

        public RunnableC1912b(ArrayList arrayList) {
            this.f7531a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f7531a.iterator();
            while (it.hasNext()) {
                C1910c.this.m31672a((C1919i) it.next());
            }
            this.f7531a.clear();
            C1910c.this.f7524n.remove(this.f7531a);
        }
    }

    /* renamed from: b.v.d.c$c */
    /* loaded from: classes-dex2jar.jar:b/v/d/c$c.class */
    public class RunnableC1913c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ArrayList f7533a;

        public RunnableC1913c(ArrayList arrayList) {
            this.f7533a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f7533a.iterator();
            while (it.hasNext()) {
                C1910c.this.m31661t((RecyclerView.AbstractC0495b0) it.next());
            }
            this.f7533a.clear();
            C1910c.this.f7522l.remove(this.f7533a);
        }
    }

    /* renamed from: b.v.d.c$d */
    /* loaded from: classes-dex2jar.jar:b/v/d/c$d.class */
    public class C1914d extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ RecyclerView.AbstractC0495b0 f7535a;

        /* renamed from: b */
        public final /* synthetic */ ViewPropertyAnimator f7536b;

        /* renamed from: c */
        public final /* synthetic */ View f7537c;

        public C1914d(RecyclerView.AbstractC0495b0 b0Var, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f7535a = b0Var;
            this.f7536b = viewPropertyAnimator;
            this.f7537c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f7536b.setListener(null);
            this.f7537c.setAlpha(1.0f);
            C1910c.this.m31554l(this.f7535a);
            C1910c.this.f7527q.remove(this.f7535a);
            C1910c.this.m31662j();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C1910c.this.m31553m(this.f7535a);
        }
    }

    /* renamed from: b.v.d.c$e */
    /* loaded from: classes-dex2jar.jar:b/v/d/c$e.class */
    public class C1915e extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ RecyclerView.AbstractC0495b0 f7539a;

        /* renamed from: b */
        public final /* synthetic */ View f7540b;

        /* renamed from: c */
        public final /* synthetic */ ViewPropertyAnimator f7541c;

        public C1915e(RecyclerView.AbstractC0495b0 b0Var, View view, ViewPropertyAnimator viewPropertyAnimator) {
            this.f7539a = b0Var;
            this.f7540b = view;
            this.f7541c = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f7540b.setAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f7541c.setListener(null);
            C1910c.this.m31558h(this.f7539a);
            C1910c.this.f7525o.remove(this.f7539a);
            C1910c.this.m31662j();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C1910c.this.m31557i(this.f7539a);
        }
    }

    /* renamed from: b.v.d.c$f */
    /* loaded from: classes-dex2jar.jar:b/v/d/c$f.class */
    public class C1916f extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ RecyclerView.AbstractC0495b0 f7543a;

        /* renamed from: b */
        public final /* synthetic */ int f7544b;

        /* renamed from: c */
        public final /* synthetic */ View f7545c;

        /* renamed from: d */
        public final /* synthetic */ int f7546d;

        /* renamed from: e */
        public final /* synthetic */ ViewPropertyAnimator f7547e;

        public C1916f(RecyclerView.AbstractC0495b0 b0Var, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
            this.f7543a = b0Var;
            this.f7544b = i;
            this.f7545c = view;
            this.f7546d = i2;
            this.f7547e = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.f7544b != 0) {
                this.f7545c.setTranslationX(0.0f);
            }
            if (this.f7546d != 0) {
                this.f7545c.setTranslationY(0.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f7547e.setListener(null);
            C1910c.this.m31556j(this.f7543a);
            C1910c.this.f7526p.remove(this.f7543a);
            C1910c.this.m31662j();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C1910c.this.m31555k(this.f7543a);
        }
    }

    /* renamed from: b.v.d.c$g */
    /* loaded from: classes-dex2jar.jar:b/v/d/c$g.class */
    public class C1917g extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ C1919i f7549a;

        /* renamed from: b */
        public final /* synthetic */ ViewPropertyAnimator f7550b;

        /* renamed from: c */
        public final /* synthetic */ View f7551c;

        public C1917g(C1919i iVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f7549a = iVar;
            this.f7550b = viewPropertyAnimator;
            this.f7551c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f7550b.setListener(null);
            this.f7551c.setAlpha(1.0f);
            this.f7551c.setTranslationX(0.0f);
            this.f7551c.setTranslationY(0.0f);
            C1910c.this.m31566a(this.f7549a.f7557a, true);
            C1910c.this.f7528r.remove(this.f7549a.f7557a);
            C1910c.this.m31662j();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C1910c.this.m31564b(this.f7549a.f7557a, true);
        }
    }

    /* renamed from: b.v.d.c$h */
    /* loaded from: classes-dex2jar.jar:b/v/d/c$h.class */
    public class C1918h extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ C1919i f7553a;

        /* renamed from: b */
        public final /* synthetic */ ViewPropertyAnimator f7554b;

        /* renamed from: c */
        public final /* synthetic */ View f7555c;

        public C1918h(C1919i iVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f7553a = iVar;
            this.f7554b = viewPropertyAnimator;
            this.f7555c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f7554b.setListener(null);
            this.f7555c.setAlpha(1.0f);
            this.f7555c.setTranslationX(0.0f);
            this.f7555c.setTranslationY(0.0f);
            C1910c.this.m31566a(this.f7553a.f7558b, false);
            C1910c.this.f7528r.remove(this.f7553a.f7558b);
            C1910c.this.m31662j();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C1910c.this.m31564b(this.f7553a.f7558b, false);
        }
    }

    /* renamed from: b.v.d.c$i */
    /* loaded from: classes-dex2jar.jar:b/v/d/c$i.class */
    public static class C1919i {

        /* renamed from: a */
        public RecyclerView.AbstractC0495b0 f7557a;

        /* renamed from: b */
        public RecyclerView.AbstractC0495b0 f7558b;

        /* renamed from: c */
        public int f7559c;

        /* renamed from: d */
        public int f7560d;

        /* renamed from: e */
        public int f7561e;

        /* renamed from: f */
        public int f7562f;

        public C1919i(RecyclerView.AbstractC0495b0 b0Var, RecyclerView.AbstractC0495b0 b0Var2) {
            this.f7557a = b0Var;
            this.f7558b = b0Var2;
        }

        public C1919i(RecyclerView.AbstractC0495b0 b0Var, RecyclerView.AbstractC0495b0 b0Var2, int i, int i2, int i3, int i4) {
            this(b0Var, b0Var2);
            this.f7559c = i;
            this.f7560d = i2;
            this.f7561e = i3;
            this.f7562f = i4;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f7557a + ", newHolder=" + this.f7558b + ", fromX=" + this.f7559c + ", fromY=" + this.f7560d + ", toX=" + this.f7561e + ", toY=" + this.f7562f + '}';
        }
    }

    /* renamed from: b.v.d.c$j */
    /* loaded from: classes-dex2jar.jar:b/v/d/c$j.class */
    public static class C1920j {

        /* renamed from: a */
        public RecyclerView.AbstractC0495b0 f7563a;

        /* renamed from: b */
        public int f7564b;

        /* renamed from: c */
        public int f7565c;

        /* renamed from: d */
        public int f7566d;

        /* renamed from: e */
        public int f7567e;

        public C1920j(RecyclerView.AbstractC0495b0 b0Var, int i, int i2, int i3, int i4) {
            this.f7563a = b0Var;
            this.f7564b = i;
            this.f7565c = i2;
            this.f7566d = i3;
            this.f7567e = i4;
        }
    }

    /* renamed from: a */
    public void m31672a(C1919i iVar) {
        RecyclerView.AbstractC0495b0 b0Var = iVar.f7557a;
        View view = null;
        View view2 = b0Var == null ? null : b0Var.itemView;
        RecyclerView.AbstractC0495b0 b0Var2 = iVar.f7558b;
        if (b0Var2 != null) {
            view = b0Var2.itemView;
        }
        if (view2 != null) {
            ViewPropertyAnimator duration = view2.animate().setDuration(m37379d());
            this.f7528r.add(iVar.f7557a);
            duration.translationX(iVar.f7561e - iVar.f7559c);
            duration.translationY(iVar.f7562f - iVar.f7560d);
            duration.alpha(0.0f).setListener(new C1917g(iVar, duration, view2)).start();
        }
        if (view != null) {
            ViewPropertyAnimator animate = view.animate();
            this.f7528r.add(iVar.f7558b);
            animate.translationX(0.0f).translationY(0.0f).setDuration(m37379d()).alpha(1.0f).setListener(new C1918h(iVar, animate, view)).start();
        }
    }

    /* renamed from: a */
    public void m31670a(List<RecyclerView.AbstractC0495b0> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).itemView.animate().cancel();
        }
    }

    /* renamed from: a */
    public final void m31669a(List<C1919i> list, RecyclerView.AbstractC0495b0 b0Var) {
        for (int size = list.size() - 1; size >= 0; size--) {
            C1919i iVar = list.get(size);
            if (m31671a(iVar, b0Var) && iVar.f7557a == null && iVar.f7558b == null) {
                list.remove(iVar);
            }
        }
    }

    @Override // p012b.p122v.p123d.AbstractC1939k
    /* renamed from: a */
    public boolean mo31570a(RecyclerView.AbstractC0495b0 b0Var, int i, int i2, int i3, int i4) {
        View view = b0Var.itemView;
        int translationX = i + ((int) view.getTranslationX());
        int translationY = i2 + ((int) b0Var.itemView.getTranslationY());
        m31659v(b0Var);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            m31556j(b0Var);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        this.f7520j.add(new C1920j(b0Var, translationX, translationY, i3, i4));
        return true;
    }

    @Override // p012b.p122v.p123d.AbstractC1939k
    /* renamed from: a */
    public boolean mo31569a(RecyclerView.AbstractC0495b0 b0Var, RecyclerView.AbstractC0495b0 b0Var2, int i, int i2, int i3, int i4) {
        if (b0Var == b0Var2) {
            return mo31570a(b0Var, i, i2, i3, i4);
        }
        float translationX = b0Var.itemView.getTranslationX();
        float translationY = b0Var.itemView.getTranslationY();
        float alpha = b0Var.itemView.getAlpha();
        m31659v(b0Var);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        b0Var.itemView.setTranslationX(translationX);
        b0Var.itemView.setTranslationY(translationY);
        b0Var.itemView.setAlpha(alpha);
        if (b0Var2 != null) {
            m31659v(b0Var2);
            b0Var2.itemView.setTranslationX(-i5);
            b0Var2.itemView.setTranslationY(-i6);
            b0Var2.itemView.setAlpha(0.0f);
        }
        this.f7521k.add(new C1919i(b0Var, b0Var2, i, i2, i3, i4));
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0505l
    /* renamed from: a */
    public boolean mo31673a(RecyclerView.AbstractC0495b0 b0Var, List<Object> list) {
        return !list.isEmpty() || super.mo31673a(b0Var, list);
    }

    /* renamed from: a */
    public final boolean m31671a(C1919i iVar, RecyclerView.AbstractC0495b0 b0Var) {
        boolean z = false;
        if (iVar.f7558b == b0Var) {
            iVar.f7558b = null;
        } else if (iVar.f7557a != b0Var) {
            return false;
        } else {
            iVar.f7557a = null;
            z = true;
        }
        b0Var.itemView.setAlpha(1.0f);
        b0Var.itemView.setTranslationX(0.0f);
        b0Var.itemView.setTranslationY(0.0f);
        m31566a(b0Var, z);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0505l
    /* renamed from: b */
    public void mo31668b() {
        for (int size = this.f7520j.size() - 1; size >= 0; size--) {
            C1920j jVar = this.f7520j.get(size);
            View view = jVar.f7563a.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            m31556j(jVar.f7563a);
            this.f7520j.remove(size);
        }
        for (int size2 = this.f7518h.size() - 1; size2 >= 0; size2--) {
            m31554l(this.f7518h.get(size2));
            this.f7518h.remove(size2);
        }
        for (int size3 = this.f7519i.size() - 1; size3 >= 0; size3--) {
            RecyclerView.AbstractC0495b0 b0Var = this.f7519i.get(size3);
            b0Var.itemView.setAlpha(1.0f);
            m31558h(b0Var);
            this.f7519i.remove(size3);
        }
        for (int size4 = this.f7521k.size() - 1; size4 >= 0; size4--) {
            m31666b(this.f7521k.get(size4));
        }
        this.f7521k.clear();
        if (mo31664g()) {
            for (int size5 = this.f7523m.size() - 1; size5 >= 0; size5--) {
                ArrayList<C1920j> arrayList = this.f7523m.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    C1920j jVar2 = arrayList.get(size6);
                    View view2 = jVar2.f7563a.itemView;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    m31556j(jVar2.f7563a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f7523m.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f7522l.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.AbstractC0495b0> arrayList2 = this.f7522l.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.AbstractC0495b0 b0Var2 = arrayList2.get(size8);
                    b0Var2.itemView.setAlpha(1.0f);
                    m31558h(b0Var2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f7522l.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.f7524n.size() - 1; size9 >= 0; size9--) {
                ArrayList<C1919i> arrayList3 = this.f7524n.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    m31666b(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.f7524n.remove(arrayList3);
                    }
                }
            }
            m31670a(this.f7527q);
            m31670a(this.f7526p);
            m31670a(this.f7525o);
            m31670a(this.f7528r);
            m37385a();
        }
    }

    /* renamed from: b */
    public void m31667b(RecyclerView.AbstractC0495b0 b0Var, int i, int i2, int i3, int i4) {
        View view = b0Var.itemView;
        int i5 = i3 - i;
        int i6 = i4 - i2;
        if (i5 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i6 != 0) {
            view.animate().translationY(0.0f);
        }
        ViewPropertyAnimator animate = view.animate();
        this.f7526p.add(b0Var);
        animate.setDuration(m37377e()).setListener(new C1916f(b0Var, i5, view, i6, animate)).start();
    }

    /* renamed from: b */
    public final void m31666b(C1919i iVar) {
        RecyclerView.AbstractC0495b0 b0Var = iVar.f7557a;
        if (b0Var != null) {
            m31671a(iVar, b0Var);
        }
        RecyclerView.AbstractC0495b0 b0Var2 = iVar.f7558b;
        if (b0Var2 != null) {
            m31671a(iVar, b0Var2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0505l
    /* renamed from: c */
    public void mo31665c(RecyclerView.AbstractC0495b0 b0Var) {
        View view = b0Var.itemView;
        view.animate().cancel();
        for (int size = this.f7520j.size() - 1; size >= 0; size--) {
            if (this.f7520j.get(size).f7563a == b0Var) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                m31556j(b0Var);
                this.f7520j.remove(size);
            }
        }
        m31669a(this.f7521k, b0Var);
        if (this.f7518h.remove(b0Var)) {
            view.setAlpha(1.0f);
            m31554l(b0Var);
        }
        if (this.f7519i.remove(b0Var)) {
            view.setAlpha(1.0f);
            m31558h(b0Var);
        }
        for (int size2 = this.f7524n.size() - 1; size2 >= 0; size2--) {
            ArrayList<C1919i> arrayList = this.f7524n.get(size2);
            m31669a(arrayList, b0Var);
            if (arrayList.isEmpty()) {
                this.f7524n.remove(size2);
            }
        }
        for (int size3 = this.f7523m.size() - 1; size3 >= 0; size3--) {
            ArrayList<C1920j> arrayList2 = this.f7523m.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                } else if (arrayList2.get(size4).f7563a == b0Var) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    m31556j(b0Var);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f7523m.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f7522l.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.AbstractC0495b0> arrayList3 = this.f7522l.get(size5);
            if (arrayList3.remove(b0Var)) {
                view.setAlpha(1.0f);
                m31558h(b0Var);
                if (arrayList3.isEmpty()) {
                    this.f7522l.remove(size5);
                }
            }
        }
        this.f7527q.remove(b0Var);
        this.f7525o.remove(b0Var);
        this.f7528r.remove(b0Var);
        this.f7526p.remove(b0Var);
        m31662j();
    }

    @Override // p012b.p122v.p123d.AbstractC1939k
    /* renamed from: f */
    public boolean mo31560f(RecyclerView.AbstractC0495b0 b0Var) {
        m31659v(b0Var);
        b0Var.itemView.setAlpha(0.0f);
        this.f7519i.add(b0Var);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0505l
    /* renamed from: g */
    public boolean mo31664g() {
        return !this.f7519i.isEmpty() || !this.f7521k.isEmpty() || !this.f7520j.isEmpty() || !this.f7518h.isEmpty() || !this.f7526p.isEmpty() || !this.f7527q.isEmpty() || !this.f7525o.isEmpty() || !this.f7528r.isEmpty() || !this.f7523m.isEmpty() || !this.f7522l.isEmpty() || !this.f7524n.isEmpty();
    }

    @Override // p012b.p122v.p123d.AbstractC1939k
    /* renamed from: g */
    public boolean mo31559g(RecyclerView.AbstractC0495b0 b0Var) {
        m31659v(b0Var);
        this.f7518h.add(b0Var);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0505l
    /* renamed from: i */
    public void mo31663i() {
        boolean z = !this.f7518h.isEmpty();
        boolean z2 = !this.f7520j.isEmpty();
        boolean z3 = !this.f7521k.isEmpty();
        boolean z4 = !this.f7519i.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.AbstractC0495b0> it = this.f7518h.iterator();
            while (it.hasNext()) {
                m31660u(it.next());
            }
            this.f7518h.clear();
            if (z2) {
                ArrayList<C1920j> arrayList = new ArrayList<>();
                arrayList.addAll(this.f7520j);
                this.f7523m.add(arrayList);
                this.f7520j.clear();
                RunnableC1911a aVar = new RunnableC1911a(arrayList);
                if (z) {
                    C1002u.m35233a(arrayList.get(0).f7563a.itemView, aVar, m37375f());
                } else {
                    aVar.run();
                }
            }
            if (z3) {
                ArrayList<C1919i> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.f7521k);
                this.f7524n.add(arrayList2);
                this.f7521k.clear();
                RunnableC1912b bVar = new RunnableC1912b(arrayList2);
                if (z) {
                    C1002u.m35233a(arrayList2.get(0).f7557a.itemView, bVar, m37375f());
                } else {
                    bVar.run();
                }
            }
            if (z4) {
                ArrayList<RecyclerView.AbstractC0495b0> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.f7519i);
                this.f7522l.add(arrayList3);
                this.f7519i.clear();
                RunnableC1913c cVar = new RunnableC1913c(arrayList3);
                if (z || z2 || z3) {
                    long j = 0;
                    long f = z ? m37375f() : 0L;
                    long e = z2 ? m37377e() : 0L;
                    if (z3) {
                        j = m37379d();
                    }
                    C1002u.m35233a(arrayList3.get(0).itemView, cVar, f + Math.max(e, j));
                    return;
                }
                cVar.run();
            }
        }
    }

    /* renamed from: j */
    public void m31662j() {
        if (!mo31664g()) {
            m37385a();
        }
    }

    /* renamed from: t */
    public void m31661t(RecyclerView.AbstractC0495b0 b0Var) {
        View view = b0Var.itemView;
        ViewPropertyAnimator animate = view.animate();
        this.f7525o.add(b0Var);
        animate.alpha(1.0f).setDuration(m37380c()).setListener(new C1915e(b0Var, view, animate)).start();
    }

    /* renamed from: u */
    public final void m31660u(RecyclerView.AbstractC0495b0 b0Var) {
        View view = b0Var.itemView;
        ViewPropertyAnimator animate = view.animate();
        this.f7527q.add(b0Var);
        animate.setDuration(m37375f()).alpha(0.0f).setListener(new C1914d(b0Var, animate, view)).start();
    }

    /* renamed from: v */
    public final void m31659v(RecyclerView.AbstractC0495b0 b0Var) {
        if (f7517s == null) {
            f7517s = new ValueAnimator().getInterpolator();
        }
        b0Var.itemView.animate().setInterpolator(f7517s);
        mo31665c(b0Var);
    }
}
