package androidx.coordinatorlayout.widget;

import android.view.View;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.AbstractC26609n;
import p1727n3.p1807k.p1821i.C26568d0;
import p1727n3.p1807k.p1821i.C26614s;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$a.class */
public class CoordinatorLayout$a implements AbstractC26609n {

    /* renamed from: a */
    public final /* synthetic */ CoordinatorLayout f673a;

    public CoordinatorLayout$a(CoordinatorLayout coordinatorLayout) {
        this.f673a = coordinatorLayout;
    }

    @Override // p1727n3.p1807k.p1821i.AbstractC26609n
    /* renamed from: b */
    public C26568d0 mo1532b(View view, C26568d0 c26568d0) {
        CoordinatorLayout coordinatorLayout = this.f673a;
        C26568d0 c26568d02 = c26568d0;
        if (!Objects.equals(coordinatorLayout.o, c26568d0)) {
            coordinatorLayout.o = c26568d0;
            int i = 0;
            boolean z = c26568d0 != null && c26568d0.m1661f() > 0;
            coordinatorLayout.p = z;
            coordinatorLayout.setWillNotDraw(!z && coordinatorLayout.getBackground() == null);
            if (!c26568d0.m1659h()) {
                int childCount = coordinatorLayout.getChildCount();
                while (true) {
                    C26568d0 c26568d03 = c26568d0;
                    c26568d0 = c26568d03;
                    if (i >= childCount) {
                        break;
                    }
                    View childAt = coordinatorLayout.getChildAt(i);
                    AtomicInteger atomicInteger = C26614s.f74505a;
                    c26568d0 = c26568d03;
                    if (childAt.getFitsSystemWindows()) {
                        CoordinatorLayout$c coordinatorLayout$c = ((CoordinatorLayout$f) childAt.getLayoutParams()).f675a;
                        c26568d0 = c26568d03;
                        if (coordinatorLayout$c != null) {
                            C26568d0 m43017e = coordinatorLayout$c.m43017e(c26568d03);
                            c26568d0 = m43017e;
                            if (m43017e.m1659h()) {
                                c26568d0 = m43017e;
                                break;
                            }
                        } else {
                            continue;
                        }
                    }
                    i++;
                }
            }
            coordinatorLayout.requestLayout();
            c26568d02 = c26568d0;
        }
        return c26568d02;
    }
}
