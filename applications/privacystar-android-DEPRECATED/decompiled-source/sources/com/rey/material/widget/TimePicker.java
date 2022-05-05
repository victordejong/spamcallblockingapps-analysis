package com.rey.material.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.p001v4.view.ViewCompat;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.rey.material.C1686R;
import com.rey.material.app.ThemeManager;
import com.rey.material.util.ColorUtil;
import com.rey.material.util.ThemeUtil;
import com.rey.material.util.TypefaceUtil;
import com.rey.material.util.ViewUtil;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/TimePicker.class */
public class TimePicker extends View implements ThemeManager.OnThemeChangedListener {
    public static final int MODE_HOUR = 0;
    public static final int MODE_MINUTE = 1;
    private boolean m24Hour;
    private int mAnimDuration;
    private float mAnimProgress;
    private int mBackgroundColor;
    private PointF mCenterPoint;
    protected int mCurrentStyle;
    private boolean mEdited;
    private int mHour;
    private Interpolator mInInterpolator;
    private float mInnerRadius;
    private float[] mLocations;
    private int mMinute;
    private int mMode;
    private OnTimeChangedListener mOnTimeChangedListener;
    private Interpolator mOutInterpolator;
    private float mOuterRadius;
    private Paint mPaint;
    private Rect mRect;
    private boolean mRunning;
    private float mSecondInnerRadius;
    private int mSelectionColor;
    private int mSelectionRadius;
    private long mStartTime;
    protected int mStyleId;
    private int mTextColor;
    private int mTextHighlightColor;
    private int mTextSize;
    private int mTickSize;
    private String[] mTicks;
    private Typeface mTypeface;
    private final Runnable mUpdater;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/TimePicker$OnTimeChangedListener.class */
    public interface OnTimeChangedListener {
        void onHourChanged(int i, int i2);

        void onMinuteChanged(int i, int i2);

        void onModeChanged(int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/TimePicker$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.rey.material.widget.TimePicker.SavedState.1
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
        int hour;
        boolean is24Hour;
        int minute;
        int mode;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.mode = parcel.readInt();
            this.hour = parcel.readInt();
            this.minute = parcel.readInt();
            this.is24Hour = parcel.readInt() != 1 ? false : true;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "TimePicker.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " mode=" + this.mode + " hour=" + this.hour + " minute=" + this.minute + "24hour=" + this.is24Hour + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Integer.valueOf(this.mode));
            parcel.writeValue(Integer.valueOf(this.hour));
            parcel.writeValue(Integer.valueOf(this.minute));
            parcel.writeValue(Integer.valueOf(this.is24Hour ? 1 : 0));
        }
    }

    public TimePicker(Context context) {
        super(context);
        this.mCurrentStyle = Integer.MIN_VALUE;
        this.mSelectionRadius = -1;
        this.mTickSize = -1;
        this.mTypeface = Typeface.DEFAULT;
        this.mTextSize = -1;
        this.mTextColor = ViewCompat.MEASURED_STATE_MASK;
        this.mTextHighlightColor = -1;
        this.m24Hour = true;
        this.mAnimDuration = -1;
        this.mLocations = new float[72];
        this.mMode = 0;
        this.mHour = 0;
        this.mMinute = 0;
        this.mEdited = false;
        this.mUpdater = new Runnable() { // from class: com.rey.material.widget.TimePicker.1
            @Override // java.lang.Runnable
            public void run() {
                TimePicker.this.update();
            }
        };
        init(context, null, 0, 0);
    }

    public TimePicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCurrentStyle = Integer.MIN_VALUE;
        this.mSelectionRadius = -1;
        this.mTickSize = -1;
        this.mTypeface = Typeface.DEFAULT;
        this.mTextSize = -1;
        this.mTextColor = ViewCompat.MEASURED_STATE_MASK;
        this.mTextHighlightColor = -1;
        this.m24Hour = true;
        this.mAnimDuration = -1;
        this.mLocations = new float[72];
        this.mMode = 0;
        this.mHour = 0;
        this.mMinute = 0;
        this.mEdited = false;
        this.mUpdater = new Runnable() { // from class: com.rey.material.widget.TimePicker.1
            @Override // java.lang.Runnable
            public void run() {
                TimePicker.this.update();
            }
        };
        init(context, attributeSet, 0, 0);
    }

    public TimePicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mCurrentStyle = Integer.MIN_VALUE;
        this.mSelectionRadius = -1;
        this.mTickSize = -1;
        this.mTypeface = Typeface.DEFAULT;
        this.mTextSize = -1;
        this.mTextColor = ViewCompat.MEASURED_STATE_MASK;
        this.mTextHighlightColor = -1;
        this.m24Hour = true;
        this.mAnimDuration = -1;
        this.mLocations = new float[72];
        this.mMode = 0;
        this.mHour = 0;
        this.mMinute = 0;
        this.mEdited = false;
        this.mUpdater = new Runnable() { // from class: com.rey.material.widget.TimePicker.1
            @Override // java.lang.Runnable
            public void run() {
                TimePicker.this.update();
            }
        };
        init(context, attributeSet, i, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [double] */
    /* JADX WARN: Type inference failed for: r12v2, types: [double] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [double] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void calculateTextLocation() {
        /*
            Method dump skipped, instructions count: 697
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rey.material.widget.TimePicker.calculateTextLocation():void");
    }

    private float getAngle(int i, int i2) {
        switch (i2) {
            case 0:
                return (float) ((i * 0.5235987755982988d) - 1.5707963267948966d);
            case 1:
                return (float) ((i * 0.10471975511965977d) - 1.5707963267948966d);
            default:
                return 0.0f;
        }
    }

    private int getPointedValue(float f, float f2, boolean z) {
        float sqrt = (float) Math.sqrt(Math.pow(f - this.mCenterPoint.x, 2.0d) + Math.pow(f2 - this.mCenterPoint.y, 2.0d));
        if (z) {
            if (this.mMode != 0 || !this.m24Hour) {
                if (sqrt > this.mInnerRadius + this.mSelectionRadius || sqrt < this.mInnerRadius - this.mSelectionRadius) {
                    return -1;
                }
            } else if (sqrt > this.mInnerRadius + this.mSelectionRadius || sqrt < this.mSecondInnerRadius - this.mSelectionRadius) {
                return -1;
            }
        }
        float atan2 = (float) Math.atan2(f2 - this.mCenterPoint.y, f - this.mCenterPoint.x);
        float f3 = atan2;
        if (atan2 < 0.0f) {
            f3 = (float) (atan2 + 6.283185307179586d);
        }
        if (this.mMode == 0) {
            if (!this.m24Hour) {
                int round = ((int) Math.round((f3 * 6.0f) / 3.141592653589793d)) + 3;
                int i = round;
                if (round > 11) {
                    i = round - 12;
                }
                return i;
            } else if (sqrt > this.mSecondInnerRadius + (this.mSelectionRadius / 2)) {
                int round2 = ((int) Math.round((f3 * 6.0f) / 3.141592653589793d)) + 15;
                if (round2 == 24) {
                    return 0;
                }
                return round2 > 24 ? round2 - 12 : round2;
            } else {
                int round3 = ((int) Math.round((f3 * 6.0f) / 3.141592653589793d)) + 3;
                int i2 = round3;
                if (round3 > 12) {
                    i2 = round3 - 12;
                }
                return i2;
            }
        } else if (this.mMode != 1) {
            return -1;
        } else {
            int round4 = ((int) Math.round((f3 * 30.0f) / 3.141592653589793d)) + 15;
            int i3 = round4;
            if (round4 > 59) {
                i3 = round4 - 60;
            }
            return i3;
        }
    }

    private int getSelectedTick(int i, int i2) {
        int i3 = 23;
        switch (i2) {
            case 0:
                if (i != 0) {
                    i3 = i - 1;
                } else if (!this.m24Hour) {
                    i3 = 11;
                }
                return i3;
            case 1:
                if (i % 5 != 0) {
                    return -1;
                }
                return i == 0 ? 35 : (i / 5) + 23;
            default:
                return -1;
        }
    }

    private void initTickLabels() {
        this.mTicks = new String[36];
        int i = 0;
        while (i < 23) {
            int i2 = i + 1;
            this.mTicks[i] = String.format("%2d", Integer.valueOf(i2));
            i = i2;
        }
        this.mTicks[23] = String.format("%2d", 0);
        this.mTicks[35] = this.mTicks[23];
        for (int i3 = 24; i3 < 35; i3++) {
            this.mTicks[i3] = String.format("%2d", Integer.valueOf((i3 - 23) * 5));
        }
    }

    private void resetAnimation() {
        this.mStartTime = SystemClock.uptimeMillis();
        this.mAnimProgress = 0.0f;
    }

    private void startAnimation() {
        if (getHandler() != null) {
            resetAnimation();
            this.mRunning = true;
            getHandler().postAtTime(this.mUpdater, SystemClock.uptimeMillis() + 16);
        }
        invalidate();
    }

    private void stopAnimation() {
        this.mRunning = false;
        this.mAnimProgress = 1.0f;
        if (getHandler() != null) {
            getHandler().removeCallbacks(this.mUpdater);
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        this.mAnimProgress = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.mStartTime)) / this.mAnimDuration);
        if (this.mAnimProgress == 1.0f) {
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

    protected void applyStyle(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.TimePicker, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str = null;
        boolean z = false;
        int i3 = -1;
        for (int i4 = 0; i4 < indexCount; i4++) {
            int index = obtainStyledAttributes.getIndex(i4);
            if (index == C1686R.styleable.TimePicker_tp_backgroundColor) {
                this.mBackgroundColor = obtainStyledAttributes.getColor(index, 0);
                z = z;
                str = str;
            } else if (index == C1686R.styleable.TimePicker_tp_selectionColor) {
                this.mSelectionColor = obtainStyledAttributes.getColor(index, 0);
                z = z;
                str = str;
            } else if (index == C1686R.styleable.TimePicker_tp_selectionRadius) {
                this.mSelectionRadius = obtainStyledAttributes.getDimensionPixelOffset(index, 0);
                z = z;
                str = str;
            } else if (index == C1686R.styleable.TimePicker_tp_tickSize) {
                this.mTickSize = obtainStyledAttributes.getDimensionPixelOffset(index, 0);
                z = z;
                str = str;
            } else if (index == C1686R.styleable.TimePicker_tp_textSize) {
                this.mTextSize = obtainStyledAttributes.getDimensionPixelOffset(index, 0);
                z = z;
                str = str;
            } else if (index == C1686R.styleable.TimePicker_tp_textColor) {
                this.mTextColor = obtainStyledAttributes.getColor(index, 0);
                z = z;
                str = str;
            } else if (index == C1686R.styleable.TimePicker_tp_textHighlightColor) {
                this.mTextHighlightColor = obtainStyledAttributes.getColor(index, 0);
                z = z;
                str = str;
            } else if (index == C1686R.styleable.TimePicker_tp_animDuration) {
                this.mAnimDuration = obtainStyledAttributes.getInteger(index, 0);
                z = z;
                str = str;
            } else if (index == C1686R.styleable.TimePicker_tp_inInterpolator) {
                this.mInInterpolator = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(index, 0));
                z = z;
                str = str;
            } else if (index == C1686R.styleable.TimePicker_tp_outInterpolator) {
                this.mOutInterpolator = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(index, 0));
                z = z;
                str = str;
            } else if (index == C1686R.styleable.TimePicker_tp_mode) {
                setMode(obtainStyledAttributes.getInteger(index, 0), false);
                z = z;
                str = str;
            } else if (index == C1686R.styleable.TimePicker_tp_24Hour) {
                set24Hour(obtainStyledAttributes.getBoolean(index, false));
                z = true;
                str = str;
            } else if (index == C1686R.styleable.TimePicker_tp_hour) {
                setHour(obtainStyledAttributes.getInteger(index, 0));
                z = z;
                str = str;
            } else if (index == C1686R.styleable.TimePicker_tp_minute) {
                setMinute(obtainStyledAttributes.getInteger(index, 0));
                z = z;
                str = str;
            } else if (index == C1686R.styleable.TimePicker_tp_fontFamily) {
                str = obtainStyledAttributes.getString(index);
                z = z;
            } else {
                z = z;
                str = str;
                if (index == C1686R.styleable.TimePicker_tp_textStyle) {
                    i3 = obtainStyledAttributes.getInteger(index, 0);
                    str = str;
                    z = z;
                }
            }
        }
        obtainStyledAttributes.recycle();
        if (this.mSelectionRadius < 0) {
            this.mSecondInnerRadius = ThemeUtil.dpToPx(context, 8);
        }
        if (this.mTickSize < 0) {
            this.mTickSize = ThemeUtil.dpToPx(context, 1);
        }
        if (this.mTextSize < 0) {
            this.mTextSize = context.getResources().getDimensionPixelOffset(C1686R.dimen.abc_text_size_caption_material);
        }
        if (this.mAnimDuration < 0) {
            this.mAnimDuration = context.getResources().getInteger(17694721);
        }
        if (this.mInInterpolator == null) {
            this.mInInterpolator = new DecelerateInterpolator();
        }
        if (this.mOutInterpolator == null) {
            this.mOutInterpolator = new DecelerateInterpolator();
        }
        if (!z) {
            set24Hour(DateFormat.is24HourFormat(context));
        }
        if (str != null || i3 >= 0) {
            this.mTypeface = TypefaceUtil.load(context, str, i3);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        float f;
        float f2;
        float f3;
        float f4;
        int i2;
        int i3;
        float f5;
        int i4;
        int i5;
        float f6;
        int i6;
        int i7;
        float f7;
        int i8;
        int i9;
        float f8;
        super.draw(canvas);
        this.mPaint.setColor(this.mBackgroundColor);
        this.mPaint.setStyle(Paint.Style.FILL);
        canvas.drawCircle(this.mCenterPoint.x, this.mCenterPoint.y, this.mOuterRadius, this.mPaint);
        if (!this.mRunning) {
            if (this.mMode == 0) {
                f8 = getAngle(this.mHour, 0);
                int selectedTick = getSelectedTick(this.mHour, 0);
                i7 = this.m24Hour ? 24 : 12;
                f7 = (!this.m24Hour || selectedTick >= 12) ? this.mInnerRadius : this.mSecondInnerRadius;
                i9 = 0;
                i8 = selectedTick;
            } else {
                f8 = getAngle(this.mMinute, 1);
                i8 = getSelectedTick(this.mMinute, 1);
                f7 = this.mInnerRadius;
                i7 = 12;
                i9 = 24;
            }
            this.mPaint.setColor(this.mSelectionColor);
            double d = f8;
            float cos = this.mCenterPoint.x + (((float) Math.cos(d)) * f7);
            float sin = this.mCenterPoint.y + (((float) Math.sin(d)) * f7);
            canvas.drawCircle(cos, sin, this.mSelectionRadius, this.mPaint);
            this.mPaint.setStyle(Paint.Style.STROKE);
            this.mPaint.setStrokeWidth(this.mTickSize);
            canvas.drawLine(this.mCenterPoint.x, this.mCenterPoint.y, cos - (((float) Math.cos(d)) * this.mSelectionRadius), sin - (((float) Math.sin(d)) * this.mSelectionRadius), this.mPaint);
            this.mPaint.setStyle(Paint.Style.FILL);
            this.mPaint.setColor(this.mTextColor);
            canvas.drawCircle(this.mCenterPoint.x, this.mCenterPoint.y, this.mTickSize * 2, this.mPaint);
            this.mPaint.setTextSize(this.mTextSize);
            this.mPaint.setTypeface(this.mTypeface);
            this.mPaint.setTextAlign(Paint.Align.CENTER);
            for (int i10 = 0; i10 < i7; i10++) {
                int i11 = i9 + i10;
                this.mPaint.setColor(i11 == i8 ? this.mTextHighlightColor : this.mTextColor);
                String str = this.mTicks[i11];
                int i12 = i11 * 2;
                canvas.drawText(str, this.mLocations[i12], this.mLocations[i12 + 1], this.mPaint);
            }
            return;
        }
        float f9 = (this.mOuterRadius - this.mInnerRadius) + (this.mTextSize / 2);
        int i13 = ColorUtil.getColor(this.mTextColor, 1.0f - this.mAnimProgress);
        i13 = ColorUtil.getColor(this.mTextHighlightColor, 1.0f - this.mAnimProgress);
        int i14 = ColorUtil.getColor(this.mTextColor, this.mAnimProgress);
        i14 = ColorUtil.getColor(this.mTextHighlightColor, this.mAnimProgress);
        if (this.mMode == 1) {
            f = getAngle(this.mHour, 0);
            f3 = getAngle(this.mMinute, 1);
            f6 = this.mOutInterpolator.getInterpolation(this.mAnimProgress) * f9;
            float interpolation = this.mInInterpolator.getInterpolation(this.mAnimProgress);
            float f10 = -f9;
            i = getSelectedTick(this.mHour, 0);
            i2 = getSelectedTick(this.mMinute, 1);
            i4 = this.m24Hour ? 24 : 12;
            f2 = (!this.m24Hour || i >= 12) ? this.mInnerRadius : this.mSecondInnerRadius;
            f4 = this.mInnerRadius;
            f5 = (1.0f - interpolation) * f10;
            i5 = 12;
            i3 = 0;
            i6 = 24;
        } else {
            f = getAngle(this.mMinute, 1);
            f3 = getAngle(this.mHour, 0);
            f6 = this.mOutInterpolator.getInterpolation(this.mAnimProgress) * (-f9);
            float interpolation2 = this.mInInterpolator.getInterpolation(this.mAnimProgress);
            i = getSelectedTick(this.mMinute, 1);
            i2 = getSelectedTick(this.mHour, 0);
            f2 = this.mInnerRadius;
            i5 = this.m24Hour ? 24 : 12;
            f4 = (!this.m24Hour || i2 >= 12) ? this.mInnerRadius : this.mSecondInnerRadius;
            f5 = (1.0f - interpolation2) * f9;
            i4 = 12;
            i3 = 24;
            i6 = 0;
        }
        this.mPaint.setColor(ColorUtil.getColor(this.mSelectionColor, 1.0f - this.mAnimProgress));
        float f11 = this.mCenterPoint.x;
        double d2 = f;
        float cos2 = (float) Math.cos(d2);
        float f12 = f2 + f6;
        float f13 = f11 + (cos2 * f12);
        float sin2 = this.mCenterPoint.y + (((float) Math.sin(d2)) * f12);
        canvas.drawCircle(f13, sin2, this.mSelectionRadius, this.mPaint);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(this.mTickSize);
        canvas.drawLine(this.mCenterPoint.x, this.mCenterPoint.y, f13 - (((float) Math.cos(d2)) * this.mSelectionRadius), sin2 - (((float) Math.sin(d2)) * this.mSelectionRadius), this.mPaint);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setColor(ColorUtil.getColor(this.mSelectionColor, this.mAnimProgress));
        float f14 = this.mCenterPoint.x;
        double d3 = f3;
        float cos3 = (float) Math.cos(d3);
        float f15 = f4 + f5;
        float f16 = f14 + (cos3 * f15);
        float sin3 = this.mCenterPoint.y + (((float) Math.sin(d3)) * f15);
        canvas.drawCircle(f16, sin3, this.mSelectionRadius, this.mPaint);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(this.mTickSize);
        canvas.drawLine(this.mCenterPoint.x, this.mCenterPoint.y, f16 - (((float) Math.cos(d3)) * this.mSelectionRadius), sin3 - (((float) Math.sin(d3)) * this.mSelectionRadius), this.mPaint);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setColor(this.mTextColor);
        canvas.drawCircle(this.mCenterPoint.x, this.mCenterPoint.y, this.mTickSize * 2, this.mPaint);
        this.mPaint.setTextSize(this.mTextSize);
        this.mPaint.setTypeface(this.mTypeface);
        this.mPaint.setTextAlign(Paint.Align.CENTER);
        double d4 = -1.0471975511965976d;
        for (int i15 = 0; i15 < i4; i15++) {
            int i16 = i15 + i3;
            int i17 = i16 * 2;
            float f17 = this.mLocations[i17];
            float cos4 = (float) Math.cos(d4);
            float f18 = this.mLocations[i17 + 1];
            float sin4 = (float) Math.sin(d4);
            Paint paint = this.mPaint;
            if (i16 == i) {
            }
            paint.setColor(i13);
            canvas.drawText(this.mTicks[i16], f17 + (cos4 * f6), f18 + (sin4 * f6), this.mPaint);
            d4 += 0.5235987755982988d;
        }
        for (int i18 = 0; i18 < i5; i18++) {
            int i19 = i18 + i6;
            int i20 = i19 * 2;
            float f19 = this.mLocations[i20];
            float cos5 = (float) Math.cos(d4);
            float f20 = this.mLocations[i20 + 1];
            float sin5 = (float) Math.sin(d4);
            Paint paint2 = this.mPaint;
            if (i19 == i2) {
            }
            paint2.setColor(i14);
            canvas.drawText(this.mTicks[i19], f19 + (cos5 * f5), f20 + (sin5 * f5), this.mPaint);
            d4 += 0.5235987755982988d;
        }
    }

    public int getAnimDuration() {
        return this.mAnimDuration;
    }

    public int getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public int getHour() {
        return this.mHour;
    }

    public Interpolator getInInterpolator() {
        return this.mInInterpolator;
    }

    public int getMinute() {
        return this.mMinute;
    }

    public int getMode() {
        return this.mMode;
    }

    public Interpolator getOutInterpolator() {
        return this.mOutInterpolator;
    }

    public int getSelectionColor() {
        return this.mSelectionColor;
    }

    public int getTextColor() {
        return this.mTextColor;
    }

    public int getTextHighlightColor() {
        return this.mTextHighlightColor;
    }

    public int getTextSize() {
        return this.mTextSize;
    }

    public Typeface getTypeface() {
        return this.mTypeface;
    }

    protected void init(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mPaint = new Paint(1);
        this.mRect = new Rect();
        this.mBackgroundColor = ColorUtil.getColor(ThemeUtil.colorPrimary(context, ViewCompat.MEASURED_STATE_MASK), 0.25f);
        this.mSelectionColor = ThemeUtil.colorPrimary(context, ViewCompat.MEASURED_STATE_MASK);
        initTickLabels();
        setWillNotDraw(false);
        applyStyle(context, attributeSet, i, i2);
        if (!isInEditMode()) {
            this.mStyleId = ThemeManager.getStyleId(context, attributeSet, i, i2);
        }
    }

    public boolean is24Hour() {
        return this.m24Hour;
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
        if (this.mStyleId != 0) {
            ThemeManager.getInstance().unregisterOnThemeChangedListener(this);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = mode == 0 ? this.mSelectionRadius * 12 : (View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight();
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = mode2 == 0 ? this.mSelectionRadius * 12 : (View.MeasureSpec.getSize(i2) - getPaddingTop()) - getPaddingBottom();
        int min = Math.min(size, size2);
        if (mode != 1073741824) {
            size = min;
        }
        if (mode2 != 1073741824) {
            size2 = min;
        }
        setMeasuredDimension(size + getPaddingLeft() + getPaddingRight(), size2 + getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        set24Hour(savedState.is24Hour);
        setMode(savedState.mode, false);
        setHour(savedState.hour);
        setMinute(savedState.minute);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mode = this.mMode;
        savedState.hour = this.mHour;
        savedState.minute = this.mMinute;
        savedState.is24Hour = this.m24Hour;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int min = Math.min((i - getPaddingLeft()) - getPaddingRight(), (i2 - getPaddingTop()) - getPaddingBottom());
        if (this.mCenterPoint == null) {
            this.mCenterPoint = new PointF();
        }
        this.mOuterRadius = min / 2.0f;
        this.mCenterPoint.set(paddingLeft + this.mOuterRadius, paddingTop + this.mOuterRadius);
        this.mInnerRadius = (this.mOuterRadius - this.mSelectionRadius) - ThemeUtil.dpToPx(getContext(), 4);
        calculateTextLocation();
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
    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                int pointedValue = getPointedValue(motionEvent.getX(), motionEvent.getY(), true);
                if (pointedValue < 0) {
                    return false;
                }
                if (this.mMode == 0) {
                    setHour(pointedValue);
                } else if (this.mMode == 1) {
                    setMinute(pointedValue);
                }
                this.mEdited = true;
                return true;
            case 1:
                if (!this.mEdited || this.mMode != 0) {
                    return false;
                }
                setMode(1, true);
                this.mEdited = false;
                return true;
            case 2:
                int pointedValue2 = getPointedValue(motionEvent.getX(), motionEvent.getY(), false);
                if (pointedValue2 < 0) {
                    return true;
                }
                if (this.mMode == 0) {
                    setHour(pointedValue2);
                } else if (this.mMode == 1) {
                    setMinute(pointedValue2);
                }
                this.mEdited = true;
                return true;
            case 3:
                this.mEdited = false;
                return false;
            default:
                return false;
        }
    }

    public void set24Hour(boolean z) {
        if (this.m24Hour != z) {
            this.m24Hour = z;
            if (!this.m24Hour && this.mHour > 11) {
                setHour(this.mHour - 12);
            }
            calculateTextLocation();
        }
    }

    public void setHour(int i) {
        int max = this.m24Hour ? Math.max(i, 0) % 24 : Math.max(i, 0) % 12;
        if (this.mHour != max) {
            int i2 = this.mHour;
            this.mHour = max;
            if (this.mOnTimeChangedListener != null) {
                this.mOnTimeChangedListener.onHourChanged(i2, this.mHour);
            }
            if (this.mMode == 0) {
                invalidate();
            }
        }
    }

    public void setMinute(int i) {
        int min = Math.min(Math.max(i, 0), 59);
        if (this.mMinute != min) {
            int i2 = this.mMinute;
            this.mMinute = min;
            if (this.mOnTimeChangedListener != null) {
                this.mOnTimeChangedListener.onMinuteChanged(i2, this.mMinute);
            }
            if (this.mMode == 1) {
                invalidate();
            }
        }
    }

    public void setMode(int i, boolean z) {
        if (this.mMode != i) {
            this.mMode = i;
            if (this.mOnTimeChangedListener != null) {
                this.mOnTimeChangedListener.onModeChanged(this.mMode);
            }
            if (z) {
                startAnimation();
            } else {
                invalidate();
            }
        }
    }

    public void setOnTimeChangedListener(OnTimeChangedListener onTimeChangedListener) {
        this.mOnTimeChangedListener = onTimeChangedListener;
    }
}
