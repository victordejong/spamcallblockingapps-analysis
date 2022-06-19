package p1727n3.p1734b.p1743f;

import android.widget.PopupWindow;
import p1727n3.p1734b.p1743f.C25508g0;
/* renamed from: n3.b.f.f0 */
/* loaded from: classes-dex2jar.jar:n3/b/f/f0.class */
public class C25506f0 implements PopupWindow.OnDismissListener {

    /* renamed from: a */
    public final /* synthetic */ C25508g0 f71375a;

    public C25506f0(C25508g0 c25508g0) {
        this.f71375a = c25508g0;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        C25508g0 c25508g0 = this.f71375a;
        C25508g0.AbstractC25509a abstractC25509a = c25508g0.f71384f;
        if (abstractC25509a != null) {
            abstractC25509a.mo3361a(c25508g0);
        }
    }
}
