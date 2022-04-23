package androidx.core.widget;

import android.os.Build;
import android.view.View;
import android.widget.ListView;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/f.class */
public final class f extends a {
    private final ListView f;

    public f(ListView listView) {
        super(listView);
        this.f = listView;
    }

    @Override // androidx.core.widget.a
    public final void a(int i) {
        View childAt;
        ListView listView = this.f;
        if (Build.VERSION.SDK_INT >= 19) {
            listView.scrollListBy(i);
            return;
        }
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        if (firstVisiblePosition != -1 && (childAt = listView.getChildAt(0)) != null) {
            listView.setSelectionFromTop(firstVisiblePosition, childAt.getTop() - i);
        }
    }

    @Override // androidx.core.widget.a
    public final boolean b(int i) {
        ListView listView = this.f;
        int count = listView.getCount();
        if (count == 0) {
            return false;
        }
        int childCount = listView.getChildCount();
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        if (i > 0) {
            return firstVisiblePosition + childCount < count || listView.getChildAt(childCount - 1).getBottom() > listView.getHeight();
        }
        if (i < 0) {
            return firstVisiblePosition > 0 || listView.getChildAt(0).getTop() < 0;
        }
        return false;
    }
}
