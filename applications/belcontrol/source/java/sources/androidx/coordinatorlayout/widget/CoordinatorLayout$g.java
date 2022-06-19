package androidx.coordinatorlayout.widget;

import android.view.View;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$g.class */
public class CoordinatorLayout$g implements Comparator<View> {
    /* renamed from: a */
    public int compare(View view, View view2) {
        float M = jb.M(view);
        float M2 = jb.M(view2);
        if (M > M2) {
            return -1;
        }
        return M < M2 ? 1 : 0;
    }
}
