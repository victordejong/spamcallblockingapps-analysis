package p1727n3.p1734b.p1743f;

import android.view.View;
import android.view.Window;
import p1727n3.p1734b.p1741e.p1742i.C25462a;
/* renamed from: n3.b.f.s0 */
/* loaded from: classes-dex2jar.jar:n3/b/f/s0.class */
public class View$OnClickListenerC25544s0 implements View.OnClickListener {

    /* renamed from: a */
    public final C25462a f71482a;

    /* renamed from: b */
    public final /* synthetic */ C25546t0 f71483b;

    public View$OnClickListenerC25544s0(C25546t0 c25546t0) {
        this.f71483b = c25546t0;
        this.f71482a = new C25462a(c25546t0.f71486a.getContext(), 0, 16908332, 0, c25546t0.f71494i);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C25546t0 c25546t0 = this.f71483b;
        Window.Callback callback = c25546t0.f71497l;
        if (callback == null || !c25546t0.f71498m) {
            return;
        }
        callback.onMenuItemSelected(0, this.f71482a);
    }
}
