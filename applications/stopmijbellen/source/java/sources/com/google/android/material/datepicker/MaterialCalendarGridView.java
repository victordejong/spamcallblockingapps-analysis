package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import java.util.Calendar;
import p152l0.C3427b;
import p163m0.C3589v;
import p262v3.C4638t;
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendarGridView.class */
public final class MaterialCalendarGridView extends GridView {

    /* renamed from: a */
    public final Calendar f6503a = C1730a0.m4638e();

    /* renamed from: b */
    public final boolean f6504b;

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        if (C1753o.m4614d(getContext())) {
            setNextFocusLeftId(2131296441);
            setNextFocusRightId(2131296488);
        }
        this.f6504b = C1753o.m4613e(getContext(), 2130969483);
        C3589v.m2103u(this, new C1752n(this));
    }

    /* renamed from: a */
    public C1763t getAdapter2() {
        return (C1763t) super.getAdapter();
    }

    /* renamed from: b */
    public final View m4643b(int i) {
        return getChildAt(i - getFirstVisiblePosition());
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter2().notifyDataSetChanged();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        super.onDraw(canvas);
        C1763t adapter2 = getAdapter2();
        AbstractC1736d<?> abstractC1736d = adapter2.f6604b;
        C1733c c1733c = adapter2.f6606d;
        int max = Math.max(adapter2.m4600b(), getFirstVisiblePosition());
        int min = Math.min(adapter2.m4598d(), getLastVisiblePosition());
        Long item = adapter2.getItem(max);
        Long item2 = adapter2.getItem(min);
        for (C3427b<Long, Long> c3427b : abstractC1736d.m4627o()) {
            Long l = c3427b.f11485a;
            if (l != null && c3427b.f11486b != null) {
                long longValue = l.longValue();
                long longValue2 = c3427b.f11486b.longValue();
                Long valueOf = Long.valueOf(longValue);
                Long valueOf2 = Long.valueOf(longValue2);
                if (!(item == null || item2 == null || valueOf == null || valueOf2 == null || valueOf.longValue() > item2.longValue() || valueOf2.longValue() < item.longValue())) {
                    boolean m685a = C4638t.m685a(this);
                    if (longValue < item.longValue()) {
                        i2 = max % adapter2.f6603a.f6598d == 0 ? 0 : !m685a ? m4643b(max - 1).getRight() : m4643b(max - 1).getLeft();
                        i = max;
                    } else {
                        this.f6503a.setTimeInMillis(longValue);
                        i = adapter2.m4601a(this.f6503a.get(5));
                        View m4643b = m4643b(i);
                        i2 = (m4643b.getWidth() / 2) + m4643b.getLeft();
                    }
                    if (longValue2 > item2.longValue()) {
                        i4 = (min + 1) % adapter2.f6603a.f6598d == 0 ? getWidth() : !m685a ? m4643b(min).getRight() : m4643b(min).getLeft();
                        i3 = min;
                    } else {
                        this.f6503a.setTimeInMillis(longValue2);
                        i3 = adapter2.m4601a(this.f6503a.get(5));
                        View m4643b2 = m4643b(i3);
                        i4 = (m4643b2.getWidth() / 2) + m4643b2.getLeft();
                    }
                    int itemId = (int) adapter2.getItemId(i3);
                    for (int itemId2 = (int) adapter2.getItemId(i); itemId2 <= itemId; itemId2++) {
                        int numColumns = getNumColumns() * itemId2;
                        int numColumns2 = (getNumColumns() + numColumns) - 1;
                        View m4643b3 = m4643b(numColumns);
                        int top = m4643b3.getTop();
                        int i7 = c1733c.f6526a.f6518a.top;
                        int bottom = m4643b3.getBottom();
                        int i8 = c1733c.f6526a.f6518a.bottom;
                        if (!m685a) {
                            int i9 = numColumns > i ? 0 : i2;
                            if (i3 > numColumns2) {
                                i6 = i9;
                                i5 = getWidth();
                            } else {
                                i6 = i9;
                                i5 = i4;
                            }
                        } else {
                            int i10 = i3 > numColumns2 ? 0 : i4;
                            int width = numColumns > i ? getWidth() : i2;
                            int i11 = i10;
                            i5 = width;
                            i6 = i11;
                        }
                        canvas.drawRect(i6, top + i7, i5, bottom - i8, c1733c.f6533h);
                    }
                }
            }
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        if (!z) {
            super.onFocusChanged(false, i, rect);
        } else if (i == 33) {
            setSelection(getAdapter2().m4598d());
        } else if (i == 130) {
            setSelection(getAdapter2().m4600b());
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter2().m4600b()) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(getAdapter2().m4600b());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        if (!this.f6504b) {
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.GridView, android.widget.AbsListView
    public final void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof C1763t) {
            super.setAdapter(listAdapter);
            return;
        }
        throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), C1763t.class.getCanonicalName()));
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i) {
        if (i < getAdapter2().m4600b()) {
            super.setSelection(getAdapter2().m4600b());
        } else {
            super.setSelection(i);
        }
    }
}
