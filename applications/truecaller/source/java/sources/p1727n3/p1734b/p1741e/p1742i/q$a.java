package p1727n3.p1734b.p1741e.p1742i;

import android.view.View;
import android.view.ViewTreeObserver;
/* renamed from: n3.b.e.i.q$a */
/* loaded from: classes-dex2jar.jar:n3/b/e/i/q$a.class */
public class q$a implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ q f71298a;

    public q$a(q qVar) {
        this.f71298a = qVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (this.f71298a.isShowing()) {
            q qVar = this.f71298a;
            if (qVar.i.f71340y) {
                return;
            }
            View view = qVar.n;
            if (view == null || !view.isShown()) {
                this.f71298a.dismiss();
            } else {
                this.f71298a.i.show();
            }
        }
    }
}
