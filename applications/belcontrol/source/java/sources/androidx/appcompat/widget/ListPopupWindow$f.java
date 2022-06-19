package androidx.appcompat.widget;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$f.class */
public class ListPopupWindow$f implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ListPopupWindow f565a;

    public ListPopupWindow$f(ListPopupWindow listPopupWindow) {
        this.f565a = listPopupWindow;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0005a2 c0005a2 = this.f565a.c;
        if (c0005a2 == null || !jb.R(c0005a2) || this.f565a.c.getCount() <= this.f565a.c.getChildCount()) {
            return;
        }
        int childCount = this.f565a.c.getChildCount();
        ListPopupWindow listPopupWindow = this.f565a;
        if (childCount > listPopupWindow.q) {
            return;
        }
        listPopupWindow.G.setInputMethodMode(2);
        this.f565a.show();
    }
}
