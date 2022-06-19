package androidx.recyclerview.widget;

import android.view.View;
/* renamed from: androidx.recyclerview.widget.l */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/l.class */
class C0431l {
    /* renamed from: a */
    static int m12361a(RecyclerView$x recyclerView$x, AbstractC0430i abstractC0430i, View view, View view2, RecyclerView$n recyclerView$n, boolean z) {
        if (recyclerView$n.m12711J() == 0 || recyclerView$x.m12511b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(recyclerView$n.m12653h0(view) - recyclerView$n.m12653h0(view2)) + 1;
        }
        return Math.min(abstractC0430i.m12367n(), abstractC0430i.m12377d(view2) - abstractC0430i.m12374g(view));
    }

    /* renamed from: b */
    static int m12360b(RecyclerView$x recyclerView$x, AbstractC0430i abstractC0430i, View view, View view2, RecyclerView$n recyclerView$n, boolean z, boolean z2) {
        if (recyclerView$n.m12711J() == 0 || recyclerView$x.m12511b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (recyclerView$x.m12511b() - Math.max(recyclerView$n.m12653h0(view), recyclerView$n.m12653h0(view2))) - 1) : Math.max(0, Math.min(recyclerView$n.m12653h0(view), recyclerView$n.m12653h0(view2)));
        if (!z) {
            return max;
        }
        return Math.round((max * (Math.abs(abstractC0430i.m12377d(view2) - abstractC0430i.m12374g(view)) / (Math.abs(recyclerView$n.m12653h0(view) - recyclerView$n.m12653h0(view2)) + 1))) + (abstractC0430i.m12368m() - abstractC0430i.m12374g(view)));
    }

    /* renamed from: c */
    static int m12359c(RecyclerView$x recyclerView$x, AbstractC0430i abstractC0430i, View view, View view2, RecyclerView$n recyclerView$n, boolean z) {
        if (recyclerView$n.m12711J() == 0 || recyclerView$x.m12511b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return recyclerView$x.m12511b();
        }
        return (int) (((abstractC0430i.m12377d(view2) - abstractC0430i.m12374g(view)) / (Math.abs(recyclerView$n.m12653h0(view) - recyclerView$n.m12653h0(view2)) + 1)) * recyclerView$x.m12511b());
    }
}
