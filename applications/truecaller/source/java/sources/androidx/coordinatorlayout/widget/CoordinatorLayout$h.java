package androidx.coordinatorlayout.widget;

import android.view.View;
import java.util.Comparator;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$h.class */
public class CoordinatorLayout$h implements Comparator<View> {
    @Override // java.util.Comparator
    public int compare(View view, View view2) {
        AtomicInteger atomicInteger = C26614s.f74505a;
        float z = view.getZ();
        float z2 = view2.getZ();
        return z > z2 ? -1 : z < z2 ? 1 : 0;
    }
}
