package androidx.appcompat.widget;

import android.view.KeyEvent;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$g.class */
public class SearchView$g implements View.OnKeyListener {

    /* renamed from: a */
    public final /* synthetic */ SearchView f596a;

    public SearchView$g(SearchView searchView) {
        this.f596a = searchView;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        SearchView searchView = this.f596a;
        if (searchView.P == null) {
            return false;
        }
        if (searchView.a.isPopupShowing() && this.f596a.a.getListSelection() != -1) {
            return this.f596a.z(view, i, keyEvent);
        }
        if (this.f596a.a.b() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i != 66) {
            return false;
        }
        view.cancelLongPress();
        SearchView searchView2 = this.f596a;
        searchView2.r(0, (String) null, searchView2.a.getText().toString());
        return true;
    }
}
