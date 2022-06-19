package com.akexorcist.roundcornerprogressbar.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.customview.view.AbsSavedState;
import com.akexorcist.roundcornerprogressbar.C3244a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar.class */
public abstract class BaseRoundCornerProgressBar extends LinearLayout {
    protected static final int DEFAULT_BACKGROUND_PADDING = 0;
    protected static final int DEFAULT_MAX_PROGRESS = 100;
    protected static final int DEFAULT_PROGRESS = 0;
    protected static final int DEFAULT_PROGRESS_RADIUS = 30;
    protected static final int DEFAULT_SECONDARY_PROGRESS = 0;
    protected int backgroundColor;
    protected boolean isReverse;
    protected LinearLayout layoutBackground;
    protected LinearLayout layoutProgress;
    protected LinearLayout layoutSecondaryProgress;
    protected float max;
    protected int padding;
    protected float progress;
    protected AbstractC3256a progressChangedListener;
    private int progressColor;
    protected int[] progressColors;
    protected GradientDrawable progressDrawable;
    protected int radius;
    protected float secondaryProgress;
    protected int secondaryProgressColor;
    protected int[] secondaryProgressColors;
    protected GradientDrawable secondaryProgressDrawable;
    protected int totalWidth;

    /* loaded from: classes-dex2jar.jar:com/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.ClassLoaderCreator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar.SavedState.1
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
        int colorBackground;
        int colorProgress;
        int[] colorProgressArray;
        int colorSecondaryProgress;
        int[] colorSecondaryProgressArray;
        boolean isReverse;
        float max;
        int padding;
        float progress;
        int radius;
        float secondaryProgress;

        SavedState(Parcel parcel) {
            this(parcel, null);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.max = parcel.readFloat();
            this.progress = parcel.readFloat();
            this.secondaryProgress = parcel.readFloat();
            this.radius = parcel.readInt();
            this.padding = parcel.readInt();
            this.colorBackground = parcel.readInt();
            this.colorProgress = parcel.readInt();
            this.colorSecondaryProgress = parcel.readInt();
            int[] iArr = new int[parcel.readInt()];
            this.colorProgressArray = iArr;
            parcel.readIntArray(iArr);
            int[] iArr2 = new int[parcel.readInt()];
            this.colorSecondaryProgressArray = iArr2;
            parcel.readIntArray(iArr2);
            this.isReverse = parcel.readByte() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.max);
            parcel.writeFloat(this.progress);
            parcel.writeFloat(this.secondaryProgress);
            parcel.writeInt(this.radius);
            parcel.writeInt(this.padding);
            parcel.writeInt(this.colorBackground);
            parcel.writeInt(this.colorProgress);
            parcel.writeInt(this.colorSecondaryProgress);
            int[] iArr = this.colorProgressArray;
            parcel.writeInt(iArr != null ? iArr.length : 0);
            int[] iArr2 = this.colorProgressArray;
            if (iArr2 == null) {
                iArr2 = new int[0];
            }
            parcel.writeIntArray(iArr2);
            int[] iArr3 = this.colorSecondaryProgressArray;
            parcel.writeInt(iArr3 != null ? iArr3.length : 0);
            int[] iArr4 = this.colorSecondaryProgressArray;
            if (iArr4 == null) {
                iArr4 = new int[0];
            }
            parcel.writeIntArray(iArr4);
            parcel.writeByte(this.isReverse ? (byte) 1 : (byte) 0);
        }
    }

    /* renamed from: com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar$a */
    /* loaded from: classes-dex2jar.jar:com/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$a.class */
    public interface AbstractC3256a {
        /* renamed from: a */
        void mo26326a(float f);
    }

    public BaseRoundCornerProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setup(context, attributeSet);
    }

    public BaseRoundCornerProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setup(context, attributeSet);
    }

    public BaseRoundCornerProgressBar(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        setup(context, attributeSet);
    }

    private void drawBackgroundProgress() {
        GradientDrawable createGradientDrawable = createGradientDrawable(this.backgroundColor);
        float f = this.radius - (this.padding / 2);
        createGradientDrawable.setCornerRadii(new float[]{f, f, f, f, f, f, f, f});
        this.layoutBackground.setBackground(createGradientDrawable);
    }

    private void drawPadding() {
        LinearLayout linearLayout = this.layoutBackground;
        int i = this.padding;
        linearLayout.setPadding(i, i, i, i);
    }

    public void drawPrimaryProgress() {
        drawProgress(this.layoutProgress, this.progressDrawable, this.max, this.progress, this.totalWidth, Math.min(this.radius, this.layoutBackground.getMeasuredHeight() / 2), this.padding, this.isReverse);
    }

    private void drawProgressReverse() {
        setupProgressReversing(this.layoutProgress, this.isReverse);
        setupProgressReversing(this.layoutSecondaryProgress, this.isReverse);
    }

    public void drawSecondaryProgress() {
        drawProgress(this.layoutSecondaryProgress, this.secondaryProgressDrawable, this.max, this.secondaryProgress, this.totalWidth, Math.min(this.radius, this.layoutBackground.getMeasuredHeight() / 2), this.padding, this.isReverse);
    }

    private void removeLayoutParamsRule(RelativeLayout.LayoutParams layoutParams) {
        if (Build.VERSION.SDK_INT < 17) {
            layoutParams.addRule(11, 0);
            layoutParams.addRule(9, 0);
            return;
        }
        layoutParams.removeRule(11);
        layoutParams.removeRule(21);
        layoutParams.removeRule(9);
        layoutParams.removeRule(20);
    }

    private void setupProgressReversing(LinearLayout linearLayout, boolean z) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) linearLayout.getLayoutParams();
        removeLayoutParamsRule(layoutParams);
        if (z) {
            layoutParams.addRule(11);
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.addRule(21);
            }
        } else {
            layoutParams.addRule(9);
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.addRule(20);
            }
        }
        linearLayout.setLayoutParams(layoutParams);
    }

    private void updateProgressDrawable() {
        int i = this.progressColor;
        if (i != -1) {
            this.progressDrawable = createGradientDrawable(i);
            return;
        }
        int[] iArr = this.progressColors;
        if (iArr == null || iArr.length <= 0) {
            this.progressDrawable = createGradientDrawable(getResources().getColor(C3244a.C3245a.round_corner_progress_bar_progress_default));
        } else {
            this.progressDrawable = createGradientDrawable(iArr);
        }
    }

    private void updateSecondaryProgressDrawable() {
        int i = this.secondaryProgressColor;
        if (i != -1) {
            this.secondaryProgressDrawable = createGradientDrawable(i);
            return;
        }
        int[] iArr = this.secondaryProgressColors;
        if (iArr == null || iArr.length <= 0) {
            this.secondaryProgressDrawable = createGradientDrawable(getResources().getColor(C3244a.C3245a.round_corner_progress_bar_secondary_progress_default));
        } else {
            this.secondaryProgressDrawable = createGradientDrawable(iArr);
        }
    }

    public GradientDrawable createGradientDrawable(int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(i);
        return gradientDrawable;
    }

    protected GradientDrawable createGradientDrawable(int[] iArr) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setOrientation(!isReverse() ? GradientDrawable.Orientation.LEFT_RIGHT : GradientDrawable.Orientation.RIGHT_LEFT);
        gradientDrawable.setColors(iArr);
        return gradientDrawable;
    }

    public float dp2px(float f) {
        return TypedValue.applyDimension(1, f, getContext().getResources().getDisplayMetrics());
    }

    protected void drawAll() {
        drawBackgroundProgress();
        drawPadding();
        drawProgressReverse();
        drawPrimaryProgress();
        drawSecondaryProgress();
        onViewDraw();
    }

    protected abstract void drawProgress(LinearLayout linearLayout, GradientDrawable gradientDrawable, float f, float f2, float f3, int i, int i2, boolean z);

    public float getLayoutWidth() {
        return this.totalWidth;
    }

    public float getMax() {
        return this.max;
    }

    public int getPadding() {
        return this.padding;
    }

    public float getProgress() {
        return this.progress;
    }

    public int getProgressBackgroundColor() {
        return this.backgroundColor;
    }

    public int getProgressColor() {
        return this.progressColor;
    }

    public int[] getProgressColors() {
        return this.progressColors;
    }

    public int getRadius() {
        return this.radius;
    }

    public float getSecondaryProgress() {
        return this.secondaryProgress;
    }

    public int getSecondaryProgressColor() {
        return this.secondaryProgressColor;
    }

    public int[] getSecondaryProgressColors() {
        return this.secondaryProgressColors;
    }

    public float getSecondaryProgressWidth() {
        LinearLayout linearLayout = this.layoutSecondaryProgress;
        return linearLayout != null ? linearLayout.getWidth() : BitmapDescriptorFactory.HUE_RED;
    }

    protected abstract int initLayout();

    protected abstract void initStyleable(Context context, AttributeSet attributeSet);

    protected abstract void initView();

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        drawAll();
    }

    public boolean isReverse() {
        return this.isReverse;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.max = savedState.max;
        this.progress = savedState.progress;
        this.secondaryProgress = savedState.secondaryProgress;
        this.radius = savedState.radius;
        this.padding = savedState.padding;
        this.backgroundColor = savedState.colorBackground;
        this.progressColor = savedState.colorProgress;
        this.secondaryProgressColor = savedState.colorSecondaryProgress;
        this.progressColors = savedState.colorProgressArray;
        this.secondaryProgressColors = savedState.colorSecondaryProgressArray;
        this.isReverse = savedState.isReverse;
        updateProgressDrawable();
        updateSecondaryProgressDrawable();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.max = this.max;
        savedState.progress = this.progress;
        savedState.secondaryProgress = this.secondaryProgress;
        savedState.radius = this.radius;
        savedState.padding = this.padding;
        savedState.colorBackground = this.backgroundColor;
        savedState.colorProgress = this.progressColor;
        savedState.colorSecondaryProgress = this.secondaryProgressColor;
        savedState.colorProgressArray = this.progressColors;
        savedState.colorSecondaryProgressArray = this.secondaryProgressColors;
        savedState.isReverse = this.isReverse;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.totalWidth = i;
        drawBackgroundProgress();
        drawPadding();
        drawProgressReverse();
        post(new Runnable() { // from class: com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar.1
            @Override // java.lang.Runnable
            public final void run() {
                BaseRoundCornerProgressBar.this.drawPrimaryProgress();
                BaseRoundCornerProgressBar.this.drawSecondaryProgress();
            }
        });
        onViewDraw();
    }

    protected abstract void onViewDraw();

    public void setMax(float f) {
        if (f >= BitmapDescriptorFactory.HUE_RED) {
            this.max = f;
        }
        if (this.progress > f) {
            this.progress = f;
        }
        drawPrimaryProgress();
        drawSecondaryProgress();
    }

    public void setOnProgressChangedListener(AbstractC3256a abstractC3256a) {
        this.progressChangedListener = abstractC3256a;
    }

    public void setPadding(int i) {
        if (i >= 0) {
            this.padding = i;
        }
        drawPadding();
        drawPrimaryProgress();
        drawSecondaryProgress();
    }

    public void setProgress(float f) {
        if (f < BitmapDescriptorFactory.HUE_RED) {
            this.progress = BitmapDescriptorFactory.HUE_RED;
        } else {
            this.progress = Math.min(f, this.max);
        }
        drawPrimaryProgress();
        AbstractC3256a abstractC3256a = this.progressChangedListener;
        if (abstractC3256a != null) {
            abstractC3256a.mo26326a(this.progress);
        }
    }

    public void setProgress(int i) {
        setProgress(i);
    }

    public void setProgressBackgroundColor(int i) {
        this.backgroundColor = i;
        drawBackgroundProgress();
    }

    public void setProgressColor(int i) {
        this.progressColor = i;
        this.progressColors = null;
        updateProgressDrawable();
        drawPrimaryProgress();
    }

    public void setProgressColors(int[] iArr) {
        this.progressColor = -1;
        this.progressColors = iArr;
        updateProgressDrawable();
        drawPrimaryProgress();
    }

    public void setRadius(int i) {
        if (i >= 0) {
            this.radius = i;
        }
        drawBackgroundProgress();
        drawPrimaryProgress();
        drawSecondaryProgress();
    }

    public void setReverse(boolean z) {
        this.isReverse = z;
        drawProgressReverse();
        drawPrimaryProgress();
        drawSecondaryProgress();
    }

    public void setSecondaryProgress(float f) {
        if (f < BitmapDescriptorFactory.HUE_RED) {
            this.secondaryProgress = BitmapDescriptorFactory.HUE_RED;
        } else {
            this.secondaryProgress = Math.min(f, this.max);
        }
        drawSecondaryProgress();
        AbstractC3256a abstractC3256a = this.progressChangedListener;
        if (abstractC3256a != null) {
            abstractC3256a.mo26326a(this.secondaryProgress);
        }
    }

    public void setSecondaryProgress(int i) {
        setSecondaryProgress(i);
    }

    public void setSecondaryProgressColor(int i) {
        this.secondaryProgressColor = i;
        this.secondaryProgressColors = null;
        updateSecondaryProgressDrawable();
        drawSecondaryProgress();
    }

    public void setSecondaryProgressColors(int[] iArr) {
        this.secondaryProgressColor = -1;
        this.secondaryProgressColors = iArr;
        updateSecondaryProgressDrawable();
        drawSecondaryProgress();
    }

    public void setup(Context context, AttributeSet attributeSet) {
        setupStyleable(context, attributeSet);
        removeAllViews();
        LayoutInflater.from(context).inflate(initLayout(), this);
        this.layoutBackground = (LinearLayout) findViewById(C3244a.C3246b.layout_background);
        this.layoutProgress = (LinearLayout) findViewById(C3244a.C3246b.layout_progress);
        this.layoutSecondaryProgress = (LinearLayout) findViewById(C3244a.C3246b.layout_secondary_progress);
        initView();
    }

    public void setupStyleable(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3244a.C3248d.BaseRoundCornerProgressBar);
        this.radius = (int) obtainStyledAttributes.getDimension(C3244a.C3248d.BaseRoundCornerProgressBar_rcRadius, dp2px(30.0f));
        this.padding = (int) obtainStyledAttributes.getDimension(C3244a.C3248d.BaseRoundCornerProgressBar_rcBackgroundPadding, dp2px(BitmapDescriptorFactory.HUE_RED));
        this.isReverse = obtainStyledAttributes.getBoolean(C3244a.C3248d.BaseRoundCornerProgressBar_rcReverse, false);
        this.max = obtainStyledAttributes.getFloat(C3244a.C3248d.BaseRoundCornerProgressBar_rcMax, 100.0f);
        this.progress = obtainStyledAttributes.getFloat(C3244a.C3248d.BaseRoundCornerProgressBar_rcProgress, BitmapDescriptorFactory.HUE_RED);
        this.secondaryProgress = obtainStyledAttributes.getFloat(C3244a.C3248d.BaseRoundCornerProgressBar_rcSecondaryProgress, BitmapDescriptorFactory.HUE_RED);
        this.backgroundColor = obtainStyledAttributes.getColor(C3244a.C3248d.BaseRoundCornerProgressBar_rcBackgroundColor, context.getResources().getColor(C3244a.C3245a.round_corner_progress_bar_background_default));
        this.progressColor = obtainStyledAttributes.getColor(C3244a.C3248d.BaseRoundCornerProgressBar_rcProgressColor, -1);
        int resourceId = obtainStyledAttributes.getResourceId(C3244a.C3248d.BaseRoundCornerProgressBar_rcProgressColors, 0);
        if (resourceId != 0) {
            this.progressColors = getResources().getIntArray(resourceId);
        } else {
            this.progressColors = null;
        }
        this.secondaryProgressColor = obtainStyledAttributes.getColor(C3244a.C3248d.BaseRoundCornerProgressBar_rcSecondaryProgressColor, -1);
        int resourceId2 = obtainStyledAttributes.getResourceId(C3244a.C3248d.BaseRoundCornerProgressBar_rcSecondaryProgressColors, 0);
        if (resourceId2 != 0) {
            this.secondaryProgressColors = getResources().getIntArray(resourceId2);
        } else {
            this.secondaryProgressColors = null;
        }
        obtainStyledAttributes.recycle();
        updateProgressDrawable();
        updateSecondaryProgressDrawable();
        initStyleable(context, attributeSet);
    }
}
