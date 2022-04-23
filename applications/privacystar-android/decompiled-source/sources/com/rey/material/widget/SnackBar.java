package com.rey.material.widget;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.rey.material.C1686R;
import com.rey.material.app.ThemeManager;
import com.rey.material.drawable.RippleDrawable;
import com.rey.material.util.ThemeUtil;
import com.rey.material.util.ViewUtil;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/SnackBar.class */
public class SnackBar extends FrameLayout implements ThemeManager.OnThemeChangedListener {
    public static final int MATCH_PARENT = -1;
    public static final int STATE_DISMISSED = 0;
    public static final int STATE_DISMISSING = 3;
    public static final int STATE_SHOWING = 2;
    public static final int STATE_SHOWN = 1;
    public static final int WRAP_CONTENT = -2;
    private Button mAction;
    private OnActionClickListener mActionClickListener;
    private int mActionId;
    private BackgroundDrawable mBackground;
    private long mDuration;
    private int mHeight;
    private Animation mInAnimation;
    private boolean mIsRtl;
    private int mMarginBottom;
    private int mMarginStart;
    private int mMaxHeight;
    private int mMinHeight;
    private Animation mOutAnimation;
    private boolean mRemoveOnDismiss;
    private OnStateChangeListener mStateChangeListener;
    private TextView mText;
    private int mWidth;
    private Runnable mDismissRunnable = new Runnable() { // from class: com.rey.material.widget.SnackBar.1
        @Override // java.lang.Runnable
        public void run() {
            SnackBar.this.dismiss();
        }
    };
    private int mState = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/SnackBar$BackgroundDrawable.class */
    public class BackgroundDrawable extends Drawable {
        private int mBackgroundColor;
        private int mBackgroundRadius;
        private Paint mPaint = new Paint();
        private RectF mRect = new RectF();

        public BackgroundDrawable() {
            this.mPaint.setAntiAlias(true);
            this.mPaint.setStyle(Paint.Style.FILL);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.drawRoundRect(this.mRect, this.mBackgroundRadius, this.mBackgroundRadius, this.mPaint);
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        protected void onBoundsChange(Rect rect) {
            this.mRect.set(rect);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.mPaint.setAlpha(i);
        }

        public void setColor(int i) {
            if (this.mBackgroundColor != i) {
                this.mBackgroundColor = i;
                this.mPaint.setColor(this.mBackgroundColor);
                invalidateSelf();
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.mPaint.setColorFilter(colorFilter);
        }

        public void setRadius(int i) {
            if (this.mBackgroundRadius != i) {
                this.mBackgroundRadius = i;
                invalidateSelf();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/SnackBar$OnActionClickListener.class */
    public interface OnActionClickListener {
        void onActionClick(SnackBar snackBar, int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/SnackBar$OnStateChangeListener.class */
    public interface OnStateChangeListener {
        void onStateChange(SnackBar snackBar, int i, int i2);
    }

    public SnackBar(Context context) {
        super(context);
    }

    public SnackBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SnackBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public static SnackBar make(Context context) {
        return new SnackBar(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setState(int i) {
        if (this.mState != i) {
            int i2 = this.mState;
            this.mState = i;
            if (this.mStateChangeListener != null) {
                this.mStateChangeListener.onStateChange(this, i2, this.mState);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startTimer() {
        removeCallbacks(this.mDismissRunnable);
        if (this.mDuration > 0) {
            postDelayed(this.mDismissRunnable, this.mDuration);
        }
    }

    public SnackBar actionClickListener(OnActionClickListener onActionClickListener) {
        this.mActionClickListener = onActionClickListener;
        return this;
    }

    public SnackBar actionId(int i) {
        this.mActionId = i;
        return this;
    }

    public SnackBar actionRipple(int i) {
        if (i != 0) {
            ViewUtil.setBackground(this.mAction, new RippleDrawable.Builder(getContext(), i).build());
        }
        return this;
    }

    public SnackBar actionText(int i) {
        return i == 0 ? actionText((CharSequence) null) : actionText(getContext().getResources().getString(i));
    }

    public SnackBar actionText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            this.mAction.setVisibility(4);
        } else {
            this.mAction.setVisibility(0);
            this.mAction.setText(charSequence);
        }
        return this;
    }

    public SnackBar actionTextAppearance(int i) {
        if (i != 0) {
            this.mAction.setTextAppearance(getContext(), i);
        }
        return this;
    }

    public SnackBar actionTextColor(int i) {
        this.mAction.setTextColor(i);
        return this;
    }

    public SnackBar actionTextColor(ColorStateList colorStateList) {
        this.mAction.setTextColor(colorStateList);
        return this;
    }

    public SnackBar actionTextSize(float f) {
        this.mAction.setTextSize(2, f);
        return this;
    }

    public SnackBar animationIn(Animation animation) {
        this.mInAnimation = animation;
        return this;
    }

    public SnackBar animationOut(Animation animation) {
        this.mOutAnimation = animation;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.rey.material.widget.FrameLayout
    public void applyStyle(Context context, AttributeSet attributeSet, int i, int i2) {
        super.applyStyle(context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.SnackBar, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        ColorStateList colorStateList = null;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = 0;
        boolean z = false;
        int i7 = 0;
        int i8 = 0;
        int i9 = -1;
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = obtainStyledAttributes.getIndex(i10);
            if (index == C1686R.styleable.SnackBar_sb_backgroundColor) {
                backgroundColor(obtainStyledAttributes.getColor(index, 0));
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_backgroundCornerRadius) {
                backgroundRadius(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_horizontalPadding) {
                i3 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_verticalPadding) {
                i4 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                i3 = i3;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_width) {
                if (ThemeUtil.getType(obtainStyledAttributes, index) == 16) {
                    width(obtainStyledAttributes.getInteger(index, 0));
                    i3 = i3;
                    i4 = i4;
                    i5 = i5;
                    i6 = i6;
                    z = z;
                    i7 = i7;
                    i8 = i8;
                    i9 = i9;
                    colorStateList = colorStateList;
                } else {
                    width(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                    i3 = i3;
                    i4 = i4;
                    i5 = i5;
                    i6 = i6;
                    z = z;
                    i7 = i7;
                    i8 = i8;
                    i9 = i9;
                    colorStateList = colorStateList;
                }
            } else if (index == C1686R.styleable.SnackBar_sb_height) {
                if (ThemeUtil.getType(obtainStyledAttributes, index) == 16) {
                    height(obtainStyledAttributes.getInteger(index, 0));
                    i3 = i3;
                    i4 = i4;
                    i5 = i5;
                    i6 = i6;
                    z = z;
                    i7 = i7;
                    i8 = i8;
                    i9 = i9;
                    colorStateList = colorStateList;
                } else {
                    height(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                    i3 = i3;
                    i4 = i4;
                    i5 = i5;
                    i6 = i6;
                    z = z;
                    i7 = i7;
                    i8 = i8;
                    i9 = i9;
                    colorStateList = colorStateList;
                }
            } else if (index == C1686R.styleable.SnackBar_sb_minWidth) {
                minWidth(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_maxWidth) {
                maxWidth(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_minHeight) {
                minHeight(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_maxHeight) {
                maxHeight(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_marginStart) {
                marginStart(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_marginBottom) {
                marginBottom(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_textSize) {
                i5 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                i3 = i3;
                i4 = i4;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_textColor) {
                i6 = obtainStyledAttributes.getColor(index, 0);
                z = true;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_textAppearance) {
                i7 = obtainStyledAttributes.getResourceId(index, 0);
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_text) {
                text(obtainStyledAttributes.getString(index));
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_singleLine) {
                singleLine(obtainStyledAttributes.getBoolean(index, true));
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_maxLines) {
                maxLines(obtainStyledAttributes.getInteger(index, 0));
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_lines) {
                lines(obtainStyledAttributes.getInteger(index, 0));
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_ellipsize) {
                switch (obtainStyledAttributes.getInteger(index, 0)) {
                    case 1:
                        ellipsize(TextUtils.TruncateAt.START);
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                        z = z;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        colorStateList = colorStateList;
                        continue;
                    case 2:
                        ellipsize(TextUtils.TruncateAt.MIDDLE);
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                        z = z;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        colorStateList = colorStateList;
                        continue;
                    case 3:
                        ellipsize(TextUtils.TruncateAt.END);
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                        z = z;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        colorStateList = colorStateList;
                        continue;
                    case 4:
                        ellipsize(TextUtils.TruncateAt.MARQUEE);
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                        z = z;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        colorStateList = colorStateList;
                        continue;
                    default:
                        ellipsize(TextUtils.TruncateAt.END);
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                        z = z;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        colorStateList = colorStateList;
                        continue;
                }
            } else if (index == C1686R.styleable.SnackBar_sb_actionTextSize) {
                i9 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_actionTextColor) {
                colorStateList = obtainStyledAttributes.getColorStateList(index);
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
            } else if (index == C1686R.styleable.SnackBar_sb_actionTextAppearance) {
                i8 = obtainStyledAttributes.getResourceId(index, 0);
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_actionText) {
                actionText(obtainStyledAttributes.getString(index));
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_actionRipple) {
                actionRipple(obtainStyledAttributes.getResourceId(index, 0));
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_duration) {
                duration(obtainStyledAttributes.getInteger(index, 0));
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_removeOnDismiss) {
                removeOnDismiss(obtainStyledAttributes.getBoolean(index, true));
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else if (index == C1686R.styleable.SnackBar_sb_inAnimation) {
                animationIn(AnimationUtils.loadAnimation(getContext(), obtainStyledAttributes.getResourceId(index, 0)));
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
            } else {
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                z = z;
                i7 = i7;
                i8 = i8;
                i9 = i9;
                colorStateList = colorStateList;
                if (index == C1686R.styleable.SnackBar_sb_outAnimation) {
                    animationOut(AnimationUtils.loadAnimation(getContext(), obtainStyledAttributes.getResourceId(index, 0)));
                    colorStateList = colorStateList;
                    i9 = i9;
                    i8 = i8;
                    i7 = i7;
                    z = z;
                    i6 = i6;
                    i5 = i5;
                    i4 = i4;
                    i3 = i3;
                }
            }
        }
        obtainStyledAttributes.recycle();
        if (i3 >= 0 || i4 >= 0) {
            if (i3 < 0) {
                i3 = this.mText.getPaddingLeft();
            }
            if (i4 < 0) {
                i4 = this.mText.getPaddingTop();
            }
            padding(i3, i4);
        }
        if (i7 != 0) {
            textAppearance(i7);
        }
        if (i5 >= 0) {
            textSize(i5);
        }
        if (z) {
            textColor(i6);
        }
        if (i7 != 0) {
            actionTextAppearance(i8);
        }
        if (i9 >= 0) {
            actionTextSize(i9);
        }
        if (colorStateList != null) {
            actionTextColor(colorStateList);
        }
    }

    public SnackBar backgroundColor(int i) {
        this.mBackground.setColor(i);
        return this;
    }

    public SnackBar backgroundRadius(int i) {
        this.mBackground.setRadius(i);
        return this;
    }

    public void dismiss() {
        if (this.mState == 1) {
            removeCallbacks(this.mDismissRunnable);
            if (this.mOutAnimation != null) {
                this.mOutAnimation.cancel();
                this.mOutAnimation.reset();
                this.mOutAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.rey.material.widget.SnackBar.4
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        if (SnackBar.this.mRemoveOnDismiss && SnackBar.this.getParent() != null && (SnackBar.this.getParent() instanceof ViewGroup)) {
                            ((ViewGroup) SnackBar.this.getParent()).removeView(SnackBar.this);
                        }
                        SnackBar.this.setState(0);
                        SnackBar.this.setVisibility(8);
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                        SnackBar.this.setState(3);
                    }
                });
                clearAnimation();
                startAnimation(this.mOutAnimation);
                return;
            }
            if (this.mRemoveOnDismiss && getParent() != null && (getParent() instanceof ViewGroup)) {
                ((ViewGroup) getParent()).removeView(this);
            }
            setState(0);
            setVisibility(8);
        }
    }

    public SnackBar duration(long j) {
        this.mDuration = j;
        return this;
    }

    public SnackBar ellipsize(TextUtils.TruncateAt truncateAt) {
        this.mText.setEllipsize(truncateAt);
        return this;
    }

    public int getState() {
        return this.mState;
    }

    public SnackBar height(int i) {
        this.mHeight = i;
        return this;
    }

    public SnackBar horizontalPadding(int i) {
        this.mText.setPadding(i, this.mText.getPaddingTop(), i, this.mText.getPaddingBottom());
        this.mAction.setPadding(i, this.mAction.getPaddingTop(), i, this.mAction.getPaddingBottom());
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.rey.material.widget.FrameLayout
    public void init(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mWidth = -1;
        this.mHeight = -2;
        this.mDuration = -1L;
        this.mIsRtl = false;
        this.mText = new TextView(context);
        this.mText.setSingleLine(true);
        this.mText.setGravity(8388627);
        addView(this.mText, new FrameLayout.LayoutParams(-2, -2));
        this.mAction = new Button(context);
        this.mAction.setBackgroundResource(0);
        this.mAction.setGravity(17);
        this.mAction.setOnClickListener(new View.OnClickListener() { // from class: com.rey.material.widget.SnackBar.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SnackBar.this.mActionClickListener != null) {
                    SnackBar.this.mActionClickListener.onActionClick(SnackBar.this, SnackBar.this.mActionId);
                }
                SnackBar.this.dismiss();
            }
        });
        addView(this.mAction, new FrameLayout.LayoutParams(-2, -2));
        this.mBackground = new BackgroundDrawable();
        this.mBackground.setColor(-13487566);
        ViewUtil.setBackground(this, this.mBackground);
        setClickable(true);
        super.init(context, attributeSet, i, i2);
    }

    public SnackBar lines(int i) {
        this.mText.setLines(i);
        return this;
    }

    public SnackBar marginBottom(int i) {
        this.mMarginBottom = i;
        return this;
    }

    public SnackBar marginStart(int i) {
        this.mMarginStart = i;
        return this;
    }

    public SnackBar maxHeight(int i) {
        this.mMaxHeight = i;
        return this;
    }

    public SnackBar maxLines(int i) {
        this.mText.setMaxLines(i);
        return this;
    }

    public SnackBar maxWidth(int i) {
        this.mText.setMaxWidth(i);
        return this;
    }

    public SnackBar minHeight(int i) {
        this.mMinHeight = i;
        return this;
    }

    public SnackBar minWidth(int i) {
        this.mText.setMinWidth(i);
        return this;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int paddingRight = (i3 - i) - getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = (i4 - i2) - getPaddingBottom();
        int i5 = paddingLeft;
        int i6 = paddingRight;
        if (this.mAction.getVisibility() == 0) {
            if (this.mIsRtl) {
                this.mAction.layout(paddingLeft, paddingTop, this.mAction.getMeasuredWidth() + paddingLeft, paddingBottom);
                i5 = paddingLeft + (this.mAction.getMeasuredWidth() - this.mText.getPaddingLeft());
                i6 = paddingRight;
            } else {
                this.mAction.layout(paddingRight - this.mAction.getMeasuredWidth(), paddingTop, paddingRight, paddingBottom);
                i6 = paddingRight - (this.mAction.getMeasuredWidth() - this.mText.getPaddingRight());
                i5 = paddingLeft;
            }
        }
        this.mText.layout(i5, paddingTop, i6, paddingBottom);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (this.mAction.getVisibility() == 0) {
            this.mAction.measure(View.MeasureSpec.makeMeasureSpec(0, 0), i2);
            int paddingLeft = this.mIsRtl ? this.mText.getPaddingLeft() : this.mText.getPaddingRight();
            this.mText.measure(View.MeasureSpec.makeMeasureSpec(size - (this.mAction.getMeasuredWidth() - paddingLeft), mode), i2);
            i3 = (this.mText.getMeasuredWidth() + this.mAction.getMeasuredWidth()) - paddingLeft;
        } else {
            this.mText.measure(View.MeasureSpec.makeMeasureSpec(size, mode), i2);
            i3 = this.mText.getMeasuredWidth();
        }
        int max = Math.max(this.mText.getMeasuredHeight(), this.mAction.getMeasuredHeight());
        if (mode != Integer.MIN_VALUE) {
            i4 = size;
            if (mode != 1073741824) {
                i4 = i3;
            }
        } else {
            i4 = Math.min(size, i3);
        }
        if (mode2 != Integer.MIN_VALUE) {
            i5 = size2;
            if (mode2 != 1073741824) {
                i5 = max;
            }
        } else {
            i5 = Math.min(size2, max);
        }
        int i6 = i5;
        if (this.mMaxHeight > 0) {
            i6 = Math.min(this.mMaxHeight, i5);
        }
        int i7 = i6;
        if (this.mMinHeight > 0) {
            i7 = Math.max(this.mMinHeight, i6);
        }
        setMeasuredDimension(i4, i7);
    }

    @Override // android.view.View
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (this.mIsRtl != z) {
            this.mIsRtl = z;
            if (Build.VERSION.SDK_INT >= 17) {
                int i2 = 3;
                this.mText.setTextDirection(this.mIsRtl ? 4 : 3);
                Button button = this.mAction;
                if (this.mIsRtl) {
                    i2 = 4;
                }
                button.setTextDirection(i2);
            }
            requestLayout();
        }
    }

    public SnackBar padding(int i, int i2) {
        this.mText.setPadding(i, i2, i, i2);
        this.mAction.setPadding(i, i2, i, i2);
        return this;
    }

    public SnackBar removeOnDismiss(boolean z) {
        this.mRemoveOnDismiss = z;
        return this;
    }

    @TargetApi(17)
    public void show() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null && this.mState != 2 && this.mState != 3) {
            if (viewGroup instanceof FrameLayout) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
                layoutParams.width = this.mWidth;
                layoutParams.height = this.mHeight;
                layoutParams.gravity = 8388691;
                if (this.mIsRtl) {
                    layoutParams.rightMargin = this.mMarginStart;
                } else {
                    layoutParams.leftMargin = this.mMarginStart;
                }
                layoutParams.bottomMargin = this.mMarginBottom;
                setLayoutParams(layoutParams);
            } else if (viewGroup instanceof RelativeLayout) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) getLayoutParams();
                layoutParams2.width = this.mWidth;
                layoutParams2.height = this.mHeight;
                layoutParams2.addRule(12);
                layoutParams2.addRule(Build.VERSION.SDK_INT >= 17 ? 20 : 9);
                if (this.mIsRtl) {
                    layoutParams2.rightMargin = this.mMarginStart;
                } else {
                    layoutParams2.leftMargin = this.mMarginStart;
                }
                layoutParams2.bottomMargin = this.mMarginBottom;
                setLayoutParams(layoutParams2);
            }
            if (this.mInAnimation == null || this.mState == 1) {
                setVisibility(0);
                setState(1);
                startTimer();
                return;
            }
            this.mInAnimation.cancel();
            this.mInAnimation.reset();
            this.mInAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.rey.material.widget.SnackBar.3
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    SnackBar.this.setState(1);
                    SnackBar.this.startTimer();
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                    SnackBar.this.setState(2);
                    SnackBar.this.setVisibility(0);
                }
            });
            clearAnimation();
            startAnimation(this.mInAnimation);
        }
    }

    public void show(Activity activity) {
        show((ViewGroup) activity.getWindow().findViewById(16908290));
    }

    public void show(ViewGroup viewGroup) {
        if (this.mState != 2 && this.mState != 3) {
            if (getParent() != viewGroup) {
                if (getParent() != null) {
                    ((ViewGroup) getParent()).removeView(this);
                }
                viewGroup.addView(this);
            }
            show();
        }
    }

    public SnackBar singleLine(boolean z) {
        this.mText.setSingleLine(z);
        return this;
    }

    public SnackBar stateChangeListener(OnStateChangeListener onStateChangeListener) {
        this.mStateChangeListener = onStateChangeListener;
        return this;
    }

    public SnackBar text(int i) {
        return text(getContext().getResources().getString(i));
    }

    public SnackBar text(CharSequence charSequence) {
        this.mText.setText(charSequence);
        return this;
    }

    public SnackBar textAppearance(int i) {
        if (i != 0) {
            this.mText.setTextAppearance(getContext(), i);
        }
        return this;
    }

    public SnackBar textColor(int i) {
        this.mText.setTextColor(i);
        return this;
    }

    public SnackBar textSize(float f) {
        this.mText.setTextSize(2, f);
        return this;
    }

    public SnackBar verticalPadding(int i) {
        this.mText.setPadding(this.mText.getPaddingLeft(), i, this.mText.getPaddingRight(), i);
        this.mAction.setPadding(this.mAction.getPaddingLeft(), i, this.mAction.getPaddingRight(), i);
        return this;
    }

    public SnackBar width(int i) {
        this.mWidth = i;
        return this;
    }
}
