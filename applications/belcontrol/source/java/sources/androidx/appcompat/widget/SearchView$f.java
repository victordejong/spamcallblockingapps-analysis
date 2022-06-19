package androidx.appcompat.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$f.class */
public class SearchView$f implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ SearchView f595a;

    public SearchView$f(SearchView searchView) {
        this.f595a = searchView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SearchView searchView = this.f595a;
        if (view == searchView.f) {
            searchView.x();
        } else if (view == searchView.h) {
            searchView.t();
        } else if (view == searchView.g) {
            searchView.y();
        } else if (view == searchView.j) {
            searchView.C();
        } else if (view != searchView.a) {
        } else {
            searchView.j();
        }
    }
}
