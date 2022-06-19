package androidx.appcompat.widget;

import android.widget.AbsListView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$d.class */
class ListPopupWindow$d implements AbsListView.OnScrollListener {

    /* renamed from: a */
    final /* synthetic */ ListPopupWindow f435a;

    ListPopupWindow$d(ListPopupWindow listPopupWindow) {
        this.f435a = listPopupWindow;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (i != 1 || this.f435a.A() || this.f435a.F.getContentView() == null) {
            return;
        }
        ListPopupWindow listPopupWindow = this.f435a;
        listPopupWindow.B.removeCallbacks(listPopupWindow.x);
        this.f435a.x.run();
    }
}
