package androidx.appcompat.widget;

import android.widget.AbsListView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$d.class */
public class ListPopupWindow$d implements AbsListView.OnScrollListener {

    /* renamed from: a */
    public final /* synthetic */ ListPopupWindow f563a;

    public ListPopupWindow$d(ListPopupWindow listPopupWindow) {
        this.f563a = listPopupWindow;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (i != 1 || this.f563a.y() || this.f563a.G.getContentView() == null) {
            return;
        }
        ListPopupWindow listPopupWindow = this.f563a;
        listPopupWindow.C.removeCallbacks(listPopupWindow.y);
        this.f563a.y.run();
    }
}
