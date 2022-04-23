package it.gmariotti.cardslib.library.view.listener;

import android.widget.AbsListView;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/e.class */
public final class e implements AbsListView.OnScrollListener {

    /* renamed from: a  reason: collision with root package name */
    public a f36541a;

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
        a aVar = this.f36541a;
        if (aVar != null) {
            aVar.f36495a = !(i != 1);
        }
    }
}
