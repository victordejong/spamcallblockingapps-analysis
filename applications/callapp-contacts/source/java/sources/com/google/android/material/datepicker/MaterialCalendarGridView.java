package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.p036e.C0828b;
import androidx.core.view.C0865a;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14654r;
import java.util.Calendar;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendarGridView.class */
public final class MaterialCalendarGridView extends GridView {

    /* renamed from: a */
    private final Calendar f52939a;

    /* renamed from: b */
    private final boolean f52940b;

    public MaterialCalendarGridView(Context context) {
        this(context, null);
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f52939a = C14548o.m10789b();
        if (C14532g.m10830a(getContext())) {
            setNextFocusLeftId(C14376a.C14382f.cancel_button);
            setNextFocusRightId(C14376a.C14382f.confirm_button);
        }
        this.f52940b = C14532g.m10825b(getContext());
        C0926v.m44123a(this, new C0865a() { // from class: com.google.android.material.datepicker.MaterialCalendarGridView.1
            @Override // androidx.core.view.C0865a
            /* renamed from: a */
            public final void mo9886a(View view, C0869c c0869c) {
                super.mo9886a(view, c0869c);
                c0869c.m44274a((Object) null);
            }
        });
    }

    /* renamed from: a */
    private static int m10860a(View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    /* renamed from: a */
    public final C14539i m10861a() {
        return (C14539i) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((C14539i) super.getAdapter()).notifyDataSetChanged();
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
        C14539i c14539i = (C14539i) super.getAdapter();
        DateSelector<?> dateSelector = c14539i.f53045c;
        C14513b c14513b = c14539i.f53047e;
        Long item = c14539i.getItem(c14539i.f53044b.daysFromStartOfWeekToFirstOfMonth());
        Long item2 = c14539i.getItem(c14539i.m10813a());
        for (C0828b<Long, Long> c0828b : dateSelector.getSelectedRanges()) {
            C14539i c14539i2 = c14539i;
            if (c0828b.f3556a != null) {
                c14539i2 = c14539i;
                if (c0828b.f3557b != null) {
                    long longValue = c0828b.f3556a.longValue();
                    long longValue2 = c0828b.f3557b.longValue();
                    Long valueOf = Long.valueOf(longValue);
                    Long valueOf2 = Long.valueOf(longValue2);
                    c14539i2 = c14539i;
                    if (!(item == null || item2 == null || valueOf == null || valueOf2 == null || valueOf.longValue() > item2.longValue() || valueOf2.longValue() < item.longValue())) {
                        boolean m10497a = C14654r.m10497a(this);
                        if (longValue < item.longValue()) {
                            i = c14539i.f53044b.daysFromStartOfWeekToFirstOfMonth();
                            i2 = i % c14539i.f53044b.daysInWeek == 0 ? 0 : !m10497a ? getChildAt(i - 1).getRight() : getChildAt(i - 1).getLeft();
                        } else {
                            this.f52939a.setTimeInMillis(longValue);
                            i = c14539i.m10808b(this.f52939a.get(5));
                            i2 = m10860a(getChildAt(i));
                        }
                        if (longValue2 > item2.longValue()) {
                            i4 = Math.min(c14539i.m10813a(), getChildCount() - 1);
                            i3 = (i4 + 1) % c14539i.f53044b.daysInWeek == 0 ? getWidth() : !m10497a ? getChildAt(i4).getRight() : getChildAt(i4).getLeft();
                        } else {
                            this.f52939a.setTimeInMillis(longValue2);
                            i4 = c14539i.m10808b(this.f52939a.get(5));
                            i3 = m10860a(getChildAt(i4));
                        }
                        int itemId = (int) c14539i.getItemId(i);
                        int itemId2 = (int) c14539i.getItemId(i4);
                        while (true) {
                            c14539i2 = c14539i;
                            if (itemId <= itemId2) {
                                int numColumns = getNumColumns() * itemId;
                                int numColumns2 = (numColumns + getNumColumns()) - 1;
                                View childAt = getChildAt(numColumns);
                                int top = childAt.getTop();
                                int i7 = c14513b.f52958a.f52952a.top;
                                int bottom = childAt.getBottom();
                                int i8 = c14513b.f52958a.f52952a.bottom;
                                if (!m10497a) {
                                    i5 = numColumns > i ? 0 : i2;
                                    i6 = i4 > numColumns2 ? getWidth() : i3;
                                } else {
                                    i5 = i4 > numColumns2 ? 0 : i3;
                                    i6 = numColumns > i ? getWidth() : i2;
                                }
                                canvas.drawRect(i5, top + i7, i6, bottom - i8, c14513b.f52965h);
                                itemId++;
                            }
                        }
                    }
                }
            }
            c14539i = c14539i2;
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected final void onFocusChanged(boolean z, int i, Rect rect) {
        if (!z) {
            super.onFocusChanged(false, i, rect);
        } else if (i == 33) {
            setSelection(((C14539i) super.getAdapter()).m10813a());
        } else if (i == 130) {
            setSelection(((C14539i) super.getAdapter()).f53044b.daysFromStartOfWeekToFirstOfMonth());
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= ((C14539i) super.getAdapter()).f53044b.daysFromStartOfWeekToFirstOfMonth()) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(((C14539i) super.getAdapter()).f53044b.daysFromStartOfWeekToFirstOfMonth());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onMeasure(int i, int i2) {
        if (!this.f52940b) {
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(16777215, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.GridView, android.widget.AbsListView
    public final void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof C14539i) {
            super.setAdapter(listAdapter);
            return;
        }
        throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), C14539i.class.getCanonicalName()));
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final void setSelection(int i) {
        if (i < ((C14539i) super.getAdapter()).f53044b.daysFromStartOfWeekToFirstOfMonth()) {
            super.setSelection(((C14539i) super.getAdapter()).f53044b.daysFromStartOfWeekToFirstOfMonth());
        } else {
            super.setSelection(i);
        }
    }
}
