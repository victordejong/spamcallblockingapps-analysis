package com.rey.material.app;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.view.ViewCompat;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.rey.material.C1686R;
import com.rey.material.app.Dialog;
import com.rey.material.util.ThemeUtil;
import com.rey.material.widget.CircleCheckedTextView;
import com.rey.material.widget.TimePicker;
import java.text.DateFormat;
import java.util.Calendar;
/* loaded from: classes2-dex2jar.jar:com/rey/material/app/TimePickerDialog.class */
public class TimePickerDialog extends Dialog {
    private float mCornerRadius;
    private TimePickerLayout mTimePickerLayout;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/TimePickerDialog$Builder.class */
    public static class Builder extends Dialog.Builder implements OnTimeChangedListener {
        public static final Parcelable.Creator<Builder> CREATOR = new Parcelable.Creator<Builder>() { // from class: com.rey.material.app.TimePickerDialog.Builder.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Builder createFromParcel(Parcel parcel) {
                return new Builder(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Builder[] newArray(int i) {
                return new Builder[i];
            }
        };
        protected int mHour;
        protected int mMinute;

        public Builder() {
            super(C1686R.C1691style.Material_App_Dialog_TimePicker_Light);
            Calendar instance = Calendar.getInstance();
            this.mHour = instance.get(11);
            this.mMinute = instance.get(12);
        }

        public Builder(int i, int i2) {
            this(C1686R.C1691style.Material_App_Dialog_TimePicker_Light, i, i2);
        }

        public Builder(int i, int i2, int i3) {
            super(i);
            hour(i2);
            minute(i3);
        }

        protected Builder(Parcel parcel) {
            super(parcel);
        }

        @Override // com.rey.material.app.Dialog.Builder
        public Dialog.Builder contentView(int i) {
            return this;
        }

        public int getHour() {
            return this.mHour;
        }

        public int getMinute() {
            return this.mMinute;
        }

        public Builder hour(int i) {
            this.mHour = Math.min(Math.max(i, 0), 24);
            return this;
        }

        public Builder minute(int i) {
            this.mMinute = i;
            return this;
        }

        @Override // com.rey.material.app.Dialog.Builder
        protected Dialog onBuild(Context context, int i) {
            TimePickerDialog timePickerDialog = new TimePickerDialog(context, i);
            timePickerDialog.hour(this.mHour).minute(this.mMinute).onTimeChangedListener(this);
            return timePickerDialog;
        }

        @Override // com.rey.material.app.Dialog.Builder
        protected void onReadFromParcel(Parcel parcel) {
            this.mHour = parcel.readInt();
            this.mMinute = parcel.readInt();
        }

        @Override // com.rey.material.app.TimePickerDialog.OnTimeChangedListener
        public void onTimeChanged(int i, int i2, int i3, int i4) {
            hour(i3).minute(i4);
        }

        @Override // com.rey.material.app.Dialog.Builder
        protected void onWriteToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mHour);
            parcel.writeInt(this.mMinute);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/TimePickerDialog$OnTimeChangedListener.class */
    public interface OnTimeChangedListener {
        void onTimeChanged(int i, int i2, int i3, int i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/TimePickerDialog$TimePickerLayout.class */
    public class TimePickerLayout extends FrameLayout implements View.OnClickListener, TimePicker.OnTimeChangedListener {
        private static final String BASE_TEXT = "0";
        private static final String FORMAT = "%02d";
        private static final String FORMAT_NO_LEADING_ZERO = "%d";
        private static final String TIME_DIVIDER = ":";
        private CircleCheckedTextView mAmView;
        private float mBaseHeight;
        private float mBaseY;
        private int mCheckBoxSize;
        private float mDividerX;
        private int mHeaderHeight;
        private int mHeaderRealHeight;
        private int mHeaderRealWidth;
        private String mHour;
        private float mHourWidth;
        private float mHourX;
        private String mMidday;
        private float mMiddayX;
        private String mMinute;
        private float mMinuteWidth;
        private float mMinuteX;
        private OnTimeChangedListener mOnTimeChangedListener;
        private CircleCheckedTextView mPmView;
        private int mTextTimeSize;
        private TimePicker mTimePicker;
        private int mTextTimeColor = ViewCompat.MEASURED_STATE_MASK;
        private boolean mIsLeadingZero = false;
        private boolean mIsAm = true;
        private boolean mLocationDirty = true;
        private Paint mPaint = new Paint(1);
        private Path mHeaderBackground = new Path();
        private RectF mRect = new RectF();

        public TimePickerLayout(Context context) {
            super(context);
            this.mPaint.setTextAlign(Paint.Align.LEFT);
            this.mAmView = new CircleCheckedTextView(context);
            this.mPmView = new CircleCheckedTextView(context);
            this.mTimePicker = new TimePicker(context);
            this.mTimePicker.setPadding(TimePickerDialog.this.mContentPadding, TimePickerDialog.this.mContentPadding, TimePickerDialog.this.mContentPadding, TimePickerDialog.this.mContentPadding);
            this.mTimePicker.setOnTimeChangedListener(this);
            this.mAmView.setGravity(17);
            this.mPmView.setGravity(17);
            if (Build.VERSION.SDK_INT >= 17) {
                this.mAmView.setTextAlignment(4);
                this.mPmView.setTextAlignment(4);
            }
            this.mAmView.setCheckedImmediately(this.mIsAm);
            this.mPmView.setCheckedImmediately(true ^ this.mIsAm);
            this.mAmView.setOnClickListener(this);
            this.mPmView.setOnClickListener(this);
            addView(this.mTimePicker);
            addView(this.mAmView);
            addView(this.mPmView);
            setWillNotDraw(false);
            this.mCheckBoxSize = ThemeUtil.dpToPx(context, 48);
            this.mHeaderHeight = ThemeUtil.dpToPx(context, 120);
            this.mTextTimeSize = context.getResources().getDimensionPixelOffset(C1686R.dimen.abc_text_size_headline_material);
        }

        private boolean isTouched(float f, float f2, float f3, float f4, float f5, float f6) {
            return f5 >= f && f5 <= f3 && f6 >= f2 && f6 <= f4;
        }

        private void measureTimeText() {
            if (this.mLocationDirty) {
                this.mPaint.setTextSize(this.mTextTimeSize);
                Rect rect = new Rect();
                this.mPaint.getTextBounds(BASE_TEXT, 0, BASE_TEXT.length(), rect);
                this.mBaseHeight = rect.height();
                this.mBaseY = (this.mHeaderRealHeight + this.mBaseHeight) / 2.0f;
                float measureText = this.mPaint.measureText(TIME_DIVIDER, 0, TIME_DIVIDER.length());
                this.mHourWidth = this.mPaint.measureText(this.mHour, 0, this.mHour.length());
                this.mMinuteWidth = this.mPaint.measureText(this.mMinute, 0, this.mMinute.length());
                this.mDividerX = (this.mHeaderRealWidth - measureText) / 2.0f;
                this.mHourX = this.mDividerX - this.mHourWidth;
                this.mMinuteX = this.mDividerX + measureText;
                this.mMiddayX = this.mMinuteX + this.mMinuteWidth;
                this.mLocationDirty = false;
            }
        }

        private void setAm(boolean z, boolean z2) {
            if (!this.mTimePicker.is24Hour() && this.mIsAm != z) {
                int hour = getHour();
                this.mIsAm = z;
                if (z2) {
                    this.mAmView.setChecked(this.mIsAm);
                    this.mPmView.setChecked(!this.mIsAm);
                } else {
                    this.mAmView.setCheckedImmediately(this.mIsAm);
                    this.mPmView.setCheckedImmediately(!this.mIsAm);
                }
                this.mMidday = (this.mIsAm ? this.mAmView : this.mPmView).getText().toString();
                invalidate(0, 0, this.mHeaderRealWidth, this.mHeaderRealHeight);
                if (this.mOnTimeChangedListener != null) {
                    this.mOnTimeChangedListener.onTimeChanged(hour, getMinute(), getHour(), getMinute());
                }
            }
        }

        /* JADX WARN: Type inference failed for: r0v17, types: [int[], int[][]] */
        /* JADX WARN: Unknown variable types count: 1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void applyStyle(int r8) {
            /*
                Method dump skipped, instructions count: 695
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rey.material.app.TimePickerDialog.TimePickerLayout.applyStyle(int):void");
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            super.draw(canvas);
            this.mPaint.setStyle(Paint.Style.FILL);
            this.mPaint.setColor(this.mTimePicker.getSelectionColor());
            canvas.drawPath(this.mHeaderBackground, this.mPaint);
            measureTimeText();
            this.mPaint.setTextSize(this.mTextTimeSize);
            this.mPaint.setColor(this.mTimePicker.getMode() == 0 ? this.mTimePicker.getTextHighlightColor() : this.mTextTimeColor);
            canvas.drawText(this.mHour, this.mHourX, this.mBaseY, this.mPaint);
            this.mPaint.setColor(this.mTextTimeColor);
            canvas.drawText(TIME_DIVIDER, this.mDividerX, this.mBaseY, this.mPaint);
            this.mPaint.setColor(this.mTimePicker.getMode() == 1 ? this.mTimePicker.getTextHighlightColor() : this.mTextTimeColor);
            canvas.drawText(this.mMinute, this.mMinuteX, this.mBaseY, this.mPaint);
            if (!this.mTimePicker.is24Hour()) {
                this.mPaint.setTextSize(this.mTimePicker.getTextSize());
                this.mPaint.setColor(this.mTextTimeColor);
                canvas.drawText(this.mMidday, this.mMiddayX, this.mBaseY, this.mPaint);
            }
        }

        public String getFormattedTime(DateFormat dateFormat) {
            Calendar instance = Calendar.getInstance();
            instance.set(11, getHour());
            instance.set(12, getMinute());
            instance.set(13, 0);
            instance.set(14, 0);
            return dateFormat.format(instance.getTime());
        }

        public int getHour() {
            return (this.mTimePicker.is24Hour() || this.mIsAm) ? this.mTimePicker.getHour() : this.mTimePicker.getHour() + 12;
        }

        public int getMinute() {
            return this.mTimePicker.getMinute();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            setAm(view == this.mAmView, true);
        }

        @Override // com.rey.material.widget.TimePicker.OnTimeChangedListener
        public void onHourChanged(int i, int i2) {
            int i3 = i;
            if (!this.mTimePicker.is24Hour()) {
                i3 = this.mIsAm ? i : i + 12;
            }
            String str = this.mIsLeadingZero ? FORMAT : FORMAT_NO_LEADING_ZERO;
            int i4 = i2;
            if (!this.mTimePicker.is24Hour()) {
                i4 = i2;
                if (i2 == 0) {
                    i4 = 12;
                }
            }
            this.mHour = String.format(str, Integer.valueOf(i4));
            this.mLocationDirty = true;
            invalidate(0, 0, this.mHeaderRealWidth, this.mHeaderRealHeight);
            if (this.mOnTimeChangedListener != null) {
                this.mOnTimeChangedListener.onTimeChanged(i3, getMinute(), getHour(), getMinute());
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5 = i3 - i;
            int i6 = i4 - i2;
            boolean z2 = true;
            if (getContext().getResources().getConfiguration().orientation != 1) {
                z2 = false;
            }
            int i7 = this.mTimePicker.is24Hour() ? 0 : this.mCheckBoxSize;
            if (z2) {
                int i8 = TimePickerDialog.this.mContentPadding + TimePickerDialog.this.mActionPadding;
                int i9 = TimePickerDialog.this.mContentPadding;
                int i10 = TimePickerDialog.this.mActionPadding;
                if (i7 > 0) {
                    int i11 = i8 + 0;
                    int i12 = i6 - (i9 - i10);
                    int i13 = i12 - i7;
                    this.mAmView.layout(i11, i13, i11 + i7, i12);
                    int i14 = i5 - i8;
                    this.mPmView.layout(i14 - i7, i13, i14, i12);
                }
                this.mTimePicker.layout(0, this.mHeaderRealHeight + 0, i5, i6 - i7);
                return;
            }
            int i15 = i5 / 2;
            int measuredWidth = (i15 - this.mTimePicker.getMeasuredWidth()) / 2;
            int measuredHeight = (i6 - this.mTimePicker.getMeasuredHeight()) / 2;
            int i16 = i5 - measuredWidth;
            int i17 = measuredHeight + 0;
            this.mTimePicker.layout(i16 - this.mTimePicker.getMeasuredWidth(), i17, i16, this.mTimePicker.getMeasuredHeight() + i17);
            if (i7 > 0) {
                int i18 = TimePickerDialog.this.mContentPadding + TimePickerDialog.this.mActionPadding;
                int i19 = i18 + 0;
                int i20 = i6 - (TimePickerDialog.this.mContentPadding - TimePickerDialog.this.mActionPadding);
                int i21 = i20 - i7;
                this.mAmView.layout(i19, i21, i19 + i7, i20);
                int i22 = i15 - i18;
                this.mPmView.layout(i22 - i7, i21, i22, i20);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            View.MeasureSpec.getMode(i);
            int size2 = View.MeasureSpec.getSize(i2);
            int mode = View.MeasureSpec.getMode(i2);
            boolean z = true;
            if (getContext().getResources().getConfiguration().orientation != 1) {
                z = false;
            }
            int i3 = this.mTimePicker.is24Hour() ? 0 : this.mCheckBoxSize;
            if (z) {
                int i4 = size2;
                if (mode == Integer.MIN_VALUE) {
                    i4 = Math.min(size2, i3 + size + this.mHeaderHeight);
                }
                if (i3 > 0) {
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.mCheckBoxSize, 1073741824);
                    this.mAmView.setVisibility(0);
                    this.mPmView.setVisibility(0);
                    this.mAmView.measure(makeMeasureSpec, makeMeasureSpec);
                    this.mPmView.measure(makeMeasureSpec, makeMeasureSpec);
                } else {
                    this.mAmView.setVisibility(8);
                    this.mPmView.setVisibility(8);
                }
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
                this.mTimePicker.measure(makeMeasureSpec2, makeMeasureSpec2);
                setMeasuredDimension(size, i4);
                return;
            }
            int i5 = size / 2;
            int i6 = size2;
            if (mode == Integer.MIN_VALUE) {
                i6 = Math.min(size2, Math.max(i3 > 0 ? this.mHeaderHeight + i3 + TimePickerDialog.this.mContentPadding : this.mHeaderHeight, i5));
            }
            if (i3 > 0) {
                int makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
                this.mAmView.setVisibility(0);
                this.mPmView.setVisibility(0);
                this.mAmView.measure(makeMeasureSpec3, makeMeasureSpec3);
                this.mPmView.measure(makeMeasureSpec3, makeMeasureSpec3);
            } else {
                this.mAmView.setVisibility(8);
                this.mPmView.setVisibility(8);
            }
            int makeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(Math.min(i5, i6), 1073741824);
            this.mTimePicker.measure(makeMeasureSpec4, makeMeasureSpec4);
            setMeasuredDimension(size, i6);
        }

        @Override // com.rey.material.widget.TimePicker.OnTimeChangedListener
        public void onMinuteChanged(int i, int i2) {
            this.mMinute = String.format(FORMAT, Integer.valueOf(i2));
            this.mLocationDirty = true;
            invalidate(0, 0, this.mHeaderRealWidth, this.mHeaderRealHeight);
            if (this.mOnTimeChangedListener != null) {
                this.mOnTimeChangedListener.onTimeChanged(getHour(), i, getHour(), i2);
            }
        }

        @Override // com.rey.material.widget.TimePicker.OnTimeChangedListener
        public void onModeChanged(int i) {
            invalidate(0, 0, this.mHeaderRealWidth, this.mHeaderRealHeight);
        }

        @Override // android.view.View
        protected void onSizeChanged(int i, int i2, int i3, int i4) {
            boolean z = getContext().getResources().getConfiguration().orientation == 1;
            this.mLocationDirty = true;
            int i5 = this.mTimePicker.is24Hour() ? 0 : this.mCheckBoxSize;
            if (z) {
                this.mHeaderRealWidth = i;
                this.mHeaderRealHeight = (i2 - i5) - i;
                this.mHeaderBackground.reset();
                if (TimePickerDialog.this.mCornerRadius == 0.0f) {
                    this.mHeaderBackground.addRect(0.0f, 0.0f, this.mHeaderRealWidth, this.mHeaderRealHeight, Path.Direction.CW);
                    return;
                }
                this.mHeaderBackground.moveTo(0.0f, this.mHeaderRealHeight);
                this.mHeaderBackground.lineTo(0.0f, TimePickerDialog.this.mCornerRadius);
                this.mRect.set(0.0f, 0.0f, TimePickerDialog.this.mCornerRadius * 2.0f, TimePickerDialog.this.mCornerRadius * 2.0f);
                this.mHeaderBackground.arcTo(this.mRect, 180.0f, 90.0f, false);
                this.mHeaderBackground.lineTo(this.mHeaderRealWidth - TimePickerDialog.this.mCornerRadius, 0.0f);
                this.mRect.set(this.mHeaderRealWidth - (TimePickerDialog.this.mCornerRadius * 2.0f), 0.0f, this.mHeaderRealWidth, TimePickerDialog.this.mCornerRadius * 2.0f);
                this.mHeaderBackground.arcTo(this.mRect, 270.0f, 90.0f, false);
                this.mHeaderBackground.lineTo(this.mHeaderRealWidth, this.mHeaderRealHeight);
                this.mHeaderBackground.close();
                return;
            }
            this.mHeaderRealWidth = i / 2;
            int i6 = i2;
            if (i5 > 0) {
                i6 = (i2 - i5) - TimePickerDialog.this.mContentPadding;
            }
            this.mHeaderRealHeight = i6;
            this.mHeaderBackground.reset();
            if (TimePickerDialog.this.mCornerRadius == 0.0f) {
                this.mHeaderBackground.addRect(0.0f, 0.0f, this.mHeaderRealWidth, this.mHeaderRealHeight, Path.Direction.CW);
                return;
            }
            this.mHeaderBackground.moveTo(0.0f, this.mHeaderRealHeight);
            this.mHeaderBackground.lineTo(0.0f, TimePickerDialog.this.mCornerRadius);
            this.mRect.set(0.0f, 0.0f, TimePickerDialog.this.mCornerRadius * 2.0f, TimePickerDialog.this.mCornerRadius * 2.0f);
            this.mHeaderBackground.arcTo(this.mRect, 180.0f, 90.0f, false);
            this.mHeaderBackground.lineTo(this.mHeaderRealWidth, 0.0f);
            this.mHeaderBackground.lineTo(this.mHeaderRealWidth, this.mHeaderRealHeight);
            this.mHeaderBackground.close();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (onTouchEvent) {
                return onTouchEvent;
            }
            boolean z = false;
            boolean z2 = false;
            switch (motionEvent.getAction()) {
                case 0:
                    if (isTouched(this.mHourX, this.mBaseY - this.mBaseHeight, this.mHourX + this.mHourWidth, this.mBaseY, motionEvent.getX(), motionEvent.getY())) {
                        if (this.mTimePicker.getMode() == 1) {
                            z2 = true;
                        }
                        return z2;
                    } else if (!isTouched(this.mMinuteX, this.mBaseY - this.mBaseHeight, this.mMinuteX + this.mMinuteWidth, this.mBaseY, motionEvent.getX(), motionEvent.getY())) {
                        return false;
                    } else {
                        if (this.mTimePicker.getMode() == 0) {
                            z = true;
                        }
                        return z;
                    }
                case 1:
                    if (isTouched(this.mHourX, this.mBaseY - this.mBaseHeight, this.mHourX + this.mHourWidth, this.mBaseY, motionEvent.getX(), motionEvent.getY())) {
                        this.mTimePicker.setMode(0, true);
                    }
                    if (!isTouched(this.mMinuteX, this.mBaseY - this.mBaseHeight, this.mMinuteX + this.mMinuteWidth, this.mBaseY, motionEvent.getX(), motionEvent.getY())) {
                        return false;
                    }
                    this.mTimePicker.setMode(1, true);
                    return false;
                default:
                    return false;
            }
        }

        public void setHour(int i) {
            if (!this.mTimePicker.is24Hour()) {
                if (i <= 11 || i >= 24) {
                    setAm(true, false);
                } else {
                    setAm(false, false);
                }
            }
            this.mTimePicker.setHour(i);
        }

        public void setMinute(int i) {
            this.mTimePicker.setMinute(i);
        }

        public void setOnTimeChangedListener(OnTimeChangedListener onTimeChangedListener) {
            this.mOnTimeChangedListener = onTimeChangedListener;
        }
    }

    public TimePickerDialog(Context context) {
        super(context, C1686R.C1691style.Material_App_Dialog_TimePicker_Light);
    }

    public TimePickerDialog(Context context, int i) {
        super(context, i);
    }

    @Override // com.rey.material.app.Dialog
    public Dialog applyStyle(int i) {
        super.applyStyle(i);
        if (i == 0) {
            return this;
        }
        this.mTimePickerLayout.applyStyle(i);
        layoutParams(-1, -1);
        return this;
    }

    @Override // com.rey.material.app.Dialog
    public Dialog cornerRadius(float f) {
        this.mCornerRadius = f;
        return super.cornerRadius(f);
    }

    public String getFormattedTime(DateFormat dateFormat) {
        return this.mTimePickerLayout.getFormattedTime(dateFormat);
    }

    public int getHour() {
        return this.mTimePickerLayout.getHour();
    }

    public int getMinute() {
        return this.mTimePickerLayout.getMinute();
    }

    public TimePickerDialog hour(int i) {
        this.mTimePickerLayout.setHour(i);
        return this;
    }

    @Override // com.rey.material.app.Dialog
    public Dialog layoutParams(int i, int i2) {
        return super.layoutParams(-1, -1);
    }

    public TimePickerDialog minute(int i) {
        this.mTimePickerLayout.setMinute(i);
        return this;
    }

    @Override // com.rey.material.app.Dialog
    protected void onCreate() {
        this.mTimePickerLayout = new TimePickerLayout(getContext());
        contentView(this.mTimePickerLayout);
    }

    public TimePickerDialog onTimeChangedListener(OnTimeChangedListener onTimeChangedListener) {
        this.mTimePickerLayout.setOnTimeChangedListener(onTimeChangedListener);
        return this;
    }
}
