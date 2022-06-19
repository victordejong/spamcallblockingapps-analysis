package com.akexorcist.roundcornerprogressbar.common;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.customview.view.AbsSavedState;
import com.akexorcist.roundcornerprogressbar.C3244a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar.class */
public abstract class AnimatedRoundCornerProgressBar extends BaseRoundCornerProgressBar {
    public static final long DEFAULT_DURATION = 500;
    private float animationSpeedScale;
    private boolean isAnimationEnabled;
    private float lastProgress;
    private float lastSecondaryProgress;
    private ValueAnimator progressAnimator;
    private ValueAnimator secondaryProgressAnimator;
    private boolean isProgressAnimating = false;
    private boolean isSecondaryProgressAnimating = false;
    private ValueAnimator.AnimatorUpdateListener progressAnimationUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.akexorcist.roundcornerprogressbar.common.AnimatedRoundCornerProgressBar.1
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            AnimatedRoundCornerProgressBar.this.onUpdateProgressByAnimation(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    };
    private AnimatorListenerAdapter progressAnimationAdapterListener = new AnimatorListenerAdapter() { // from class: com.akexorcist.roundcornerprogressbar.common.AnimatedRoundCornerProgressBar.2
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            AnimatedRoundCornerProgressBar.this.isProgressAnimating = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            AnimatedRoundCornerProgressBar.this.isProgressAnimating = false;
            AnimatedRoundCornerProgressBar.this.onProgressAnimationEnd();
        }
    };
    private ValueAnimator.AnimatorUpdateListener secondaryProgressAnimationUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.akexorcist.roundcornerprogressbar.common.AnimatedRoundCornerProgressBar.3
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            AnimatedRoundCornerProgressBar.this.onUpdateSecondaryProgressByAnimation(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    };
    private AnimatorListenerAdapter secondaryProgressAnimationAdapterListener = new AnimatorListenerAdapter() { // from class: com.akexorcist.roundcornerprogressbar.common.AnimatedRoundCornerProgressBar.4
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            AnimatedRoundCornerProgressBar.this.isSecondaryProgressAnimating = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            AnimatedRoundCornerProgressBar.this.isSecondaryProgressAnimating = false;
            AnimatedRoundCornerProgressBar.this.onSecondaryProgressAnimationEnd();
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.ClassLoaderCreator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.akexorcist.roundcornerprogressbar.common.AnimatedRoundCornerProgressBar.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        float animationSpeedScale;
        boolean isAnimationEnabled;
        boolean isProgressAnimating;
        boolean isSecondaryProgressAnimating;
        float lastProgress;
        float lastSecondaryProgress;

        SavedState(Parcel parcel) {
            this(parcel, null);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.isProgressAnimating = parcel.readByte() != 0;
            this.isSecondaryProgressAnimating = parcel.readByte() != 0;
            this.lastProgress = parcel.readFloat();
            this.lastSecondaryProgress = parcel.readFloat();
            this.animationSpeedScale = parcel.readFloat();
            this.isAnimationEnabled = parcel.readByte() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.isProgressAnimating ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.isSecondaryProgressAnimating ? (byte) 1 : (byte) 0);
            parcel.writeFloat(this.lastProgress);
            parcel.writeFloat(this.lastSecondaryProgress);
            parcel.writeFloat(this.animationSpeedScale);
            parcel.writeByte(this.isAnimationEnabled ? (byte) 1 : (byte) 0);
        }
    }

    public AnimatedRoundCornerProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AnimatedRoundCornerProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public AnimatedRoundCornerProgressBar(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    private void clearProgressAnimation() {
        ValueAnimator valueAnimator = this.progressAnimator;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.progressAnimator.cancel();
    }

    private void clearSecondaryProgressAnimation() {
        ValueAnimator valueAnimator = this.secondaryProgressAnimator;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.secondaryProgressAnimator.cancel();
    }

    private long getAnimationDuration(float f, float f2, float f3, float f4) {
        return ((Math.abs(f - f2) * 500.0f) / f3) * f4;
    }

    public void onProgressAnimationEnd() {
        onProgressChangeAnimationEnd(this.layoutProgress);
    }

    public void onSecondaryProgressAnimationEnd() {
        onProgressChangeAnimationEnd(this.layoutSecondaryProgress);
    }

    public void onUpdateProgressByAnimation(float f) {
        super.setProgress(f);
        onProgressChangeAnimationUpdate(this.layoutProgress, f, this.lastProgress);
    }

    public void onUpdateSecondaryProgressByAnimation(float f) {
        super.setSecondaryProgress(f);
        onProgressChangeAnimationUpdate(this.layoutSecondaryProgress, f, this.lastProgress);
    }

    private void restoreProgressAnimationState() {
        if (this.isProgressAnimating) {
            startProgressAnimation(super.getProgress(), this.lastProgress);
        }
    }

    private void restoreSecondaryProgressAnimationState() {
        if (this.isSecondaryProgressAnimating) {
            startSecondaryProgressAnimation(super.getSecondaryProgress(), this.lastSecondaryProgress);
        }
    }

    private void startProgressAnimation(float f, float f2) {
        this.isProgressAnimating = true;
        ValueAnimator valueAnimator = this.progressAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeUpdateListener(this.progressAnimationUpdateListener);
            this.progressAnimator.removeListener(this.progressAnimationAdapterListener);
            this.progressAnimator.cancel();
            this.progressAnimator = null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
        this.progressAnimator = ofFloat;
        ofFloat.setDuration(getAnimationDuration(f, f2, this.max, this.animationSpeedScale));
        this.progressAnimator.addUpdateListener(this.progressAnimationUpdateListener);
        this.progressAnimator.addListener(this.progressAnimationAdapterListener);
        this.progressAnimator.start();
    }

    private void startSecondaryProgressAnimation(float f, float f2) {
        this.isSecondaryProgressAnimating = true;
        ValueAnimator valueAnimator = this.secondaryProgressAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeUpdateListener(this.secondaryProgressAnimationUpdateListener);
            this.secondaryProgressAnimator.removeListener(this.secondaryProgressAnimationAdapterListener);
            this.secondaryProgressAnimator.cancel();
            this.secondaryProgressAnimator = null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
        this.secondaryProgressAnimator = ofFloat;
        ofFloat.setDuration(getAnimationDuration(f, f2, this.max, this.animationSpeedScale));
        this.secondaryProgressAnimator.addUpdateListener(this.secondaryProgressAnimationUpdateListener);
        this.secondaryProgressAnimator.addListener(this.secondaryProgressAnimationAdapterListener);
        this.secondaryProgressAnimator.start();
    }

    public void disableAnimation() {
        this.isAnimationEnabled = false;
    }

    public void enableAnimation() {
        this.isAnimationEnabled = true;
    }

    public float getAnimationSpeedScale() {
        return this.animationSpeedScale;
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public float getProgress() {
        return (this.isAnimationEnabled || this.isProgressAnimating) ? this.lastProgress : super.getProgress();
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public float getSecondaryProgress() {
        return (this.isAnimationEnabled || this.isSecondaryProgressAnimating) ? this.lastSecondaryProgress : super.getSecondaryProgress();
    }

    public boolean isProgressAnimating() {
        return this.isProgressAnimating;
    }

    public boolean isSecondaryProgressAnimating() {
        return this.isSecondaryProgressAnimating;
    }

    protected void onProgressChangeAnimationEnd(LinearLayout linearLayout) {
    }

    public void onProgressChangeAnimationUpdate(LinearLayout linearLayout, float f, float f2) {
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.isProgressAnimating = savedState.isProgressAnimating;
        this.isSecondaryProgressAnimating = savedState.isSecondaryProgressAnimating;
        this.lastProgress = savedState.lastProgress;
        this.lastSecondaryProgress = savedState.lastSecondaryProgress;
        this.animationSpeedScale = savedState.animationSpeedScale;
        this.isAnimationEnabled = savedState.isAnimationEnabled;
        restoreProgressAnimationState();
        restoreSecondaryProgressAnimationState();
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.isProgressAnimating = this.isProgressAnimating;
        savedState.isSecondaryProgressAnimating = this.isSecondaryProgressAnimating;
        savedState.lastProgress = this.lastProgress;
        savedState.lastSecondaryProgress = this.lastSecondaryProgress;
        savedState.animationSpeedScale = this.animationSpeedScale;
        savedState.isAnimationEnabled = this.isAnimationEnabled;
        return savedState;
    }

    public void setAnimationSpeedScale(float f) {
        this.animationSpeedScale = Math.max(Math.min(f, 5.0f), 0.2f);
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void setProgress(float f) {
        float min = f < BitmapDescriptorFactory.HUE_RED ? 0.0f : Math.min(f, this.max);
        clearProgressAnimation();
        this.lastProgress = min;
        if (this.isAnimationEnabled) {
            startProgressAnimation(super.getProgress(), min);
        } else {
            super.setProgress(min);
        }
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void setProgress(int i) {
        setProgress(i);
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void setSecondaryProgress(float f) {
        float min = f < BitmapDescriptorFactory.HUE_RED ? 0.0f : Math.min(f, this.max);
        clearSecondaryProgressAnimation();
        this.lastSecondaryProgress = min;
        if (this.isAnimationEnabled) {
            startSecondaryProgressAnimation(super.getSecondaryProgress(), min);
        } else {
            super.setSecondaryProgress(min);
        }
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void setSecondaryProgress(int i) {
        setSecondaryProgress(i);
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void setupStyleable(Context context, AttributeSet attributeSet) {
        super.setupStyleable(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3244a.C3248d.AnimatedRoundCornerProgressBar);
        this.isAnimationEnabled = obtainStyledAttributes.getBoolean(C3244a.C3248d.AnimatedRoundCornerProgressBar_rcAnimationEnable, false);
        this.animationSpeedScale = obtainStyledAttributes.getFloat(C3244a.C3248d.AnimatedRoundCornerProgressBar_rcAnimationSpeedScale, 1.0f);
        obtainStyledAttributes.recycle();
        this.lastProgress = super.getProgress();
        this.lastSecondaryProgress = super.getSecondaryProgress();
    }

    public void stopProgressAnimationImmediately() {
        clearProgressAnimation();
        clearSecondaryProgressAnimation();
        if (!this.isAnimationEnabled || !this.isProgressAnimating) {
            return;
        }
        disableAnimation();
        if (this.isProgressAnimating) {
            super.setProgress(this.lastProgress);
        }
        if (this.isSecondaryProgressAnimating) {
            super.setSecondaryProgress(this.lastProgress);
        }
        enableAnimation();
    }
}
