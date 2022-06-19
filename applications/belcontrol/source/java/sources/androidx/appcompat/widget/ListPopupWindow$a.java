package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$a.class */
public class ListPopupWindow$a implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    public final /* synthetic */ ListPopupWindow f560a;

    public ListPopupWindow$a(ListPopupWindow listPopupWindow) {
        this.f560a = listPopupWindow;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        C0005a2 c0005a2;
        if (i == -1 || (c0005a2 = this.f560a.c) == null) {
            return;
        }
        c0005a2.setListSelectionHidden(false);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
