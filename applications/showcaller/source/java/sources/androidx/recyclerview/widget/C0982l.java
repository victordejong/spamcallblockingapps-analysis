package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.l */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/l.class */
public class C0982l {
    /* renamed from: a */
    public static int m31369a(RecyclerView.C0938y c0938y, AbstractC0975i abstractC0975i, View view, View view2, RecyclerView.AbstractC0921o abstractC0921o, boolean z) {
        if (abstractC0921o.m31858J() == 0 || c0938y.m31703b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(abstractC0921o.m31816h0(view) - abstractC0921o.m31816h0(view2)) + 1;
        }
        return Math.min(abstractC0975i.mo31386n(), abstractC0975i.mo31396d(view2) - abstractC0975i.mo31393g(view));
    }

    /* renamed from: b */
    public static int m31368b(RecyclerView.C0938y c0938y, AbstractC0975i abstractC0975i, View view, View view2, RecyclerView.AbstractC0921o abstractC0921o, boolean z, boolean z2) {
        if (abstractC0921o.m31858J() == 0 || c0938y.m31703b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (c0938y.m31703b() - Math.max(abstractC0921o.m31816h0(view), abstractC0921o.m31816h0(view2))) - 1) : Math.max(0, Math.min(abstractC0921o.m31816h0(view), abstractC0921o.m31816h0(view2)));
        if (!z) {
            return max;
        }
        return Math.round((max * (Math.abs(abstractC0975i.mo31396d(view2) - abstractC0975i.mo31393g(view)) / (Math.abs(abstractC0921o.m31816h0(view) - abstractC0921o.m31816h0(view2)) + 1))) + (abstractC0975i.mo31387m() - abstractC0975i.mo31393g(view)));
    }

    /* renamed from: c */
    public static int m31367c(RecyclerView.C0938y c0938y, AbstractC0975i abstractC0975i, View view, View view2, RecyclerView.AbstractC0921o abstractC0921o, boolean z) {
        if (abstractC0921o.m31858J() == 0 || c0938y.m31703b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return c0938y.m31703b();
        }
        return (int) (((abstractC0975i.mo31396d(view2) - abstractC0975i.mo31393g(view)) / (Math.abs(abstractC0921o.m31816h0(view) - abstractC0921o.m31816h0(view2)) + 1)) * c0938y.m31703b());
    }
}
