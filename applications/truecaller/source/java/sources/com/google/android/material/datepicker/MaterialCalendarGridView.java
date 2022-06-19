package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.google.android.material.C2080R;
import e.m.a.g.j.b;
import e.m.a.g.j.k;
import e.m.a.g.j.l;
import e.m.a.g.j.p;
import e.m.a.g.j.w;
import java.util.Calendar;
import p1727n3.p1789g0.C26232y;
import p1727n3.p1807k.p1820h.C26553c;
import p1727n3.p1807k.p1821i.C26614s;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendarGridView.class */
public final class MaterialCalendarGridView extends GridView {

    /* renamed from: a */
    public final Calendar f6688a = w.e();

    /* renamed from: b */
    public final boolean f6689b;

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        if (l.PA(getContext())) {
            setNextFocusLeftId(C2080R.C2082id.cancel_button);
            setNextFocusRightId(C2080R.C2082id.confirm_button);
        }
        this.f6689b = l.QA(getContext(), C2080R.attr.nestedScrollable);
        C26614s.m1564q(this, new k(this));
    }

    /* renamed from: a */
    public p getAdapter2() {
        return super.getAdapter();
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
        p adapter2 = getAdapter2();
        DateSelector dateSelector = adapter2.b;
        b bVar = adapter2.d;
        Long c = adapter2.c(adapter2.b());
        Long c2 = adapter2.c(adapter2.d());
        for (C26553c<Long, Long> c26553c : dateSelector.m38447I1()) {
            Long l = c26553c.f74395a;
            p pVar = adapter2;
            if (l != null) {
                if (c26553c.f74396b != null) {
                    long longValue = l.longValue();
                    long longValue2 = c26553c.f74396b.longValue();
                    Long valueOf = Long.valueOf(longValue);
                    Long valueOf2 = Long.valueOf(longValue2);
                    boolean z = true;
                    if (!(c == null || c2 == null || valueOf == null || valueOf2 == null || valueOf.longValue() > c2.longValue() || valueOf2.longValue() < c.longValue())) {
                        boolean m2407U0 = C26232y.m2407U0(this);
                        if (longValue < c.longValue()) {
                            i = adapter2.b();
                            i2 = i % adapter2.a.f6693d == 0 ? 0 : !m2407U0 ? getChildAt(i - 1).getRight() : getChildAt(i - 1).getLeft();
                        } else {
                            this.f6688a.setTimeInMillis(longValue);
                            i = adapter2.a(this.f6688a.get(5));
                            View childAt = getChildAt(i);
                            i2 = (childAt.getWidth() / 2) + childAt.getLeft();
                        }
                        if (longValue2 > c2.longValue()) {
                            i3 = Math.min(adapter2.d(), getChildCount() - 1);
                            if ((i3 + 1) % adapter2.a.f6693d != 0) {
                                z = false;
                            }
                            i4 = z ? getWidth() : !m2407U0 ? getChildAt(i3).getRight() : getChildAt(i3).getLeft();
                        } else {
                            this.f6688a.setTimeInMillis(longValue2);
                            i3 = adapter2.a(this.f6688a.get(5));
                            View childAt2 = getChildAt(i3);
                            i4 = (childAt2.getWidth() / 2) + childAt2.getLeft();
                        }
                        int itemId = (int) adapter2.getItemId(i);
                        int itemId2 = (int) adapter2.getItemId(i3);
                        while (true) {
                            pVar = adapter2;
                            if (itemId > itemId2) {
                                break;
                            }
                            int numColumns = getNumColumns() * itemId;
                            int numColumns2 = (getNumColumns() + numColumns) - 1;
                            View childAt3 = getChildAt(numColumns);
                            int top = childAt3.getTop();
                            int i7 = bVar.a.a.top;
                            int bottom = childAt3.getBottom();
                            int i8 = bVar.a.a.bottom;
                            if (!m2407U0) {
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
                            canvas.drawRect(i6, top + i7, i5, bottom - i8, bVar.h);
                            itemId++;
                        }
                    }
                }
            }
            adapter2 = pVar;
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        if (!z) {
            super.onFocusChanged(false, i, rect);
        } else if (i == 33) {
            setSelection(getAdapter2().d());
        } else if (i == 130) {
            setSelection(getAdapter2().b());
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter2().b()) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(getAdapter2().b());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        if (!this.f6689b) {
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.GridView, android.widget.AbsListView
    public final void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof p) {
            super.setAdapter(listAdapter);
            return;
        }
        throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), p.class.getCanonicalName()));
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i) {
        if (i < getAdapter2().b()) {
            super.setSelection(getAdapter2().b());
        } else {
            super.setSelection(i);
        }
    }
}
