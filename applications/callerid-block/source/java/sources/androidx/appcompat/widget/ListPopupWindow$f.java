package androidx.appcompat.widget;

import d.h.m.t;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$f.class */
public class ListPopupWindow$f implements Runnable {

    /* renamed from: b */
    final /* synthetic */ ListPopupWindow f437b;

    ListPopupWindow$f(ListPopupWindow listPopupWindow) {
        this.f437b = listPopupWindow;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0148q c0148q = this.f437b.d;
        if (c0148q == null || !t.R(c0148q) || this.f437b.d.getCount() <= this.f437b.d.getChildCount()) {
            return;
        }
        int childCount = this.f437b.d.getChildCount();
        ListPopupWindow listPopupWindow = this.f437b;
        if (childCount > listPopupWindow.p) {
            return;
        }
        listPopupWindow.F.setInputMethodMode(2);
        this.f437b.e();
    }
}
