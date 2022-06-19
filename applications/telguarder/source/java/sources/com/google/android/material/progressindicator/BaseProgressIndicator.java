package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.widget.ProgressBar;
import androidx.core.view.ViewCompat;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.C1236R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.progressindicator.BaseProgressIndicatorSpec;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/BaseProgressIndicator.class */
public abstract class BaseProgressIndicator<S extends BaseProgressIndicatorSpec> extends ProgressBar {
    static final float DEFAULT_OPACITY = 0.2f;
    static final int DEF_STYLE_RES = C1236R.style.Widget_MaterialComponents_ProgressIndicator;
    public static final int HIDE_INWARD = 2;
    public static final int HIDE_NONE = 0;
    public static final int HIDE_OUTWARD = 1;
    static final int MAX_ALPHA = 255;
    static final int MAX_HIDE_DELAY = 1000;
    public static final int SHOW_INWARD = 2;
    public static final int SHOW_NONE = 0;
    public static final int SHOW_OUTWARD = 1;
    private final int minHideDelay;
    private final int showDelay;
    S spec;
    private int storedProgress;
    private boolean storedProgressAnimated;
    private long lastShowStartTime = -1;
    private boolean isIndeterminateModeChangeRequested = false;
    private int visibilityAfterHide = 4;
    private final Runnable delayedShow = new Runnable() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.1
        @Override // java.lang.Runnable
        public void run() {
            BaseProgressIndicator.this.internalShow();
        }
    };
    private final Runnable delayedHide = new Runnable() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.2
        @Override // java.lang.Runnable
        public void run() {
            BaseProgressIndicator.this.internalHide();
            BaseProgressIndicator.this.lastShowStartTime = -1L;
        }
    };
    private final Animatable2Compat.AnimationCallback switchIndeterminateModeCallback = new Animatable2Compat.AnimationCallback() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.3
        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
        public void onAnimationEnd(Drawable drawable) {
            BaseProgressIndicator.this.setIndeterminate(false);
            BaseProgressIndicator.this.setProgressCompat(0, false);
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.setProgressCompat(baseProgressIndicator.storedProgress, BaseProgressIndicator.this.storedProgressAnimated);
        }
    };
    private final Animatable2Compat.AnimationCallback hideAnimationCallback = new Animatable2Compat.AnimationCallback() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.4
        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
        public void onAnimationEnd(Drawable drawable) {
            super.onAnimationEnd(drawable);
            if (!BaseProgressIndicator.this.isIndeterminateModeChangeRequested) {
                BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
                baseProgressIndicator.setVisibility(baseProgressIndicator.visibilityAfterHide);
            }
        }
    };
    AnimatorDurationScaleProvider animatorDurationScaleProvider = new AnimatorDurationScaleProvider();
    private boolean isParentDoneInitializing = true;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/BaseProgressIndicator$HideAnimationBehavior.class */
    public @interface HideAnimationBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/BaseProgressIndicator$ShowAnimationBehavior.class */
    public @interface ShowAnimationBehavior {
    }

    public BaseProgressIndicator(Context context, AttributeSet attributeSet, int i, int i2) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, DEF_STYLE_RES), attributeSet, i);
        Context context2 = getContext();
        this.spec = createSpec(context2, attributeSet);
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, C1236R.styleable.BaseProgressIndicator, i, i2, new int[0]);
        this.showDelay = obtainStyledAttributes.getInt(C1236R.styleable.BaseProgressIndicator_showDelay, -1);
        this.minHideDelay = Math.min(obtainStyledAttributes.getInt(C1236R.styleable.BaseProgressIndicator_minHideDelay, -1), 1000);
        obtainStyledAttributes.recycle();
    }

    private DrawingDelegate<S> getCurrentDrawingDelegate() {
        DrawingDelegate<S> drawingDelegate = null;
        if (!isIndeterminate()) {
            return getProgressDrawable() == null ? null : getProgressDrawable().getDrawingDelegate();
        }
        if (getIndeterminateDrawable() != null) {
            drawingDelegate = getIndeterminateDrawable().getDrawingDelegate();
        }
        return drawingDelegate;
    }

    public void internalHide() {
        ((DrawableWithAnimatedVisibilityChange) getCurrentDrawable()).setVisible(false, false, true);
        if (isNoLongerNeedToBeVisible()) {
            setVisibility(4);
        }
    }

    public void internalShow() {
        if (this.minHideDelay > 0) {
            this.lastShowStartTime = SystemClock.uptimeMillis();
        }
        setVisibility(0);
    }

    private boolean isNoLongerNeedToBeVisible() {
        return (getProgressDrawable() == null || !getProgressDrawable().isVisible()) && (getIndeterminateDrawable() == null || !getIndeterminateDrawable().isVisible());
    }

    private void registerAnimationCallbacks() {
        if (getProgressDrawable() != null && getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().getAnimatorDelegate().registerAnimatorsCompleteCallback(this.switchIndeterminateModeCallback);
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().registerAnimationCallback(this.hideAnimationCallback);
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().registerAnimationCallback(this.hideAnimationCallback);
        }
    }

    private void unregisterAnimationCallbacks() {
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().unregisterAnimationCallback(this.hideAnimationCallback);
            getIndeterminateDrawable().getAnimatorDelegate().unregisterAnimatorsCompleteCallback();
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().unregisterAnimationCallback(this.hideAnimationCallback);
        }
    }

    protected void applyNewVisibility(boolean z) {
        if (!this.isParentDoneInitializing) {
            return;
        }
        ((DrawableWithAnimatedVisibilityChange) getCurrentDrawable()).setVisible(visibleToUser(), false, z);
    }

    abstract S createSpec(Context context, AttributeSet attributeSet);

    @Override // android.widget.ProgressBar
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    public int getHideAnimationBehavior() {
        return this.spec.hideAnimationBehavior;
    }

    @Override // android.widget.ProgressBar
    public IndeterminateDrawable<S> getIndeterminateDrawable() {
        return (IndeterminateDrawable) super.getIndeterminateDrawable();
    }

    public int[] getIndicatorColor() {
        return this.spec.indicatorColors;
    }

    @Override // android.widget.ProgressBar
    public DeterminateDrawable<S> getProgressDrawable() {
        return (DeterminateDrawable) super.getProgressDrawable();
    }

    public int getShowAnimationBehavior() {
        return this.spec.showAnimationBehavior;
    }

    public int getTrackColor() {
        return this.spec.trackColor;
    }

    public int getTrackCornerRadius() {
        return this.spec.trackCornerRadius;
    }

    public int getTrackThickness() {
        return this.spec.trackThickness;
    }

    public void hide() {
        if (getVisibility() != 0) {
            removeCallbacks(this.delayedShow);
            return;
        }
        removeCallbacks(this.delayedHide);
        long uptimeMillis = SystemClock.uptimeMillis() - this.lastShowStartTime;
        int i = this.minHideDelay;
        if (uptimeMillis >= ((long) i)) {
            this.delayedHide.run();
        } else {
            postDelayed(this.delayedHide, i - uptimeMillis);
        }
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    boolean isEffectivelyVisible() {
        View view = this;
        while (true) {
            View view2 = view;
            boolean z = false;
            if (view2.getVisibility() != 0) {
                return false;
            }
            ViewParent parent = view2.getParent();
            if (parent == null) {
                if (getWindowVisibility() == 0) {
                    z = true;
                }
                return z;
            } else if (!(parent instanceof View)) {
                return true;
            } else {
                view = (View) parent;
            }
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        registerAnimationCallbacks();
        if (visibleToUser()) {
            internalShow();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.delayedHide);
        removeCallbacks(this.delayedShow);
        ((DrawableWithAnimatedVisibilityChange) getCurrentDrawable()).hideNow();
        unregisterAnimationCallbacks();
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas canvas) {
        synchronized (this) {
            int save = canvas.save();
            if (getPaddingLeft() != 0 || getPaddingTop() != 0) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            if (getPaddingRight() != 0 || getPaddingBottom() != 0) {
                canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
            }
            getCurrentDrawable().draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onMeasure(int i, int i2) {
        synchronized (this) {
            super.onMeasure(i, i2);
            DrawingDelegate<S> currentDrawingDelegate = getCurrentDrawingDelegate();
            if (currentDrawingDelegate == null) {
                return;
            }
            int preferredWidth = currentDrawingDelegate.getPreferredWidth();
            int preferredHeight = currentDrawingDelegate.getPreferredHeight();
            setMeasuredDimension(preferredWidth < 0 ? getMeasuredWidth() : preferredWidth + getPaddingLeft() + getPaddingRight(), preferredHeight < 0 ? getMeasuredHeight() : preferredHeight + getPaddingTop() + getPaddingBottom());
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        applyNewVisibility(i == 0);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        applyNewVisibility(false);
    }

    public void setAnimatorDurationScaleProvider(AnimatorDurationScaleProvider animatorDurationScaleProvider) {
        this.animatorDurationScaleProvider = animatorDurationScaleProvider;
        if (getProgressDrawable() != null) {
            getProgressDrawable().animatorDurationScaleProvider = animatorDurationScaleProvider;
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().animatorDurationScaleProvider = animatorDurationScaleProvider;
        }
    }

    public void setHideAnimationBehavior(int i) {
        this.spec.hideAnimationBehavior = i;
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminate(boolean z) {
        synchronized (this) {
            if (z == isIndeterminate()) {
                return;
            }
            if (visibleToUser() && z) {
                throw new IllegalStateException("Cannot switch to indeterminate mode while the progress indicator is visible.");
            }
            DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange = (DrawableWithAnimatedVisibilityChange) getCurrentDrawable();
            if (drawableWithAnimatedVisibilityChange != null) {
                drawableWithAnimatedVisibilityChange.hideNow();
            }
            super.setIndeterminate(z);
            DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange2 = (DrawableWithAnimatedVisibilityChange) getCurrentDrawable();
            if (drawableWithAnimatedVisibilityChange2 != null) {
                drawableWithAnimatedVisibilityChange2.setVisible(visibleToUser(), false, false);
            }
            this.isIndeterminateModeChangeRequested = false;
        }
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(Drawable drawable) {
        if (drawable == null) {
            super.setIndeterminateDrawable(null);
        } else if (!(drawable instanceof IndeterminateDrawable)) {
            throw new IllegalArgumentException("Cannot set framework drawable as indeterminate drawable.");
        } else {
            ((DrawableWithAnimatedVisibilityChange) drawable).hideNow();
            super.setIndeterminateDrawable(drawable);
        }
    }

    public void setIndicatorColor(int... iArr) {
        int[] iArr2 = iArr;
        if (iArr.length == 0) {
            iArr2 = new int[]{MaterialColors.getColor(getContext(), C1236R.attr.colorPrimary, -1)};
        }
        if (!Arrays.equals(getIndicatorColor(), iArr2)) {
            this.spec.indicatorColors = iArr2;
            getIndeterminateDrawable().getAnimatorDelegate().invalidateSpecValues();
            invalidate();
        }
    }

    @Override // android.widget.ProgressBar
    public void setProgress(int i) {
        synchronized (this) {
            if (isIndeterminate()) {
                return;
            }
            setProgressCompat(i, false);
        }
    }

    public void setProgressCompat(int i, boolean z) {
        if (!isIndeterminate()) {
            super.setProgress(i);
            if (getProgressDrawable() == null || z) {
                return;
            }
            getProgressDrawable().jumpToCurrentState();
        } else if (getProgressDrawable() == null) {
        } else {
            this.storedProgress = i;
            this.storedProgressAnimated = z;
            this.isIndeterminateModeChangeRequested = true;
            if (!getIndeterminateDrawable().isVisible() || this.animatorDurationScaleProvider.getSystemAnimatorDurationScale(getContext().getContentResolver()) == 0.0f) {
                this.switchIndeterminateModeCallback.onAnimationEnd(getIndeterminateDrawable());
            } else {
                getIndeterminateDrawable().getAnimatorDelegate().requestCancelAnimatorAfterCurrentCycle();
            }
        }
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(Drawable drawable) {
        if (drawable == null) {
            super.setProgressDrawable(null);
        } else if (!(drawable instanceof DeterminateDrawable)) {
            throw new IllegalArgumentException("Cannot set framework drawable as progress drawable.");
        } else {
            DeterminateDrawable determinateDrawable = (DeterminateDrawable) drawable;
            determinateDrawable.hideNow();
            super.setProgressDrawable(determinateDrawable);
            determinateDrawable.setLevelByFraction(getProgress() / getMax());
        }
    }

    public void setShowAnimationBehavior(int i) {
        this.spec.showAnimationBehavior = i;
        invalidate();
    }

    public void setTrackColor(int i) {
        if (this.spec.trackColor != i) {
            this.spec.trackColor = i;
            invalidate();
        }
    }

    public void setTrackCornerRadius(int i) {
        if (this.spec.trackCornerRadius != i) {
            S s = this.spec;
            s.trackCornerRadius = Math.min(i, s.trackThickness / 2);
        }
    }

    public void setTrackThickness(int i) {
        if (this.spec.trackThickness != i) {
            this.spec.trackThickness = i;
            requestLayout();
        }
    }

    public void setVisibilityAfterHide(int i) {
        if (i == 0 || i == 4 || i == 8) {
            this.visibilityAfterHide = i;
            return;
        }
        throw new IllegalArgumentException("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
    }

    public void show() {
        if (this.showDelay <= 0) {
            this.delayedShow.run();
            return;
        }
        removeCallbacks(this.delayedShow);
        postDelayed(this.delayedShow, this.showDelay);
    }

    public boolean visibleToUser() {
        return ViewCompat.isAttachedToWindow(this) && getWindowVisibility() == 0 && isEffectivelyVisible();
    }
}
