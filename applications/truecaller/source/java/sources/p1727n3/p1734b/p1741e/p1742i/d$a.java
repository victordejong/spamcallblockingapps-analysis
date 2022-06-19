package p1727n3.p1734b.p1741e.p1742i;

import android.view.View;
import android.view.ViewTreeObserver;
/* renamed from: n3.b.e.i.d$a */
/* loaded from: classes-dex2jar.jar:n3/b/e/i/d$a.class */
public class d$a implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ d f71190a;

    public d$a(d dVar) {
        this.f71190a = dVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (!this.f71190a.isShowing() || this.f71190a.i.size() <= 0 || ((d$d) this.f71190a.i.get(0)).f71197a.f71340y) {
            return;
        }
        View view = this.f71190a.p;
        if (view == null || !view.isShown()) {
            this.f71190a.dismiss();
            return;
        }
        for (d$d d_d : this.f71190a.i) {
            d_d.f71197a.show();
        }
    }
}
