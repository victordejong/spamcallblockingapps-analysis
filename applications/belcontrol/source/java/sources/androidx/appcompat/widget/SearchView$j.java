package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$j.class */
public class SearchView$j implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    public final /* synthetic */ SearchView f599a;

    public SearchView$j(SearchView searchView) {
        this.f599a = searchView;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        this.f599a.v(i);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
