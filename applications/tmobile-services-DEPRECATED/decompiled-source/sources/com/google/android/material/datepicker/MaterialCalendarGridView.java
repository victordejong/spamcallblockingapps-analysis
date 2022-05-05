package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C1027R;
import java.util.Calendar;
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendarGridView.class */
final class MaterialCalendarGridView extends GridView {

    /* renamed from: f */
    private final Calendar f10558f;

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10558f = UtcDates.m9836r();
        if (MaterialDatePicker.m9925V0(getContext())) {
            setNextFocusLeftId(C1027R.C1030id.cancel_button);
            setNextFocusRightId(C1027R.C1030id.confirm_button);
        }
        ViewCompat.m19183n0(this, new AccessibilityDelegateCompat(this) { // from class: com.google.android.material.datepicker.MaterialCalendarGridView.1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.m19022e0(null);
            }
        });
    }

    /* renamed from: a */
    private void m9944a(int i, Rect rect) {
        if (i == 33) {
            setSelection(getAdapter2().m9899h());
        } else if (i == 130) {
            setSelection(getAdapter2().m9905b());
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }

    /* renamed from: c */
    private static int m9942c(@NonNull View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    /* renamed from: d */
    private static boolean m9941d(@Nullable Long l, @Nullable Long l2, @Nullable Long l3, @Nullable Long l4) {
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

    @NonNull
    /* renamed from: b */
    public MonthAdapter getAdapter2() {
        return (MonthAdapter) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter2().notifyDataSetChanged();
    }

    @Override // android.view.View
    protected final void onDraw(@NonNull Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        super.onDraw(canvas);
        MonthAdapter b = getAdapter2();
        DateSelector<?> dateSelector = b.f10597g;
        CalendarStyle calendarStyle = b.f10598h;
        Long c = b.getItem(b.m9905b());
        Long c2 = b.getItem(b.m9899h());
        for (Pair<Long, Long> pair : dateSelector.mo9863t()) {
            Long l = pair.f3206a;
            if (!(l == null || pair.f3207b == null)) {
                long longValue = l.longValue();
                long longValue2 = pair.f3207b.longValue();
                if (!m9941d(c, c2, Long.valueOf(longValue), Long.valueOf(longValue2))) {
                    if (longValue < c.longValue()) {
                        i = b.m9905b();
                        i3 = b.m9901f(i) ? 0 : getChildAt(i - 1).getRight();
                    } else {
                        this.f10558f.setTimeInMillis(longValue);
                        i = b.m9906a(this.f10558f.get(5));
                        i3 = m9942c(getChildAt(i));
                    }
                    if (longValue2 > c2.longValue()) {
                        i2 = Math.min(b.m9899h(), getChildCount() - 1);
                        i4 = b.m9900g(i2) ? getWidth() : getChildAt(i2).getRight();
                    } else {
                        this.f10558f.setTimeInMillis(longValue2);
                        i2 = b.m9906a(this.f10558f.get(5));
                        i4 = m9942c(getChildAt(i2));
                    }
                    int itemId = (int) b.getItemId(i2);
                    for (int itemId2 = (int) b.getItemId(i); itemId2 <= itemId; itemId2++) {
                        int numColumns = getNumColumns() * itemId2;
                        int numColumns2 = getNumColumns();
                        View childAt = getChildAt(numColumns);
                        int top = childAt.getTop();
                        int c3 = calendarStyle.f10507a.m9991c();
                        int bottom = childAt.getBottom();
                        int b2 = calendarStyle.f10507a.m9992b();
                        if (numColumns > i) {
                            i3 = 0;
                        }
                        if (i2 > (numColumns2 + numColumns) - 1) {
                            i4 = getWidth();
                        }
                        canvas.drawRect(i3, top + c3, i4, bottom - b2, calendarStyle.f10514h);
                    }
                } else {
                    return;
                }
            }
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        if (z) {
            m9944a(i, rect);
        } else {
            super.onFocusChanged(false, i, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter2().m9905b()) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(getAdapter2().m9905b());
        return true;
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
        if (i < getAdapter2().m9905b()) {
            super.setSelection(getAdapter2().m9905b());
        } else {
            super.setSelection(i);
        }
    }
}
