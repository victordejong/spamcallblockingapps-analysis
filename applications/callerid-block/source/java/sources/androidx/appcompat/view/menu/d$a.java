package androidx.appcompat.view.menu;

import android.view.View;
import android.view.ViewTreeObserver;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d$a.class */
class d$a implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: b */
    final /* synthetic */ d f307b;

    d$a(d dVar) {
        this.f307b = dVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (!this.f307b.c() || this.f307b.j.size() <= 0 || ((d$d) this.f307b.j.get(0)).f313a.B()) {
            return;
        }
        View view = this.f307b.q;
        if (view == null || !view.isShown()) {
            this.f307b.dismiss();
            return;
        }
        for (d$d d_d : this.f307b.j) {
            d_d.f313a.e();
        }
    }
}
