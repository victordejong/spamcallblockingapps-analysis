package androidx.core.widget;

import android.widget.ListView;
/* renamed from: androidx.core.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/f.class */
public class C0602f extends AbstractView$OnTouchListenerC0595a {

    /* renamed from: f */
    private final ListView f2030f;

    public C0602f(ListView listView) {
        super(listView);
        this.f2030f = listView;
    }

    @Override // androidx.core.widget.AbstractView$OnTouchListenerC0595a
    /* renamed from: a */
    public void mo5988a(int i, int i2) {
        C0603g.m5985a(this.f2030f, i2);
    }

    @Override // androidx.core.widget.AbstractView$OnTouchListenerC0595a
    /* renamed from: e */
    public boolean mo5987e(int i) {
        return false;
    }

    @Override // androidx.core.widget.AbstractView$OnTouchListenerC0595a
    /* renamed from: f */
    public boolean mo5986f(int i) {
        ListView listView = this.f2030f;
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
}
