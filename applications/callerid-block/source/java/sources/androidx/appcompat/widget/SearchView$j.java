package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$j.class */
class SearchView$j implements AdapterView.OnItemSelectedListener {

    /* renamed from: b */
    final /* synthetic */ SearchView f471b;

    SearchView$j(SearchView searchView) {
        this.f471b = searchView;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        this.f471b.T(i);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
