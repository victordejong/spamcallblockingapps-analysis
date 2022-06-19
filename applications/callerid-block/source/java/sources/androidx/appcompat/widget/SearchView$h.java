package androidx.appcompat.widget;

import android.view.KeyEvent;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$h.class */
class SearchView$h implements TextView.OnEditorActionListener {

    /* renamed from: a */
    final /* synthetic */ SearchView f469a;

    SearchView$h(SearchView searchView) {
        this.f469a = searchView;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        this.f469a.W();
        return true;
    }
}
