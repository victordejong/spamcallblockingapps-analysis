package com.telguarder.helpers.p022ui.loadingButton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.content.ContextCompat;
import com.telguarder.C2083R;
import com.telguarder.helpers.p022ui.UiHelper;
/* renamed from: com.telguarder.helpers.ui.loadingButton.CircularProgressButton */
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/loadingButton/CircularProgressButton.class */
public class CircularProgressButton extends AppCompatButton implements AnimatedButton, CustomizableByCode {
    private boolean doneWhileMorphing;
    private boolean layoutDone;
    private CircularAnimatedDrawable mAnimatedDrawable;
    private AnimatorSet mAnimatorSet;
    private Bitmap mBitmapDone;
    private int mFillColorDone;
    private GradientDrawable mGradientDrawable;
    private boolean mIsMorphingInProgress;
    private Params mParams;
    private CircularRevealAnimatedDrawable mRevealDrawable;
    private State mState;
    private int progress;
    private boolean shouldStartAnimation;

    /* renamed from: com.telguarder.helpers.ui.loadingButton.CircularProgressButton$BackgroundAndMorphingDrawables */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/loadingButton/CircularProgressButton$BackgroundAndMorphingDrawables.class */
    public static class BackgroundAndMorphingDrawables {
        Drawable backGroundDrawable;
        GradientDrawable morphingDrawable;

        BackgroundAndMorphingDrawables() {
        }

        void setBothDrawables(GradientDrawable gradientDrawable) {
            this.backGroundDrawable = gradientDrawable;
            this.morphingDrawable = gradientDrawable;
        }
    }

    /* renamed from: com.telguarder.helpers.ui.loadingButton.CircularProgressButton$Params */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params.class */
    public class Params {
        private int mDoneColor;
        private Drawable[] mDrawables;
        private float mFinalCornerRadius;
        private float mInitialCornerRadius;
        private Integer mInitialHeight;
        private int mInitialWidth;
        private Float mPaddingProgress;
        private int mSpinningBarColor;
        private float mSpinningBarWidth;
        private String mText;

        private Params() {
            CircularProgressButton.this = r4;
        }
    }

    /* renamed from: com.telguarder.helpers.ui.loadingButton.CircularProgressButton$State */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/loadingButton/CircularProgressButton$State.class */
    public enum State {
        PROGRESS,
        IDLE,
        DONE,
        STOPED
    }

    public CircularProgressButton(Context context) {
        super(context);
        init(context, null, 0, 0);
    }

    public CircularProgressButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet, 0, 0);
    }

    public CircularProgressButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet, i, 0);
    }

    public CircularProgressButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        init(context, attributeSet, i, i2);
    }

    private void drawDoneAnimation(Canvas canvas) {
        CircularRevealAnimatedDrawable circularRevealAnimatedDrawable = this.mRevealDrawable;
        if (circularRevealAnimatedDrawable == null || canvas == null) {
            return;
        }
        circularRevealAnimatedDrawable.draw(canvas);
    }

    private void drawProgress(Canvas canvas) {
        CircularAnimatedDrawable circularAnimatedDrawable = this.mAnimatedDrawable;
        if (circularAnimatedDrawable != null && circularAnimatedDrawable.isRunning()) {
            this.mAnimatedDrawable.setProgress(this.progress);
            this.mAnimatedDrawable.draw(canvas);
            return;
        }
        this.mAnimatedDrawable = new CircularAnimatedDrawable(this, this.mParams.mSpinningBarWidth, this.mParams.mSpinningBarColor);
        int width = (getWidth() - getHeight()) / 2;
        int intValue = this.mParams.mPaddingProgress.intValue();
        int width2 = getWidth();
        int intValue2 = this.mParams.mPaddingProgress.intValue();
        int height = getHeight();
        int intValue3 = this.mParams.mPaddingProgress.intValue();
        this.mAnimatedDrawable.setBounds(intValue + width, this.mParams.mPaddingProgress.intValue(), (width2 - width) - intValue2, height - intValue3);
        this.mAnimatedDrawable.setCallback(this);
        this.mAnimatedDrawable.start();
    }

    private void init(Context context, AttributeSet attributeSet, int i, int i2) {
        BackgroundAndMorphingDrawables backgroundAndMorphingDrawables;
        Params params = new Params();
        this.mParams = params;
        params.mPaddingProgress = Float.valueOf(0.0f);
        if (attributeSet == null) {
            backgroundAndMorphingDrawables = loadGradientDrawable(UiHelper.getDrawable(getContext(), C2083R.C2085drawable.shape_default));
        } else {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2083R.styleable.CircularProgressButton, i, i2);
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, new int[]{16842964}, i, i2);
            BackgroundAndMorphingDrawables loadGradientDrawable = loadGradientDrawable(obtainStyledAttributes2.getDrawable(0));
            this.mParams.mInitialCornerRadius = obtainStyledAttributes.getDimension(1, 0.0f);
            this.mParams.mFinalCornerRadius = obtainStyledAttributes.getDimension(0, 100.0f);
            this.mParams.mSpinningBarWidth = obtainStyledAttributes.getDimension(4, 10.0f);
            this.mParams.mSpinningBarColor = obtainStyledAttributes.getColor(2, UiHelper.getColorWrapper(context, 17170444));
            this.mParams.mPaddingProgress = Float.valueOf(obtainStyledAttributes.getDimension(3, 0.0f));
            obtainStyledAttributes.recycle();
            obtainStyledAttributes2.recycle();
            backgroundAndMorphingDrawables = loadGradientDrawable;
        }
        this.mState = State.IDLE;
        this.mParams.mText = getText().toString();
        this.mParams.mDrawables = getCompoundDrawablesRelative();
        if (backgroundAndMorphingDrawables != null) {
            this.mGradientDrawable = backgroundAndMorphingDrawables.morphingDrawable;
            if (backgroundAndMorphingDrawables.backGroundDrawable != null) {
                setBackground(backgroundAndMorphingDrawables.backGroundDrawable);
            }
        }
        resetProgress();
    }

    static BackgroundAndMorphingDrawables loadGradientDrawable(Drawable drawable) {
        BackgroundAndMorphingDrawables backgroundAndMorphingDrawables = new BackgroundAndMorphingDrawables();
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof GradientDrawable) {
            backgroundAndMorphingDrawables.setBothDrawables((GradientDrawable) drawable);
        } else if (drawable instanceof ColorDrawable) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(((ColorDrawable) drawable).getColor());
            backgroundAndMorphingDrawables.setBothDrawables(gradientDrawable);
        } else if ((drawable instanceof InsetDrawable) && Build.VERSION.SDK_INT >= 19) {
            InsetDrawable insetDrawable = (InsetDrawable) drawable;
            backgroundAndMorphingDrawables = loadGradientDrawable(insetDrawable.getDrawable());
            backgroundAndMorphingDrawables.backGroundDrawable = insetDrawable;
        } else if (drawable instanceof StateListDrawable) {
            StateListDrawable stateListDrawable = (StateListDrawable) drawable;
            stateListDrawable.setState(new int[]{16842910, 16842914, -16842919});
            backgroundAndMorphingDrawables = loadGradientDrawable(stateListDrawable.getCurrent());
        }
        if (backgroundAndMorphingDrawables.morphingDrawable == null) {
            throw new RuntimeException("Error reading background... Use a shape or a color in xml!");
        }
        return backgroundAndMorphingDrawables;
    }

    @Override // com.telguarder.helpers.p022ui.loadingButton.AnimatedButton
    public void dispose() {
        CircularAnimatedDrawable circularAnimatedDrawable = this.mAnimatedDrawable;
        if (circularAnimatedDrawable != null) {
            circularAnimatedDrawable.dispose();
        }
        CircularRevealAnimatedDrawable circularRevealAnimatedDrawable = this.mRevealDrawable;
        if (circularRevealAnimatedDrawable != null) {
            circularRevealAnimatedDrawable.dispose();
        }
    }

    public void doneLoadingAnimation(int i, Bitmap bitmap) {
        if (this.mState != State.PROGRESS) {
            return;
        }
        if (this.mIsMorphingInProgress) {
            this.doneWhileMorphing = true;
            this.mFillColorDone = i;
            this.mBitmapDone = bitmap;
            return;
        }
        this.mState = State.DONE;
        this.mAnimatedDrawable.stop();
        this.mRevealDrawable = new CircularRevealAnimatedDrawable(this, i, bitmap);
        this.mRevealDrawable.setBounds(0, 0, getWidth(), getHeight());
        this.mRevealDrawable.setCallback(this);
        this.mRevealDrawable.start();
    }

    public Boolean isAnimating() {
        return Boolean.valueOf(this.mState == State.PROGRESS);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.layoutDone = true;
        if (this.shouldStartAnimation) {
            startAnimation();
        }
        if (this.mState == State.PROGRESS && !this.mIsMorphingInProgress) {
            drawProgress(canvas);
        } else if (this.mState != State.DONE) {
        } else {
            drawDoneAnimation(canvas);
        }
    }

    @Override // com.telguarder.helpers.p022ui.loadingButton.AnimatedButton
    public void resetProgress() {
        this.progress = -1;
    }

    @Override // com.telguarder.helpers.p022ui.loadingButton.AnimatedButton
    public void revertAnimation() {
        revertAnimation(null);
    }

    @Override // com.telguarder.helpers.p022ui.loadingButton.AnimatedButton
    public void revertAnimation(final OnAnimationEndListener onAnimationEndListener) {
        if (this.mState == State.IDLE) {
            return;
        }
        this.mState = State.IDLE;
        resetProgress();
        CircularAnimatedDrawable circularAnimatedDrawable = this.mAnimatedDrawable;
        if (circularAnimatedDrawable != null && circularAnimatedDrawable.isRunning()) {
            stopAnimation();
        }
        if (this.mIsMorphingInProgress) {
            this.mAnimatorSet.cancel();
        }
        setClickable(false);
        int width = getWidth();
        int height = getHeight();
        int intValue = this.mParams.mInitialHeight.intValue();
        int i = this.mParams.mInitialWidth;
        ObjectAnimator objectAnimator = null;
        GradientDrawable gradientDrawable = this.mGradientDrawable;
        if (gradientDrawable != null) {
            objectAnimator = ObjectAnimator.ofFloat(gradientDrawable, "cornerRadius", this.mParams.mFinalCornerRadius, this.mParams.mInitialCornerRadius);
        }
        ValueAnimator ofInt = ValueAnimator.ofInt(width, i);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.telguarder.helpers.ui.loadingButton.CircularProgressButton.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue2 = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                ViewGroup.LayoutParams layoutParams = CircularProgressButton.this.getLayoutParams();
                layoutParams.width = intValue2;
                CircularProgressButton.this.setLayoutParams(layoutParams);
            }
        });
        ValueAnimator ofInt2 = ValueAnimator.ofInt(height, intValue);
        ofInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.telguarder.helpers.ui.loadingButton.CircularProgressButton.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue2 = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                ViewGroup.LayoutParams layoutParams = CircularProgressButton.this.getLayoutParams();
                layoutParams.height = intValue2;
                CircularProgressButton.this.setLayoutParams(layoutParams);
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.mAnimatorSet = animatorSet;
        animatorSet.setDuration(300L);
        if (this.mGradientDrawable != null) {
            this.mAnimatorSet.playTogether(objectAnimator, ofInt, ofInt2);
        } else {
            this.mAnimatorSet.playTogether(ofInt, ofInt2);
        }
        this.mAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.telguarder.helpers.ui.loadingButton.CircularProgressButton.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                CircularProgressButton.this.setClickable(true);
                CircularProgressButton.this.mIsMorphingInProgress = false;
                CircularProgressButton circularProgressButton = CircularProgressButton.this;
                circularProgressButton.setText(circularProgressButton.mParams.mText);
                CircularProgressButton circularProgressButton2 = CircularProgressButton.this;
                circularProgressButton2.setCompoundDrawablesRelative(circularProgressButton2.mParams.mDrawables[0], CircularProgressButton.this.mParams.mDrawables[1], CircularProgressButton.this.mParams.mDrawables[2], CircularProgressButton.this.mParams.mDrawables[3]);
                OnAnimationEndListener onAnimationEndListener2 = onAnimationEndListener;
                if (onAnimationEndListener2 != null) {
                    onAnimationEndListener2.onAnimationEnd();
                }
            }
        });
        this.mIsMorphingInProgress = true;
        this.mAnimatorSet.start();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.mGradientDrawable.setColor(i);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(int i) {
        this.mGradientDrawable.setColor(ContextCompat.getColor(getContext(), i));
    }

    @Override // com.telguarder.helpers.p022ui.loadingButton.CustomizableByCode
    public void setDoneColor(int i) {
        this.mParams.mDoneColor = i;
    }

    @Override // com.telguarder.helpers.p022ui.loadingButton.CustomizableByCode
    public void setFinalCornerRadius(float f) {
        this.mParams.mFinalCornerRadius = f;
    }

    @Override // com.telguarder.helpers.p022ui.loadingButton.CustomizableByCode
    public void setInitialCornerRadius(float f) {
        this.mParams.mInitialCornerRadius = f;
    }

    @Override // com.telguarder.helpers.p022ui.loadingButton.CustomizableByCode
    public void setInitialHeight(int i) {
        this.mParams.mInitialHeight = Integer.valueOf(i);
    }

    @Override // com.telguarder.helpers.p022ui.loadingButton.CustomizableByCode
    public void setPaddingProgress(float f) {
        this.mParams.mPaddingProgress = Float.valueOf(f);
    }

    @Override // com.telguarder.helpers.p022ui.loadingButton.AnimatedButton
    public void setProgress(int i) {
        this.progress = Math.max(0, Math.min(100, i));
    }

    @Override // com.telguarder.helpers.p022ui.loadingButton.CustomizableByCode
    public void setSpinningBarColor(int i) {
        this.mParams.mSpinningBarColor = i;
        CircularAnimatedDrawable circularAnimatedDrawable = this.mAnimatedDrawable;
        if (circularAnimatedDrawable != null) {
            circularAnimatedDrawable.setLoadingBarColor(i);
        }
    }

    @Override // com.telguarder.helpers.p022ui.loadingButton.CustomizableByCode
    public void setSpinningBarWidth(float f) {
        this.mParams.mSpinningBarWidth = f;
    }

    @Override // com.telguarder.helpers.p022ui.loadingButton.AnimatedButton
    public void startAnimation() {
        if (this.mState != State.IDLE) {
            return;
        }
        if (!this.layoutDone) {
            this.shouldStartAnimation = true;
            return;
        }
        this.shouldStartAnimation = false;
        if (this.mIsMorphingInProgress) {
            this.mAnimatorSet.cancel();
        } else {
            this.mParams.mInitialWidth = getWidth();
            this.mParams.mInitialHeight = Integer.valueOf(getHeight());
        }
        this.mState = State.PROGRESS;
        this.mParams.mText = getText().toString();
        setCompoundDrawables(null, null, null, null);
        setText((CharSequence) null);
        setClickable(false);
        int intValue = this.mParams.mInitialHeight.intValue();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mGradientDrawable, "cornerRadius", this.mParams.mInitialCornerRadius, this.mParams.mFinalCornerRadius);
        ValueAnimator ofInt = ValueAnimator.ofInt(this.mParams.mInitialWidth, intValue);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.telguarder.helpers.ui.loadingButton.CircularProgressButton.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue2 = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                ViewGroup.LayoutParams layoutParams = CircularProgressButton.this.getLayoutParams();
                layoutParams.width = intValue2;
                CircularProgressButton.this.setLayoutParams(layoutParams);
            }
        });
        ValueAnimator ofInt2 = ValueAnimator.ofInt(this.mParams.mInitialHeight.intValue(), intValue);
        ofInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.telguarder.helpers.ui.loadingButton.CircularProgressButton.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue2 = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                ViewGroup.LayoutParams layoutParams = CircularProgressButton.this.getLayoutParams();
                layoutParams.height = intValue2;
                CircularProgressButton.this.setLayoutParams(layoutParams);
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.mAnimatorSet = animatorSet;
        animatorSet.setDuration(300L);
        this.mAnimatorSet.playTogether(ofFloat, ofInt, ofInt2);
        this.mAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.telguarder.helpers.ui.loadingButton.CircularProgressButton.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                CircularProgressButton.this.mIsMorphingInProgress = false;
                if (CircularProgressButton.this.doneWhileMorphing) {
                    CircularProgressButton.this.doneWhileMorphing = false;
                    new Handler().postDelayed(new Runnable() { // from class: com.telguarder.helpers.ui.loadingButton.CircularProgressButton.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            CircularProgressButton.this.doneLoadingAnimation(CircularProgressButton.this.mFillColorDone, CircularProgressButton.this.mBitmapDone);
                        }
                    }, 50L);
                }
            }
        });
        this.mIsMorphingInProgress = true;
        this.mAnimatorSet.start();
    }

    public void stopAnimation() {
        if (this.mState != State.PROGRESS || this.mIsMorphingInProgress) {
            return;
        }
        this.mState = State.STOPED;
        this.mAnimatedDrawable.stop();
    }
}
