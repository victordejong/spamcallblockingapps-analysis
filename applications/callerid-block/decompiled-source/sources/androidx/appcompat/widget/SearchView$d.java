package androidx.appcompat.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$d.class */
class SearchView$d implements View.OnFocusChangeListener {

    /* renamed from: b */
    final /* synthetic */ SearchView f465b;

    SearchView$d(SearchView searchView) {
        this.f465b = searchView;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        View view2 = this.f465b;
        View.OnFocusChangeListener onFocusChangeListener = ((SearchView) view2).N;
        if (onFocusChangeListener != null) {
            onFocusChangeListener.onFocusChange(view2, z);
        }
    }
}
