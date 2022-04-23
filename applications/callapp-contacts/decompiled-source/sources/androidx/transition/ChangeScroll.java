package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeScroll.class */
public class ChangeScroll extends Transition {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f5705a = {"android:changeScroll:x", "android:changeScroll:y"};

    public ChangeScroll() {
    }

    public ChangeScroll(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private static void d(x xVar) {
        xVar.f5852a.put("android:changeScroll:x", Integer.valueOf(xVar.f5853b.getScrollX()));
        xVar.f5852a.put("android:changeScroll:y", Integer.valueOf(xVar.f5853b.getScrollY()));
    }

    @Override // androidx.transition.Transition
    public final Animator a(ViewGroup viewGroup, x xVar, x xVar2) {
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2 = null;
        Animator animator = null;
        if (xVar != null) {
            if (xVar2 == null) {
                animator = null;
            } else {
                View view = xVar2.f5853b;
                int intValue = ((Integer) xVar.f5852a.get("android:changeScroll:x")).intValue();
                int intValue2 = ((Integer) xVar2.f5852a.get("android:changeScroll:x")).intValue();
                int intValue3 = ((Integer) xVar.f5852a.get("android:changeScroll:y")).intValue();
                int intValue4 = ((Integer) xVar2.f5852a.get("android:changeScroll:y")).intValue();
                if (intValue != intValue2) {
                    view.setScrollX(intValue);
                    objectAnimator = ObjectAnimator.ofInt(view, "scrollX", intValue, intValue2);
                } else {
                    objectAnimator = null;
                }
                if (intValue3 != intValue4) {
                    view.setScrollY(intValue3);
                    objectAnimator2 = ObjectAnimator.ofInt(view, "scrollY", intValue3, intValue4);
                }
                animator = w.a(objectAnimator, objectAnimator2);
            }
        }
        return animator;
    }

    @Override // androidx.transition.Transition
    public final void a(x xVar) {
        d(xVar);
    }

    @Override // androidx.transition.Transition
    public final String[] a() {
        return f5705a;
    }

    @Override // androidx.transition.Transition
    public final void b(x xVar) {
        d(xVar);
    }
}
