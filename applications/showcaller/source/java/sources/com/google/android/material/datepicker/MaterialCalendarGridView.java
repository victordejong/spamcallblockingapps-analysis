package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.google.android.material.internal.C8209q;
import java.util.Calendar;
import p020b.p041h.p049k.C1593d;
import p020b.p041h.p050l.C1599a;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
import p078c.p084c.p085a.p096b.C1890f;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendarGridView.class */
public final class MaterialCalendarGridView extends GridView {

    /* renamed from: d */
    private final Calendar f36598d;

    /* renamed from: e */
    private final boolean f36599e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.datepicker.MaterialCalendarGridView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendarGridView$a.class */
    public class C8092a extends C1599a {
        C8092a() {
            MaterialCalendarGridView.this = r4;
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: g */
        public void mo3869g(View view, C1634c c1634c) {
            super.mo3869g(view, c1634c);
            c1634c.m29485e0(null);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f36598d = C8123o.m4839q();
        if (C8106f.m4909E2(getContext())) {
            setNextFocusLeftId(C1890f.cancel_button);
            setNextFocusRightId(C1890f.confirm_button);
        }
        this.f36599e = C8106f.m4908F2(getContext());
        C1679w.m29273r0(this, new C8092a());
    }

    /* renamed from: a */
    private void m4982a(int i, Rect rect) {
        if (i == 33) {
            setSelection(getAdapter2().m4876i());
        } else if (i == 130) {
            setSelection(getAdapter2().m4883b());
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }

    /* renamed from: c */
    private static int m4980c(View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    /* renamed from: d */
    private static boolean m4979d(Long l, Long l2, Long l3, Long l4) {
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

    /* renamed from: b */
    public C8114i getAdapter2() {
        return (C8114i) super.getAdapter();
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
        C8114i adapter2 = getAdapter2();
        DateSelector<?> dateSelector = adapter2.f36683f;
        C8100b c8100b = adapter2.f36685h;
        Long item = adapter2.getItem(adapter2.m4883b());
        Long item2 = adapter2.getItem(adapter2.m4876i());
        for (C1593d<Long, Long> c1593d : dateSelector.mo4942q()) {
            Long l = c1593d.f6187a;
            C8114i c8114i = adapter2;
            if (l != null) {
                if (c1593d.f6188b != null) {
                    long longValue = l.longValue();
                    long longValue2 = c1593d.f6188b.longValue();
                    if (!m4979d(item, item2, Long.valueOf(longValue), Long.valueOf(longValue2))) {
                        boolean m4445h = C8209q.m4445h(this);
                        if (longValue < item.longValue()) {
                            i2 = adapter2.m4883b();
                            i = adapter2.m4879f(i2) ? 0 : !m4445h ? getChildAt(i2 - 1).getRight() : getChildAt(i2 - 1).getLeft();
                        } else {
                            this.f36598d.setTimeInMillis(longValue);
                            i2 = adapter2.m4884a(this.f36598d.get(5));
                            i = m4980c(getChildAt(i2));
                        }
                        if (longValue2 > item2.longValue()) {
                            i4 = Math.min(adapter2.m4876i(), getChildCount() - 1);
                            i3 = adapter2.m4878g(i4) ? getWidth() : !m4445h ? getChildAt(i4).getRight() : getChildAt(i4).getLeft();
                        } else {
                            this.f36598d.setTimeInMillis(longValue2);
                            i4 = adapter2.m4884a(this.f36598d.get(5));
                            i3 = m4980c(getChildAt(i4));
                        }
                        int itemId = (int) adapter2.getItemId(i2);
                        int itemId2 = (int) adapter2.getItemId(i4);
                        while (true) {
                            c8114i = adapter2;
                            if (itemId > itemId2) {
                                break;
                            }
                            int numColumns = getNumColumns() * itemId;
                            int numColumns2 = (getNumColumns() + numColumns) - 1;
                            View childAt = getChildAt(numColumns);
                            int top = childAt.getTop();
                            int m4937c = c8100b.f36631a.m4937c();
                            int bottom = childAt.getBottom();
                            int m4938b = c8100b.f36631a.m4938b();
                            if (!m4445h) {
                                i5 = numColumns > i2 ? 0 : i;
                                i6 = i4 > numColumns2 ? getWidth() : i3;
                            } else {
                                i5 = i4 > numColumns2 ? 0 : i3;
                                i6 = numColumns > i2 ? getWidth() : i;
                            }
                            canvas.drawRect(i5, top + m4937c, i6, bottom - m4938b, c8100b.f36638h);
                            itemId++;
                        }
                    }
                }
            }
            adapter2 = c8114i;
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        if (z) {
            m4982a(i, rect);
        } else {
            super.onFocusChanged(false, i, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter2().m4883b()) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(getAdapter2().m4883b());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        if (!this.f36599e) {
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.GridView, android.widget.AbsListView
    public final void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof C8114i) {
            super.setAdapter(listAdapter);
            return;
        }
        throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), C8114i.class.getCanonicalName()));
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i) {
        if (i < getAdapter2().m4883b()) {
            super.setSelection(getAdapter2().m4883b());
        } else {
            super.setSelection(i);
        }
    }
}
