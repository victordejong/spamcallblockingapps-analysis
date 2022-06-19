package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$a.class */
class ListPopupWindow$a implements AdapterView.OnItemSelectedListener {

    /* renamed from: b */
    final /* synthetic */ ListPopupWindow f432b;

    ListPopupWindow$a(ListPopupWindow listPopupWindow) {
        this.f432b = listPopupWindow;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        C0148q c0148q;
        if (i == -1 || (c0148q = this.f432b.d) == null) {
            return;
        }
        c0148q.setListSelectionHidden(false);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
