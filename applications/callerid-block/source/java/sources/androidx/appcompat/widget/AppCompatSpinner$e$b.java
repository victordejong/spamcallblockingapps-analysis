package androidx.appcompat.widget;

import android.view.ViewTreeObserver;
import androidx.appcompat.widget.AppCompatSpinner;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$e$b.class */
class AppCompatSpinner$e$b implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: b */
    final /* synthetic */ AppCompatSpinner.e f400b;

    AppCompatSpinner$e$b(AppCompatSpinner.e eVar) {
        this.f400b = eVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        AppCompatSpinner.e eVar = this.f400b;
        if (!eVar.U(eVar.N)) {
            this.f400b.dismiss();
            return;
        }
        this.f400b.S();
        AppCompatSpinner.e.R(this.f400b);
    }
}
