package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.p025g.C0522d;
import androidx.core.p026h.C0549a;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.p027a.C0553c;
import com.google.android.material.C4492a;
import java.util.Calendar;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendarGridView.class */
public final class MaterialCalendarGridView extends GridView {

    /* renamed from: a */
    private final Calendar f20026a;

    public MaterialCalendarGridView(Context context) {
        this(context, null);
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f20026a = C4636r.m3106b();
        if (C4618i.m3165b(getContext())) {
            setNextFocusLeftId(C4492a.C4498f.cancel_button);
            setNextFocusRightId(C4492a.C4498f.confirm_button);
        }
        C0595u.m20345a(this, new C0549a() { // from class: com.google.android.material.datepicker.MaterialCalendarGridView.1
            @Override // androidx.core.p026h.C0549a
            /* renamed from: a */
            public void mo2272a(View view, C0553c c0553c) {
                super.mo2272a(view, c0553c);
                c0553c.m20512a((Object) null);
            }
        });
    }

    /* renamed from: a */
    private static int m3235a(View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    /* renamed from: a */
    private void m3236a(int i, Rect rect) {
        if (i == 33) {
            setSelection(getAdapter2().m3130b());
        } else if (i == 130) {
            setSelection(getAdapter2().m3134a());
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }

    /* renamed from: a */
    private static boolean m3234a(Long l, Long l2, Long l3, Long l4) {
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
                            z = true;
                            if (l4.longValue() >= l.longValue()) {
                                z = false;
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public C4628m getAdapter2() {
        return (C4628m) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter2().notifyDataSetChanged();
    }

    @Override // android.view.View
    protected final void onDraw(Canvas canvas) {
        int m3128c;
        int m3235a;
        int m3128c2;
        int m3235a2;
        super.onDraw(canvas);
        C4628m adapter2 = getAdapter2();
        AbstractC4600d<?> abstractC4600d = adapter2.f20129c;
        C4599c c4599c = adapter2.f20130d;
        Long item = adapter2.getItem(adapter2.m3134a());
        Long item2 = adapter2.getItem(adapter2.m3130b());
        for (C0522d<Long, Long> c0522d : abstractC4600d.m3208d()) {
            if (c0522d.f1954a != null && c0522d.f1955b != null) {
                long longValue = c0522d.f1954a.longValue();
                long longValue2 = c0522d.f1955b.longValue();
                if (m3234a(item, item2, Long.valueOf(longValue), Long.valueOf(longValue2))) {
                    return;
                }
                if (longValue < item.longValue()) {
                    m3128c = adapter2.m3134a();
                    m3235a = adapter2.m3126e(m3128c) ? 0 : getChildAt(m3128c - 1).getRight();
                } else {
                    this.f20026a.setTimeInMillis(longValue);
                    m3128c = adapter2.m3128c(this.f20026a.get(5));
                    m3235a = m3235a(getChildAt(m3128c));
                }
                if (longValue2 > item2.longValue()) {
                    m3128c2 = adapter2.m3130b();
                    m3235a2 = adapter2.m3125f(m3128c2) ? getWidth() : getChildAt(m3128c2).getRight();
                } else {
                    this.f20026a.setTimeInMillis(longValue2);
                    m3128c2 = adapter2.m3128c(this.f20026a.get(5));
                    m3235a2 = m3235a(getChildAt(m3128c2));
                }
                int itemId = (int) adapter2.getItemId(m3128c2);
                for (int itemId2 = (int) adapter2.getItemId(m3128c); itemId2 <= itemId; itemId2++) {
                    int numColumns = getNumColumns() * itemId2;
                    int numColumns2 = getNumColumns();
                    View childAt = getChildAt(numColumns);
                    canvas.drawRect(numColumns > m3128c ? 0 : m3235a, childAt.getTop() + c4599c.f20046a.m3219a(), m3128c2 > (numColumns2 + numColumns) - 1 ? getWidth() : m3235a2, childAt.getBottom() - c4599c.f20046a.m3216b(), c4599c.f20053h);
                }
            }
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        if (z) {
            m3236a(i, rect);
        } else {
            super.onFocusChanged(false, i, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean z = false;
        if (super.onKeyDown(i, keyEvent)) {
            if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter2().m3134a()) {
                z = true;
            } else if (19 == i) {
                setSelection(getAdapter2().m3134a());
                z = true;
            }
        }
        return z;
    }

    @Override // android.widget.GridView, android.widget.AbsListView
    public final void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof C4628m)) {
            throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), C4628m.class.getCanonicalName()));
        }
        super.setAdapter(listAdapter);
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i) {
        if (i < getAdapter2().m3134a()) {
            super.setSelection(getAdapter2().m3134a());
        } else {
            super.setSelection(i);
        }
    }
}
