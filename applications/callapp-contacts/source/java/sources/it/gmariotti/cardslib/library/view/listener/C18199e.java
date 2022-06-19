package it.gmariotti.cardslib.library.view.listener;

import android.widget.AbsListView;
/* renamed from: it.gmariotti.cardslib.library.view.listener.e */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/e.class */
public final class C18199e implements AbsListView.OnScrollListener {

    /* renamed from: a */
    public View$OnTouchListenerC18173a f63310a;

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
        View$OnTouchListenerC18173a view$OnTouchListenerC18173a = this.f63310a;
        if (view$OnTouchListenerC18173a != null) {
            view$OnTouchListenerC18173a.f63216a = !(i != 1);
        }
    }
}
