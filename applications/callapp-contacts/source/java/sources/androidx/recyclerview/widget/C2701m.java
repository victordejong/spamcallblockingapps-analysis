package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.m */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/m.class */
public final class C2701m {
    private C2701m() {
    }

    /* renamed from: a */
    public static int m40048a(RecyclerView.C2654s c2654s, AbstractC2694j abstractC2694j, View view, View view2, RecyclerView.AbstractC2637i abstractC2637i, boolean z) {
        if (abstractC2637i.getChildCount() == 0 || c2654s.m40306a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(RecyclerView.AbstractC2637i.m40366c(view) - RecyclerView.AbstractC2637i.m40366c(view2)) + 1;
        }
        return Math.min(abstractC2694j.mo40064e(), abstractC2694j.mo40069b(view2) - abstractC2694j.mo40071a(view));
    }

    /* renamed from: a */
    public static int m40047a(RecyclerView.C2654s c2654s, AbstractC2694j abstractC2694j, View view, View view2, RecyclerView.AbstractC2637i abstractC2637i, boolean z, boolean z2) {
        if (abstractC2637i.getChildCount() == 0 || c2654s.m40306a() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (c2654s.m40306a() - Math.max(RecyclerView.AbstractC2637i.m40366c(view), RecyclerView.AbstractC2637i.m40366c(view2))) - 1) : Math.max(0, Math.min(RecyclerView.AbstractC2637i.m40366c(view), RecyclerView.AbstractC2637i.m40366c(view2)));
        if (!z) {
            return max;
        }
        return Math.round((max * (Math.abs(abstractC2694j.mo40069b(view2) - abstractC2694j.mo40071a(view)) / (Math.abs(RecyclerView.AbstractC2637i.m40366c(view) - RecyclerView.AbstractC2637i.m40366c(view2)) + 1))) + (abstractC2694j.mo40070b() - abstractC2694j.mo40071a(view)));
    }

    /* renamed from: b */
    public static int m40046b(RecyclerView.C2654s c2654s, AbstractC2694j abstractC2694j, View view, View view2, RecyclerView.AbstractC2637i abstractC2637i, boolean z) {
        if (abstractC2637i.getChildCount() == 0 || c2654s.m40306a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return c2654s.m40306a();
        }
        return (int) (((abstractC2694j.mo40069b(view2) - abstractC2694j.mo40071a(view)) / (Math.abs(RecyclerView.AbstractC2637i.m40366c(view) - RecyclerView.AbstractC2637i.m40366c(view2)) + 1)) * c2654s.m40306a());
    }
}
