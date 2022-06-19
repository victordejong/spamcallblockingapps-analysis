package androidx.core.widget;

import android.widget.ListView;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/ListViewAutoScrollHelper.class */
public class ListViewAutoScrollHelper extends AutoScrollHelper {
    private final ListView mTarget;

    public ListViewAutoScrollHelper(ListView listView) {
        super(listView);
        this.mTarget = listView;
    }

    @Override // androidx.core.widget.AutoScrollHelper
    public boolean canTargetScrollHorizontally(int i) {
        return false;
    }

    @Override // androidx.core.widget.AutoScrollHelper
    public boolean canTargetScrollVertically(int i) {
        ListView listView = this.mTarget;
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

    @Override // androidx.core.widget.AutoScrollHelper
    public void scrollTargetBy(int i, int i2) {
        ListViewCompat.scrollListBy(this.mTarget, i2);
    }
}
