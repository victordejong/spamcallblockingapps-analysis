package androidx.appcompat.widget;

import android.view.KeyEvent;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$h.class */
public class SearchView$h implements TextView.OnEditorActionListener {

    /* renamed from: a */
    public final /* synthetic */ SearchView f597a;

    public SearchView$h(SearchView searchView) {
        this.f597a = searchView;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        this.f597a.y();
        return true;
    }
}
