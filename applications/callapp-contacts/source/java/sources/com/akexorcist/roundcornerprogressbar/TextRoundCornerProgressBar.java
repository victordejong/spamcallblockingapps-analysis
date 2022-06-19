package com.akexorcist.roundcornerprogressbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.customview.view.AbsSavedState;
import com.akexorcist.roundcornerprogressbar.C3244a;
import com.akexorcist.roundcornerprogressbar.common.AnimatedRoundCornerProgressBar;
/* loaded from: classes-dex2jar.jar:com/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar.class */
public class TextRoundCornerProgressBar extends AnimatedRoundCornerProgressBar implements ViewTreeObserver.OnGlobalLayoutListener {
    protected static final int DEFAULT_TEXT_MARGIN = 10;
    protected static final int DEFAULT_TEXT_SIZE = 16;
    public static final int GRAVITY_END = 1;
    public static final int GRAVITY_START = 0;
    public static final int PRIORITY_INSIDE = 0;
    public static final int PRIORITY_OUTSIDE = 1;
    private int colorTextProgress;
    private int textInsideGravity;
    private int textOutsideGravity;
    private int textPositionPriority;
    private String textProgress;
    private int textProgressMargin;
    private int textProgressSize;
    private TextView tvProgress;

    /* loaded from: classes-dex2jar.jar:com/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState.class */
    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.ClassLoaderCreator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.akexorcist.roundcornerprogressbar.TextRoundCornerProgressBar.SavedState.1
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
        int colorTextProgress;
        int textInsideGravity;
        int textOutsideGravity;
        int textPositionPriority;
        String textProgress;
        int textProgressMargin;
        int textProgressSize;

        private SavedState(Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        protected SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.colorTextProgress = parcel.readInt();
            this.textProgressSize = parcel.readInt();
            this.textProgressMargin = parcel.readInt();
            this.textProgress = parcel.readString();
            this.textInsideGravity = parcel.readInt();
            this.textOutsideGravity = parcel.readInt();
            this.textPositionPriority = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.colorTextProgress);
            parcel.writeInt(this.textProgressSize);
            parcel.writeInt(this.textProgressMargin);
            parcel.writeString(this.textProgress);
            parcel.writeInt(this.textInsideGravity);
            parcel.writeInt(this.textOutsideGravity);
            parcel.writeInt(this.textPositionPriority);
        }
    }

    public TextRoundCornerProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TextRoundCornerProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void alignTextProgressInsideProgress() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.tvProgress.getLayoutParams();
        if (isReverse()) {
            if (this.textInsideGravity == 1) {
                layoutParams.addRule(7, C3244a.C3246b.layout_progress);
                if (Build.VERSION.SDK_INT >= 17) {
                    layoutParams.addRule(19, C3244a.C3246b.layout_progress);
                }
            } else {
                layoutParams.addRule(5, C3244a.C3246b.layout_progress);
                if (Build.VERSION.SDK_INT >= 17) {
                    layoutParams.addRule(18, C3244a.C3246b.layout_progress);
                }
            }
        } else if (this.textInsideGravity == 1) {
            layoutParams.addRule(5, C3244a.C3246b.layout_progress);
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.addRule(18, C3244a.C3246b.layout_progress);
            }
        } else {
            layoutParams.addRule(7, C3244a.C3246b.layout_progress);
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.addRule(19, C3244a.C3246b.layout_progress);
            }
        }
        this.tvProgress.setLayoutParams(layoutParams);
    }

    private void alignTextProgressOutsideProgress() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.tvProgress.getLayoutParams();
        if (isReverse()) {
            if (this.textOutsideGravity == 1) {
                layoutParams.addRule(9);
                if (Build.VERSION.SDK_INT >= 17) {
                    layoutParams.addRule(20);
                }
            } else {
                layoutParams.addRule(0, C3244a.C3246b.layout_progress);
                if (Build.VERSION.SDK_INT >= 17) {
                    layoutParams.addRule(16, C3244a.C3246b.layout_progress);
                }
            }
        } else if (this.textOutsideGravity == 1) {
            layoutParams.addRule(11);
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.addRule(21);
            }
        } else {
            layoutParams.addRule(1, C3244a.C3246b.layout_progress);
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.addRule(17, C3244a.C3246b.layout_progress);
            }
        }
        this.tvProgress.setLayoutParams(layoutParams);
    }

    private void clearTextProgressAlign() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.tvProgress.getLayoutParams();
        layoutParams.removeRule(0);
        layoutParams.removeRule(1);
        layoutParams.removeRule(5);
        layoutParams.removeRule(7);
        layoutParams.removeRule(9);
        layoutParams.removeRule(11);
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.removeRule(16);
            layoutParams.removeRule(17);
            layoutParams.removeRule(18);
            layoutParams.removeRule(19);
            layoutParams.removeRule(20);
            layoutParams.removeRule(21);
        }
        this.tvProgress.setLayoutParams(layoutParams);
    }

    private void drawTextProgress() {
        this.tvProgress.setText(this.textProgress);
    }

    private void drawTextProgressColor() {
        this.tvProgress.setTextColor(this.colorTextProgress);
    }

    private void drawTextProgressMargin() {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.tvProgress.getLayoutParams();
        int i = this.textProgressMargin;
        marginLayoutParams.setMargins(i, 0, i, 0);
        this.tvProgress.setLayoutParams(marginLayoutParams);
    }

    public void drawTextProgressPosition() {
        clearTextProgressAlign();
        int measuredWidth = this.tvProgress.getMeasuredWidth() + (getTextProgressMargin() * 2);
        int layoutWidth = (int) ((getLayoutWidth() - (getPadding() * 2)) / (getMax() / getProgress()));
        if (this.textPositionPriority == 1) {
            if (getLayoutWidth() - layoutWidth > measuredWidth) {
                alignTextProgressOutsideProgress();
            } else {
                alignTextProgressInsideProgress();
            }
        } else if (measuredWidth + this.textProgressMargin > layoutWidth) {
            alignTextProgressOutsideProgress();
        } else {
            alignTextProgressInsideProgress();
        }
    }

    private void drawTextProgressSize() {
        this.tvProgress.setTextSize(0, this.textProgressSize);
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void drawProgress(LinearLayout linearLayout, GradientDrawable gradientDrawable, float f, float f2, float f3, int i, int i2, boolean z) {
        float f4 = i - (i2 / 2);
        gradientDrawable.setCornerRadii(new float[]{f4, f4, f4, f4, f4, f4, f4, f4});
        linearLayout.setBackground(gradientDrawable);
        int i3 = (int) ((f3 - (i2 * 2)) / (f / f2));
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) linearLayout.getLayoutParams();
        int i4 = i3 / 2;
        if (i2 + i4 < i) {
            int max = Math.max(i - i2, 0) - i4;
            marginLayoutParams.topMargin = max;
            marginLayoutParams.bottomMargin = max;
        } else {
            marginLayoutParams.topMargin = 0;
            marginLayoutParams.bottomMargin = 0;
        }
        marginLayoutParams.width = i3;
        linearLayout.setLayoutParams(marginLayoutParams);
    }

    public String getProgressText() {
        return this.textProgress;
    }

    public int getTextInsideGravity() {
        return this.textInsideGravity;
    }

    public int getTextOutsideGravity() {
        return this.textOutsideGravity;
    }

    public int getTextPositionPriority() {
        return this.textPositionPriority;
    }

    public int getTextProgressColor() {
        return this.colorTextProgress;
    }

    public int getTextProgressMargin() {
        return this.textProgressMargin;
    }

    public int getTextProgressSize() {
        return this.textProgressSize;
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public int initLayout() {
        return C3244a.C3247c.layout_text_round_corner_progress_bar;
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void initStyleable(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3244a.C3248d.TextRoundCornerProgressBar);
        this.colorTextProgress = obtainStyledAttributes.getColor(C3244a.C3248d.TextRoundCornerProgressBar_rcTextProgressColor, -1);
        this.textProgressSize = (int) obtainStyledAttributes.getDimension(C3244a.C3248d.TextRoundCornerProgressBar_rcTextProgressSize, dp2px(16.0f));
        this.textProgressMargin = (int) obtainStyledAttributes.getDimension(C3244a.C3248d.TextRoundCornerProgressBar_rcTextProgressMargin, dp2px(10.0f));
        this.textProgress = obtainStyledAttributes.getString(C3244a.C3248d.TextRoundCornerProgressBar_rcTextProgress);
        this.textInsideGravity = obtainStyledAttributes.getInt(C3244a.C3248d.TextRoundCornerProgressBar_rcTextInsideGravity, 0);
        this.textOutsideGravity = obtainStyledAttributes.getInt(C3244a.C3248d.TextRoundCornerProgressBar_rcTextOutsideGravity, 0);
        this.textPositionPriority = obtainStyledAttributes.getInt(C3244a.C3248d.TextRoundCornerProgressBar_rcTextPositionPriority, 0);
        obtainStyledAttributes.recycle();
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void initView() {
        TextView textView = (TextView) findViewById(C3244a.C3246b.tv_progress);
        this.tvProgress = textView;
        textView.getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.tvProgress.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        drawTextProgressPosition();
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.AnimatedRoundCornerProgressBar, com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.colorTextProgress = savedState.colorTextProgress;
        this.textProgressSize = savedState.textProgressSize;
        this.textProgressMargin = savedState.textProgressMargin;
        this.textProgress = savedState.textProgress;
        this.textInsideGravity = savedState.textInsideGravity;
        this.textOutsideGravity = savedState.textOutsideGravity;
        this.textPositionPriority = savedState.textPositionPriority;
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.AnimatedRoundCornerProgressBar, com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.colorTextProgress = this.colorTextProgress;
        savedState.textProgressSize = this.textProgressSize;
        savedState.textProgressMargin = this.textProgressMargin;
        savedState.textProgress = this.textProgress;
        savedState.textInsideGravity = this.textInsideGravity;
        savedState.textOutsideGravity = this.textOutsideGravity;
        savedState.textPositionPriority = this.textPositionPriority;
        return savedState;
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void onViewDraw() {
        drawTextProgress();
        drawTextProgressSize();
        drawTextProgressMargin();
        post(new Runnable() { // from class: com.akexorcist.roundcornerprogressbar.TextRoundCornerProgressBar.1
            @Override // java.lang.Runnable
            public final void run() {
                TextRoundCornerProgressBar.this.drawTextProgressPosition();
            }
        });
        drawTextProgressColor();
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.AnimatedRoundCornerProgressBar, com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void setProgress(float f) {
        super.setProgress(f);
        drawTextProgressPosition();
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.AnimatedRoundCornerProgressBar, com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void setProgress(int i) {
        setProgress(i);
    }

    public void setProgressText(String str) {
        this.textProgress = str;
        drawTextProgress();
        drawTextProgressPosition();
    }

    public void setTextInsideGravity(int i) {
        this.textInsideGravity = i;
        drawTextProgressPosition();
    }

    public void setTextOutsideGravity(int i) {
        this.textOutsideGravity = i;
        drawTextProgressPosition();
    }

    public void setTextPositionPriority(int i) {
        this.textPositionPriority = i;
        drawTextProgressPosition();
    }

    public void setTextProgressColor(int i) {
        this.colorTextProgress = i;
        drawTextProgressColor();
    }

    public void setTextProgressMargin(int i) {
        this.textProgressMargin = i;
        drawTextProgressMargin();
        drawTextProgressPosition();
    }

    public void setTextProgressSize(int i) {
        this.textProgressSize = i;
        drawTextProgressSize();
        drawTextProgressPosition();
    }
}
