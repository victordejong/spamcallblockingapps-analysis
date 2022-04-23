package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$i.class */
class SearchView$i implements AdapterView.OnItemClickListener {

    /* renamed from: b */
    final /* synthetic */ SearchView f470b;

    SearchView$i(SearchView searchView) {
        this.f470b = searchView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f470b.S(i, 0, (String) null);
    }
}
