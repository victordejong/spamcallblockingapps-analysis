package com.privacystar.core.p011ui.util;

import android.support.p001v4.view.animation.FastOutSlowInInterpolator;
import android.support.transition.ChangeBounds;
import android.support.transition.Transition;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import com.privacystar.core.util.MathUtil;
/* renamed from: com.privacystar.core.ui.util.AnimationUtil */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/AnimationUtil.class */
public class AnimationUtil {
    private static final long detailsExpansionDuration = 325;
    private static Transition detailsExpansion = new ChangeBounds().setDuration(detailsExpansionDuration).setInterpolator(new FastOutSlowInInterpolator());

    public static void collapse(View view) {
        collapse(view, -1);
    }

    public static void collapse(final View view, int i) {
        final int measuredHeight = view.getMeasuredHeight();
        Animation animation = new Animation() { // from class: com.privacystar.core.ui.util.AnimationUtil.2
            @Override // android.view.animation.Animation
            protected void applyTransformation(float f, Transformation transformation) {
                if (MathUtil.almostEqual(f, 1.0f)) {
                    view.setVisibility(8);
                    return;
                }
                view.getLayoutParams().height = measuredHeight - ((int) (measuredHeight * f));
                view.requestLayout();
            }

            @Override // android.view.animation.Animation
            public boolean willChangeBounds() {
                return true;
            }
        };
        if (i == -1) {
            animation.setDuration((int) (measuredHeight / view.getContext().getResources().getDisplayMetrics().density));
        } else {
            animation.setDuration(i);
        }
        view.startAnimation(animation);
    }

    public static void expand(View view) {
        expand(view, -1);
    }

    public static void expand(final View view, int i) {
        view.measure(-1, -2);
        final int measuredHeight = view.getMeasuredHeight();
        view.getLayoutParams().height = 1;
        view.setVisibility(0);
        Animation animation = new Animation() { // from class: com.privacystar.core.ui.util.AnimationUtil.1
            @Override // android.view.animation.Animation
            protected void applyTransformation(float f, Transformation transformation) {
                view.getLayoutParams().height = MathUtil.almostEqual(f, 1.0f) ? -2 : (int) (measuredHeight * f);
                view.requestLayout();
            }

            @Override // android.view.animation.Animation
            public boolean willChangeBounds() {
                return true;
            }
        };
        if (i == -1) {
            animation.setDuration((int) (measuredHeight / view.getContext().getResources().getDisplayMetrics().density));
        } else {
            animation.setDuration(i);
        }
        view.startAnimation(animation);
    }

    public static Transition getDetailsExpansionTransition() {
        return detailsExpansion;
    }
}
