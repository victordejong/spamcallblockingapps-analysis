package com.capricorn;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
/* loaded from: classes-dex2jar.jar:com/capricorn/ArcLayout.class */
public class ArcLayout extends ViewGroup {
    public static final float DEFAULT_FROM_DEGREES = 270.0f;
    public static final float DEFAULT_TO_DEGREES = 360.0f;
    private static int MIN_RADIUS = 100;
    private int mChildPadding;
    private int mChildSize;
    private boolean mExpanded;
    private float mFromDegrees;
    private int mLayoutPadding;
    private int mRadius;
    private float mToDegrees;

    public ArcLayout(Context context) {
        super(context);
        this.mChildPadding = 5;
        this.mLayoutPadding = 10;
        this.mFromDegrees = 270.0f;
        this.mToDegrees = 360.0f;
        this.mExpanded = false;
    }

    public ArcLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mChildPadding = 5;
        this.mLayoutPadding = 10;
        this.mFromDegrees = 270.0f;
        this.mToDegrees = 360.0f;
        this.mExpanded = false;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0796R.styleable.ArcLayout, 0, 0);
            this.mFromDegrees = obtainStyledAttributes.getFloat(C0796R.styleable.ArcLayout_fromDegrees, 270.0f);
            this.mToDegrees = obtainStyledAttributes.getFloat(C0796R.styleable.ArcLayout_toDegrees, 360.0f);
            this.mChildSize = Math.max(obtainStyledAttributes.getDimensionPixelSize(C0796R.styleable.ArcLayout_childSize, 0), 0);
            obtainStyledAttributes.recycle();
        }
        this.mChildPadding = dpToPixel(context, 5.0f);
        this.mLayoutPadding = dpToPixel(context, 10.0f);
        MIN_RADIUS = dpToPixel(context, 72.0f);
    }

    private void bindChildAnimation(View view, int i, long j, final Animation.AnimationListener animationListener) {
        boolean z = this.mExpanded;
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        boolean z2 = false;
        int i2 = z ? 0 : this.mRadius;
        int childCount = getChildCount();
        float f = 0.0f;
        if (childCount > 1) {
            f = (this.mToDegrees - this.mFromDegrees) / (childCount - 1);
        }
        Rect computeChildFrame = computeChildFrame(width, height, i2, this.mFromDegrees + (i * f), this.mChildSize);
        int left = computeChildFrame.left - view.getLeft();
        int top = computeChildFrame.top - view.getTop();
        AccelerateInterpolator accelerateInterpolator = this.mExpanded ? new AccelerateInterpolator() : new OvershootInterpolator(1.5f);
        long computeStartOffset = computeStartOffset(childCount, this.mExpanded, i, 0.1f, j, accelerateInterpolator);
        Animation createShrinkAnimation = this.mExpanded ? createShrinkAnimation(0.0f, left, 0.0f, top, computeStartOffset, j, accelerateInterpolator) : createExpandAnimation(0.0f, left, 0.0f, top, computeStartOffset, j, accelerateInterpolator);
        if (getTransformedIndex(z, childCount, i) == childCount - 1) {
            z2 = true;
        }
        final boolean z3 = z2;
        createShrinkAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.capricorn.ArcLayout.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (z3) {
                    ArcLayout.this.postDelayed(new Runnable() { // from class: com.capricorn.ArcLayout.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ArcLayout.this.onAllAnimationsEnd();
                        }
                    }, 0L);
                    Animation.AnimationListener animationListener2 = animationListener;
                    if (animationListener2 == null) {
                        return;
                    }
                    animationListener2.onAnimationEnd(animation);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                Animation.AnimationListener animationListener2 = animationListener;
                if (animationListener2 != null) {
                    animationListener2.onAnimationStart(animation);
                }
            }
        });
        view.setAnimation(createShrinkAnimation);
    }

    private static Rect computeChildFrame(int i, int i2, int i3, float f, int i4) {
        double d = i3;
        double d2 = f;
        double cos = i + (Math.cos(Math.toRadians(d2)) * d);
        double sin = i2 + (d * Math.sin(Math.toRadians(d2)));
        double d3 = i4 / 2;
        return new Rect((int) (cos - d3), (int) (sin - d3), (int) (cos + d3), (int) (sin + d3));
    }

    private static int computeRadius(float f, int i, int i2, int i3, int i4) {
        if (i < 2) {
            return i4;
        }
        return Math.max((int) (((i2 + i3) / 2) / Math.sin(Math.toRadians((f / (i - 1)) / 2.0f))), i4);
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
        RotateAndTranslateAnimation rotateAndTranslateAnimation = new RotateAndTranslateAnimation(0.0f, f2, 0.0f, f4, 0.0f, 720.0f);
        rotateAndTranslateAnimation.setDuration(j2);
        rotateAndTranslateAnimation.setInterpolator(interpolator);
        rotateAndTranslateAnimation.setFillAfter(true);
        return rotateAndTranslateAnimation;
    }

    public static int dpToPixel(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5d);
    }

    private static int getTransformedIndex(boolean z, int i, int i2) {
        return z ? (i - 1) - i2 : i2;
    }

    public void onAllAnimationsEnd() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).clearAnimation();
        }
        requestLayout();
    }

    public int getChildSize() {
        return this.mChildSize;
    }

    public boolean isExpanded() {
        return this.mExpanded;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        int i5 = this.mExpanded ? this.mRadius : 0;
        int childCount = getChildCount();
        float f = this.mToDegrees;
        float f2 = this.mFromDegrees;
        float f3 = (f - f2) / (childCount - 1);
        for (int i6 = 0; i6 < childCount; i6++) {
            Rect computeChildFrame = computeChildFrame(width, height, i5, f2, this.mChildSize);
            f2 += f3;
            getChildAt(i6).layout(computeChildFrame.left, computeChildFrame.top, computeChildFrame.right, computeChildFrame.bottom);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int computeRadius = computeRadius(Math.abs(this.mToDegrees - this.mFromDegrees), getChildCount(), this.mChildSize, this.mChildPadding, MIN_RADIUS);
        this.mRadius = computeRadius;
        int i3 = (computeRadius * 2) + this.mChildSize + this.mChildPadding + (this.mLayoutPadding * 2);
        setMeasuredDimension(i3, i3);
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            getChildAt(i4).measure(View.MeasureSpec.makeMeasureSpec(this.mChildSize, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(this.mChildSize, BasicMeasure.EXACTLY));
        }
    }

    public void setArc(float f, float f2) {
        if (this.mFromDegrees == f && this.mToDegrees == f2) {
            return;
        }
        this.mFromDegrees = f;
        this.mToDegrees = f2;
        requestLayout();
    }

    public void setChildSize(int i) {
        if (this.mChildSize == i || i < 0) {
            return;
        }
        this.mChildSize = i;
        requestLayout();
    }

    public void switchState(boolean z, Animation.AnimationListener animationListener) {
        if (z) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                bindChildAnimation(getChildAt(i), i, 300L, animationListener);
            }
        } else if (animationListener != null) {
            animationListener.onAnimationEnd(null);
        }
        this.mExpanded = !this.mExpanded;
        if (!z) {
            requestLayout();
        }
        invalidate();
    }
}
