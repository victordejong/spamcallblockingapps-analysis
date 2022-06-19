package androidx.core.widget;

import android.os.Build;
import android.view.View;
import android.widget.ListView;
/* renamed from: androidx.core.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/f.class */
public final class C0957f extends AbstractView$OnTouchListenerC0950a {

    /* renamed from: f */
    private final ListView f3863f;

    public C0957f(ListView listView) {
        super(listView);
        this.f3863f = listView;
    }

    @Override // androidx.core.widget.AbstractView$OnTouchListenerC0950a
    /* renamed from: a */
    public final void mo43970a(int i) {
        View childAt;
        ListView listView = this.f3863f;
        if (Build.VERSION.SDK_INT >= 19) {
            listView.scrollListBy(i);
            return;
        }
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        if (firstVisiblePosition == -1 || (childAt = listView.getChildAt(0)) == null) {
            return;
        }
        listView.setSelectionFromTop(firstVisiblePosition, childAt.getTop() - i);
    }

    @Override // androidx.core.widget.AbstractView$OnTouchListenerC0950a
    /* renamed from: b */
    public final boolean mo43969b(int i) {
        ListView listView = this.f3863f;
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
