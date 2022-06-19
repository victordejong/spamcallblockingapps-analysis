package androidx.appcompat.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$d.class */
public class SearchView$d implements View.OnFocusChangeListener {

    /* renamed from: a */
    public final /* synthetic */ SearchView f593a;

    public SearchView$d(SearchView searchView) {
        this.f593a = searchView;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        View view2 = this.f593a;
        View.OnFocusChangeListener onFocusChangeListener = ((SearchView) view2).z;
        if (onFocusChangeListener != null) {
            onFocusChangeListener.onFocusChange(view2, z);
        }
    }
}
