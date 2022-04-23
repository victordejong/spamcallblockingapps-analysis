package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeScroll.class */
public class ChangeScroll extends Transition {

    /* renamed from: O */
    private static final String[] f5107O = {"android:changeScroll:x", "android:changeScroll:y"};

    public ChangeScroll() {
    }

    public ChangeScroll(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: p0 */
    private void m16875p0(TransitionValues transitionValues) {
        transitionValues.f5271a.put("android:changeScroll:x", Integer.valueOf(transitionValues.f5272b.getScrollX()));
        transitionValues.f5271a.put("android:changeScroll:y", Integer.valueOf(transitionValues.f5272b.getScrollY()));
    }

    @Override // androidx.transition.Transition
    @Nullable
    /* renamed from: J */
    public String[] mo8629J() {
        return f5107O;
    }

    @Override // androidx.transition.Transition
    /* renamed from: i */
    public void mo8628i(@NonNull TransitionValues transitionValues) {
        m16875p0(transitionValues);
    }

    @Override // androidx.transition.Transition
    /* renamed from: m */
    public void mo8627m(@NonNull TransitionValues transitionValues) {
        m16875p0(transitionValues);
    }

    @Override // androidx.transition.Transition
    @Nullable
    /* renamed from: q */
    public Animator mo8625q(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2 = null;
        Animator animator = null;
        if (transitionValues != null) {
            if (transitionValues2 == null) {
                animator = null;
            } else {
                View view = transitionValues2.f5272b;
                int intValue = ((Integer) transitionValues.f5271a.get("android:changeScroll:x")).intValue();
                int intValue2 = ((Integer) transitionValues2.f5271a.get("android:changeScroll:x")).intValue();
                int intValue3 = ((Integer) transitionValues.f5271a.get("android:changeScroll:y")).intValue();
                int intValue4 = ((Integer) transitionValues2.f5271a.get("android:changeScroll:y")).intValue();
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
                animator = TransitionUtils.m16714c(objectAnimator, objectAnimator2);
            }
        }
        return animator;
    }
}
