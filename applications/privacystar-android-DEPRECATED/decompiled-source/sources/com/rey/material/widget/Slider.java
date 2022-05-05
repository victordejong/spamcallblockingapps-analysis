package com.rey.material.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.p001v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.rey.material.C1686R;
import com.rey.material.app.ThemeManager;
import com.rey.material.drawable.RippleDrawable;
import com.rey.material.util.ColorUtil;
import com.rey.material.util.ThemeUtil;
import com.rey.material.util.TypefaceUtil;
import com.rey.material.util.ViewUtil;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Slider.class */
public class Slider extends View implements ThemeManager.OnThemeChangedListener {
    private int mBaselineOffset;
    private RectF mDrawRect;
    private Interpolator mInterpolator;
    private boolean mIsDragging;
    private Path mLeftTrackPath;
    private Path mMarkPath;
    private PointF mMemoPoint;
    private int mMemoValue;
    private OnPositionChangeListener mOnPositionChangeListener;
    private Paint mPaint;
    private int mPrimaryColor;
    private Path mRightTrackPath;
    private RippleManager mRippleManager;
    private int mSecondaryColor;
    protected int mStyleId;
    private RectF mTempRect;
    private int mTextHeight;
    private float mThumbCurrentRadius;
    private float mThumbFillPercent;
    private ThumbMoveAnimator mThumbMoveAnimator;
    private ThumbRadiusAnimator mThumbRadiusAnimator;
    private ThumbStrokeAnimator mThumbStrokeAnimator;
    private int mTouchSlop;
    private ValueDescriptionProvider mValueDescriptionProvider;
    private String mValueText;
    protected int mCurrentStyle = Integer.MIN_VALUE;
    private int mMinValue = 0;
    private int mMaxValue = 100;
    private int mStepValue = 1;
    private boolean mDiscreteMode = false;
    private int mTrackSize = -1;
    private Paint.Cap mTrackCap = Paint.Cap.BUTT;
    private int mThumbBorderSize = -1;
    private int mThumbRadius = -1;
    private int mThumbFocusRadius = -1;
    private int mThumbTouchRadius = -1;
    private float mThumbPosition = -1.0f;
    private Typeface mTypeface = Typeface.DEFAULT;
    private int mTextSize = -1;
    private int mTextColor = -1;
    private int mGravity = 17;
    private int mTravelAnimationDuration = -1;
    private int mTransformAnimationDuration = -1;
    private boolean mAlwaysFillThumb = false;
    private boolean mIsRtl = false;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Slider$OnPositionChangeListener.class */
    public interface OnPositionChangeListener {
        void onPositionChanged(Slider slider, boolean z, float f, float f2, int i, int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Slider$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.rey.material.widget.Slider.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        float position;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.position = parcel.readFloat();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "Slider.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " pos=" + this.position + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.position);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Slider$ThumbMoveAnimator.class */
    public class ThumbMoveAnimator implements Runnable {
        int mDuration;
        float mFillPercent;
        float mPosition;
        boolean mRunning = false;
        float mStartFillPercent;
        float mStartPosition;
        float mStartRadius;
        long mStartTime;

        ThumbMoveAnimator() {
        }

        public float getPosition() {
            return this.mPosition;
        }

        public boolean isRunning() {
            return this.mRunning;
        }

        public void resetAnimation() {
            this.mStartTime = SystemClock.uptimeMillis();
            this.mStartPosition = Slider.this.mThumbPosition;
            this.mStartFillPercent = Slider.this.mThumbFillPercent;
            this.mStartRadius = Slider.this.mThumbCurrentRadius;
            float f = 0.0f;
            if (this.mPosition != 0.0f) {
                f = 1.0f;
            }
            this.mFillPercent = f;
            this.mDuration = (!Slider.this.mDiscreteMode || Slider.this.mIsDragging) ? Slider.this.mTravelAnimationDuration : (Slider.this.mTransformAnimationDuration * 2) + Slider.this.mTravelAnimationDuration;
        }

        @Override // java.lang.Runnable
        public void run() {
            float f;
            float f2;
            float f3;
            float min = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.mStartTime)) / this.mDuration);
            float interpolation = Slider.this.mInterpolator.getInterpolation(min);
            if (!Slider.this.mDiscreteMode) {
                Slider.this.mThumbPosition = ((this.mPosition - this.mStartPosition) * interpolation) + this.mStartPosition;
                Slider slider = Slider.this;
                if (Slider.this.mAlwaysFillThumb) {
                    f = 1.0f;
                } else {
                    f = this.mStartFillPercent + ((this.mFillPercent - this.mStartFillPercent) * interpolation);
                }
                slider.mThumbFillPercent = f;
                double d = min;
                if (d < 0.2d) {
                    Slider.this.mThumbCurrentRadius = Math.max(Slider.this.mThumbRadius + (Slider.this.mThumbBorderSize * min * 5.0f), Slider.this.mThumbCurrentRadius);
                } else if (d >= 0.8d) {
                    Slider.this.mThumbCurrentRadius = Slider.this.mThumbRadius + (Slider.this.mThumbBorderSize * (5.0f - (min * 5.0f)));
                }
            } else if (Slider.this.mIsDragging) {
                Slider.this.mThumbPosition = ((this.mPosition - this.mStartPosition) * interpolation) + this.mStartPosition;
                Slider slider2 = Slider.this;
                if (Slider.this.mAlwaysFillThumb) {
                    f3 = 1.0f;
                } else {
                    f3 = this.mStartFillPercent + ((this.mFillPercent - this.mStartFillPercent) * interpolation);
                }
                slider2.mThumbFillPercent = f3;
            } else {
                float f4 = Slider.this.mTravelAnimationDuration / this.mDuration;
                float f5 = (Slider.this.mTravelAnimationDuration + Slider.this.mTransformAnimationDuration) / this.mDuration;
                if (min < f4) {
                    float interpolation2 = Slider.this.mInterpolator.getInterpolation(min / f4);
                    Slider.this.mThumbCurrentRadius = this.mStartRadius * (1.0f - interpolation2);
                    Slider.this.mThumbPosition = ((this.mPosition - this.mStartPosition) * interpolation2) + this.mStartPosition;
                    Slider slider3 = Slider.this;
                    if (Slider.this.mAlwaysFillThumb) {
                        f2 = 1.0f;
                    } else {
                        f2 = this.mStartFillPercent + ((this.mFillPercent - this.mStartFillPercent) * interpolation2);
                    }
                    slider3.mThumbFillPercent = f2;
                } else if (min > f5) {
                    Slider.this.mThumbCurrentRadius = (Slider.this.mThumbRadius * (min - f5)) / (1.0f - f5);
                }
            }
            if (min == 1.0f) {
                stopAnimation();
            }
            if (this.mRunning) {
                if (Slider.this.getHandler() != null) {
                    Slider.this.getHandler().postAtTime(this, SystemClock.uptimeMillis() + 16);
                } else {
                    stopAnimation();
                }
            }
            Slider.this.invalidate();
        }

        public boolean startAnimation(float f) {
            if (Slider.this.mThumbPosition == f) {
                return false;
            }
            this.mPosition = f;
            if (Slider.this.getHandler() != null) {
                resetAnimation();
                this.mRunning = true;
                Slider.this.getHandler().postAtTime(this, SystemClock.uptimeMillis() + 16);
                Slider.this.invalidate();
                return true;
            }
            Slider.this.mThumbPosition = f;
            Slider.this.invalidate();
            return false;
        }

        public void stopAnimation() {
            this.mRunning = false;
            Slider.this.mThumbCurrentRadius = (!Slider.this.mDiscreteMode || !Slider.this.mIsDragging) ? Slider.this.mThumbRadius : 0.0f;
            Slider.this.mThumbFillPercent = Slider.this.mAlwaysFillThumb ? 1.0f : this.mFillPercent;
            Slider.this.mThumbPosition = this.mPosition;
            if (Slider.this.getHandler() != null) {
                Slider.this.getHandler().removeCallbacks(this);
            }
            Slider.this.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Slider$ThumbRadiusAnimator.class */
    public class ThumbRadiusAnimator implements Runnable {
        int mRadius;
        boolean mRunning = false;
        float mStartRadius;
        long mStartTime;

        ThumbRadiusAnimator() {
        }

        public void resetAnimation() {
            this.mStartTime = SystemClock.uptimeMillis();
            this.mStartRadius = Slider.this.mThumbCurrentRadius;
        }

        @Override // java.lang.Runnable
        public void run() {
            float min = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.mStartTime)) / Slider.this.mTransformAnimationDuration);
            float interpolation = Slider.this.mInterpolator.getInterpolation(min);
            Slider.this.mThumbCurrentRadius = ((this.mRadius - this.mStartRadius) * interpolation) + this.mStartRadius;
            if (min == 1.0f) {
                stopAnimation();
            }
            if (this.mRunning) {
                if (Slider.this.getHandler() != null) {
                    Slider.this.getHandler().postAtTime(this, SystemClock.uptimeMillis() + 16);
                } else {
                    stopAnimation();
                }
            }
            Slider.this.invalidate();
        }

        public boolean startAnimation(int i) {
            if (Slider.this.mThumbCurrentRadius == i) {
                return false;
            }
            this.mRadius = i;
            if (Slider.this.getHandler() != null) {
                resetAnimation();
                this.mRunning = true;
                Slider.this.getHandler().postAtTime(this, SystemClock.uptimeMillis() + 16);
                Slider.this.invalidate();
                return true;
            }
            Slider.this.mThumbCurrentRadius = this.mRadius;
            Slider.this.invalidate();
            return false;
        }

        public void stopAnimation() {
            this.mRunning = false;
            Slider.this.mThumbCurrentRadius = this.mRadius;
            if (Slider.this.getHandler() != null) {
                Slider.this.getHandler().removeCallbacks(this);
            }
            Slider.this.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Slider$ThumbStrokeAnimator.class */
    public class ThumbStrokeAnimator implements Runnable {
        int mFillPercent;
        boolean mRunning = false;
        float mStartFillPercent;
        long mStartTime;

        ThumbStrokeAnimator() {
        }

        public void resetAnimation() {
            this.mStartTime = SystemClock.uptimeMillis();
            this.mStartFillPercent = Slider.this.mThumbFillPercent;
        }

        @Override // java.lang.Runnable
        public void run() {
            float f;
            float min = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.mStartTime)) / Slider.this.mTransformAnimationDuration);
            float interpolation = Slider.this.mInterpolator.getInterpolation(min);
            Slider slider = Slider.this;
            if (Slider.this.mAlwaysFillThumb) {
                f = 1.0f;
            } else {
                f = this.mStartFillPercent + ((this.mFillPercent - this.mStartFillPercent) * interpolation);
            }
            slider.mThumbFillPercent = f;
            if (min == 1.0f) {
                stopAnimation();
            }
            if (this.mRunning) {
                if (Slider.this.getHandler() != null) {
                    Slider.this.getHandler().postAtTime(this, SystemClock.uptimeMillis() + 16);
                } else {
                    stopAnimation();
                }
            }
            Slider.this.invalidate();
        }

        public boolean startAnimation(int i) {
            if (Slider.this.mThumbFillPercent == i) {
                return false;
            }
            this.mFillPercent = i;
            if (Slider.this.getHandler() != null) {
                resetAnimation();
                this.mRunning = true;
                Slider.this.getHandler().postAtTime(this, SystemClock.uptimeMillis() + 16);
                Slider.this.invalidate();
                return true;
            }
            Slider.this.mThumbFillPercent = Slider.this.mAlwaysFillThumb ? 1.0f : this.mFillPercent;
            Slider.this.invalidate();
            return false;
        }

        public void stopAnimation() {
            this.mRunning = false;
            Slider.this.mThumbFillPercent = Slider.this.mAlwaysFillThumb ? 1.0f : this.mFillPercent;
            if (Slider.this.getHandler() != null) {
                Slider.this.getHandler().removeCallbacks(this);
            }
            Slider.this.invalidate();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Slider$ValueDescriptionProvider.class */
    public interface ValueDescriptionProvider {
        String getDescription(int i);
    }

    public Slider(Context context) {
        super(context);
        init(context, null, 0, 0);
    }

    public Slider(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet, 0, 0);
    }

    public Slider(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet, i, 0);
    }

    private float correctPosition(float f) {
        if (!this.mDiscreteMode) {
            return f;
        }
        int i = this.mMaxValue - this.mMinValue;
        float f2 = i;
        int round = Math.round(f * f2);
        int i2 = round / this.mStepValue;
        int i3 = this.mStepValue * i2;
        int min = Math.min(i, (i2 + 1) * this.mStepValue);
        return round - i3 < min - round ? i3 / f2 : min / f2;
    }

    private double distance(float f, float f2, float f3, float f4) {
        return Math.sqrt(Math.pow(f - f3, 2.0d) + Math.pow(f2 - f4, 2.0d));
    }

    private Path getMarkPath(Path path, float f, float f2, float f3, float f4) {
        if (path == null) {
            path = new Path();
        } else {
            path.reset();
        }
        float f5 = f - f3;
        float f6 = f + f3;
        float f7 = f2 + f3;
        float f8 = f2 - (f3 * f4);
        float atan2 = (float) ((Math.atan2(f2 - f8, f6 - f) * 180.0d) / 3.141592653589793d);
        float distance = (float) distance(f, f8, f5, f2);
        this.mTempRect.set(f - distance, f8 - distance, f + distance, f8 + distance);
        path.moveTo(f5, f2);
        path.arcTo(this.mTempRect, 180.0f - atan2, (atan2 * 2.0f) + 180.0f);
        if (f4 > 0.9f) {
            path.lineTo(f, f7);
        } else {
            float f9 = (f6 + f) / 2.0f;
            float f10 = (f2 + f7) / 2.0f;
            double distance2 = distance(f6, f2, f9, f10) / Math.tan(((1.0f - f4) * 3.141592653589793d) / 4.0d);
            float cos = (float) (f9 - (Math.cos(0.7853981633974483d) * distance2));
            float sin = (float) (f10 - (Math.sin(0.7853981633974483d) * distance2));
            double d = f2 - sin;
            float atan22 = (float) ((Math.atan2(d, f6 - cos) * 180.0d) / 3.141592653589793d);
            double d2 = f7 - sin;
            float atan23 = (float) ((Math.atan2(d2, f - cos) * 180.0d) / 3.141592653589793d);
            float distance3 = (float) distance(cos, sin, f6, f2);
            float f11 = sin - distance3;
            float f12 = sin + distance3;
            this.mTempRect.set(cos - distance3, f11, cos + distance3, f12);
            path.arcTo(this.mTempRect, atan22, atan23 - atan22);
            float f13 = (2.0f * f) - cos;
            float atan24 = (float) ((Math.atan2(d2, f - f13) * 180.0d) / 3.141592653589793d);
            float atan25 = (float) ((Math.atan2(d, f5 - f13) * 180.0d) / 3.141592653589793d);
            this.mTempRect.set(f13 - distance3, f11, f13 + distance3, f12);
            path.arcTo(this.mTempRect, 0.7853982f + atan24, atan25 - atan24);
        }
        path.close();
        return path;
    }

    private void getTrackPath(float f, float f2, float f3) {
        float f4;
        float f5 = this.mTrackSize / 2.0f;
        this.mLeftTrackPath.reset();
        this.mRightTrackPath.reset();
        if (f3 - 1.0f < f5) {
            if (this.mTrackCap != Paint.Cap.ROUND) {
                if (f > this.mDrawRect.left) {
                    float f6 = f2 - f5;
                    this.mLeftTrackPath.moveTo(this.mDrawRect.left, f6);
                    this.mLeftTrackPath.lineTo(f, f6);
                    float f7 = f2 + f5;
                    this.mLeftTrackPath.lineTo(f, f7);
                    this.mLeftTrackPath.lineTo(this.mDrawRect.left, f7);
                    this.mLeftTrackPath.close();
                }
                if (f < this.mDrawRect.right) {
                    float f8 = f2 + f5;
                    this.mRightTrackPath.moveTo(this.mDrawRect.right, f8);
                    this.mRightTrackPath.lineTo(f, f8);
                    float f9 = f2 - f5;
                    this.mRightTrackPath.lineTo(f, f9);
                    this.mRightTrackPath.lineTo(this.mDrawRect.right, f9);
                    this.mRightTrackPath.close();
                    return;
                }
                return;
            }
            if (f > this.mDrawRect.left) {
                float f10 = f2 - f5;
                float f11 = f2 + f5;
                this.mTempRect.set(this.mDrawRect.left, f10, this.mDrawRect.left + this.mTrackSize, f11);
                this.mLeftTrackPath.arcTo(this.mTempRect, 90.0f, 180.0f);
                this.mLeftTrackPath.lineTo(f, f10);
                this.mLeftTrackPath.lineTo(f, f11);
                this.mLeftTrackPath.close();
            }
            if (f < this.mDrawRect.right) {
                float f12 = f2 - f5;
                float f13 = f2 + f5;
                this.mTempRect.set(this.mDrawRect.right - this.mTrackSize, f12, this.mDrawRect.right, f13);
                this.mRightTrackPath.arcTo(this.mTempRect, 270.0f, 180.0f);
                this.mRightTrackPath.lineTo(f, f13);
                this.mRightTrackPath.lineTo(f, f12);
                this.mRightTrackPath.close();
            }
        } else if (this.mTrackCap != Paint.Cap.ROUND) {
            float f14 = f - f3;
            float f15 = f + f3;
            this.mTempRect.set(f14 + 1.0f, (f2 - f3) + 1.0f, f15 - 1.0f, (f2 + f3) - 1.0f);
            float asin = (float) ((Math.asin(f5 / f4) / 3.141592653589793d) * 180.0d);
            if (f14 > this.mDrawRect.left) {
                this.mLeftTrackPath.moveTo(this.mDrawRect.left, f2 - f5);
                this.mLeftTrackPath.arcTo(this.mTempRect, asin + 180.0f, (-asin) * 2.0f);
                this.mLeftTrackPath.lineTo(this.mDrawRect.left, f2 + f5);
                this.mLeftTrackPath.close();
            }
            if (f15 < this.mDrawRect.right) {
                this.mRightTrackPath.moveTo(this.mDrawRect.right, f2 - f5);
                this.mRightTrackPath.arcTo(this.mTempRect, -asin, asin * 2.0f);
                this.mRightTrackPath.lineTo(this.mDrawRect.right, f2 + f5);
                this.mRightTrackPath.close();
            }
        } else {
            float asin2 = (float) ((Math.asin(f5 / f4) / 3.141592653589793d) * 180.0d);
            float f16 = f - f3;
            if (f16 > this.mDrawRect.left) {
                float acos = (float) ((Math.acos(Math.max(0.0f, (((this.mDrawRect.left + f5) - f) + f3) / f5)) / 3.141592653589793d) * 180.0d);
                this.mTempRect.set(this.mDrawRect.left, f2 - f5, this.mDrawRect.left + this.mTrackSize, f2 + f5);
                this.mLeftTrackPath.arcTo(this.mTempRect, 180.0f - acos, acos * 2.0f);
                this.mTempRect.set(f16 + 1.0f, (f2 - f3) + 1.0f, (f + f3) - 1.0f, (f2 + f3) - 1.0f);
                this.mLeftTrackPath.arcTo(this.mTempRect, 180.0f + asin2, (-asin2) * 2.0f);
                this.mLeftTrackPath.close();
            }
            float f17 = f + f3;
            if (f17 < this.mDrawRect.right) {
                float acos2 = (float) Math.acos(Math.max(0.0f, ((f17 - this.mDrawRect.right) + f5) / f5));
                Path path = this.mRightTrackPath;
                double d = this.mDrawRect.right - f5;
                double d2 = acos2;
                double cos = Math.cos(d2);
                double d3 = f5;
                path.moveTo((float) (d + (cos * d3)), (float) (f2 + (Math.sin(d2) * d3)));
                float f18 = (float) ((d2 / 3.141592653589793d) * 180.0d);
                this.mTempRect.set(this.mDrawRect.right - this.mTrackSize, f2 - f5, this.mDrawRect.right, f5 + f2);
                this.mRightTrackPath.arcTo(this.mTempRect, f18, (-f18) * 2.0f);
                this.mTempRect.set(f16 + 1.0f, (f2 - f3) + 1.0f, f17 - 1.0f, (f2 + f3) - 1.0f);
                this.mRightTrackPath.arcTo(this.mTempRect, -asin2, asin2 * 2.0f);
                this.mRightTrackPath.close();
            }
        }
    }

    private String getValueText() {
        int value = getValue();
        if (this.mValueText == null || this.mMemoValue != value) {
            this.mMemoValue = value;
            this.mValueText = this.mValueDescriptionProvider == null ? String.valueOf(this.mMemoValue) : this.mValueDescriptionProvider.getDescription(this.mMemoValue);
            measureText();
        }
        return this.mValueText;
    }

    private boolean isThumbHit(float f, float f2, float f3) {
        float width = (this.mDrawRect.width() * this.mThumbPosition) + this.mDrawRect.left;
        float centerY = this.mDrawRect.centerY();
        return f >= width - f3 && f <= width + f3 && f2 >= centerY - f3 && f2 < centerY + f3;
    }

    private void measureText() {
        if (this.mValueText != null) {
            Rect rect = new Rect();
            this.mPaint.setTextSize(this.mTextSize);
            float measureText = this.mPaint.measureText(this.mValueText);
            float sqrt = (float) (((this.mThumbRadius * Math.sqrt(2.0d)) * 2.0d) - ThemeUtil.dpToPx(getContext(), 8));
            if (measureText > sqrt) {
                this.mPaint.setTextSize((this.mTextSize * sqrt) / measureText);
            }
            this.mPaint.getTextBounds(this.mValueText, 0, this.mValueText.length(), rect);
            this.mTextHeight = rect.height();
        }
    }

    private void setPosition(float f, boolean z, boolean z2, boolean z3) {
        int i = 0;
        boolean z4 = getPosition() != f;
        int value = getValue();
        float position = getPosition();
        if (!z || !this.mThumbMoveAnimator.startAnimation(f)) {
            this.mThumbPosition = f;
            float f2 = 0.0f;
            if (z2) {
                if (!this.mIsDragging) {
                    this.mThumbRadiusAnimator.startAnimation(this.mThumbRadius);
                }
                ThumbStrokeAnimator thumbStrokeAnimator = this.mThumbStrokeAnimator;
                if (f != 0.0f) {
                    i = 1;
                }
                thumbStrokeAnimator.startAnimation(i);
            } else {
                this.mThumbCurrentRadius = this.mThumbRadius;
                if (this.mAlwaysFillThumb || this.mThumbPosition != 0.0f) {
                    f2 = 1.0f;
                }
                this.mThumbFillPercent = f2;
                invalidate();
            }
        }
        int value2 = getValue();
        float position2 = getPosition();
        if (z4 && this.mOnPositionChangeListener != null) {
            this.mOnPositionChangeListener.onPositionChanged(this, z3, position, position2, value, value2);
        }
    }

    public void applyStyle(int i) {
        ViewUtil.applyStyle(this, i);
        applyStyle(getContext(), null, 0, i);
    }

    protected void applyStyle(Context context, AttributeSet attributeSet, int i, int i2) {
        getRippleManager().onCreate(this, context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.Slider, i, i2);
        int minValue = getMinValue();
        int maxValue = getMaxValue();
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str = null;
        boolean z = false;
        int i3 = -1;
        boolean z2 = false;
        int i4 = 0;
        boolean z3 = false;
        for (int i5 = 0; i5 < indexCount; i5++) {
            int index = obtainStyledAttributes.getIndex(i5);
            if (index == C1686R.styleable.Slider_sl_discreteMode) {
                this.mDiscreteMode = obtainStyledAttributes.getBoolean(index, false);
                z3 = z3;
                minValue = minValue;
                maxValue = maxValue;
                z = z;
                i3 = i3;
                z2 = z2;
                str = str;
                i4 = i4;
            } else if (index == C1686R.styleable.Slider_sl_primaryColor) {
                this.mPrimaryColor = obtainStyledAttributes.getColor(index, 0);
                z3 = z3;
                minValue = minValue;
                maxValue = maxValue;
                z = z;
                i3 = i3;
                z2 = z2;
                str = str;
                i4 = i4;
            } else if (index == C1686R.styleable.Slider_sl_secondaryColor) {
                this.mSecondaryColor = obtainStyledAttributes.getColor(index, 0);
                z3 = z3;
                minValue = minValue;
                maxValue = maxValue;
                z = z;
                i3 = i3;
                z2 = z2;
                str = str;
                i4 = i4;
            } else if (index == C1686R.styleable.Slider_sl_trackSize) {
                this.mTrackSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                z3 = z3;
                minValue = minValue;
                maxValue = maxValue;
                z = z;
                i3 = i3;
                z2 = z2;
                str = str;
                i4 = i4;
            } else if (index == C1686R.styleable.Slider_sl_trackCap) {
                int integer = obtainStyledAttributes.getInteger(index, 0);
                if (integer == 0) {
                    this.mTrackCap = Paint.Cap.BUTT;
                    z3 = z3;
                    minValue = minValue;
                    maxValue = maxValue;
                    z = z;
                    i3 = i3;
                    z2 = z2;
                    str = str;
                    i4 = i4;
                } else if (integer == 1) {
                    this.mTrackCap = Paint.Cap.ROUND;
                    z3 = z3;
                    minValue = minValue;
                    maxValue = maxValue;
                    z = z;
                    i3 = i3;
                    z2 = z2;
                    str = str;
                    i4 = i4;
                } else {
                    this.mTrackCap = Paint.Cap.SQUARE;
                    z3 = z3;
                    minValue = minValue;
                    maxValue = maxValue;
                    z = z;
                    i3 = i3;
                    z2 = z2;
                    str = str;
                    i4 = i4;
                }
            } else if (index == C1686R.styleable.Slider_sl_thumbBorderSize) {
                this.mThumbBorderSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                z3 = z3;
                minValue = minValue;
                maxValue = maxValue;
                z = z;
                i3 = i3;
                z2 = z2;
                str = str;
                i4 = i4;
            } else if (index == C1686R.styleable.Slider_sl_thumbRadius) {
                this.mThumbRadius = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                z3 = z3;
                minValue = minValue;
                maxValue = maxValue;
                z = z;
                i3 = i3;
                z2 = z2;
                str = str;
                i4 = i4;
            } else if (index == C1686R.styleable.Slider_sl_thumbFocusRadius) {
                this.mThumbFocusRadius = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                z3 = z3;
                minValue = minValue;
                maxValue = maxValue;
                z = z;
                i3 = i3;
                z2 = z2;
                str = str;
                i4 = i4;
            } else if (index == C1686R.styleable.Slider_sl_thumbTouchRadius) {
                this.mThumbTouchRadius = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                z3 = z3;
                minValue = minValue;
                maxValue = maxValue;
                z = z;
                i3 = i3;
                z2 = z2;
                str = str;
                i4 = i4;
            } else if (index == C1686R.styleable.Slider_sl_travelAnimDuration) {
                this.mTravelAnimationDuration = obtainStyledAttributes.getInteger(index, 0);
                this.mTransformAnimationDuration = this.mTravelAnimationDuration;
                z3 = z3;
                minValue = minValue;
                maxValue = maxValue;
                z = z;
                i3 = i3;
                z2 = z2;
                str = str;
                i4 = i4;
            } else if (index == C1686R.styleable.Slider_sl_alwaysFillThumb) {
                this.mAlwaysFillThumb = obtainStyledAttributes.getBoolean(C1686R.styleable.Slider_sl_alwaysFillThumb, false);
                z3 = z3;
                minValue = minValue;
                maxValue = maxValue;
                z = z;
                i3 = i3;
                z2 = z2;
                str = str;
                i4 = i4;
            } else if (index == C1686R.styleable.Slider_sl_interpolator) {
                this.mInterpolator = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(C1686R.styleable.Slider_sl_interpolator, 0));
                z3 = z3;
                minValue = minValue;
                maxValue = maxValue;
                z = z;
                i3 = i3;
                z2 = z2;
                str = str;
                i4 = i4;
            } else if (index == C1686R.styleable.Slider_android_gravity) {
                this.mGravity = obtainStyledAttributes.getInteger(index, 0);
                z3 = z3;
                minValue = minValue;
                maxValue = maxValue;
                z = z;
                i3 = i3;
                z2 = z2;
                str = str;
                i4 = i4;
            } else {
                if (index == C1686R.styleable.Slider_sl_minValue) {
                    minValue = obtainStyledAttributes.getInteger(index, 0);
                } else if (index == C1686R.styleable.Slider_sl_maxValue) {
                    maxValue = obtainStyledAttributes.getInteger(index, 0);
                } else if (index == C1686R.styleable.Slider_sl_stepValue) {
                    this.mStepValue = obtainStyledAttributes.getInteger(index, 0);
                    z3 = z3;
                    minValue = minValue;
                    maxValue = maxValue;
                    z = z;
                    i3 = i3;
                    z2 = z2;
                    str = str;
                    i4 = i4;
                } else if (index == C1686R.styleable.Slider_sl_value) {
                    i3 = obtainStyledAttributes.getInteger(index, 0);
                    z = true;
                    z3 = z3;
                    minValue = minValue;
                    maxValue = maxValue;
                    z2 = z2;
                    str = str;
                    i4 = i4;
                } else {
                    if (index == C1686R.styleable.Slider_sl_fontFamily) {
                        str = obtainStyledAttributes.getString(index);
                    } else if (index == C1686R.styleable.Slider_sl_textStyle) {
                        i4 = obtainStyledAttributes.getInteger(index, 0);
                    } else if (index == C1686R.styleable.Slider_sl_textColor) {
                        this.mTextColor = obtainStyledAttributes.getColor(index, 0);
                        z3 = z3;
                        minValue = minValue;
                        maxValue = maxValue;
                        z = z;
                        i3 = i3;
                        z2 = z2;
                        str = str;
                        i4 = i4;
                    } else if (index == C1686R.styleable.Slider_sl_textSize) {
                        this.mTextSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                        z3 = z3;
                        minValue = minValue;
                        maxValue = maxValue;
                        z = z;
                        i3 = i3;
                        z2 = z2;
                        str = str;
                        i4 = i4;
                    } else if (index == C1686R.styleable.Slider_android_enabled) {
                        setEnabled(obtainStyledAttributes.getBoolean(index, true));
                        z3 = z3;
                        minValue = minValue;
                        maxValue = maxValue;
                        z = z;
                        i3 = i3;
                        z2 = z2;
                        str = str;
                        i4 = i4;
                    } else {
                        z3 = z3;
                        minValue = minValue;
                        maxValue = maxValue;
                        z = z;
                        i3 = i3;
                        z2 = z2;
                        str = str;
                        i4 = i4;
                        if (index == C1686R.styleable.Slider_sl_baselineOffset) {
                            this.mBaselineOffset = obtainStyledAttributes.getDimensionPixelOffset(index, 0);
                            i4 = i4;
                            str = str;
                            z2 = z2;
                            i3 = i3;
                            z = z;
                            maxValue = maxValue;
                            minValue = minValue;
                            z3 = z3;
                        }
                    }
                    z2 = true;
                    z3 = z3;
                    minValue = minValue;
                    maxValue = maxValue;
                    z = z;
                    i3 = i3;
                }
                z3 = true;
                z = z;
                i3 = i3;
                z2 = z2;
                str = str;
                i4 = i4;
            }
        }
        obtainStyledAttributes.recycle();
        if (this.mTrackSize < 0) {
            this.mTrackSize = ThemeUtil.dpToPx(context, 2);
        }
        if (this.mThumbBorderSize < 0) {
            this.mThumbBorderSize = ThemeUtil.dpToPx(context, 2);
        }
        if (this.mThumbRadius < 0) {
            this.mThumbRadius = ThemeUtil.dpToPx(context, 10);
        }
        if (this.mThumbFocusRadius < 0) {
            this.mThumbFocusRadius = ThemeUtil.dpToPx(context, 14);
        }
        if (this.mTravelAnimationDuration < 0) {
            this.mTravelAnimationDuration = context.getResources().getInteger(17694721);
            this.mTransformAnimationDuration = this.mTravelAnimationDuration;
        }
        if (this.mInterpolator == null) {
            this.mInterpolator = new DecelerateInterpolator();
        }
        if (z3) {
            setValueRange(minValue, maxValue, false);
        }
        if (z) {
            setValue(i3, false);
        } else if (this.mThumbPosition < 0.0f) {
            setValue(this.mMinValue, false);
        }
        if (z2) {
            this.mTypeface = TypefaceUtil.load(context, str, i4);
        }
        if (this.mTextSize < 0) {
            this.mTextSize = context.getResources().getDimensionPixelOffset(C1686R.dimen.abc_text_size_small_material);
        }
        this.mPaint.setTextSize(this.mTextSize);
        this.mPaint.setTextAlign(Paint.Align.CENTER);
        this.mPaint.setTypeface(this.mTypeface);
        measureText();
        invalidate();
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        float width = (this.mDrawRect.width() * this.mThumbPosition) + this.mDrawRect.left;
        float f = width;
        if (this.mIsRtl) {
            f = (this.mDrawRect.centerX() * 2.0f) - width;
        }
        float centerY = this.mDrawRect.centerY();
        int middleColor = ColorUtil.getMiddleColor(this.mSecondaryColor, isEnabled() ? this.mPrimaryColor : this.mSecondaryColor, this.mThumbFillPercent);
        getTrackPath(f, centerY, this.mThumbCurrentRadius);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setColor(this.mIsRtl ? middleColor : this.mSecondaryColor);
        canvas.drawPath(this.mRightTrackPath, this.mPaint);
        this.mPaint.setColor(this.mIsRtl ? this.mSecondaryColor : middleColor);
        canvas.drawPath(this.mLeftTrackPath, this.mPaint);
        this.mPaint.setColor(middleColor);
        if (this.mDiscreteMode) {
            float f2 = 1.0f - (this.mThumbCurrentRadius / this.mThumbRadius);
            if (f2 > 0.0f) {
                this.mMarkPath = getMarkPath(this.mMarkPath, f, centerY, this.mThumbRadius, f2);
                this.mPaint.setStyle(Paint.Style.FILL);
                int save = canvas.save();
                canvas.translate(0.0f, (-this.mThumbRadius) * 2 * f2);
                canvas.drawPath(this.mMarkPath, this.mPaint);
                this.mPaint.setColor(ColorUtil.getColor(this.mTextColor, f2));
                canvas.drawText(getValueText(), f, ((this.mTextHeight / 2.0f) + centerY) - (this.mThumbRadius * f2), this.mPaint);
                canvas.restoreToCount(save);
            }
            float f3 = isEnabled() ? this.mThumbCurrentRadius : this.mThumbCurrentRadius - this.mThumbBorderSize;
            if (f3 > 0.0f) {
                this.mPaint.setColor(middleColor);
                canvas.drawCircle(f, centerY, f3, this.mPaint);
                return;
            }
            return;
        }
        float f4 = isEnabled() ? this.mThumbCurrentRadius : this.mThumbCurrentRadius - this.mThumbBorderSize;
        if (this.mThumbFillPercent == 1.0f) {
            this.mPaint.setStyle(Paint.Style.FILL);
        } else {
            float f5 = ((f4 - this.mThumbBorderSize) * this.mThumbFillPercent) + this.mThumbBorderSize;
            f4 -= f5 / 2.0f;
            this.mPaint.setStyle(Paint.Style.STROKE);
            this.mPaint.setStrokeWidth(f5);
        }
        canvas.drawCircle(f, centerY, f4, this.mPaint);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        int i2 = this.mGravity & 112;
        if (this.mDiscreteMode) {
            int sqrt = (int) (this.mThumbRadius * (Math.sqrt(2.0d) + 4.0d));
            int i3 = this.mThumbRadius * 2;
            i = i2 != 48 ? i2 != 80 ? Math.round(Math.max((getMeasuredHeight() - i3) / 2.0f, sqrt - i3) + this.mThumbRadius) : getMeasuredHeight() - getPaddingBottom() : Math.max(getPaddingTop(), sqrt - i3) + this.mThumbRadius;
        } else {
            i = i2 != 48 ? i2 != 80 ? Math.round(((getMeasuredHeight() - (this.mThumbFocusRadius * 2)) / 2.0f) + this.mThumbFocusRadius) : getMeasuredHeight() - getPaddingBottom() : getPaddingTop() + this.mThumbFocusRadius;
        }
        return i + this.mBaselineOffset;
    }

    public float getExactValue() {
        return ((this.mMaxValue - this.mMinValue) * getPosition()) + this.mMinValue;
    }

    public int getMaxValue() {
        return this.mMaxValue;
    }

    public int getMinValue() {
        return this.mMinValue;
    }

    public float getPosition() {
        return this.mThumbMoveAnimator.isRunning() ? this.mThumbMoveAnimator.getPosition() : this.mThumbPosition;
    }

    protected RippleManager getRippleManager() {
        if (this.mRippleManager == null) {
            synchronized (RippleManager.class) {
                try {
                    if (this.mRippleManager == null) {
                        this.mRippleManager = new RippleManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.mRippleManager;
    }

    public int getStepValue() {
        return this.mStepValue;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return (this.mDiscreteMode ? (int) (this.mThumbRadius * (Math.sqrt(2.0d) + 4.0d)) : this.mThumbFocusRadius * 2) + getPaddingTop() + getPaddingBottom();
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return ((this.mDiscreteMode ? (int) (this.mThumbRadius * Math.sqrt(2.0d)) : this.mThumbFocusRadius) * 4) + getPaddingLeft() + getPaddingRight();
    }

    public int getValue() {
        return Math.round(getExactValue());
    }

    protected void init(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mPaint = new Paint(1);
        this.mPrimaryColor = ThemeUtil.colorControlActivated(context, ViewCompat.MEASURED_STATE_MASK);
        this.mSecondaryColor = ThemeUtil.colorControlNormal(context, ViewCompat.MEASURED_STATE_MASK);
        this.mDrawRect = new RectF();
        this.mTempRect = new RectF();
        this.mLeftTrackPath = new Path();
        this.mRightTrackPath = new Path();
        this.mThumbRadiusAnimator = new ThumbRadiusAnimator();
        this.mThumbStrokeAnimator = new ThumbStrokeAnimator();
        this.mThumbMoveAnimator = new ThumbMoveAnimator();
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mMemoPoint = new PointF();
        applyStyle(context, attributeSet, i, i2);
        if (!isInEditMode()) {
            this.mStyleId = ThemeManager.getStyleId(context, attributeSet, i, i2);
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mStyleId != 0) {
            ThemeManager.getInstance().registerOnThemeChangedListener(this);
            onThemeChanged(null);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        RippleManager.cancelRipple(this);
        if (this.mStyleId != 0) {
            ThemeManager.getInstance().unregisterOnThemeChangedListener(this);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        setMeasuredDimension(mode != Integer.MIN_VALUE ? mode != 0 ? size : getSuggestedMinimumWidth() : Math.min(size, getSuggestedMinimumWidth()), mode2 != Integer.MIN_VALUE ? mode2 != 0 ? size2 : getSuggestedMinimumHeight() : Math.min(size2, getSuggestedMinimumHeight()));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setPosition(savedState.position, false);
        requestLayout();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (this.mIsRtl != z) {
            this.mIsRtl = z;
            invalidate();
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.position = getPosition();
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        this.mDrawRect.left = getPaddingLeft() + this.mThumbRadius;
        this.mDrawRect.right = (i - getPaddingRight()) - this.mThumbRadius;
        int i5 = this.mGravity & 112;
        if (this.mDiscreteMode) {
            int sqrt = (int) (this.mThumbRadius * (Math.sqrt(2.0d) + 4.0d));
            int i6 = this.mThumbRadius * 2;
            if (i5 == 48) {
                this.mDrawRect.top = Math.max(getPaddingTop(), sqrt - i6);
                this.mDrawRect.bottom = this.mDrawRect.top + i6;
            } else if (i5 != 80) {
                this.mDrawRect.top = Math.max((i2 - i6) / 2.0f, sqrt - i6);
                this.mDrawRect.bottom = this.mDrawRect.top + i6;
            } else {
                this.mDrawRect.bottom = i2 - getPaddingBottom();
                this.mDrawRect.top = this.mDrawRect.bottom - i6;
            }
        } else {
            int i7 = this.mThumbFocusRadius * 2;
            if (i5 == 48) {
                this.mDrawRect.top = getPaddingTop();
                this.mDrawRect.bottom = this.mDrawRect.top + i7;
            } else if (i5 != 80) {
                this.mDrawRect.top = (i2 - i7) / 2.0f;
                this.mDrawRect.bottom = this.mDrawRect.top + i7;
            } else {
                this.mDrawRect.bottom = i2 - getPaddingBottom();
                this.mDrawRect.top = this.mDrawRect.bottom - i7;
            }
        }
    }

    @Override // com.rey.material.app.ThemeManager.OnThemeChangedListener
    public void onThemeChanged(ThemeManager.OnThemeChangedEvent onThemeChangedEvent) {
        int currentStyle = ThemeManager.getInstance().getCurrentStyle(this.mStyleId);
        if (this.mCurrentStyle != currentStyle) {
            this.mCurrentStyle = currentStyle;
            applyStyle(this.mCurrentStyle);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        getRippleManager().onTouchEvent(this, motionEvent);
        int i = 0;
        if (!isEnabled()) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        float f = x;
        if (this.mIsRtl) {
            f = (this.mDrawRect.centerX() * 2.0f) - x;
        }
        switch (motionEvent.getAction()) {
            case 0:
                this.mIsDragging = isThumbHit(f, y, (float) (this.mThumbTouchRadius > 0 ? this.mThumbTouchRadius : this.mThumbRadius)) && !this.mThumbMoveAnimator.isRunning();
                this.mMemoPoint.set(f, y);
                if (!this.mIsDragging) {
                    return true;
                }
                ThumbRadiusAnimator thumbRadiusAnimator = this.mThumbRadiusAnimator;
                if (!this.mDiscreteMode) {
                    i = this.mThumbFocusRadius;
                }
                thumbRadiusAnimator.startAnimation(i);
                if (getParent() == null) {
                    return true;
                }
                getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            case 1:
                if (this.mIsDragging) {
                    this.mIsDragging = false;
                    setPosition(getPosition(), true, true, true);
                    if (getParent() == null) {
                        return true;
                    }
                    getParent().requestDisallowInterceptTouchEvent(false);
                    return true;
                } else if (distance(this.mMemoPoint.x, this.mMemoPoint.y, f, y) > this.mTouchSlop) {
                    return true;
                } else {
                    setPosition(correctPosition(Math.min(1.0f, Math.max(0.0f, (f - this.mDrawRect.left) / this.mDrawRect.width()))), true, true, true);
                    return true;
                }
            case 2:
                if (!this.mIsDragging) {
                    return true;
                }
                if (this.mDiscreteMode) {
                    setPosition(correctPosition(Math.min(1.0f, Math.max(0.0f, (f - this.mDrawRect.left) / this.mDrawRect.width()))), true, true, true);
                    return true;
                }
                setPosition(Math.min(1.0f, Math.max(0.0f, this.mThumbPosition + ((f - this.mMemoPoint.x) / this.mDrawRect.width()))), false, true, true);
                this.mMemoPoint.x = f;
                invalidate();
                return true;
            case 3:
                if (!this.mIsDragging) {
                    return true;
                }
                this.mIsDragging = false;
                setPosition(getPosition(), true, true, true);
                if (getParent() == null) {
                    return true;
                }
                getParent().requestDisallowInterceptTouchEvent(false);
                return true;
            default:
                return true;
        }
    }

    public void setAlwaysFillThumb(boolean z) {
        this.mAlwaysFillThumb = z;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Drawable background = getBackground();
        if (!(background instanceof RippleDrawable) || (drawable instanceof RippleDrawable)) {
            super.setBackgroundDrawable(drawable);
        } else {
            ((RippleDrawable) background).setBackgroundDrawable(drawable);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        RippleManager rippleManager = getRippleManager();
        if (onClickListener == rippleManager) {
            super.setOnClickListener(onClickListener);
            return;
        }
        rippleManager.setOnClickListener(onClickListener);
        setOnClickListener(rippleManager);
    }

    public void setOnPositionChangeListener(OnPositionChangeListener onPositionChangeListener) {
        this.mOnPositionChangeListener = onPositionChangeListener;
    }

    public void setPosition(float f, boolean z) {
        setPosition(f, z, z, false);
    }

    public void setPrimaryColor(int i) {
        this.mPrimaryColor = i;
        invalidate();
    }

    public void setSecondaryColor(int i) {
        this.mSecondaryColor = i;
        invalidate();
    }

    public void setValue(float f, boolean z) {
        setPosition((Math.min(this.mMaxValue, Math.max(f, this.mMinValue)) - this.mMinValue) / (this.mMaxValue - this.mMinValue), z);
    }

    public void setValueDescriptionProvider(ValueDescriptionProvider valueDescriptionProvider) {
        this.mValueDescriptionProvider = valueDescriptionProvider;
    }

    public void setValueRange(int i, int i2, boolean z) {
        if (i2 < i) {
            return;
        }
        if (i != this.mMinValue || i2 != this.mMaxValue) {
            float exactValue = getExactValue();
            float position = getPosition();
            this.mMinValue = i;
            this.mMaxValue = i2;
            setValue(exactValue, z);
            if (this.mOnPositionChangeListener != null && position == getPosition() && exactValue != getExactValue()) {
                this.mOnPositionChangeListener.onPositionChanged(this, false, position, position, Math.round(exactValue), getValue());
            }
        }
    }
}
