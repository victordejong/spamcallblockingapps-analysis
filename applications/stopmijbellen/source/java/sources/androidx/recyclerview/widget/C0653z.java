package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.z */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/z.class */
public class C0653z {
    /* renamed from: a */
    public static int m7521a(RecyclerView.C0592x c0592x, AbstractC0646t abstractC0646t, View view, View view2, RecyclerView.AbstractC0573m abstractC0573m, boolean z) {
        if (abstractC0573m.m7776x() == 0 || c0592x.m7744b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(abstractC0573m.m7797Q(view) - abstractC0573m.m7797Q(view2)) + 1;
        }
        return Math.min(abstractC0646t.mo7542l(), abstractC0646t.mo7552b(view2) - abstractC0646t.mo7549e(view));
    }

    /* renamed from: b */
    public static int m7520b(RecyclerView.C0592x c0592x, AbstractC0646t abstractC0646t, View view, View view2, RecyclerView.AbstractC0573m abstractC0573m, boolean z, boolean z2) {
        if (abstractC0573m.m7776x() == 0 || c0592x.m7744b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (c0592x.m7744b() - Math.max(abstractC0573m.m7797Q(view), abstractC0573m.m7797Q(view2))) - 1) : Math.max(0, Math.min(abstractC0573m.m7797Q(view), abstractC0573m.m7797Q(view2)));
        if (!z) {
            return max;
        }
        return Math.round((max * (Math.abs(abstractC0646t.mo7552b(view2) - abstractC0646t.mo7549e(view)) / (Math.abs(abstractC0573m.m7797Q(view) - abstractC0573m.m7797Q(view2)) + 1))) + (abstractC0646t.mo7543k() - abstractC0646t.mo7549e(view)));
    }

    /* renamed from: c */
    public static int m7519c(RecyclerView.C0592x c0592x, AbstractC0646t abstractC0646t, View view, View view2, RecyclerView.AbstractC0573m abstractC0573m, boolean z) {
        if (abstractC0573m.m7776x() == 0 || c0592x.m7744b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return c0592x.m7744b();
        }
        return (int) (((abstractC0646t.mo7552b(view2) - abstractC0646t.mo7549e(view)) / (Math.abs(abstractC0573m.m7797Q(view) - abstractC0573m.m7797Q(view2)) + 1)) * c0592x.m7744b());
    }
}
