package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.n */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/n.class */
public class C0997n {
    /* renamed from: a */
    public static int m18432a(RecyclerView.C0945u c0945u, AbstractC0990k abstractC0990k, View view, View view2, RecyclerView.AbstractC0925i abstractC0925i, boolean z) {
        int i;
        if (abstractC0925i.m18910y() == 0 || c0945u.m18818e() == 0 || view == null || view2 == null) {
            i = 0;
        } else if (!z) {
            i = Math.abs(abstractC0925i.m18943d(view) - abstractC0925i.m18943d(view2)) + 1;
        } else {
            i = Math.min(abstractC0990k.mo18454f(), abstractC0990k.mo18461b(view2) - abstractC0990k.mo18462a(view));
        }
        return i;
    }

    /* renamed from: a */
    public static int m18431a(RecyclerView.C0945u c0945u, AbstractC0990k abstractC0990k, View view, View view2, RecyclerView.AbstractC0925i abstractC0925i, boolean z, boolean z2) {
        int i = 0;
        if (abstractC0925i.m18910y() != 0) {
            i = 0;
            if (c0945u.m18818e() != 0) {
                i = 0;
                if (view != null) {
                    if (view2 == null) {
                        i = 0;
                    } else {
                        int max = z2 ? Math.max(0, (c0945u.m18818e() - Math.max(abstractC0925i.m18943d(view), abstractC0925i.m18943d(view2))) - 1) : Math.max(0, Math.min(abstractC0925i.m18943d(view), abstractC0925i.m18943d(view2)));
                        i = max;
                        if (z) {
                            i = Math.round((max * (Math.abs(abstractC0990k.mo18461b(view2) - abstractC0990k.mo18462a(view)) / (Math.abs(abstractC0925i.m18943d(view) - abstractC0925i.m18943d(view2)) + 1))) + (abstractC0990k.mo18460c() - abstractC0990k.mo18462a(view)));
                        }
                    }
                }
            }
        }
        return i;
    }

    /* renamed from: b */
    public static int m18430b(RecyclerView.C0945u c0945u, AbstractC0990k abstractC0990k, View view, View view2, RecyclerView.AbstractC0925i abstractC0925i, boolean z) {
        int i;
        if (abstractC0925i.m18910y() == 0 || c0945u.m18818e() == 0 || view == null || view2 == null) {
            i = 0;
        } else if (!z) {
            i = c0945u.m18818e();
        } else {
            i = (int) (((abstractC0990k.mo18461b(view2) - abstractC0990k.mo18462a(view)) / (Math.abs(abstractC0925i.m18943d(view) - abstractC0925i.m18943d(view2)) + 1)) * c0945u.m18818e());
        }
        return i;
    }
}
