package androidx.recyclerview.widget;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.support.p012v4.media.C0082b;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.recyclerview.widget.l */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/l.class */
public class C0628l extends AbstractC0607a0 {

    /* renamed from: s */
    public static TimeInterpolator f2446s;

    /* renamed from: h */
    public ArrayList<RecyclerView.AbstractC0558a0> f2447h = new ArrayList<>();

    /* renamed from: i */
    public ArrayList<RecyclerView.AbstractC0558a0> f2448i = new ArrayList<>();

    /* renamed from: j */
    public ArrayList<C0630b> f2449j = new ArrayList<>();

    /* renamed from: k */
    public ArrayList<C0629a> f2450k = new ArrayList<>();

    /* renamed from: l */
    public ArrayList<ArrayList<RecyclerView.AbstractC0558a0>> f2451l = new ArrayList<>();

    /* renamed from: m */
    public ArrayList<ArrayList<C0630b>> f2452m = new ArrayList<>();

    /* renamed from: n */
    public ArrayList<ArrayList<C0629a>> f2453n = new ArrayList<>();

    /* renamed from: o */
    public ArrayList<RecyclerView.AbstractC0558a0> f2454o = new ArrayList<>();

    /* renamed from: p */
    public ArrayList<RecyclerView.AbstractC0558a0> f2455p = new ArrayList<>();

    /* renamed from: q */
    public ArrayList<RecyclerView.AbstractC0558a0> f2456q = new ArrayList<>();

    /* renamed from: r */
    public ArrayList<RecyclerView.AbstractC0558a0> f2457r = new ArrayList<>();

    /* renamed from: androidx.recyclerview.widget.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/l$a.class */
    public static class C0629a {

        /* renamed from: a */
        public RecyclerView.AbstractC0558a0 f2458a;

        /* renamed from: b */
        public RecyclerView.AbstractC0558a0 f2459b;

        /* renamed from: c */
        public int f2460c;

        /* renamed from: d */
        public int f2461d;

        /* renamed from: e */
        public int f2462e;

        /* renamed from: f */
        public int f2463f;

        public C0629a(RecyclerView.AbstractC0558a0 abstractC0558a0, RecyclerView.AbstractC0558a0 abstractC0558a02, int i, int i2, int i3, int i4) {
            this.f2458a = abstractC0558a0;
            this.f2459b = abstractC0558a02;
            this.f2460c = i;
            this.f2461d = i2;
            this.f2462e = i3;
            this.f2463f = i4;
        }

        public String toString() {
            StringBuilder m8752j = C0082b.m8752j("ChangeInfo{oldHolder=");
            m8752j.append(this.f2458a);
            m8752j.append(", newHolder=");
            m8752j.append(this.f2459b);
            m8752j.append(", fromX=");
            m8752j.append(this.f2460c);
            m8752j.append(", fromY=");
            m8752j.append(this.f2461d);
            m8752j.append(", toX=");
            m8752j.append(this.f2462e);
            m8752j.append(", toY=");
            m8752j.append(this.f2463f);
            m8752j.append('}');
            return m8752j.toString();
        }
    }

    /* renamed from: androidx.recyclerview.widget.l$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/l$b.class */
    public static class C0630b {

        /* renamed from: a */
        public RecyclerView.AbstractC0558a0 f2464a;

        /* renamed from: b */
        public int f2465b;

        /* renamed from: c */
        public int f2466c;

        /* renamed from: d */
        public int f2467d;

        /* renamed from: e */
        public int f2468e;

        public C0630b(RecyclerView.AbstractC0558a0 abstractC0558a0, int i, int i2, int i3, int i4) {
            this.f2464a = abstractC0558a0;
            this.f2465b = i;
            this.f2466c = i2;
            this.f2467d = i3;
            this.f2468e = i4;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0567j
    /* renamed from: e */
    public void mo7579e(RecyclerView.AbstractC0558a0 abstractC0558a0) {
        View view = abstractC0558a0.f2224a;
        view.animate().cancel();
        int size = this.f2449j.size();
        while (true) {
            int i = size - 1;
            if (i < 0) {
                break;
            }
            size = i;
            if (this.f2449j.get(i).f2464a == abstractC0558a0) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                m7823c(abstractC0558a0);
                this.f2449j.remove(i);
                size = i;
            }
        }
        m7573l(this.f2450k, abstractC0558a0);
        if (this.f2447h.remove(abstractC0558a0)) {
            view.setAlpha(1.0f);
            m7823c(abstractC0558a0);
        }
        if (this.f2448i.remove(abstractC0558a0)) {
            view.setAlpha(1.0f);
            m7823c(abstractC0558a0);
        }
        int size2 = this.f2453n.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                break;
            }
            ArrayList<C0629a> arrayList = this.f2453n.get(size2);
            m7573l(arrayList, abstractC0558a0);
            if (arrayList.isEmpty()) {
                this.f2453n.remove(size2);
            }
        }
        int size3 = this.f2452m.size();
        while (true) {
            int i2 = size3 - 1;
            if (i2 < 0) {
                break;
            }
            ArrayList<C0630b> arrayList2 = this.f2452m.get(i2);
            int size4 = arrayList2.size();
            while (true) {
                size4--;
                if (size4 < 0) {
                    break;
                } else if (arrayList2.get(size4).f2464a == abstractC0558a0) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    m7823c(abstractC0558a0);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f2452m.remove(i2);
                    }
                }
            }
            size3 = i2;
        }
        int size5 = this.f2451l.size();
        while (true) {
            size5--;
            if (size5 < 0) {
                this.f2456q.remove(abstractC0558a0);
                this.f2454o.remove(abstractC0558a0);
                this.f2457r.remove(abstractC0558a0);
                this.f2455p.remove(abstractC0558a0);
                m7574k();
                return;
            }
            ArrayList<RecyclerView.AbstractC0558a0> arrayList3 = this.f2451l.get(size5);
            if (arrayList3.remove(abstractC0558a0)) {
                view.setAlpha(1.0f);
                m7823c(abstractC0558a0);
                if (arrayList3.isEmpty()) {
                    this.f2451l.remove(size5);
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0567j
    /* renamed from: f */
    public void mo7578f() {
        int size = this.f2449j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            C0630b c0630b = this.f2449j.get(size);
            View view = c0630b.f2464a.f2224a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            m7823c(c0630b.f2464a);
            this.f2449j.remove(size);
        }
        int size2 = this.f2447h.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                break;
            }
            m7823c(this.f2447h.get(size2));
            this.f2447h.remove(size2);
        }
        int size3 = this.f2448i.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.AbstractC0558a0 abstractC0558a0 = this.f2448i.get(size3);
            abstractC0558a0.f2224a.setAlpha(1.0f);
            m7823c(abstractC0558a0);
            this.f2448i.remove(size3);
        }
        int size4 = this.f2450k.size();
        while (true) {
            size4--;
            if (size4 < 0) {
                break;
            }
            C0629a c0629a = this.f2450k.get(size4);
            RecyclerView.AbstractC0558a0 abstractC0558a02 = c0629a.f2458a;
            if (abstractC0558a02 != null) {
                m7572m(c0629a, abstractC0558a02);
            }
            RecyclerView.AbstractC0558a0 abstractC0558a03 = c0629a.f2459b;
            if (abstractC0558a03 != null) {
                m7572m(c0629a, abstractC0558a03);
            }
        }
        this.f2450k.clear();
        if (!mo7577g()) {
            return;
        }
        int size5 = this.f2452m.size();
        while (true) {
            int i = size5 - 1;
            if (i < 0) {
                break;
            }
            ArrayList<C0630b> arrayList = this.f2452m.get(i);
            int size6 = arrayList.size();
            while (true) {
                size6--;
                if (size6 >= 0) {
                    C0630b c0630b2 = arrayList.get(size6);
                    View view2 = c0630b2.f2464a.f2224a;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    m7823c(c0630b2.f2464a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f2452m.remove(arrayList);
                    }
                }
            }
            size5 = i;
        }
        int size7 = this.f2451l.size();
        while (true) {
            int i2 = size7 - 1;
            if (i2 < 0) {
                break;
            }
            ArrayList<RecyclerView.AbstractC0558a0> arrayList2 = this.f2451l.get(i2);
            int size8 = arrayList2.size();
            while (true) {
                size8--;
                if (size8 >= 0) {
                    RecyclerView.AbstractC0558a0 abstractC0558a04 = arrayList2.get(size8);
                    abstractC0558a04.f2224a.setAlpha(1.0f);
                    m7823c(abstractC0558a04);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f2451l.remove(arrayList2);
                    }
                }
            }
            size7 = i2;
        }
        int size9 = this.f2453n.size();
        while (true) {
            int i3 = size9 - 1;
            if (i3 < 0) {
                m7575j(this.f2456q);
                m7575j(this.f2455p);
                m7575j(this.f2454o);
                m7575j(this.f2457r);
                m7822d();
                return;
            }
            ArrayList<C0629a> arrayList3 = this.f2453n.get(i3);
            int size10 = arrayList3.size();
            while (true) {
                size10--;
                if (size10 >= 0) {
                    C0629a c0629a2 = arrayList3.get(size10);
                    RecyclerView.AbstractC0558a0 abstractC0558a05 = c0629a2.f2458a;
                    if (abstractC0558a05 != null) {
                        m7572m(c0629a2, abstractC0558a05);
                    }
                    RecyclerView.AbstractC0558a0 abstractC0558a06 = c0629a2.f2459b;
                    if (abstractC0558a06 != null) {
                        m7572m(c0629a2, abstractC0558a06);
                    }
                    if (arrayList3.isEmpty()) {
                        this.f2453n.remove(arrayList3);
                    }
                }
            }
            size9 = i3;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0567j
    /* renamed from: g */
    public boolean mo7577g() {
        return !this.f2448i.isEmpty() || !this.f2450k.isEmpty() || !this.f2449j.isEmpty() || !this.f2447h.isEmpty() || !this.f2455p.isEmpty() || !this.f2456q.isEmpty() || !this.f2454o.isEmpty() || !this.f2457r.isEmpty() || !this.f2452m.isEmpty() || !this.f2451l.isEmpty() || !this.f2453n.isEmpty();
    }

    @Override // androidx.recyclerview.widget.AbstractC0607a0
    /* renamed from: i */
    public boolean mo7576i(RecyclerView.AbstractC0558a0 abstractC0558a0, int i, int i2, int i3, int i4) {
        View view = abstractC0558a0.f2224a;
        int translationX = i + ((int) view.getTranslationX());
        int translationY = i2 + ((int) abstractC0558a0.f2224a.getTranslationY());
        m7571n(abstractC0558a0);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            m7823c(abstractC0558a0);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        this.f2449j.add(new C0630b(abstractC0558a0, translationX, translationY, i3, i4));
        return true;
    }

    /* renamed from: j */
    public void m7575j(List<RecyclerView.AbstractC0558a0> list) {
        int size = list.size();
        while (true) {
            size--;
            if (size >= 0) {
                list.get(size).f2224a.animate().cancel();
            } else {
                return;
            }
        }
    }

    /* renamed from: k */
    public void m7574k() {
        if (!mo7577g()) {
            m7822d();
        }
    }

    /* renamed from: l */
    public final void m7573l(List<C0629a> list, RecyclerView.AbstractC0558a0 abstractC0558a0) {
        int size = list.size();
        while (true) {
            int i = size - 1;
            if (i >= 0) {
                C0629a c0629a = list.get(i);
                size = i;
                if (m7572m(c0629a, abstractC0558a0)) {
                    size = i;
                    if (c0629a.f2458a == null) {
                        size = i;
                        if (c0629a.f2459b == null) {
                            list.remove(c0629a);
                            size = i;
                        }
                    }
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: m */
    public final boolean m7572m(C0629a c0629a, RecyclerView.AbstractC0558a0 abstractC0558a0) {
        if (c0629a.f2459b == abstractC0558a0) {
            c0629a.f2459b = null;
        } else if (c0629a.f2458a != abstractC0558a0) {
            return false;
        } else {
            c0629a.f2458a = null;
        }
        abstractC0558a0.f2224a.setAlpha(1.0f);
        abstractC0558a0.f2224a.setTranslationX(0.0f);
        abstractC0558a0.f2224a.setTranslationY(0.0f);
        m7823c(abstractC0558a0);
        return true;
    }

    /* renamed from: n */
    public final void m7571n(RecyclerView.AbstractC0558a0 abstractC0558a0) {
        if (f2446s == null) {
            f2446s = new ValueAnimator().getInterpolator();
        }
        abstractC0558a0.f2224a.animate().setInterpolator(f2446s);
        mo7579e(abstractC0558a0);
    }
}
