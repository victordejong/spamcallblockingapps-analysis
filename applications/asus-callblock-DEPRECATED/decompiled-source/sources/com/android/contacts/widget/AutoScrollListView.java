package com.android.contacts.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ListView;
/* loaded from: classes-dex2jar.jar:com/android/contacts/widget/AutoScrollListView.class */
public class AutoScrollListView extends ListView {

    /* renamed from: a  reason: collision with root package name */
    private int f2185a = -1;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2186b;

    public AutoScrollListView(Context context) {
        super(context);
    }

    public AutoScrollListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AutoScrollListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public final void a(int i, boolean z) {
        this.f2185a = i;
        this.f2186b = z;
        requestLayout();
    }

    @Override // android.widget.ListView, android.widget.AbsListView
    protected void layoutChildren() {
        super.layoutChildren();
        if (this.f2185a != -1) {
            int i = this.f2185a;
            this.f2185a = -1;
            int firstVisiblePosition = getFirstVisiblePosition() + 1;
            int lastVisiblePosition = getLastVisiblePosition();
            if (i < firstVisiblePosition || i > lastVisiblePosition) {
                int height = (int) (getHeight() * 0.33f);
                if (!this.f2186b) {
                    setSelectionFromTop(i, height);
                    super.layoutChildren();
                    return;
                }
                int i2 = (lastVisiblePosition - firstVisiblePosition) * 2;
                if (i < firstVisiblePosition) {
                    int i3 = i2 + i;
                    int i4 = i3;
                    if (i3 >= getCount()) {
                        i4 = getCount() - 1;
                    }
                    if (i4 < firstVisiblePosition) {
                        setSelection(i4);
                        super.layoutChildren();
                    }
                } else {
                    int i5 = i - i2;
                    int i6 = i5;
                    if (i5 < 0) {
                        i6 = 0;
                    }
                    if (i6 > lastVisiblePosition) {
                        setSelection(i6);
                        super.layoutChildren();
                    }
                }
                smoothScrollToPositionFromTop(i, height);
            }
        }
    }
}
