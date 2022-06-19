package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeScroll.class */
public class ChangeScroll extends Transition {

    /* renamed from: a */
    private static final String[] f10695a = {"android:changeScroll:x", "android:changeScroll:y"};

    public ChangeScroll() {
    }

    public ChangeScroll(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: d */
    private static void m39834d(C2914x c2914x) {
        c2914x.f10933a.put("android:changeScroll:x", Integer.valueOf(c2914x.f10934b.getScrollX()));
        c2914x.f10933a.put("android:changeScroll:y", Integer.valueOf(c2914x.f10934b.getScrollY()));
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final Animator mo10514a(ViewGroup viewGroup, C2914x c2914x, C2914x c2914x2) {
        ObjectAnimator objectAnimator;
        Animator animator = null;
        if (c2914x != null) {
            if (c2914x2 == null) {
                animator = null;
            } else {
                View view = c2914x2.f10934b;
                int intValue = ((Integer) c2914x.f10933a.get("android:changeScroll:x")).intValue();
                int intValue2 = ((Integer) c2914x2.f10933a.get("android:changeScroll:x")).intValue();
                int intValue3 = ((Integer) c2914x.f10933a.get("android:changeScroll:y")).intValue();
                int intValue4 = ((Integer) c2914x2.f10933a.get("android:changeScroll:y")).intValue();
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
                animator = C2912w.m39675a(objectAnimator, objectAnimator2);
            }
        }
        return animator;
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo10513a(C2914x c2914x) {
        m39834d(c2914x);
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final String[] mo39768a() {
        return f10695a;
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public final void mo10512b(C2914x c2914x) {
        m39834d(c2914x);
    }
}
