package androidx.appcompat.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$f.class */
class SearchView$f implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ SearchView f467b;

    SearchView$f(SearchView searchView) {
        this.f467b = searchView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SearchView searchView = this.f467b;
        if (view == searchView.u) {
            searchView.V();
        } else if (view == searchView.w) {
            searchView.R();
        } else if (view == searchView.v) {
            searchView.W();
        } else if (view == searchView.x) {
            searchView.a0();
        } else if (view != searchView.q) {
        } else {
            searchView.H();
        }
    }
}
