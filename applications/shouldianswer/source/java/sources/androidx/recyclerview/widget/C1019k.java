package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/k.class */
class C1019k {
    /* renamed from: a */
    public static int m4557a(RecyclerView.C0974t c0974t, AbstractC1014i abstractC1014i, View view, View view2, RecyclerView.AbstractC0956i abstractC0956i, boolean z) {
        if (abstractC0956i.getChildCount() == 0 || c0974t.m4843e() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(abstractC0956i.getPosition(view) - abstractC0956i.getPosition(view2)) + 1;
        }
        return Math.min(abstractC1014i.mo4564f(), abstractC1014i.mo4571b(view2) - abstractC1014i.mo4572a(view));
    }

    /* renamed from: a */
    public static int m4556a(RecyclerView.C0974t c0974t, AbstractC1014i abstractC1014i, View view, View view2, RecyclerView.AbstractC0956i abstractC0956i, boolean z, boolean z2) {
        if (abstractC0956i.getChildCount() == 0 || c0974t.m4843e() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (c0974t.m4843e() - Math.max(abstractC0956i.getPosition(view), abstractC0956i.getPosition(view2))) - 1) : Math.max(0, Math.min(abstractC0956i.getPosition(view), abstractC0956i.getPosition(view2)));
        if (!z) {
            return max;
        }
        return Math.round((max * (Math.abs(abstractC1014i.mo4571b(view2) - abstractC1014i.mo4572a(view)) / (Math.abs(abstractC0956i.getPosition(view) - abstractC0956i.getPosition(view2)) + 1))) + (abstractC1014i.mo4570c() - abstractC1014i.mo4572a(view)));
    }

    /* renamed from: b */
    public static int m4555b(RecyclerView.C0974t c0974t, AbstractC1014i abstractC1014i, View view, View view2, RecyclerView.AbstractC0956i abstractC0956i, boolean z) {
        if (abstractC0956i.getChildCount() == 0 || c0974t.m4843e() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return c0974t.m4843e();
        }
        return (int) (((abstractC1014i.mo4571b(view2) - abstractC1014i.mo4572a(view)) / (Math.abs(abstractC0956i.getPosition(view) - abstractC0956i.getPosition(view2)) + 1)) * c0974t.m4843e());
    }
}
