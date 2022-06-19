package androidx.coordinatorlayout.widget;

import android.view.View;
import d.h.m.t;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$g.class */
class CoordinatorLayout$g implements Comparator<View> {
    CoordinatorLayout$g() {
    }

    /* renamed from: a */
    public int compare(View view, View view2) {
        float M = t.M(view);
        float M2 = t.M(view2);
        if (M > M2) {
            return -1;
        }
        return M < M2 ? 1 : 0;
    }
}
