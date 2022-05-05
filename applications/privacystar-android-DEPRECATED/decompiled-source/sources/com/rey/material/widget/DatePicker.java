package com.rey.material.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.support.p001v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import com.rey.material.C1686R;
import com.rey.material.drawable.BlankDrawable;
import com.rey.material.util.ThemeUtil;
import com.rey.material.util.TypefaceUtil;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/DatePicker.class */
public class DatePicker extends ListView implements AbsListView.OnScrollListener {
    private static final String DAY_FORMAT = "%2d";
    protected static final int LIST_TOP_OFFSET = -1;
    protected static final int SCROLL_CHANGE_DELAY = 40;
    protected static final int SCROLL_DURATION = 250;
    private static final String YEAR_FORMAT = "%4d";
    private static String[] mDayTexts;
    private MonthAdapter mAdapter;
    private int mAnimDuration;
    private Calendar mCalendar;
    private float mDayBaseHeight;
    private float mDayBaseWidth;
    private float mDayHeight;
    private int mDayPadding;
    private float mDayWidth;
    private int mFirstDayOfWeek;
    private Interpolator mInInterpolator;
    private String[] mLabels;
    private int mMonthRealHeight;
    private int mMonthRealWidth;
    private OnDateChangedListener mOnDateChangedListener;
    private Interpolator mOutInterpolator;
    private int mPaddingBottom;
    private int mPaddingLeft;
    private int mPaddingRight;
    private int mPaddingTop;
    private Paint mPaint;
    protected long mPreviousScrollPosition;
    private int mSelectionColor;
    private float mSelectionRadius;
    private int mTextColor;
    private int mTextDisableColor;
    private int mTextHighlightColor;
    private int mTextLabelColor;
    private int mTextSize;
    private Typeface mTypeface;
    protected Handler mHandler = new Handler();
    protected int mCurrentScrollState = 0;
    protected int mPreviousScrollState = 0;
    protected float mFriction = 1.0f;
    protected ScrollStateRunnable mScrollStateChangedRunnable = new ScrollStateRunnable();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/DatePicker$MonthAdapter.class */
    public class MonthAdapter extends BaseAdapter {
        private int mDay;
        private int mMaxDay;
        private int mMaxMonth;
        private int mMaxMonthValue;
        private int mMaxYear;
        private int mMinDay;
        private int mMinMonth;
        private int mMinMonthValue;
        private int mMinYear;
        private int mMonth;
        private int mToday;
        private int mTodayMonth;
        private int mTodayYear;
        private int mYear;

        private MonthAdapter() {
            this.mDay = -1;
            this.mMonth = -1;
            this.mYear = -1;
            this.mMinDay = -1;
            this.mMinMonth = -1;
            this.mMinYear = -1;
            this.mMaxDay = -1;
            this.mMaxMonth = -1;
            this.mMaxYear = -1;
        }

        private void calToday() {
            DatePicker.this.mCalendar.setTimeInMillis(System.currentTimeMillis());
            this.mToday = DatePicker.this.mCalendar.get(5);
            this.mTodayMonth = DatePicker.this.mCalendar.get(2);
            this.mTodayYear = DatePicker.this.mCalendar.get(1);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (this.mMaxMonthValue - this.mMinMonthValue) + 1;
        }

        public int getDay() {
            return this.mDay;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(i + this.mMinMonthValue);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public int getMonth() {
            return this.mMonth;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            MonthView monthView = (MonthView) view;
            MonthView monthView2 = monthView;
            if (monthView == null) {
                monthView2 = new MonthView(viewGroup.getContext());
                monthView2.setPadding(DatePicker.this.mPaddingLeft, DatePicker.this.mPaddingTop, DatePicker.this.mPaddingRight, DatePicker.this.mPaddingBottom);
            }
            calToday();
            int intValue = ((Integer) getItem(i)).intValue();
            int i2 = intValue / 12;
            int i3 = intValue % 12;
            int i4 = (i3 == this.mMinMonth && i2 == this.mMinYear) ? this.mMinDay : -1;
            int i5 = (i3 == this.mMaxMonth && i2 == this.mMaxYear) ? this.mMaxDay : -1;
            int i6 = (this.mTodayMonth == i3 && this.mTodayYear == i2) ? this.mToday : -1;
            int i7 = -1;
            if (i3 == this.mMonth) {
                i7 = -1;
                if (i2 == this.mYear) {
                    i7 = this.mDay;
                }
            }
            monthView2.setMonth(i3, i2);
            monthView2.setToday(i6);
            monthView2.setAvailableDay(i4, i5);
            monthView2.setSelectedDay(i7, false);
            return monthView2;
        }

        public int getYear() {
            return this.mYear;
        }

        public int positionOfMonth(int i, int i2) {
            return ((i2 * 12) + i) - this.mMinMonthValue;
        }

        public void setDate(int i, int i2, int i3, boolean z) {
            if (this.mMonth != i2 || this.mYear != i3) {
                MonthView monthView = (MonthView) DatePicker.this.getChildAt(positionOfMonth(this.mMonth, this.mYear) - DatePicker.this.getFirstVisiblePosition());
                if (monthView != null) {
                    monthView.setSelectedDay(-1, false);
                }
                int i4 = this.mDay;
                int i5 = this.mMonth;
                int i6 = this.mYear;
                this.mDay = i;
                this.mMonth = i2;
                this.mYear = i3;
                MonthView monthView2 = (MonthView) DatePicker.this.getChildAt(positionOfMonth(this.mMonth, this.mYear) - DatePicker.this.getFirstVisiblePosition());
                if (monthView2 != null) {
                    monthView2.setSelectedDay(this.mDay, z);
                }
                if (DatePicker.this.mOnDateChangedListener != null) {
                    DatePicker.this.mOnDateChangedListener.onDateChanged(i4, i5, i6, this.mDay, this.mMonth, this.mYear);
                }
            } else if (i != this.mDay) {
                int i7 = this.mDay;
                this.mDay = i;
                MonthView monthView3 = (MonthView) DatePicker.this.getChildAt(positionOfMonth(this.mMonth, this.mYear) - DatePicker.this.getFirstVisiblePosition());
                if (monthView3 != null) {
                    monthView3.setSelectedDay(this.mDay, z);
                }
                if (DatePicker.this.mOnDateChangedListener != null) {
                    DatePicker.this.mOnDateChangedListener.onDateChanged(i7, this.mMonth, this.mYear, this.mDay, this.mMonth, this.mYear);
                }
            }
        }

        public void setDateRange(int i, int i2, int i3, int i4, int i5, int i6) {
            int i7 = (i < 0 || i2 < 0 || i3 < 0) ? 0 : (i3 * 12) + i2;
            int i8 = (i4 < 0 || i5 < 0 || i6 < 0) ? 2147483646 : (i6 * 12) + i5;
            if (i != this.mMinDay || this.mMinMonthValue != i7 || i4 != this.mMaxDay || this.mMaxMonthValue != i8) {
                this.mMinDay = i;
                this.mMinMonth = i2;
                this.mMinYear = i3;
                this.mMaxDay = i4;
                this.mMaxMonth = i5;
                this.mMaxYear = i6;
                this.mMinMonthValue = i7;
                this.mMaxMonthValue = i8;
                notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/DatePicker$MonthView.class */
    public class MonthView extends View {
        private float mAnimProgress;
        private int mFirstDayCol;
        private int mMaxDay;
        private int mMonth;
        private String mMonthText;
        private boolean mRunning;
        private long mStartTime;
        private int mYear;
        private int mTouchedDay = -1;
        private int mMinAvailDay = -1;
        private int mMaxAvailDay = -1;
        private int mToday = -1;
        private int mSelectedDay = -1;
        private int mPreviousSelectedDay = -1;
        private final Runnable mUpdater = new Runnable() { // from class: com.rey.material.widget.DatePicker.MonthView.1
            @Override // java.lang.Runnable
            public void run() {
                MonthView.this.update();
            }
        };

        public MonthView(Context context) {
            super(context);
            setWillNotDraw(false);
        }

        private void calculateMonthView() {
            DatePicker.this.mCalendar.set(5, 1);
            DatePicker.this.mCalendar.set(2, this.mMonth);
            DatePicker.this.mCalendar.set(1, this.mYear);
            this.mMaxDay = DatePicker.this.mCalendar.getActualMaximum(5);
            int i = DatePicker.this.mCalendar.get(7);
            int i2 = i;
            if (i < DatePicker.this.mFirstDayOfWeek) {
                i2 = i + 7;
            }
            this.mFirstDayCol = i2 - DatePicker.this.mFirstDayOfWeek;
            this.mMonthText = DatePicker.this.mCalendar.getDisplayName(2, 2, Locale.getDefault()) + " " + String.format(DatePicker.YEAR_FORMAT, Integer.valueOf(this.mYear));
        }

        private int getTouchedDay(float f, float f2) {
            float paddingTop = (DatePicker.this.mDayPadding * 2) + DatePicker.this.mDayBaseHeight + getPaddingTop() + DatePicker.this.mDayHeight;
            if (f < getPaddingLeft() || f > getWidth() - getPaddingRight() || f2 < paddingTop || f2 > getHeight() - getPaddingBottom()) {
                return -1;
            }
            int floor = (int) Math.floor((f - getPaddingLeft()) / DatePicker.this.mDayWidth);
            int floor2 = (int) Math.floor((f2 - paddingTop) / DatePicker.this.mDayHeight);
            int min = this.mMaxAvailDay > 0 ? Math.min(this.mMaxAvailDay, this.mMaxDay) : this.mMaxDay;
            int i = (((floor2 * 7) + floor) - this.mFirstDayCol) + 1;
            if (i < 0 || i < this.mMinAvailDay || i > min) {
                return -1;
            }
            return i;
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
            this.mAnimProgress = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.mStartTime)) / DatePicker.this.mAnimDuration);
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

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            DatePicker.this.mPaint.setTextSize(DatePicker.this.mTextSize);
            DatePicker.this.mPaint.setTypeface(DatePicker.this.mTypeface);
            float f = DatePicker.this.mDayWidth;
            float paddingLeft = getPaddingLeft();
            float f2 = DatePicker.this.mDayPadding * 2;
            float f3 = DatePicker.this.mDayBaseHeight;
            float paddingTop = getPaddingTop();
            DatePicker.this.mPaint.setFakeBoldText(true);
            DatePicker.this.mPaint.setColor(DatePicker.this.mTextColor);
            canvas.drawText(this.mMonthText, (f * 3.5f) + paddingLeft, f2 + f3 + paddingTop, DatePicker.this.mPaint);
            float paddingLeft2 = getPaddingLeft();
            float paddingTop2 = (DatePicker.this.mDayPadding * 2) + DatePicker.this.mDayBaseHeight + getPaddingTop();
            if (this.mSelectedDay > 0) {
                int i = this.mFirstDayCol;
                int i2 = this.mSelectedDay;
                int i3 = ((this.mFirstDayCol + this.mSelectedDay) - 1) / 7;
                float f4 = ((i + i2) - 1) % 7;
                float f5 = DatePicker.this.mDayWidth;
                float f6 = i3 + 1;
                float f7 = DatePicker.this.mDayHeight;
                float interpolation = this.mRunning ? DatePicker.this.mInInterpolator.getInterpolation(this.mAnimProgress) * DatePicker.this.mSelectionRadius : DatePicker.this.mSelectionRadius;
                DatePicker.this.mPaint.setColor(DatePicker.this.mSelectionColor);
                canvas.drawCircle(((f4 + 0.5f) * f5) + paddingLeft2, ((f6 + 0.5f) * f7) + paddingTop2, interpolation, DatePicker.this.mPaint);
            }
            if (this.mRunning && this.mPreviousSelectedDay > 0) {
                int i4 = this.mFirstDayCol;
                int i5 = this.mPreviousSelectedDay;
                int i6 = ((this.mFirstDayCol + this.mPreviousSelectedDay) - 1) / 7;
                float f8 = ((i4 + i5) - 1) % 7;
                float f9 = DatePicker.this.mDayWidth;
                float f10 = i6 + 1;
                float f11 = DatePicker.this.mDayHeight;
                float interpolation2 = DatePicker.this.mOutInterpolator.getInterpolation(this.mAnimProgress);
                float f12 = DatePicker.this.mSelectionRadius;
                DatePicker.this.mPaint.setColor(DatePicker.this.mSelectionColor);
                canvas.drawCircle(((f8 + 0.5f) * f9) + paddingLeft2, ((f10 + 0.5f) * f11) + paddingTop2, (1.0f - interpolation2) * f12, DatePicker.this.mPaint);
            }
            DatePicker.this.mPaint.setFakeBoldText(false);
            DatePicker.this.mPaint.setColor(DatePicker.this.mTextLabelColor);
            float f13 = paddingTop2 + ((DatePicker.this.mDayHeight + DatePicker.this.mDayBaseHeight) / 2.0f);
            for (int i7 = 0; i7 < 7; i7++) {
                canvas.drawText(DatePicker.this.mLabels[((DatePicker.this.mFirstDayOfWeek + i7) - 1) % 7], ((i7 + 0.5f) * DatePicker.this.mDayWidth) + paddingLeft2, f13, DatePicker.this.mPaint);
            }
            int i8 = this.mFirstDayCol;
            int min = this.mMaxAvailDay > 0 ? Math.min(this.mMaxAvailDay, this.mMaxDay) : this.mMaxDay;
            int i9 = 1;
            for (int i10 = 1; i10 <= this.mMaxDay; i10++) {
                if (i10 == this.mSelectedDay) {
                    DatePicker.this.mPaint.setColor(DatePicker.this.mTextHighlightColor);
                } else if (i10 < this.mMinAvailDay || i10 > min) {
                    DatePicker.this.mPaint.setColor(DatePicker.this.mTextDisableColor);
                } else if (i10 == this.mToday) {
                    DatePicker.this.mPaint.setColor(DatePicker.this.mSelectionColor);
                } else {
                    DatePicker.this.mPaint.setColor(DatePicker.this.mTextColor);
                }
                canvas.drawText(DatePicker.this.getDayText(i10), ((i8 + 0.5f) * DatePicker.this.mDayWidth) + paddingLeft2, (i9 * DatePicker.this.mDayHeight) + f13, DatePicker.this.mPaint);
                int i11 = i8 + 1;
                i8 = i11;
                i9 = i9;
                if (i11 == 7) {
                    i9++;
                    i8 = 0;
                }
            }
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(DatePicker.this.mMonthRealWidth, DatePicker.this.mMonthRealHeight);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action != 3) {
                switch (action) {
                    case 0:
                        this.mTouchedDay = getTouchedDay(motionEvent.getX(), motionEvent.getY());
                        return true;
                    case 1:
                        if (getTouchedDay(motionEvent.getX(), motionEvent.getY()) != this.mTouchedDay || this.mTouchedDay <= 0) {
                            return true;
                        }
                        DatePicker.this.mAdapter.setDate(this.mTouchedDay, this.mMonth, this.mYear, true);
                        this.mTouchedDay = -1;
                        return true;
                    default:
                        return true;
                }
            } else {
                this.mTouchedDay = -1;
                return true;
            }
        }

        public void setAvailableDay(int i, int i2) {
            if (this.mMinAvailDay != i || this.mMaxAvailDay != i2) {
                this.mMinAvailDay = i;
                this.mMaxAvailDay = i2;
                invalidate();
            }
        }

        public void setMonth(int i, int i2) {
            if (this.mMonth != i || this.mYear != i2) {
                this.mMonth = i;
                this.mYear = i2;
                calculateMonthView();
                invalidate();
            }
        }

        public void setSelectedDay(int i, boolean z) {
            if (this.mSelectedDay != i) {
                this.mPreviousSelectedDay = this.mSelectedDay;
                this.mSelectedDay = i;
                if (z) {
                    startAnimation();
                } else {
                    invalidate();
                }
            }
        }

        public void setToday(int i) {
            if (this.mToday != i) {
                this.mToday = i;
                invalidate();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/DatePicker$OnDateChangedListener.class */
    public interface OnDateChangedListener {
        void onDateChanged(int i, int i2, int i3, int i4, int i5, int i6);
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/DatePicker$ScrollStateRunnable.class */
    private class ScrollStateRunnable implements Runnable {
        private int mNewState;

        private ScrollStateRunnable() {
        }

        public void doScrollStateChange(AbsListView absListView, int i) {
            DatePicker.this.mHandler.removeCallbacks(this);
            this.mNewState = i;
            DatePicker.this.mHandler.postDelayed(this, 40L);
        }

        @Override // java.lang.Runnable
        public void run() {
            DatePicker.this.mCurrentScrollState = this.mNewState;
            if (this.mNewState == 0 && DatePicker.this.mPreviousScrollState != 0) {
                boolean z = true;
                if (DatePicker.this.mPreviousScrollState != 1) {
                    DatePicker.this.mPreviousScrollState = this.mNewState;
                    View childAt = DatePicker.this.getChildAt(0);
                    int i = 0;
                    while (childAt != null && childAt.getBottom() <= 0) {
                        i++;
                        childAt = DatePicker.this.getChildAt(i);
                    }
                    if (childAt != null) {
                        int firstVisiblePosition = DatePicker.this.getFirstVisiblePosition();
                        int lastVisiblePosition = DatePicker.this.getLastVisiblePosition();
                        if (firstVisiblePosition == 0 || lastVisiblePosition == DatePicker.this.getCount() - 1) {
                            z = false;
                        }
                        int top = childAt.getTop();
                        int bottom = childAt.getBottom();
                        int height = DatePicker.this.getHeight() / 2;
                        if (z && top < -1) {
                            if (bottom > height) {
                                DatePicker.this.smoothScrollBy(top, 250);
                                return;
                            } else {
                                DatePicker.this.smoothScrollBy(bottom, 250);
                                return;
                            }
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }
            DatePicker.this.mPreviousScrollState = this.mNewState;
        }
    }

    public DatePicker(Context context) {
        super(context);
        init(context, null, 0, 0);
    }

    public DatePicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet, 0, 0);
    }

    public DatePicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet, i, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getDayText(int i) {
        if (mDayTexts == null) {
            synchronized (DatePicker.class) {
                try {
                    if (mDayTexts == null) {
                        mDayTexts = new String[31];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        int i2 = i - 1;
        if (mDayTexts[i2] == null) {
            mDayTexts[i2] = String.format(DAY_FORMAT, Integer.valueOf(i));
        }
        return mDayTexts[i2];
    }

    private void measureBaseSize() {
        this.mPaint.setTextSize(this.mTextSize);
        this.mPaint.setTypeface(this.mTypeface);
        this.mDayBaseWidth = this.mPaint.measureText("88", 0, 2) + (this.mDayPadding * 2);
        Rect rect = new Rect();
        this.mPaint.getTextBounds("88", 0, 2, rect);
        this.mDayBaseHeight = rect.height();
    }

    private void measureMonthView(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        measureBaseSize();
        int round = Math.round(Math.max(this.mDayBaseWidth, this.mDayBaseHeight)) * 7;
        int i3 = this.mPaddingLeft + round + this.mPaddingRight;
        int round2 = Math.round(round + this.mDayBaseHeight + (this.mDayPadding * 2) + this.mPaddingTop + this.mPaddingBottom);
        if (mode == Integer.MIN_VALUE) {
            size = Math.min(i3, size);
        } else if (mode != 1073741824) {
            size = i3;
        }
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(round2, size2);
        } else if (mode2 != 1073741824) {
            size2 = round2;
        }
        this.mMonthRealWidth = size;
        this.mMonthRealHeight = size2;
    }

    @TargetApi(11)
    private void setFrictionIfSupported(float f) {
        if (Build.VERSION.SDK_INT >= 11) {
            setFriction(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.rey.material.widget.ListView
    public void applyStyle(Context context, AttributeSet attributeSet, int i, int i2) {
        super.applyStyle(context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.DatePicker, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str = null;
        int i3 = -1;
        boolean z = false;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        for (int i9 = 0; i9 < indexCount; i9++) {
            int index = obtainStyledAttributes.getIndex(i9);
            if (index == C1686R.styleable.DatePicker_dp_dayTextSize) {
                this.mTextSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                str = str;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
            } else if (index == C1686R.styleable.DatePicker_dp_textColor) {
                this.mTextColor = obtainStyledAttributes.getColor(index, 0);
                str = str;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
            } else if (index == C1686R.styleable.DatePicker_dp_textHighlightColor) {
                this.mTextHighlightColor = obtainStyledAttributes.getColor(index, 0);
                str = str;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
            } else if (index == C1686R.styleable.DatePicker_dp_textLabelColor) {
                this.mTextLabelColor = obtainStyledAttributes.getColor(index, 0);
                str = str;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
            } else if (index == C1686R.styleable.DatePicker_dp_textDisableColor) {
                this.mTextDisableColor = obtainStyledAttributes.getColor(index, 0);
                str = str;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
            } else if (index == C1686R.styleable.DatePicker_dp_selectionColor) {
                this.mSelectionColor = obtainStyledAttributes.getColor(index, 0);
                str = str;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
            } else if (index == C1686R.styleable.DatePicker_dp_animDuration) {
                this.mAnimDuration = obtainStyledAttributes.getInteger(index, 0);
                str = str;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
            } else if (index == C1686R.styleable.DatePicker_dp_inInterpolator) {
                this.mInInterpolator = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(index, 0));
                str = str;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
            } else if (index == C1686R.styleable.DatePicker_dp_outInterpolator) {
                this.mOutInterpolator = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(index, 0));
                str = str;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
            } else if (index == C1686R.styleable.DatePicker_dp_fontFamily) {
                str = obtainStyledAttributes.getString(index);
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
            } else if (index == C1686R.styleable.DatePicker_dp_textStyle) {
                i3 = obtainStyledAttributes.getInteger(index, 0);
                str = str;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
            } else {
                if (index == C1686R.styleable.DatePicker_android_padding) {
                    i4 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == C1686R.styleable.DatePicker_android_paddingLeft) {
                    i5 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == C1686R.styleable.DatePicker_android_paddingTop) {
                    i6 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == C1686R.styleable.DatePicker_android_paddingRight) {
                    i7 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else {
                    str = str;
                    i3 = i3;
                    i4 = i4;
                    i5 = i5;
                    i6 = i6;
                    i7 = i7;
                    if (index == C1686R.styleable.DatePicker_android_paddingBottom) {
                        i8 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    }
                }
                z = true;
                str = str;
                i3 = i3;
            }
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
        if (str != null || i3 >= 0) {
            this.mTypeface = TypefaceUtil.load(context, str, i3);
        }
        obtainStyledAttributes.recycle();
        if (z) {
            if (i4 >= 0) {
                setContentPadding(i4, i4, i4, i4);
            }
            if (i5 >= 0) {
                this.mPaddingLeft = i5;
            }
            if (i6 >= 0) {
                this.mPaddingTop = i6;
            }
            if (i7 >= 0) {
                this.mPaddingRight = i7;
            }
            if (i8 >= 0) {
                this.mPaddingBottom = i8;
            }
        }
        requestLayout();
        this.mAdapter.notifyDataSetInvalidated();
    }

    public Calendar getCalendar() {
        return this.mCalendar;
    }

    public int getDay() {
        return this.mAdapter.getDay();
    }

    public String getFormattedDate(DateFormat dateFormat) {
        this.mCalendar.set(1, this.mAdapter.getYear());
        this.mCalendar.set(2, this.mAdapter.getMonth());
        this.mCalendar.set(5, this.mAdapter.getDay());
        return dateFormat.format(this.mCalendar.getTime());
    }

    public int getMonth() {
        return this.mAdapter.getMonth();
    }

    public int getSelectionColor() {
        return this.mSelectionColor;
    }

    public int getTextColor() {
        return this.mTextColor;
    }

    public int getTextDisableColor() {
        return this.mTextDisableColor;
    }

    public int getTextHighlightColor() {
        return this.mTextHighlightColor;
    }

    public int getTextLabelColor() {
        return this.mTextLabelColor;
    }

    public int getTextSize() {
        return this.mTextSize;
    }

    public Typeface getTypeface() {
        return this.mTypeface;
    }

    public int getYear() {
        return this.mAdapter.getYear();
    }

    public void goTo(int i, int i2) {
        postSetSelectionFromTop(this.mAdapter.positionOfMonth(i, i2), 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.rey.material.widget.ListView
    public void init(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mTypeface = Typeface.DEFAULT;
        this.mTextSize = -1;
        this.mTextColor = ViewCompat.MEASURED_STATE_MASK;
        this.mTextLabelColor = -9013642;
        this.mTextHighlightColor = -1;
        this.mAnimDuration = -1;
        this.mLabels = new String[7];
        this.mFriction = 1.0f;
        setWillNotDraw(false);
        setSelector(BlankDrawable.getInstance());
        setCacheColorHint(0);
        setDivider(null);
        setItemsCanFocus(true);
        setFastScrollEnabled(false);
        setVerticalScrollBarEnabled(false);
        setOnScrollListener(this);
        setFadingEdgeLength(0);
        setFrictionIfSupported(ViewConfiguration.getScrollFriction() * this.mFriction);
        this.mPaint = new Paint(1);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setTextAlign(Paint.Align.CENTER);
        this.mDayPadding = ThemeUtil.dpToPx(context, 4);
        this.mSelectionColor = ThemeUtil.colorPrimary(context, ViewCompat.MEASURED_STATE_MASK);
        this.mCalendar = Calendar.getInstance();
        this.mFirstDayOfWeek = this.mCalendar.getFirstDayOfWeek();
        int i3 = this.mCalendar.get(7) - 1;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(Build.VERSION.SDK_INT >= 18 ? "EEEEE" : "E");
        for (int i4 = 0; i4 < 7; i4++) {
            this.mLabels[i3] = simpleDateFormat.format(this.mCalendar.getTime());
            i3 = (i3 + 1) % 7;
            this.mCalendar.add(5, 1);
        }
        this.mAdapter = new MonthAdapter();
        setAdapter((ListAdapter) this.mAdapter);
        super.init(context, attributeSet, i, i2);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        measureMonthView(i, i2);
        super.onMeasure(i, i2);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        MonthView monthView = (MonthView) absListView.getChildAt(0);
        if (monthView != null) {
            this.mPreviousScrollPosition = (getFirstVisiblePosition() * monthView.getHeight()) - monthView.getBottom();
            this.mPreviousScrollState = this.mCurrentScrollState;
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        this.mScrollStateChangedRunnable.doScrollStateChange(absListView, i);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        this.mDayWidth = ((i - this.mPaddingLeft) - this.mPaddingRight) / 7.0f;
        this.mDayHeight = ((((i2 - this.mDayBaseHeight) - (this.mDayPadding * 2)) - this.mPaddingTop) - this.mPaddingBottom) / 7.0f;
        this.mSelectionRadius = Math.min(this.mDayWidth, this.mDayHeight) / 2.0f;
    }

    public void postSetSelectionFromTop(final int i, final int i2) {
        post(new Runnable() { // from class: com.rey.material.widget.DatePicker.1
            @Override // java.lang.Runnable
            public void run() {
                DatePicker.this.setSelectionFromTop(i, i2);
                DatePicker.this.requestLayout();
            }
        });
    }

    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.mPaddingLeft = i;
        this.mPaddingTop = i2;
        this.mPaddingRight = i3;
        this.mPaddingBottom = i4;
    }

    public void setDate(int i, int i2, int i3) {
        if (this.mAdapter.getYear() != i3 || this.mAdapter.getMonth() != i2 || this.mAdapter.getDay() != i) {
            this.mAdapter.setDate(i, i2, i3, false);
            goTo(i2, i3);
        }
    }

    public void setDateRange(int i, int i2, int i3, int i4, int i5, int i6) {
        this.mAdapter.setDateRange(i, i2, i3, i4, i5, i6);
    }

    public void setOnDateChangedListener(OnDateChangedListener onDateChangedListener) {
        this.mOnDateChangedListener = onDateChangedListener;
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(0, 0, 0, 0);
    }
}
