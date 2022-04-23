package com.rey.material.widget;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import com.rey.material.C1686R;
import com.rey.material.app.ThemeManager;
import com.rey.material.drawable.LineMorphingDrawable;
import com.rey.material.drawable.OvalShadowDrawable;
import com.rey.material.drawable.RippleDrawable;
import com.rey.material.util.ThemeUtil;
import com.rey.material.util.ViewUtil;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/FloatingActionButton.class */
public class FloatingActionButton extends View implements ThemeManager.OnThemeChangedListener {
    private OvalShadowDrawable mBackground;
    private Drawable mIcon;
    private Interpolator mInterpolator;
    private Drawable mPrevIcon;
    private RippleManager mRippleManager;
    protected int mStyleId;
    private SwitchIconAnimator mSwitchIconAnimator;
    private int mAnimDuration = -1;
    private int mIconSize = -1;
    protected int mCurrentStyle = Integer.MIN_VALUE;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/FloatingActionButton$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.rey.material.widget.FloatingActionButton.SavedState.1
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
        int state;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.state = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FloatingActionButton.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " state=" + this.state + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.state);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/FloatingActionButton$SwitchIconAnimator.class */
    public class SwitchIconAnimator implements Runnable {
        boolean mRunning = false;
        long mStartTime;

        SwitchIconAnimator() {
        }

        public void resetAnimation() {
            this.mStartTime = SystemClock.uptimeMillis();
            FloatingActionButton.this.mIcon.setAlpha(0);
            FloatingActionButton.this.mPrevIcon.setAlpha(255);
        }

        @Override // java.lang.Runnable
        public void run() {
            float min = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.mStartTime)) / FloatingActionButton.this.mAnimDuration);
            float interpolation = FloatingActionButton.this.mInterpolator.getInterpolation(min);
            FloatingActionButton.this.mIcon.setAlpha(Math.round(interpolation * 255.0f));
            FloatingActionButton.this.mPrevIcon.setAlpha(Math.round((1.0f - interpolation) * 255.0f));
            if (min == 1.0f) {
                stopAnimation();
            }
            if (this.mRunning) {
                if (FloatingActionButton.this.getHandler() != null) {
                    FloatingActionButton.this.getHandler().postAtTime(this, SystemClock.uptimeMillis() + 16);
                } else {
                    stopAnimation();
                }
            }
            FloatingActionButton.this.invalidate();
        }

        public boolean startAnimation(Drawable drawable) {
            if (FloatingActionButton.this.mIcon == drawable) {
                return false;
            }
            FloatingActionButton.this.mPrevIcon = FloatingActionButton.this.mIcon;
            FloatingActionButton.this.mIcon = drawable;
            float f = FloatingActionButton.this.mIconSize / 2.0f;
            FloatingActionButton.this.mIcon.setBounds((int) (FloatingActionButton.this.mBackground.getCenterX() - f), (int) (FloatingActionButton.this.mBackground.getCenterY() - f), (int) (FloatingActionButton.this.mBackground.getCenterX() + f), (int) (FloatingActionButton.this.mBackground.getCenterY() + f));
            FloatingActionButton.this.mIcon.setCallback(FloatingActionButton.this);
            if (FloatingActionButton.this.getHandler() != null) {
                resetAnimation();
                this.mRunning = true;
                FloatingActionButton.this.getHandler().postAtTime(this, SystemClock.uptimeMillis() + 16);
            } else {
                FloatingActionButton.this.mPrevIcon.setCallback(null);
                FloatingActionButton.this.unscheduleDrawable(FloatingActionButton.this.mPrevIcon);
                FloatingActionButton.this.mPrevIcon = null;
            }
            FloatingActionButton.this.invalidate();
            return true;
        }

        public void stopAnimation() {
            this.mRunning = false;
            FloatingActionButton.this.mPrevIcon.setCallback(null);
            FloatingActionButton.this.unscheduleDrawable(FloatingActionButton.this.mPrevIcon);
            FloatingActionButton.this.mPrevIcon = null;
            FloatingActionButton.this.mIcon.setAlpha(255);
            if (FloatingActionButton.this.getHandler() != null) {
                FloatingActionButton.this.getHandler().removeCallbacks(this);
            }
            FloatingActionButton.this.invalidate();
        }
    }

    public FloatingActionButton(Context context) {
        super(context);
        init(context, null, 0, 0);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet, 0, 0);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet, i, 0);
    }

    public static FloatingActionButton make(Context context, int i) {
        return new FloatingActionButton(context, null, i);
    }

    private void setLeftMargin(ViewGroup.LayoutParams layoutParams, int i) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = i;
            return;
        }
        String simpleName = FloatingActionButton.class.getSimpleName();
        Log.v(simpleName, "cannot recognize LayoutParams: " + layoutParams);
    }

    private void setTopMargin(ViewGroup.LayoutParams layoutParams, int i) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = i;
            return;
        }
        String simpleName = FloatingActionButton.class.getSimpleName();
        Log.v(simpleName, "cannot recognize LayoutParams: " + layoutParams);
    }

    private void updateParams(int i, int i2, int i3, ViewGroup.LayoutParams layoutParams) {
        int i4 = i3 & 7;
        if (i4 == 1) {
            setLeftMargin(layoutParams, (int) (i - this.mBackground.getCenterX()));
        } else if (i4 == 3) {
            setLeftMargin(layoutParams, (int) (i - this.mBackground.getPaddingLeft()));
        } else if (i4 != 5) {
            setLeftMargin(layoutParams, (int) (i - this.mBackground.getPaddingLeft()));
        } else {
            setLeftMargin(layoutParams, (int) ((i - this.mBackground.getPaddingLeft()) - (this.mBackground.getRadius() * 2)));
        }
        int i5 = i3 & 112;
        if (i5 == 16) {
            setTopMargin(layoutParams, (int) (i2 - this.mBackground.getCenterY()));
        } else if (i5 == 48) {
            setTopMargin(layoutParams, (int) (i2 - this.mBackground.getPaddingTop()));
        } else if (i5 != 80) {
            setTopMargin(layoutParams, (int) (i2 - this.mBackground.getPaddingTop()));
        } else {
            setTopMargin(layoutParams, (int) ((i2 - this.mBackground.getPaddingTop()) - (this.mBackground.getRadius() * 2)));
        }
        setLayoutParams(layoutParams);
    }

    public void applyStyle(int i) {
        ViewUtil.applyStyle(this, i);
        applyStyle(getContext(), null, 0, i);
    }

    protected void applyStyle(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.FloatingActionButton, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        int i3 = -1;
        int i4 = -1;
        ColorStateList colorStateList = null;
        int i5 = -1;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < indexCount; i8++) {
            int index = obtainStyledAttributes.getIndex(i8);
            if (index == C1686R.styleable.FloatingActionButton_fab_radius) {
                i3 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                i4 = i4;
                colorStateList = colorStateList;
                i5 = i5;
                i6 = i6;
                i7 = i7;
            } else if (index == C1686R.styleable.FloatingActionButton_fab_elevation) {
                i4 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                i3 = i3;
                colorStateList = colorStateList;
                i5 = i5;
                i6 = i6;
                i7 = i7;
            } else if (index == C1686R.styleable.FloatingActionButton_fab_backgroundColor) {
                colorStateList = obtainStyledAttributes.getColorStateList(index);
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
            } else if (index == C1686R.styleable.FloatingActionButton_fab_backgroundAnimDuration) {
                i5 = obtainStyledAttributes.getInteger(index, 0);
                i3 = i3;
                i4 = i4;
                colorStateList = colorStateList;
                i6 = i6;
                i7 = i7;
            } else if (index == C1686R.styleable.FloatingActionButton_fab_iconSrc) {
                i7 = obtainStyledAttributes.getResourceId(index, 0);
                i3 = i3;
                i4 = i4;
                colorStateList = colorStateList;
                i5 = i5;
                i6 = i6;
            } else if (index == C1686R.styleable.FloatingActionButton_fab_iconLineMorphing) {
                i6 = obtainStyledAttributes.getResourceId(index, 0);
                i3 = i3;
                i4 = i4;
                colorStateList = colorStateList;
                i5 = i5;
                i7 = i7;
            } else if (index == C1686R.styleable.FloatingActionButton_fab_iconSize) {
                this.mIconSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                i3 = i3;
                i4 = i4;
                colorStateList = colorStateList;
                i5 = i5;
                i6 = i6;
                i7 = i7;
            } else if (index == C1686R.styleable.FloatingActionButton_fab_animDuration) {
                this.mAnimDuration = obtainStyledAttributes.getInteger(index, 0);
                i3 = i3;
                i4 = i4;
                colorStateList = colorStateList;
                i5 = i5;
                i6 = i6;
                i7 = i7;
            } else {
                i3 = i3;
                i4 = i4;
                colorStateList = colorStateList;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                if (index == C1686R.styleable.FloatingActionButton_fab_interpolator) {
                    int resourceId = obtainStyledAttributes.getResourceId(C1686R.styleable.FloatingActionButton_fab_interpolator, 0);
                    i3 = i3;
                    i4 = i4;
                    colorStateList = colorStateList;
                    i5 = i5;
                    i6 = i6;
                    i7 = i7;
                    if (resourceId != 0) {
                        this.mInterpolator = AnimationUtils.loadInterpolator(context, resourceId);
                        i7 = i7;
                        i6 = i6;
                        i5 = i5;
                        colorStateList = colorStateList;
                        i4 = i4;
                        i3 = i3;
                    }
                }
            }
        }
        obtainStyledAttributes.recycle();
        if (this.mIconSize < 0) {
            this.mIconSize = ThemeUtil.dpToPx(context, 24);
        }
        if (this.mAnimDuration < 0) {
            this.mAnimDuration = context.getResources().getInteger(17694721);
        }
        if (this.mInterpolator == null) {
            this.mInterpolator = new DecelerateInterpolator();
        }
        if (this.mBackground == null) {
            int i9 = i3;
            if (i3 < 0) {
                i9 = ThemeUtil.dpToPx(context, 28);
            }
            int i10 = i4;
            if (i4 < 0) {
                i10 = ThemeUtil.dpToPx(context, 4);
            }
            ColorStateList colorStateList2 = colorStateList;
            if (colorStateList == null) {
                colorStateList2 = ColorStateList.valueOf(ThemeUtil.colorAccent(context, 0));
            }
            if (i5 < 0) {
                i5 = 0;
            }
            float f = i10;
            this.mBackground = new OvalShadowDrawable(i9, colorStateList2, f, f, i5);
            this.mBackground.setInEditMode(isInEditMode());
            this.mBackground.setBounds(0, 0, getWidth(), getHeight());
            this.mBackground.setCallback(this);
        } else {
            if (i3 >= 0) {
                this.mBackground.setRadius(i3);
            }
            if (colorStateList != null) {
                this.mBackground.setColor(colorStateList);
            }
            if (i4 >= 0) {
                float f2 = i4;
                this.mBackground.setShadow(f2, f2);
            }
            if (i5 >= 0) {
                this.mBackground.setAnimationDuration(i5);
            }
        }
        if (i6 != 0) {
            setIcon(new LineMorphingDrawable.Builder(context, i6).build(), false);
        } else if (i7 != 0) {
            setIcon(context.getResources().getDrawable(i7), false);
        }
        getRippleManager().onCreate(this, context, attributeSet, i, i2);
        Drawable background = getBackground();
        if (background != null && (background instanceof RippleDrawable)) {
            RippleDrawable rippleDrawable = (RippleDrawable) background;
            rippleDrawable.setBackgroundDrawable(null);
            rippleDrawable.setMask(1, 0, 0, 0, 0, (int) this.mBackground.getPaddingLeft(), (int) this.mBackground.getPaddingTop(), (int) this.mBackground.getPaddingRight(), (int) this.mBackground.getPaddingBottom());
        }
    }

    public void dismiss() {
        if (getParent() != null) {
            ((ViewGroup) getParent()).removeView(this);
        }
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        this.mBackground.draw(canvas);
        super.draw(canvas);
        if (this.mPrevIcon != null) {
            this.mPrevIcon.draw(canvas);
        }
        if (this.mIcon != null) {
            this.mIcon.draw(canvas);
        }
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.mBackground != null) {
            this.mBackground.setState(getDrawableState());
        }
        if (this.mIcon != null) {
            this.mIcon.setState(getDrawableState());
        }
        if (this.mPrevIcon != null) {
            this.mPrevIcon.setState(getDrawableState());
        }
    }

    public ColorStateList getBackgroundColor() {
        return this.mBackground.getColor();
    }

    @Override // android.view.View
    @TargetApi(21)
    public float getElevation() {
        return Build.VERSION.SDK_INT >= 21 ? super.getElevation() : this.mBackground.getShadowSize();
    }

    public Drawable getIcon() {
        return this.mIcon;
    }

    public int getLineMorphingState() {
        if (this.mIcon == null || !(this.mIcon instanceof LineMorphingDrawable)) {
            return -1;
        }
        return ((LineMorphingDrawable) this.mIcon).getLineState();
    }

    public int getRadius() {
        return this.mBackground.getRadius();
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

    protected void init(Context context, AttributeSet attributeSet, int i, int i2) {
        setClickable(true);
        this.mSwitchIconAnimator = new SwitchIconAnimator();
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
        setMeasuredDimension(this.mBackground.getIntrinsicWidth(), this.mBackground.getIntrinsicHeight());
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.state >= 0) {
            setLineMorphingState(savedState.state, false);
        }
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.state = getLineMorphingState();
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        this.mBackground.setBounds(0, 0, i, i2);
        if (this.mIcon != null) {
            float f = this.mIconSize / 2.0f;
            this.mIcon.setBounds((int) (this.mBackground.getCenterX() - f), (int) (this.mBackground.getCenterY() - f), (int) (this.mBackground.getCenterX() + f), (int) (this.mBackground.getCenterY() + f));
        }
        if (this.mPrevIcon != null) {
            float f2 = this.mIconSize / 2.0f;
            this.mPrevIcon.setBounds((int) (this.mBackground.getCenterX() - f2), (int) (this.mBackground.getCenterY() - f2), (int) (this.mBackground.getCenterX() + f2), (int) (this.mBackground.getCenterY() + f2));
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
        boolean z = false;
        if (motionEvent.getActionMasked() == 0 && !this.mBackground.isPointerOver(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        boolean onTouchEvent = super.onTouchEvent(motionEvent);
        if (getRippleManager().onTouchEvent(this, motionEvent) || onTouchEvent) {
            z = true;
        }
        return z;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.mBackground.setColor(i);
        invalidate();
    }

    public void setBackgroundColor(ColorStateList colorStateList) {
        this.mBackground.setColor(colorStateList);
        invalidate();
    }

    @Override // android.view.View
    @TargetApi(21)
    public void setElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.setElevation(f);
        } else if (this.mBackground.setShadow(f, f)) {
            requestLayout();
        }
    }

    public void setIcon(Drawable drawable, boolean z) {
        if (drawable != null) {
            if (z) {
                this.mSwitchIconAnimator.startAnimation(drawable);
                invalidate();
                return;
            }
            if (this.mIcon != null) {
                this.mIcon.setCallback(null);
                unscheduleDrawable(this.mIcon);
            }
            this.mIcon = drawable;
            float f = this.mIconSize / 2.0f;
            this.mIcon.setBounds((int) (this.mBackground.getCenterX() - f), (int) (this.mBackground.getCenterY() - f), (int) (this.mBackground.getCenterX() + f), (int) (this.mBackground.getCenterY() + f));
            this.mIcon.setCallback(this);
            invalidate();
        }
    }

    public void setLineMorphingState(int i, boolean z) {
        if (this.mIcon != null && (this.mIcon instanceof LineMorphingDrawable)) {
            ((LineMorphingDrawable) this.mIcon).switchLineState(i, z);
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

    public void setRadius(int i) {
        if (this.mBackground.setRadius(i)) {
            requestLayout();
        }
    }

    public void show(Activity activity, int i, int i2, int i3) {
        if (getParent() == null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.mBackground.getIntrinsicWidth(), this.mBackground.getIntrinsicHeight());
            updateParams(i, i2, i3, layoutParams);
            activity.getWindow().addContentView(this, layoutParams);
            return;
        }
        updateLocation(i, i2, i3);
    }

    public void show(ViewGroup viewGroup, int i, int i2, int i3) {
        if (getParent() == null) {
            ViewGroup.LayoutParams generateLayoutParams = viewGroup.generateLayoutParams((AttributeSet) null);
            generateLayoutParams.width = this.mBackground.getIntrinsicWidth();
            generateLayoutParams.height = this.mBackground.getIntrinsicHeight();
            updateParams(i, i2, i3, generateLayoutParams);
            viewGroup.addView(this, generateLayoutParams);
            return;
        }
        updateLocation(i, i2, i3);
    }

    public void updateLocation(int i, int i2, int i3) {
        if (getParent() != null) {
            updateParams(i, i2, i3, getLayoutParams());
        } else {
            Log.v(FloatingActionButton.class.getSimpleName(), "updateLocation() is called without parent");
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || this.mBackground == drawable || this.mIcon == drawable || this.mPrevIcon == drawable;
    }
}
