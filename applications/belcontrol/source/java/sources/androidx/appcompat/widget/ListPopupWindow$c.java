package androidx.appcompat.widget;

import android.database.DataSetObserver;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$c.class */
public class ListPopupWindow$c extends DataSetObserver {

    /* renamed from: a */
    public final /* synthetic */ ListPopupWindow f562a;

    public ListPopupWindow$c(ListPopupWindow listPopupWindow) {
        this.f562a = listPopupWindow;
    }

    @Override // android.database.DataSetObserver
    public void onChanged() {
        if (this.f562a.a()) {
            this.f562a.show();
        }
    }

    @Override // android.database.DataSetObserver
    public void onInvalidated() {
        this.f562a.dismiss();
    }
}
