package androidx.appcompat.view.menu;

import android.view.View;
import android.view.ViewTreeObserver;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/q$a.class */
class q$a implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: b */
    final /* synthetic */ q f341b;

    q$a(q qVar) {
        this.f341b = qVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (this.f341b.c() && !this.f341b.j.B()) {
            View view = this.f341b.o;
            if (view == null || !view.isShown()) {
                this.f341b.dismiss();
            } else {
                this.f341b.j.e();
            }
        }
    }
}
