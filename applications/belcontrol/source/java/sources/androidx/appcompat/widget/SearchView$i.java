package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$i.class */
public class SearchView$i implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ SearchView f598a;

    public SearchView$i(SearchView searchView) {
        this.f598a = searchView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f598a.u(i, 0, (String) null);
    }
}
