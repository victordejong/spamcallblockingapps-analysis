package androidx.appcompat.widget;

import android.database.DataSetObserver;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$c.class */
class ListPopupWindow$c extends DataSetObserver {

    /* renamed from: a */
    final /* synthetic */ ListPopupWindow f434a;

    ListPopupWindow$c(ListPopupWindow listPopupWindow) {
        this.f434a = listPopupWindow;
    }

    @Override // android.database.DataSetObserver
    public void onChanged() {
        if (this.f434a.c()) {
            this.f434a.e();
        }
    }

    @Override // android.database.DataSetObserver
    public void onInvalidated() {
        this.f434a.dismiss();
    }
}
