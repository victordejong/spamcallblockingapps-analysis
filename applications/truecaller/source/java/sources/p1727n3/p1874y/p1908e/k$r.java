package p1727n3.p1874y.p1908e;

import android.widget.PopupWindow;
/* renamed from: n3.y.e.k$r */
/* loaded from: classes-dex2jar.jar:n3/y/e/k$r.class */
public class k$r implements PopupWindow.OnDismissListener {

    /* renamed from: a */
    public final /* synthetic */ k f77554a;

    public k$r(k kVar) {
        this.f77554a = kVar;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        k kVar = this.f77554a;
        if (kVar.y) {
            kVar.n(kVar.N0, kVar.r);
        }
    }
}
