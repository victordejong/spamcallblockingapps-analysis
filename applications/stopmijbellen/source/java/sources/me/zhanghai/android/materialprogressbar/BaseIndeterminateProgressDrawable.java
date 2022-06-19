package me.zhanghai.android.materialprogressbar;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import me.zhanghai.android.materialprogressbar.internal.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:me/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable.class */
abstract class BaseIndeterminateProgressDrawable extends BaseProgressDrawable implements Animatable {
    public Animator[] mAnimators;

    @SuppressLint({"NewApi"})
    public BaseIndeterminateProgressDrawable(Context context) {
        setTint(ThemeUtils.getColorFromAttrRes(C3681R.attr.colorControlActivated, -16777216, context));
    }

    private boolean isStarted() {
        for (Animator animator : this.mAnimators) {
            if (animator.isStarted()) {
                return true;
            }
        }
        return false;
    }

    @Override // me.zhanghai.android.materialprogressbar.BaseDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        for (Animator animator : this.mAnimators) {
            if (animator.isRunning()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (isStarted()) {
            return;
        }
        for (Animator animator : this.mAnimators) {
            animator.start();
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        for (Animator animator : this.mAnimators) {
            animator.end();
        }
    }
}
