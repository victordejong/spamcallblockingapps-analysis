package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.e.b;
import androidx.core.view.a.c;
import androidx.core.view.v;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.material.a;
import com.google.android.material.internal.r;
import java.util.Calendar;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendarGridView.class */
public final class MaterialCalendarGridView extends GridView {

    /* renamed from: a  reason: collision with root package name */
    private final Calendar f30406a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f30407b;

    public MaterialCalendarGridView(Context context) {
        this(context, null);
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f30406a = o.b();
        if (g.a(getContext())) {
            setNextFocusLeftId(a.f.cancel_button);
            setNextFocusRightId(a.f.confirm_button);
        }
        this.f30407b = g.b(getContext());
        v.a(this, new androidx.core.view.a() { // from class: com.google.android.material.datepicker.MaterialCalendarGridView.1
            @Override // androidx.core.view.a
            public final void a(View view, c cVar) {
                super.a(view, cVar);
                cVar.a((Object) null);
            }
        });
    }

    private static int a(View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    public final i a() {
        return (i) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((i) super.getAdapter()).notifyDataSetChanged();
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
        i iVar = (i) super.getAdapter();
        DateSelector<?> dateSelector = iVar.f30476c;
        b bVar = iVar.e;
        Long a2 = iVar.getItem(iVar.f30475b.daysFromStartOfWeekToFirstOfMonth());
        Long a3 = iVar.getItem(iVar.a());
        for (b<Long, Long> bVar2 : dateSelector.getSelectedRanges()) {
            iVar = iVar;
            if (bVar2.f1889a != null) {
                iVar = iVar;
                if (bVar2.f1890b != null) {
                    long longValue = bVar2.f1889a.longValue();
                    long longValue2 = bVar2.f1890b.longValue();
                    Long valueOf = Long.valueOf(longValue);
                    Long valueOf2 = Long.valueOf(longValue2);
                    iVar = iVar;
                    if (!(a2 == null || a3 == null || valueOf == null || valueOf2 == null || valueOf.longValue() > a3.longValue() || valueOf2.longValue() < a2.longValue())) {
                        boolean a4 = r.a(this);
                        if (longValue < a2.longValue()) {
                            i = iVar.f30475b.daysFromStartOfWeekToFirstOfMonth();
                            i2 = i % iVar.f30475b.daysInWeek == 0 ? 0 : !a4 ? getChildAt(i - 1).getRight() : getChildAt(i - 1).getLeft();
                        } else {
                            this.f30406a.setTimeInMillis(longValue);
                            i = iVar.b(this.f30406a.get(5));
                            i2 = a(getChildAt(i));
                        }
                        if (longValue2 > a3.longValue()) {
                            i4 = Math.min(iVar.a(), getChildCount() - 1);
                            i3 = (i4 + 1) % iVar.f30475b.daysInWeek == 0 ? getWidth() : !a4 ? getChildAt(i4).getRight() : getChildAt(i4).getLeft();
                        } else {
                            this.f30406a.setTimeInMillis(longValue2);
                            i4 = iVar.b(this.f30406a.get(5));
                            i3 = a(getChildAt(i4));
                        }
                        int itemId = (int) iVar.getItemId(i);
                        int itemId2 = (int) iVar.getItemId(i4);
                        while (true) {
                            iVar = iVar;
                            if (itemId <= itemId2) {
                                int numColumns = getNumColumns() * itemId;
                                int numColumns2 = (numColumns + getNumColumns()) - 1;
                                View childAt = getChildAt(numColumns);
                                int top = childAt.getTop();
                                int i7 = bVar.f30423a.f30419a.top;
                                int bottom = childAt.getBottom();
                                int i8 = bVar.f30423a.f30419a.bottom;
                                if (!a4) {
                                    i5 = numColumns > i ? 0 : i2;
                                    i6 = i4 > numColumns2 ? getWidth() : i3;
                                } else {
                                    i5 = i4 > numColumns2 ? 0 : i3;
                                    i6 = numColumns > i ? getWidth() : i2;
                                }
                                canvas.drawRect(i5, top + i7, i6, bottom - i8, bVar.h);
                                itemId++;
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected final void onFocusChanged(boolean z, int i, Rect rect) {
        if (!z) {
            super.onFocusChanged(false, i, rect);
        } else if (i == 33) {
            setSelection(((i) super.getAdapter()).a());
        } else if (i == 130) {
            setSelection(((i) super.getAdapter()).f30475b.daysFromStartOfWeekToFirstOfMonth());
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= ((i) super.getAdapter()).f30475b.daysFromStartOfWeekToFirstOfMonth()) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(((i) super.getAdapter()).f30475b.daysFromStartOfWeekToFirstOfMonth());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onMeasure(int i, int i2) {
        if (this.f30407b) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(16777215, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW));
            getLayoutParams().height = getMeasuredHeight();
            return;
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.GridView, android.widget.AbsListView
    public final void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof i) {
            super.setAdapter(listAdapter);
            return;
        }
        throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), i.class.getCanonicalName()));
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final void setSelection(int i) {
        if (i < ((i) super.getAdapter()).f30475b.daysFromStartOfWeekToFirstOfMonth()) {
            super.setSelection(((i) super.getAdapter()).f30475b.daysFromStartOfWeekToFirstOfMonth());
        } else {
            super.setSelection(i);
        }
    }
}
