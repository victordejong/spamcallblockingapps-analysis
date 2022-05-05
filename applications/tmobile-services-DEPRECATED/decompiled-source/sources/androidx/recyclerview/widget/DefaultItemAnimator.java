package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/DefaultItemAnimator.class */
public class DefaultItemAnimator extends SimpleItemAnimator {

    /* renamed from: s */
    private static TimeInterpolator f4449s;

    /* renamed from: h */
    private ArrayList<RecyclerView.ViewHolder> f4450h = new ArrayList<>();

    /* renamed from: i */
    private ArrayList<RecyclerView.ViewHolder> f4451i = new ArrayList<>();

    /* renamed from: j */
    private ArrayList<MoveInfo> f4452j = new ArrayList<>();

    /* renamed from: k */
    private ArrayList<ChangeInfo> f4453k = new ArrayList<>();

    /* renamed from: l */
    ArrayList<ArrayList<RecyclerView.ViewHolder>> f4454l = new ArrayList<>();

    /* renamed from: m */
    ArrayList<ArrayList<MoveInfo>> f4455m = new ArrayList<>();

    /* renamed from: n */
    ArrayList<ArrayList<ChangeInfo>> f4456n = new ArrayList<>();

    /* renamed from: o */
    ArrayList<RecyclerView.ViewHolder> f4457o = new ArrayList<>();

    /* renamed from: p */
    ArrayList<RecyclerView.ViewHolder> f4458p = new ArrayList<>();

    /* renamed from: q */
    ArrayList<RecyclerView.ViewHolder> f4459q = new ArrayList<>();

    /* renamed from: r */
    ArrayList<RecyclerView.ViewHolder> f4460r = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo.class */
    public static class ChangeInfo {

        /* renamed from: a */
        public RecyclerView.ViewHolder f4489a;

        /* renamed from: b */
        public RecyclerView.ViewHolder f4490b;

        /* renamed from: c */
        public int f4491c;

        /* renamed from: d */
        public int f4492d;

        /* renamed from: e */
        public int f4493e;

        /* renamed from: f */
        public int f4494f;

        private ChangeInfo(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            this.f4489a = viewHolder;
            this.f4490b = viewHolder2;
        }

        ChangeInfo(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4) {
            this(viewHolder, viewHolder2);
            this.f4491c = i;
            this.f4492d = i2;
            this.f4493e = i3;
            this.f4494f = i4;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f4489a + ", newHolder=" + this.f4490b + ", fromX=" + this.f4491c + ", fromY=" + this.f4492d + ", toX=" + this.f4493e + ", toY=" + this.f4494f + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/DefaultItemAnimator$MoveInfo.class */
    public static class MoveInfo {

        /* renamed from: a */
        public RecyclerView.ViewHolder f4495a;

        /* renamed from: b */
        public int f4496b;

        /* renamed from: c */
        public int f4497c;

        /* renamed from: d */
        public int f4498d;

        /* renamed from: e */
        public int f4499e;

        MoveInfo(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
            this.f4495a = viewHolder;
            this.f4496b = i;
            this.f4497c = i2;
            this.f4498d = i3;
            this.f4499e = i4;
        }
    }

    /* renamed from: U */
    private void m17812U(final RecyclerView.ViewHolder viewHolder) {
        final View view = viewHolder.itemView;
        final ViewPropertyAnimator animate = view.animate();
        this.f4459q.add(viewHolder);
        animate.setDuration(m17481o()).alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                view.setAlpha(1.0f);
                DefaultItemAnimator.this.m17247H(viewHolder);
                DefaultItemAnimator.this.f4459q.remove(viewHolder);
                DefaultItemAnimator.this.m17810W();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                DefaultItemAnimator.this.m17246I(viewHolder);
            }
        }).start();
    }

    /* renamed from: X */
    private void m17809X(List<ChangeInfo> list, RecyclerView.ViewHolder viewHolder) {
        for (int size = list.size() - 1; size >= 0; size--) {
            ChangeInfo changeInfo = list.get(size);
            if (m17807Z(changeInfo, viewHolder) && changeInfo.f4489a == null && changeInfo.f4490b == null) {
                list.remove(changeInfo);
            }
        }
    }

    /* renamed from: Y */
    private void m17808Y(ChangeInfo changeInfo) {
        RecyclerView.ViewHolder viewHolder = changeInfo.f4489a;
        if (viewHolder != null) {
            m17807Z(changeInfo, viewHolder);
        }
        RecyclerView.ViewHolder viewHolder2 = changeInfo.f4490b;
        if (viewHolder2 != null) {
            m17807Z(changeInfo, viewHolder2);
        }
    }

    /* renamed from: Z */
    private boolean m17807Z(ChangeInfo changeInfo, RecyclerView.ViewHolder viewHolder) {
        boolean z = false;
        if (changeInfo.f4490b == viewHolder) {
            changeInfo.f4490b = null;
        } else if (changeInfo.f4489a != viewHolder) {
            return false;
        } else {
            changeInfo.f4489a = null;
            z = true;
        }
        viewHolder.itemView.setAlpha(1.0f);
        viewHolder.itemView.setTranslationX(0.0f);
        viewHolder.itemView.setTranslationY(0.0f);
        m17251D(viewHolder, z);
        return true;
    }

    /* renamed from: a0 */
    private void m17806a0(RecyclerView.ViewHolder viewHolder) {
        if (f4449s == null) {
            f4449s = new ValueAnimator().getInterpolator();
        }
        viewHolder.itemView.animate().setInterpolator(f4449s);
        mo17486j(viewHolder);
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    /* renamed from: A */
    public boolean mo17254A(RecyclerView.ViewHolder viewHolder) {
        m17806a0(viewHolder);
        this.f4450h.add(viewHolder);
        return true;
    }

    /* renamed from: R */
    void m17815R(final RecyclerView.ViewHolder viewHolder) {
        final View view = viewHolder.itemView;
        final ViewPropertyAnimator animate = view.animate();
        this.f4457o.add(viewHolder);
        animate.alpha(1.0f).setDuration(m17484l()).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                view.setAlpha(1.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                DefaultItemAnimator.this.m17253B(viewHolder);
                DefaultItemAnimator.this.f4457o.remove(viewHolder);
                DefaultItemAnimator.this.m17810W();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                DefaultItemAnimator.this.m17252C(viewHolder);
            }
        }).start();
    }

    /* renamed from: S */
    void m17814S(final ChangeInfo changeInfo) {
        RecyclerView.ViewHolder viewHolder = changeInfo.f4489a;
        final View view = null;
        final View view2 = viewHolder == null ? null : viewHolder.itemView;
        RecyclerView.ViewHolder viewHolder2 = changeInfo.f4490b;
        if (viewHolder2 != null) {
            view = viewHolder2.itemView;
        }
        if (view2 != null) {
            final ViewPropertyAnimator duration = view2.animate().setDuration(m17483m());
            this.f4460r.add(changeInfo.f4489a);
            duration.translationX(changeInfo.f4493e - changeInfo.f4491c);
            duration.translationY(changeInfo.f4494f - changeInfo.f4492d);
            duration.alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    duration.setListener(null);
                    view2.setAlpha(1.0f);
                    view2.setTranslationX(0.0f);
                    view2.setTranslationY(0.0f);
                    DefaultItemAnimator.this.m17251D(changeInfo.f4489a, true);
                    DefaultItemAnimator.this.f4460r.remove(changeInfo.f4489a);
                    DefaultItemAnimator.this.m17810W();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    DefaultItemAnimator.this.m17250E(changeInfo.f4489a, true);
                }
            }).start();
        }
        if (view != null) {
            final ViewPropertyAnimator animate = view.animate();
            this.f4460r.add(changeInfo.f4490b);
            animate.translationX(0.0f).translationY(0.0f).setDuration(m17483m()).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    animate.setListener(null);
                    view.setAlpha(1.0f);
                    view.setTranslationX(0.0f);
                    view.setTranslationY(0.0f);
                    DefaultItemAnimator.this.m17251D(changeInfo.f4490b, false);
                    DefaultItemAnimator.this.f4460r.remove(changeInfo.f4490b);
                    DefaultItemAnimator.this.m17810W();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    DefaultItemAnimator.this.m17250E(changeInfo.f4490b, false);
                }
            }).start();
        }
    }

    /* renamed from: T */
    void m17813T(final RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
        final View view = viewHolder.itemView;
        final int i5 = i3 - i;
        final int i6 = i4 - i2;
        if (i5 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i6 != 0) {
            view.animate().translationY(0.0f);
        }
        final ViewPropertyAnimator animate = view.animate();
        this.f4458p.add(viewHolder);
        animate.setDuration(m17482n()).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.6
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
                DefaultItemAnimator.this.m17249F(viewHolder);
                DefaultItemAnimator.this.f4458p.remove(viewHolder);
                DefaultItemAnimator.this.m17810W();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                DefaultItemAnimator.this.m17248G(viewHolder);
            }
        }).start();
    }

    /* renamed from: V */
    void m17811V(List<RecyclerView.ViewHolder> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).itemView.animate().cancel();
        }
    }

    /* renamed from: W */
    void m17810W() {
        if (!mo17480p()) {
            m17487i();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    /* renamed from: g */
    public boolean mo17489g(@NonNull RecyclerView.ViewHolder viewHolder, @NonNull List<Object> list) {
        return !list.isEmpty() || super.mo17489g(viewHolder, list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    /* renamed from: j */
    public void mo17486j(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        view.animate().cancel();
        for (int size = this.f4452j.size() - 1; size >= 0; size--) {
            if (this.f4452j.get(size).f4495a == viewHolder) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                m17249F(viewHolder);
                this.f4452j.remove(size);
            }
        }
        m17809X(this.f4453k, viewHolder);
        if (this.f4450h.remove(viewHolder)) {
            view.setAlpha(1.0f);
            m17247H(viewHolder);
        }
        if (this.f4451i.remove(viewHolder)) {
            view.setAlpha(1.0f);
            m17253B(viewHolder);
        }
        for (int size2 = this.f4456n.size() - 1; size2 >= 0; size2--) {
            ArrayList<ChangeInfo> arrayList = this.f4456n.get(size2);
            m17809X(arrayList, viewHolder);
            if (arrayList.isEmpty()) {
                this.f4456n.remove(size2);
            }
        }
        for (int size3 = this.f4455m.size() - 1; size3 >= 0; size3--) {
            ArrayList<MoveInfo> arrayList2 = this.f4455m.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                } else if (arrayList2.get(size4).f4495a == viewHolder) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    m17249F(viewHolder);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f4455m.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f4454l.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.ViewHolder> arrayList3 = this.f4454l.get(size5);
            if (arrayList3.remove(viewHolder)) {
                view.setAlpha(1.0f);
                m17253B(viewHolder);
                if (arrayList3.isEmpty()) {
                    this.f4454l.remove(size5);
                }
            }
        }
        this.f4459q.remove(viewHolder);
        this.f4457o.remove(viewHolder);
        this.f4460r.remove(viewHolder);
        this.f4458p.remove(viewHolder);
        m17810W();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    /* renamed from: k */
    public void mo17485k() {
        for (int size = this.f4452j.size() - 1; size >= 0; size--) {
            MoveInfo moveInfo = this.f4452j.get(size);
            View view = moveInfo.f4495a.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            m17249F(moveInfo.f4495a);
            this.f4452j.remove(size);
        }
        for (int size2 = this.f4450h.size() - 1; size2 >= 0; size2--) {
            m17247H(this.f4450h.get(size2));
            this.f4450h.remove(size2);
        }
        for (int size3 = this.f4451i.size() - 1; size3 >= 0; size3--) {
            RecyclerView.ViewHolder viewHolder = this.f4451i.get(size3);
            viewHolder.itemView.setAlpha(1.0f);
            m17253B(viewHolder);
            this.f4451i.remove(size3);
        }
        for (int size4 = this.f4453k.size() - 1; size4 >= 0; size4--) {
            m17808Y(this.f4453k.get(size4));
        }
        this.f4453k.clear();
        if (mo17480p()) {
            for (int size5 = this.f4455m.size() - 1; size5 >= 0; size5--) {
                ArrayList<MoveInfo> arrayList = this.f4455m.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    MoveInfo moveInfo2 = arrayList.get(size6);
                    View view2 = moveInfo2.f4495a.itemView;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    m17249F(moveInfo2.f4495a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f4455m.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f4454l.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.ViewHolder> arrayList2 = this.f4454l.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.ViewHolder viewHolder2 = arrayList2.get(size8);
                    viewHolder2.itemView.setAlpha(1.0f);
                    m17253B(viewHolder2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f4454l.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.f4456n.size() - 1; size9 >= 0; size9--) {
                ArrayList<ChangeInfo> arrayList3 = this.f4456n.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    m17808Y(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.f4456n.remove(arrayList3);
                    }
                }
            }
            m17811V(this.f4459q);
            m17811V(this.f4458p);
            m17811V(this.f4457o);
            m17811V(this.f4460r);
            m17487i();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    /* renamed from: p */
    public boolean mo17480p() {
        return !this.f4451i.isEmpty() || !this.f4453k.isEmpty() || !this.f4452j.isEmpty() || !this.f4450h.isEmpty() || !this.f4458p.isEmpty() || !this.f4459q.isEmpty() || !this.f4457o.isEmpty() || !this.f4460r.isEmpty() || !this.f4455m.isEmpty() || !this.f4454l.isEmpty() || !this.f4456n.isEmpty();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    /* renamed from: v */
    public void mo17474v() {
        boolean z = !this.f4450h.isEmpty();
        boolean z2 = !this.f4452j.isEmpty();
        boolean z3 = !this.f4453k.isEmpty();
        boolean z4 = !this.f4451i.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.ViewHolder> it = this.f4450h.iterator();
            while (it.hasNext()) {
                m17812U(it.next());
            }
            this.f4450h.clear();
            if (z2) {
                final ArrayList<MoveInfo> arrayList = new ArrayList<>();
                arrayList.addAll(this.f4452j);
                this.f4455m.add(arrayList);
                this.f4452j.clear();
                Runnable runnable = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            MoveInfo moveInfo = (MoveInfo) it2.next();
                            DefaultItemAnimator.this.m17813T(moveInfo.f4495a, moveInfo.f4496b, moveInfo.f4497c, moveInfo.f4498d, moveInfo.f4499e);
                        }
                        arrayList.clear();
                        DefaultItemAnimator.this.f4455m.remove(arrayList);
                    }
                };
                if (z) {
                    ViewCompat.m19197g0(arrayList.get(0).f4495a.itemView, runnable, m17481o());
                } else {
                    runnable.run();
                }
            }
            if (z3) {
                final ArrayList<ChangeInfo> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.f4453k);
                this.f4456n.add(arrayList2);
                this.f4453k.clear();
                Runnable runnable2 = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            DefaultItemAnimator.this.m17814S((ChangeInfo) it2.next());
                        }
                        arrayList2.clear();
                        DefaultItemAnimator.this.f4456n.remove(arrayList2);
                    }
                };
                if (z) {
                    ViewCompat.m19197g0(arrayList2.get(0).f4489a.itemView, runnable2, m17481o());
                } else {
                    runnable2.run();
                }
            }
            if (z4) {
                final ArrayList<RecyclerView.ViewHolder> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.f4451i);
                this.f4454l.add(arrayList3);
                this.f4451i.clear();
                Runnable runnable3 = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.3
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList3.iterator();
                        while (it2.hasNext()) {
                            DefaultItemAnimator.this.m17815R((RecyclerView.ViewHolder) it2.next());
                        }
                        arrayList3.clear();
                        DefaultItemAnimator.this.f4454l.remove(arrayList3);
                    }
                };
                if (z || z2 || z3) {
                    long j = 0;
                    long o = z ? m17481o() : 0L;
                    long n = z2 ? m17482n() : 0L;
                    if (z3) {
                        j = m17483m();
                    }
                    ViewCompat.m19197g0(arrayList3.get(0).itemView, runnable3, o + Math.max(n, j));
                    return;
                }
                runnable3.run();
            }
        }
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    /* renamed from: x */
    public boolean mo17232x(RecyclerView.ViewHolder viewHolder) {
        m17806a0(viewHolder);
        viewHolder.itemView.setAlpha(0.0f);
        this.f4451i.add(viewHolder);
        return true;
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    /* renamed from: y */
    public boolean mo17231y(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4) {
        if (viewHolder == viewHolder2) {
            return mo17230z(viewHolder, i, i2, i3, i4);
        }
        float translationX = viewHolder.itemView.getTranslationX();
        float translationY = viewHolder.itemView.getTranslationY();
        float alpha = viewHolder.itemView.getAlpha();
        m17806a0(viewHolder);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        viewHolder.itemView.setTranslationX(translationX);
        viewHolder.itemView.setTranslationY(translationY);
        viewHolder.itemView.setAlpha(alpha);
        if (viewHolder2 != null) {
            m17806a0(viewHolder2);
            viewHolder2.itemView.setTranslationX(-i5);
            viewHolder2.itemView.setTranslationY(-i6);
            viewHolder2.itemView.setAlpha(0.0f);
        }
        this.f4453k.add(new ChangeInfo(viewHolder, viewHolder2, i, i2, i3, i4));
        return true;
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    /* renamed from: z */
    public boolean mo17230z(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
        View view = viewHolder.itemView;
        int translationX = i + ((int) view.getTranslationX());
        int translationY = i2 + ((int) viewHolder.itemView.getTranslationY());
        m17806a0(viewHolder);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            m17249F(viewHolder);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        this.f4452j.add(new MoveInfo(viewHolder, translationX, translationY, i3, i4));
        return true;
    }
}
