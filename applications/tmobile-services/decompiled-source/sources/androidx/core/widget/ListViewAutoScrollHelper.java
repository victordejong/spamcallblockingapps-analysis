package androidx.core.widget;

import android.widget.ListView;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/ListViewAutoScrollHelper.class */
public class ListViewAutoScrollHelper extends AutoScrollHelper {

    /* renamed from: x */
    private final ListView f3400x;

    public ListViewAutoScrollHelper(@NonNull ListView listView) {
        super(listView);
        this.f3400x = listView;
    }

    @Override // androidx.core.widget.AutoScrollHelper
    /* renamed from: a */
    public boolean mo18897a(int i) {
        return false;
    }

    @Override // androidx.core.widget.AutoScrollHelper
    /* renamed from: b */
    public boolean mo18896b(int i) {
        ListView listView = this.f3400x;
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

    @Override // androidx.core.widget.AutoScrollHelper
    /* renamed from: j */
    public void mo18895j(int i, int i2) {
        ListViewCompat.m18893b(this.f3400x, i2);
    }
}
