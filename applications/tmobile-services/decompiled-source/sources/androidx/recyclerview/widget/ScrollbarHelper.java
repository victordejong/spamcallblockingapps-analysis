package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ScrollbarHelper.class */
public class ScrollbarHelper {
    private ScrollbarHelper() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m17257a(RecyclerView.State state, OrientationHelper orientationHelper, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean z) {
        if (layoutManager.m17441K() == 0 || state.m17275b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(layoutManager.m17400i0(view) - layoutManager.m17400i0(view2)) + 1;
        }
        return Math.min(orientationHelper.mo17531n(), orientationHelper.mo17541d(view2) - orientationHelper.mo17538g(view));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m17256b(RecyclerView.State state, OrientationHelper orientationHelper, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean z, boolean z2) {
        if (layoutManager.m17441K() == 0 || state.m17275b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (state.m17275b() - Math.max(layoutManager.m17400i0(view), layoutManager.m17400i0(view2))) - 1) : Math.max(0, Math.min(layoutManager.m17400i0(view), layoutManager.m17400i0(view2)));
        if (!z) {
            return max;
        }
        return Math.round((max * (Math.abs(orientationHelper.mo17541d(view2) - orientationHelper.mo17538g(view)) / (Math.abs(layoutManager.m17400i0(view) - layoutManager.m17400i0(view2)) + 1))) + (orientationHelper.mo17532m() - orientationHelper.mo17538g(view)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m17255c(RecyclerView.State state, OrientationHelper orientationHelper, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean z) {
        if (layoutManager.m17441K() == 0 || state.m17275b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return state.m17275b();
        }
        return (int) (((orientationHelper.mo17541d(view2) - orientationHelper.mo17538g(view)) / (Math.abs(layoutManager.m17400i0(view) - layoutManager.m17400i0(view2)) + 1)) * state.m17275b());
    }
}
