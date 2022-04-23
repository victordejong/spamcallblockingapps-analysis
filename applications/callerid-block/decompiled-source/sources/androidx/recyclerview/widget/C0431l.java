package androidx.recyclerview.widget;

import android.view.View;
/* renamed from: androidx.recyclerview.widget.l */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/l.class */
class C0431l {
    /* renamed from: a */
    static int m12361a(RecyclerView$x recyclerView$x, AbstractC0430i iVar, View view, View view2, RecyclerView$n recyclerView$n, boolean z) {
        if (recyclerView$n.m12711J() == 0 || recyclerView$x.m12511b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(recyclerView$n.m12653h0(view) - recyclerView$n.m12653h0(view2)) + 1;
        }
        return Math.min(iVar.m12367n(), iVar.m12377d(view2) - iVar.m12374g(view));
    }

    /* renamed from: b */
    static int m12360b(RecyclerView$x recyclerView$x, AbstractC0430i iVar, View view, View view2, RecyclerView$n recyclerView$n, boolean z, boolean z2) {
        if (recyclerView$n.m12711J() == 0 || recyclerView$x.m12511b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (recyclerView$x.m12511b() - Math.max(recyclerView$n.m12653h0(view), recyclerView$n.m12653h0(view2))) - 1) : Math.max(0, Math.min(recyclerView$n.m12653h0(view), recyclerView$n.m12653h0(view2)));
        if (!z) {
            return max;
        }
        return Math.round((max * (Math.abs(iVar.m12377d(view2) - iVar.m12374g(view)) / (Math.abs(recyclerView$n.m12653h0(view) - recyclerView$n.m12653h0(view2)) + 1))) + (iVar.m12368m() - iVar.m12374g(view)));
    }

    /* renamed from: c */
    static int m12359c(RecyclerView$x recyclerView$x, AbstractC0430i iVar, View view, View view2, RecyclerView$n recyclerView$n, boolean z) {
        if (recyclerView$n.m12711J() == 0 || recyclerView$x.m12511b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return recyclerView$x.m12511b();
        }
        return (int) (((iVar.m12377d(view2) - iVar.m12374g(view)) / (Math.abs(recyclerView$n.m12653h0(view) - recyclerView$n.m12653h0(view2)) + 1)) * recyclerView$x.m12511b());
    }
}
