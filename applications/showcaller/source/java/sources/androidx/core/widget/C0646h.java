package androidx.core.widget;

import android.widget.ListView;
/* renamed from: androidx.core.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/h.class */
public class C0646h extends AbstractView$OnTouchListenerC0639c {

    /* renamed from: v */
    private final ListView f3100v;

    public C0646h(ListView listView) {
        super(listView);
        this.f3100v = listView;
    }

    @Override // androidx.core.widget.AbstractView$OnTouchListenerC0639c
    /* renamed from: a */
    public boolean mo33098a(int i) {
        return false;
    }

    @Override // androidx.core.widget.AbstractView$OnTouchListenerC0639c
    /* renamed from: b */
    public boolean mo33097b(int i) {
        ListView listView = this.f3100v;
        int count = listView.getCount();
        if (count == 0) {
            return false;
        }
        int childCount = listView.getChildCount();
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        if (i > 0) {
            return firstVisiblePosition + childCount < count || listView.getChildAt(childCount - 1).getBottom() > listView.getHeight();
        } else if (i >= 0) {
            return false;
        } else {
            return firstVisiblePosition > 0 || listView.getChildAt(0).getTop() < 0;
        }
    }

    @Override // androidx.core.widget.AbstractView$OnTouchListenerC0639c
    /* renamed from: r */
    public void mo33096r(int i, int i2) {
        C0647i.m33094b(this.f3100v, i2);
    }
}
