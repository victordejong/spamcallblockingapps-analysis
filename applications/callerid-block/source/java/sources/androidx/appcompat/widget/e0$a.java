package androidx.appcompat.widget;

import android.view.View;
import android.view.Window;
import androidx.appcompat.view.menu.a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/e0$a.class */
class e0$a implements View.OnClickListener {

    /* renamed from: b */
    final a f602b;

    /* renamed from: c */
    final /* synthetic */ e0 f603c;

    e0$a(e0 e0Var) {
        this.f603c = e0Var;
        this.f602b = new a(e0Var.a.getContext(), 0, 16908332, 0, 0, e0Var.i);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        e0 e0Var = this.f603c;
        Window.Callback callback = e0Var.l;
        if (callback == null || !e0Var.m) {
            return;
        }
        callback.onMenuItemSelected(0, this.f602b);
    }
}
