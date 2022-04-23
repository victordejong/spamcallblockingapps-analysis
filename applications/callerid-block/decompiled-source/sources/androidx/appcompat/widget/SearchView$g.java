package androidx.appcompat.widget;

import android.view.KeyEvent;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$g.class */
class SearchView$g implements View.OnKeyListener {

    /* renamed from: b */
    final /* synthetic */ SearchView f468b;

    SearchView$g(SearchView searchView) {
        this.f468b = searchView;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        SearchView searchView = this.f468b;
        if (searchView.g0 == null) {
            return false;
        }
        if (searchView.q.isPopupShowing() && this.f468b.q.getListSelection() != -1) {
            return this.f468b.X(view, i, keyEvent);
        }
        if (this.f468b.q.b() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i != 66) {
            return false;
        }
        view.cancelLongPress();
        SearchView searchView2 = this.f468b;
        searchView2.P(0, (String) null, searchView2.q.getText().toString());
        return true;
    }
}
