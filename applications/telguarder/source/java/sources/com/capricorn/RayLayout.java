package com.capricorn;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.view.animation.RotateAnimation;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
/* loaded from: classes-dex2jar.jar:com/capricorn/RayLayout.class */
public class RayLayout extends ViewGroup {
    private int mChildGap;
    private int mChildSize;
    private boolean mExpanded = false;
    private int mLeftHolderWidth;

    public RayLayout(Context context) {
        super(context);
    }

    public RayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0796R.styleable.ArcLayout, 0, 0);
            this.mChildSize = Math.max(obtainStyledAttributes.getDimensionPixelSize(C0796R.styleable.ArcLayout_childSize, 0), 0);
            obtainStyledAttributes.recycle();
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(attributeSet, C0796R.styleable.RayLayout, 0, 0);
            this.mLeftHolderWidth = Math.max(obtainStyledAttributes2.getDimensionPixelSize(C0796R.styleable.RayLayout_leftHolderWidth, 0), 0);
            obtainStyledAttributes2.recycle();
        }
    }

    private void bindChildAnimation(View view, int i, long j) {
        if (Build.VERSION.SDK_INT >= 22) {
            boolean z = this.mExpanded;
            int childCount = getChildCount();
            Rect computeChildFrame = computeChildFrame(!z, this.mLeftHolderWidth, i, this.mChildGap, this.mChildSize);
            int i2 = computeChildFrame.left;
            int left = view.getLeft();
            int top = computeChildFrame.top - view.getTop();
            AccelerateInterpolator accelerateInterpolator = this.mExpanded ? new AccelerateInterpolator() : new OvershootInterpolator(1.5f);
            long computeStartOffset = computeStartOffset(childCount, this.mExpanded, i, 0.1f, j, accelerateInterpolator);
            float f = i2 - left;
            Animation createShrinkAnimation = this.mExpanded ? createShrinkAnimation(0.0f, f, 0.0f, top, computeStartOffset, j, accelerateInterpolator) : createExpandAnimation(0.0f, f, 0.0f, top, computeStartOffset, j, accelerateInterpolator);
            boolean z2 = true;
            if (getTransformedIndex(z, childCount, i) != childCount - 1) {
                z2 = false;
            }
            final boolean z3 = z2;
            createShrinkAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.capricorn.RayLayout.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    if (z3) {
                        RayLayout.this.postDelayed(new Runnable() { // from class: com.capricorn.RayLayout.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                RayLayout.this.onAllAnimationsEnd();
                            }
                        }, 0L);
                    }
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }
            });
            view.setAnimation(createShrinkAnimation);
        }
    }

    private static Rect computeChildFrame(boolean z, int i, int i2, int i3, int i4) {
        int i5 = z ? i + (i2 * (i3 + i4)) + i3 : (i - i4) / 2;
        return new Rect(i5, 0, i5 + i4, i4);
    }

    private static int computeChildGap(float f, int i, int i2, int i3) {
        return Math.max((int) ((f / i) - i2), i3);
    }

    private static long computeStartOffset(int i, boolean z, int i2, float f, long j, Interpolator interpolator) {
        float f2 = f * ((float) j);
        long transformedIndex = getTransformedIndex(z, i, i2) * f2;
        float f3 = f2 * i;
        return interpolator.getInterpolation(((float) transformedIndex) / f3) * f3;
    }

    private static Animation createExpandAnimation(float f, float f2, float f3, float f4, long j, long j2, Interpolator interpolator) {
        RotateAndTranslateAnimation rotateAndTranslateAnimation = new RotateAndTranslateAnimation(0.0f, f2, 0.0f, f4, 0.0f, 720.0f);
        rotateAndTranslateAnimation.setStartOffset(j);
        rotateAndTranslateAnimation.setDuration(j2);
        rotateAndTranslateAnimation.setInterpolator(interpolator);
        rotateAndTranslateAnimation.setFillAfter(true);
        return rotateAndTranslateAnimation;
    }

    private static Animation createShrinkAnimation(float f, float f2, float f3, float f4, long j, long j2, Interpolator interpolator) {
        AnimationSet animationSet = new AnimationSet(false);
        animationSet.setFillAfter(true);
        long j3 = j2 / 2;
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setStartOffset(j);
        rotateAnimation.setDuration(j3);
        rotateAnimation.setInterpolator(new LinearInterpolator());
        rotateAnimation.setFillAfter(true);
        animationSet.addAnimation(rotateAnimation);
        RotateAndTranslateAnimation rotateAndTranslateAnimation = new RotateAndTranslateAnimation(0.0f, f2, 0.0f, f4, 360.0f, 720.0f);
        rotateAndTranslateAnimation.setStartOffset(j + j3);
        rotateAndTranslateAnimation.setDuration(j2 - j3);
        rotateAndTranslateAnimation.setInterpolator(interpolator);
        rotateAndTranslateAnimation.setFillAfter(true);
        animationSet.addAnimation(rotateAndTranslateAnimation);
        return animationSet;
    }

    private static int getTransformedIndex(boolean z, int i, int i2) {
        return (i - 1) - i2;
    }

    public void onAllAnimationsEnd() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).clearAnimation();
        }
        requestLayout();
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return this.mChildSize;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return this.mLeftHolderWidth + (this.mChildSize * getChildCount());
    }

    public boolean isExpanded() {
        return this.mExpanded;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = this.mLeftHolderWidth;
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            Rect computeChildFrame = computeChildFrame(this.mExpanded, i5, i6, this.mChildGap, this.mChildSize);
            getChildAt(i6).layout(computeChildFrame.left, computeChildFrame.top, computeChildFrame.right, computeChildFrame.bottom);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getSuggestedMinimumHeight(), BasicMeasure.EXACTLY));
        int childCount = getChildCount();
        this.mChildGap = computeChildGap(getMeasuredWidth() - this.mLeftHolderWidth, childCount, this.mChildSize, 0);
        for (int i3 = 0; i3 < childCount; i3++) {
            getChildAt(i3).measure(View.MeasureSpec.makeMeasureSpec(this.mChildSize, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(this.mChildSize, BasicMeasure.EXACTLY));
        }
    }

    public void setChildSize(int i) {
        if (this.mChildSize == i || i < 0) {
            return;
        }
        this.mChildSize = i;
        requestLayout();
    }

    public void switchState(boolean z) {
        if (z) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                bindChildAnimation(getChildAt(i), i, 300L);
            }
        }
        this.mExpanded = !this.mExpanded;
        if (!z) {
            requestLayout();
        }
        invalidate();
    }
}
