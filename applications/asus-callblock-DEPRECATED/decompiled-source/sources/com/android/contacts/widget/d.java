package com.android.contacts.widget;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.android.a.b.a;
import com.android.contacts.widget.PinnedHeaderListView;
/* loaded from: classes-dex2jar.jar:com/android/contacts/widget/d.class */
public abstract class d extends a implements PinnedHeaderListView.b {
    public boolean Y;
    private boolean[] d;

    public d(Context context) {
        super(context);
    }

    @Override // com.android.contacts.widget.PinnedHeaderListView.b
    public final int a(int i) {
        return i(i);
    }

    public View a(int i, View view, ViewGroup viewGroup) {
        View view2;
        Integer num;
        if (d(i)) {
            View view3 = (view == null || (num = (Integer) view.getTag()) == null || num.intValue() != 0) ? null : view;
            view2 = view3;
            if (view3 == null) {
                view2 = a(this.f407a, i, viewGroup);
                view2.setTag(0);
                view2.setFocusable(false);
                view2.setEnabled(false);
            }
            a(view2, i, e(i));
        } else {
            view2 = null;
        }
        return view2;
    }

    public void a(PinnedHeaderListView pinnedHeaderListView) {
        int g;
        if (this.Y) {
            int size = this.f408b.size();
            if (this.d == null || this.d.length != size) {
                this.d = new boolean[size];
            }
            for (int i = 0; i < size; i++) {
                boolean z = this.Y && d(i) && !f(i);
                this.d[i] = z;
                if (!z) {
                    pinnedHeaderListView.setHeaderInvisible(i, true);
                }
            }
            int headerViewsCount = pinnedHeaderListView.getHeaderViewsCount();
            int i2 = 0;
            int i3 = -1;
            for (int i4 = 0; i4 < size; i4++) {
                i2 = i2;
                i3 = i3;
                if (this.d[i4]) {
                    if (i4 > g(pinnedHeaderListView.b(i2) - headerViewsCount)) {
                        break;
                    }
                    pinnedHeaderListView.setHeaderPinnedAtTop(i4, i2, false);
                    i2 += pinnedHeaderListView.a(i4);
                    i3 = i4;
                }
            }
            int height = pinnedHeaderListView.getHeight();
            int i5 = 0;
            int i6 = size;
            int i7 = size;
            while (true) {
                i6--;
                if (i6 <= i3) {
                    break;
                } else if (this.d[i6]) {
                    int b2 = pinnedHeaderListView.b(height - i5) - headerViewsCount;
                    if (b2 < 0 || (g = g(b2 - 1)) == -1 || i6 <= g) {
                        break;
                    }
                    i5 = pinnedHeaderListView.a(i6) + i5;
                    pinnedHeaderListView.setHeaderPinnedAtBottom(i6, height - i5, b2 < i(i6));
                    i7 = i6;
                }
            }
            for (int i8 = i3 + 1; i8 < i7; i8++) {
                if (this.d[i8]) {
                    pinnedHeaderListView.setHeaderInvisible(i8, f(i8));
                }
            }
        }
    }

    public int c_() {
        return this.Y ? this.f408b.size() : 0;
    }
}
