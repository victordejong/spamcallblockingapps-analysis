package com.rey.material.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
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
import android.widget.Checkable;
import com.rey.material.C1686R;
import com.rey.material.app.ThemeManager;
import com.rey.material.drawable.RippleDrawable;
import com.rey.material.util.ColorUtil;
import com.rey.material.util.ThemeUtil;
import com.rey.material.util.ViewUtil;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Switch.class */
public class Switch extends View implements Checkable, ThemeManager.OnThemeChangedListener {
    private static final int COLOR_SHADOW_END = 0;
    private static final int COLOR_SHADOW_START = 1275068416;
    private int mAnimDuration;
    private boolean mChecked;
    protected int mCurrentStyle;
    private RectF mDrawRect;
    private float mFlingVelocity;
    private int mGravity;
    private Interpolator mInterpolator;
    private boolean mIsRtl;
    private int mMaxAnimDuration;
    private float mMemoX;
    private OnCheckedChangeListener mOnCheckedChangeListener;
    private Paint mPaint;
    private RippleManager mRippleManager;
    private boolean mRunning;
    private int mShadowOffset;
    private Paint mShadowPaint;
    private Path mShadowPath;
    private int mShadowSize;
    private float mStartPosition;
    private long mStartTime;
    private float mStartX;
    protected int mStyleId;
    private RectF mTempRect;
    private int[] mTempStates;
    private ColorStateList mThumbColors;
    private float mThumbPosition;
    private int mThumbRadius;
    private Paint.Cap mTrackCap;
    private ColorStateList mTrackColors;
    private Path mTrackPath;
    private int mTrackSize;
    private final Runnable mUpdater;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Switch$OnCheckedChangeListener.class */
    public interface OnCheckedChangeListener {
        void onCheckedChanged(Switch r1, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Switch$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.rey.material.widget.Switch.SavedState.1
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
        boolean checked;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.checked = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "Switch.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " checked=" + this.checked + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.checked));
        }
    }

    public Switch(Context context) {
        super(context);
        this.mCurrentStyle = Integer.MIN_VALUE;
        this.mRunning = false;
        this.mTrackSize = -1;
        this.mTrackCap = Paint.Cap.ROUND;
        this.mThumbRadius = -1;
        this.mMaxAnimDuration = -1;
        this.mGravity = 16;
        this.mChecked = false;
        this.mTempStates = new int[2];
        this.mShadowSize = -1;
        this.mShadowOffset = -1;
        this.mIsRtl = false;
        this.mUpdater = new Runnable() { // from class: com.rey.material.widget.Switch.1
            @Override // java.lang.Runnable
            public void run() {
                Switch.this.update();
            }
        };
        init(context, null, 0, 0);
    }

    public Switch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCurrentStyle = Integer.MIN_VALUE;
        this.mRunning = false;
        this.mTrackSize = -1;
        this.mTrackCap = Paint.Cap.ROUND;
        this.mThumbRadius = -1;
        this.mMaxAnimDuration = -1;
        this.mGravity = 16;
        this.mChecked = false;
        this.mTempStates = new int[2];
        this.mShadowSize = -1;
        this.mShadowOffset = -1;
        this.mIsRtl = false;
        this.mUpdater = new Runnable() { // from class: com.rey.material.widget.Switch.1
            @Override // java.lang.Runnable
            public void run() {
                Switch.this.update();
            }
        };
        init(context, attributeSet, 0, 0);
    }

    public Switch(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mCurrentStyle = Integer.MIN_VALUE;
        this.mRunning = false;
        this.mTrackSize = -1;
        this.mTrackCap = Paint.Cap.ROUND;
        this.mThumbRadius = -1;
        this.mMaxAnimDuration = -1;
        this.mGravity = 16;
        this.mChecked = false;
        this.mTempStates = new int[2];
        this.mShadowSize = -1;
        this.mShadowOffset = -1;
        this.mIsRtl = false;
        this.mUpdater = new Runnable() { // from class: com.rey.material.widget.Switch.1
            @Override // java.lang.Runnable
            public void run() {
                Switch.this.update();
            }
        };
        init(context, attributeSet, i, 0);
    }

    private void buildShadow() {
        if (this.mShadowSize > 0) {
            if (this.mShadowPaint == null) {
                this.mShadowPaint = new Paint(5);
                this.mShadowPaint.setStyle(Paint.Style.FILL);
                this.mShadowPaint.setDither(true);
            }
            this.mShadowPaint.setShader(new RadialGradient(0.0f, 0.0f, this.mThumbRadius + this.mShadowSize, new int[]{COLOR_SHADOW_START, COLOR_SHADOW_START, 0}, new float[]{0.0f, this.mThumbRadius / ((this.mThumbRadius + this.mShadowSize) + this.mShadowOffset), 1.0f}, Shader.TileMode.CLAMP));
            if (this.mShadowPath == null) {
                this.mShadowPath = new Path();
                this.mShadowPath.setFillType(Path.FillType.EVEN_ODD);
            } else {
                this.mShadowPath.reset();
            }
            float f = this.mThumbRadius + this.mShadowSize;
            float f2 = -f;
            this.mTempRect.set(f2, f2, f, f);
            this.mShadowPath.addOval(this.mTempRect, Path.Direction.CW);
            float f3 = this.mThumbRadius - 1;
            float f4 = -f3;
            this.mTempRect.set(f4, f4 - this.mShadowOffset, f3, f3 - this.mShadowOffset);
            this.mShadowPath.addOval(this.mTempRect, Path.Direction.CW);
        }
    }

    private int getThumbColor(boolean z) {
        this.mTempStates[0] = isEnabled() ? 16842910 : -16842910;
        this.mTempStates[1] = z ? 16842912 : -16842912;
        return this.mThumbColors.getColorForState(this.mTempStates, 0);
    }

    private int getTrackColor(boolean z) {
        this.mTempStates[0] = isEnabled() ? 16842910 : -16842910;
        this.mTempStates[1] = z ? 16842912 : -16842912;
        return this.mTrackColors.getColorForState(this.mTempStates, 0);
    }

    private void getTrackPath(float f, float f2, float f3) {
        float f4 = this.mTrackSize / 2.0f;
        this.mTrackPath.reset();
        if (this.mTrackCap != Paint.Cap.ROUND) {
            float f5 = f - f3;
            float f6 = f + f3;
            this.mTempRect.set(f5 + 1.0f, (f2 - f3) + 1.0f, f6 - 1.0f, (f2 + f3) - 1.0f);
            float asin = (float) ((Math.asin(f4 / (f3 - 1.0f)) / 3.141592653589793d) * 180.0d);
            if (f5 > this.mDrawRect.left) {
                this.mTrackPath.moveTo(this.mDrawRect.left, f2 - f4);
                this.mTrackPath.arcTo(this.mTempRect, asin + 180.0f, (-asin) * 2.0f);
                this.mTrackPath.lineTo(this.mDrawRect.left, f2 + f4);
                this.mTrackPath.close();
            }
            if (f6 < this.mDrawRect.right) {
                this.mTrackPath.moveTo(this.mDrawRect.right, f2 - f4);
                this.mTrackPath.arcTo(this.mTempRect, -asin, asin * 2.0f);
                this.mTrackPath.lineTo(this.mDrawRect.right, f2 + f4);
                this.mTrackPath.close();
                return;
            }
            return;
        }
        float asin2 = (float) ((Math.asin(f4 / (f3 - 1.0f)) / 3.141592653589793d) * 180.0d);
        float f7 = f - f3;
        if (f7 > this.mDrawRect.left) {
            float acos = (float) ((Math.acos(Math.max(0.0f, (((this.mDrawRect.left + f4) - f) + f3) / f4)) / 3.141592653589793d) * 180.0d);
            this.mTempRect.set(this.mDrawRect.left, f2 - f4, this.mDrawRect.left + this.mTrackSize, f2 + f4);
            this.mTrackPath.arcTo(this.mTempRect, 180.0f - acos, acos * 2.0f);
            this.mTempRect.set(f7 + 1.0f, (f2 - f3) + 1.0f, (f + f3) - 1.0f, (f2 + f3) - 1.0f);
            this.mTrackPath.arcTo(this.mTempRect, 180.0f + asin2, (-asin2) * 2.0f);
            this.mTrackPath.close();
        }
        float f8 = f + f3;
        if (f8 < this.mDrawRect.right) {
            float acos2 = (float) Math.acos(Math.max(0.0f, ((f8 - this.mDrawRect.right) + f4) / f4));
            Path path = this.mTrackPath;
            double d = this.mDrawRect.right - f4;
            double d2 = acos2;
            double cos = Math.cos(d2);
            double d3 = f4;
            path.moveTo((float) (d + (cos * d3)), (float) (f2 + (Math.sin(d2) * d3)));
            float f9 = (float) ((d2 / 3.141592653589793d) * 180.0d);
            this.mTempRect.set(this.mDrawRect.right - this.mTrackSize, f2 - f4, this.mDrawRect.right, f4 + f2);
            this.mTrackPath.arcTo(this.mTempRect, f9, (-f9) * 2.0f);
            this.mTempRect.set(f7 + 1.0f, (f2 - f3) + 1.0f, f8 - 1.0f, (f2 + f3) - 1.0f);
            this.mTrackPath.arcTo(this.mTempRect, -asin2, 2.0f * asin2);
            this.mTrackPath.close();
        }
    }

    private void resetAnimation() {
        this.mStartTime = SystemClock.uptimeMillis();
        this.mStartPosition = this.mThumbPosition;
        this.mAnimDuration = (int) (this.mMaxAnimDuration * (this.mChecked ? 1.0f - this.mStartPosition : this.mStartPosition));
    }

    private void startAnimation() {
        if (getHandler() != null) {
            resetAnimation();
            this.mRunning = true;
            getHandler().postAtTime(this.mUpdater, SystemClock.uptimeMillis() + 16);
        } else {
            this.mThumbPosition = this.mChecked ? 1.0f : 0.0f;
        }
        invalidate();
    }

    private void stopAnimation() {
        this.mRunning = false;
        this.mThumbPosition = this.mChecked ? 1.0f : 0.0f;
        if (getHandler() != null) {
            getHandler().removeCallbacks(this.mUpdater);
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        float min = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.mStartTime)) / this.mAnimDuration);
        float interpolation = this.mInterpolator.getInterpolation(min);
        this.mThumbPosition = this.mChecked ? (this.mStartPosition * (1.0f - interpolation)) + interpolation : this.mStartPosition * (1.0f - interpolation);
        if (min == 1.0f) {
            stopAnimation();
        }
        if (this.mRunning) {
            if (getHandler() != null) {
                getHandler().postAtTime(this.mUpdater, SystemClock.uptimeMillis() + 16);
            } else {
                stopAnimation();
            }
        }
        invalidate();
    }

    public void applyStyle(int i) {
        ViewUtil.applyStyle(this, i);
        applyStyle(getContext(), null, 0, i);
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [int[], int[][]] */
    /* JADX WARN: Type inference failed for: r3v7, types: [int[], int[][]] */
    protected void applyStyle(Context context, AttributeSet attributeSet, int i, int i2) {
        int resourceId;
        getRippleManager().onCreate(this, context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.Switch, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = obtainStyledAttributes.getIndex(i3);
            if (index == C1686R.styleable.Switch_sw_trackSize) {
                this.mTrackSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
            } else if (index == C1686R.styleable.Switch_sw_trackColor) {
                this.mTrackColors = obtainStyledAttributes.getColorStateList(index);
            } else if (index == C1686R.styleable.Switch_sw_trackCap) {
                int integer = obtainStyledAttributes.getInteger(index, 0);
                if (integer == 0) {
                    this.mTrackCap = Paint.Cap.BUTT;
                } else if (integer == 1) {
                    this.mTrackCap = Paint.Cap.ROUND;
                } else {
                    this.mTrackCap = Paint.Cap.SQUARE;
                }
            } else if (index == C1686R.styleable.Switch_sw_thumbColor) {
                this.mThumbColors = obtainStyledAttributes.getColorStateList(index);
            } else if (index == C1686R.styleable.Switch_sw_thumbRadius) {
                this.mThumbRadius = obtainStyledAttributes.getDimensionPixelSize(index, 0);
            } else if (index == C1686R.styleable.Switch_sw_thumbElevation) {
                this.mShadowSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                this.mShadowOffset = this.mShadowSize / 2;
            } else if (index == C1686R.styleable.Switch_sw_animDuration) {
                this.mMaxAnimDuration = obtainStyledAttributes.getInt(index, 0);
            } else if (index == C1686R.styleable.Switch_android_gravity) {
                this.mGravity = obtainStyledAttributes.getInt(index, 0);
            } else if (index == C1686R.styleable.Switch_android_checked) {
                setCheckedImmediately(obtainStyledAttributes.getBoolean(index, this.mChecked));
            } else if (index == C1686R.styleable.Switch_sw_interpolator && (resourceId = obtainStyledAttributes.getResourceId(C1686R.styleable.Switch_sw_interpolator, 0)) != 0) {
                this.mInterpolator = AnimationUtils.loadInterpolator(context, resourceId);
            }
        }
        obtainStyledAttributes.recycle();
        if (this.mTrackSize < 0) {
            this.mTrackSize = ThemeUtil.dpToPx(context, 2);
        }
        if (this.mThumbRadius < 0) {
            this.mThumbRadius = ThemeUtil.dpToPx(context, 8);
        }
        if (this.mShadowSize < 0) {
            this.mShadowSize = ThemeUtil.dpToPx(context, 2);
            this.mShadowOffset = this.mShadowSize / 2;
        }
        if (this.mMaxAnimDuration < 0) {
            this.mMaxAnimDuration = context.getResources().getInteger(17694721);
        }
        if (this.mInterpolator == null) {
            this.mInterpolator = new DecelerateInterpolator();
        }
        if (this.mTrackColors == null) {
            this.mTrackColors = new ColorStateList(new int[]{new int[]{-16842912}, new int[]{16842912}}, new int[]{ColorUtil.getColor(ThemeUtil.colorControlNormal(context, ViewCompat.MEASURED_STATE_MASK), 0.5f), ColorUtil.getColor(ThemeUtil.colorControlActivated(context, ViewCompat.MEASURED_STATE_MASK), 0.5f)});
        }
        if (this.mThumbColors == null) {
            this.mThumbColors = new ColorStateList(new int[]{new int[]{-16842912}, new int[]{16842912}}, new int[]{16448250, ThemeUtil.colorControlActivated(context, ViewCompat.MEASURED_STATE_MASK)});
        }
        this.mPaint.setStrokeCap(this.mTrackCap);
        buildShadow();
        invalidate();
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        float width = ((this.mDrawRect.width() - (this.mThumbRadius * 2)) * this.mThumbPosition) + this.mDrawRect.left + this.mThumbRadius;
        float f = width;
        if (this.mIsRtl) {
            f = (this.mDrawRect.centerX() * 2.0f) - width;
        }
        float centerY = this.mDrawRect.centerY();
        getTrackPath(f, centerY, this.mThumbRadius);
        this.mPaint.setColor(ColorUtil.getMiddleColor(getTrackColor(false), getTrackColor(true), this.mThumbPosition));
        this.mPaint.setStyle(Paint.Style.FILL);
        canvas.drawPath(this.mTrackPath, this.mPaint);
        if (this.mShadowSize > 0) {
            int save = canvas.save();
            canvas.translate(f, this.mShadowOffset + centerY);
            canvas.drawPath(this.mShadowPath, this.mShadowPaint);
            canvas.restoreToCount(save);
        }
        this.mPaint.setColor(ColorUtil.getMiddleColor(getThumbColor(false), getThumbColor(true), this.mThumbPosition));
        this.mPaint.setStyle(Paint.Style.FILL);
        canvas.drawCircle(f, centerY, this.mThumbRadius, this.mPaint);
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

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return (this.mThumbRadius * 2) + Math.max(this.mShadowSize - this.mShadowOffset, getPaddingTop()) + Math.max(this.mShadowSize + this.mShadowOffset, getPaddingBottom());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return (this.mThumbRadius * 4) + Math.max(this.mShadowSize, getPaddingLeft()) + Math.max(this.mShadowSize, getPaddingRight());
    }

    protected void init(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mPaint = new Paint(1);
        this.mDrawRect = new RectF();
        this.mTempRect = new RectF();
        this.mTrackPath = new Path();
        this.mFlingVelocity = ViewConfiguration.get(context).getScaledMinimumFlingVelocity();
        applyStyle(context, attributeSet, i, i2);
        if (!isInEditMode()) {
            this.mStyleId = ThemeManager.getStyleId(context, attributeSet, i, i2);
        }
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.mChecked;
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
        setChecked(savedState.checked);
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
        savedState.checked = isChecked();
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        this.mDrawRect.left = Math.max(this.mShadowSize, getPaddingLeft());
        this.mDrawRect.right = i - Math.max(this.mShadowSize, getPaddingRight());
        int i5 = this.mThumbRadius * 2;
        int i6 = this.mGravity & 112;
        if (i6 == 48) {
            this.mDrawRect.top = Math.max(this.mShadowSize - this.mShadowOffset, getPaddingTop());
            this.mDrawRect.bottom = this.mDrawRect.top + i5;
        } else if (i6 != 80) {
            this.mDrawRect.top = (i2 - i5) / 2.0f;
            this.mDrawRect.bottom = this.mDrawRect.top + i5;
        } else {
            this.mDrawRect.bottom = i2 - Math.max(this.mShadowSize + this.mShadowOffset, getPaddingBottom());
            this.mDrawRect.top = this.mDrawRect.bottom - i5;
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
        float x = motionEvent.getX();
        float f = x;
        if (this.mIsRtl) {
            f = (this.mDrawRect.centerX() * 2.0f) - x;
        }
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        switch (motionEvent.getAction()) {
            case 0:
                if (getParent() != null) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                this.mMemoX = f;
                this.mStartX = this.mMemoX;
                this.mStartTime = SystemClock.uptimeMillis();
                return true;
            case 1:
                if (getParent() != null) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                }
                float uptimeMillis = ((f - this.mStartX) / ((float) (SystemClock.uptimeMillis() - this.mStartTime))) * 1000.0f;
                if (Math.abs(uptimeMillis) >= this.mFlingVelocity) {
                    if (uptimeMillis > 0.0f) {
                        z = true;
                    }
                    setChecked(z);
                    return true;
                } else if ((this.mChecked || this.mThumbPosition >= 0.1f) && (!this.mChecked || this.mThumbPosition <= 0.9f)) {
                    if (this.mThumbPosition > 0.5f) {
                        z2 = true;
                    }
                    setChecked(z2);
                    return true;
                } else {
                    toggle();
                    return true;
                }
            case 2:
                this.mThumbPosition = Math.min(1.0f, Math.max(0.0f, this.mThumbPosition + ((f - this.mMemoX) / (this.mDrawRect.width() - (this.mThumbRadius * 2)))));
                this.mMemoX = f;
                invalidate();
                return true;
            case 3:
                if (getParent() != null) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                }
                if (this.mThumbPosition > 0.5f) {
                    z3 = true;
                }
                setChecked(z3);
                return true;
            default:
                return true;
        }
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

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.mChecked != z) {
            this.mChecked = z;
            if (this.mOnCheckedChangeListener != null) {
                this.mOnCheckedChangeListener.onCheckedChanged(this, this.mChecked);
            }
        }
        if (this.mThumbPosition != (this.mChecked ? 1.0f : 0.0f)) {
            startAnimation();
        }
    }

    public void setCheckedImmediately(boolean z) {
        if (this.mChecked != z) {
            this.mChecked = z;
            if (this.mOnCheckedChangeListener != null) {
                this.mOnCheckedChangeListener.onCheckedChanged(this, this.mChecked);
            }
        }
        this.mThumbPosition = this.mChecked ? 1.0f : 0.0f;
        invalidate();
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.mOnCheckedChangeListener = onCheckedChangeListener;
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

    public void toggle() {
        if (isEnabled()) {
            setChecked(!this.mChecked);
        }
    }
}
