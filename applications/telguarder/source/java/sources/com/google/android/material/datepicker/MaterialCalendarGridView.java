package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C1236R;
import com.google.android.material.internal.ViewUtils;
import java.util.Calendar;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendarGridView.class */
public final class MaterialCalendarGridView extends GridView {
    private final Calendar dayCompute;
    private final boolean nestedScrollable;

    public MaterialCalendarGridView(Context context) {
        this(context, null);
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.dayCompute = UtcDates.getUtcCalendar();
        if (MaterialDatePicker.isFullscreen(getContext())) {
            setNextFocusLeftId(C1236R.C1239id.cancel_button);
            setNextFocusRightId(C1236R.C1239id.confirm_button);
        }
        this.nestedScrollable = MaterialDatePicker.isNestedScrollable(getContext());
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegateCompat() { // from class: com.google.android.material.datepicker.MaterialCalendarGridView.1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setCollectionInfo(null);
            }
        });
    }

    private void gainFocus(int i, Rect rect) {
        if (i == 33) {
            setSelection(getAdapter2().lastPositionInMonth());
        } else if (i == 130) {
            setSelection(getAdapter2().firstPositionInMonth());
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }

    private static int horizontalMidPoint(View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    private static boolean skipMonth(Long l, Long l2, Long l3, Long l4) {
        boolean z = true;
        if (l != null) {
            z = true;
            if (l2 != null) {
                z = true;
                if (l3 != null) {
                    if (l4 == null) {
                        z = true;
                    } else {
                        z = true;
                        if (l3.longValue() <= l2.longValue()) {
                            z = l4.longValue() < l.longValue();
                        }
                    }
                }
            }
        }
        return z;
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    /* renamed from: getAdapter */
    public ListAdapter getAdapter2() {
        return (MonthAdapter) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter2().notifyDataSetChanged();
    }

    @Override // android.view.View
    protected final void onDraw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        super.onDraw(canvas);
        MonthAdapter adapter2 = getAdapter2();
        DateSelector<?> dateSelector = adapter2.dateSelector;
        CalendarStyle calendarStyle = adapter2.calendarStyle;
        Long item = adapter2.getItem(adapter2.firstPositionInMonth());
        Long item2 = adapter2.getItem(adapter2.lastPositionInMonth());
        for (Pair<Long, Long> pair : dateSelector.getSelectedRanges()) {
            MonthAdapter monthAdapter = adapter2;
            if (pair.first != null) {
                if (pair.second != null) {
                    long longValue = pair.first.longValue();
                    long longValue2 = pair.second.longValue();
                    if (!skipMonth(item, item2, Long.valueOf(longValue), Long.valueOf(longValue2))) {
                        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
                        if (longValue < item.longValue()) {
                            i2 = adapter2.firstPositionInMonth();
                            i = adapter2.isFirstInRow(i2) ? 0 : !isLayoutRtl ? getChildAt(i2 - 1).getRight() : getChildAt(i2 - 1).getLeft();
                        } else {
                            this.dayCompute.setTimeInMillis(longValue);
                            i2 = adapter2.dayToPosition(this.dayCompute.get(5));
                            i = horizontalMidPoint(getChildAt(i2));
                        }
                        if (longValue2 > item2.longValue()) {
                            i4 = Math.min(adapter2.lastPositionInMonth(), getChildCount() - 1);
                            i3 = adapter2.isLastInRow(i4) ? getWidth() : !isLayoutRtl ? getChildAt(i4).getRight() : getChildAt(i4).getLeft();
                        } else {
                            this.dayCompute.setTimeInMillis(longValue2);
                            i4 = adapter2.dayToPosition(this.dayCompute.get(5));
                            i3 = horizontalMidPoint(getChildAt(i4));
                        }
                        int itemId = (int) adapter2.getItemId(i2);
                        int itemId2 = (int) adapter2.getItemId(i4);
                        while (true) {
                            monthAdapter = adapter2;
                            if (itemId > itemId2) {
                                break;
                            }
                            int numColumns = getNumColumns() * itemId;
                            int numColumns2 = (getNumColumns() + numColumns) - 1;
                            View childAt = getChildAt(numColumns);
                            int top = childAt.getTop();
                            int topInset = calendarStyle.day.getTopInset();
                            int bottom = childAt.getBottom();
                            int bottomInset = calendarStyle.day.getBottomInset();
                            if (!isLayoutRtl) {
                                int i7 = numColumns > i2 ? 0 : i;
                                if (i4 > numColumns2) {
                                    i6 = i7;
                                    i5 = getWidth();
                                } else {
                                    i6 = i7;
                                    i5 = i3;
                                }
                            } else {
                                int i8 = i4 > numColumns2 ? 0 : i3;
                                int width = numColumns > i2 ? getWidth() : i;
                                int i9 = i8;
                                i5 = width;
                                i6 = i9;
                            }
                            canvas.drawRect(i6, top + topInset, i5, bottom - bottomInset, calendarStyle.rangeFill);
                            itemId++;
                        }
                    }
                }
            }
            adapter2 = monthAdapter;
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        if (z) {
            gainFocus(i, rect);
        } else {
            super.onFocusChanged(false, i, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter2().firstPositionInMonth()) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(getAdapter2().firstPositionInMonth());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        if (!this.nestedScrollable) {
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(ViewCompat.MEASURED_SIZE_MASK, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.GridView, android.widget.AbsListView
    public final void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof MonthAdapter) {
            super.setAdapter(listAdapter);
            return;
        }
        throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), MonthAdapter.class.getCanonicalName()));
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i) {
        if (i < getAdapter2().firstPositionInMonth()) {
            super.setSelection(getAdapter2().firstPositionInMonth());
        } else {
            super.setSelection(i);
        }
    }
}
