package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeScroll.class */
public class ChangeScroll extends Transition {

    /* renamed from: N */
    private static final String[] f4757N = {"android:changeScroll:x", "android:changeScroll:y"};

    public ChangeScroll() {
    }

    public ChangeScroll(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: m0 */
    private void m31050m0(C1175y c1175y) {
        c1175y.f4995a.put("android:changeScroll:x", Integer.valueOf(c1175y.f4996b.getScrollX()));
        c1175y.f4995a.put("android:changeScroll:y", Integer.valueOf(c1175y.f4996b.getScrollY()));
    }

    @Override // androidx.transition.Transition
    /* renamed from: J */
    public String[] mo30953J() {
        return f4757N;
    }

    @Override // androidx.transition.Transition
    /* renamed from: i */
    public void mo4473i(C1175y c1175y) {
        m31050m0(c1175y);
    }

    @Override // androidx.transition.Transition
    /* renamed from: m */
    public void mo4472m(C1175y c1175y) {
        m31050m0(c1175y);
    }

    @Override // androidx.transition.Transition
    /* renamed from: q */
    public Animator mo4470q(ViewGroup viewGroup, C1175y c1175y, C1175y c1175y2) {
        ObjectAnimator objectAnimator;
        Animator animator = null;
        if (c1175y != null) {
            if (c1175y2 == null) {
                animator = null;
            } else {
                View view = c1175y2.f4996b;
                int intValue = ((Integer) c1175y.f4995a.get("android:changeScroll:x")).intValue();
                int intValue2 = ((Integer) c1175y2.f4995a.get("android:changeScroll:x")).intValue();
                int intValue3 = ((Integer) c1175y.f4995a.get("android:changeScroll:y")).intValue();
                int intValue4 = ((Integer) c1175y2.f4995a.get("android:changeScroll:y")).intValue();
                if (intValue != intValue2) {
                    view.setScrollX(intValue);
                    objectAnimator = ObjectAnimator.ofInt(view, "scrollX", intValue, intValue2);
                } else {
                    objectAnimator = null;
                }
                ObjectAnimator objectAnimator2 = null;
                if (intValue3 != intValue4) {
                    view.setScrollY(intValue3);
                    objectAnimator2 = ObjectAnimator.ofInt(view, "scrollY", intValue3, intValue4);
                }
                animator = C1173x.m30815c(objectAnimator, objectAnimator2);
            }
        }
        return animator;
    }
}
