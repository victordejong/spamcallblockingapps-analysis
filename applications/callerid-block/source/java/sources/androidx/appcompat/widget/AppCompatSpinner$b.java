package androidx.appcompat.widget;

import android.os.Build;
import android.view.ViewTreeObserver;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$b.class */
class AppCompatSpinner$b implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: b */
    final /* synthetic */ AppCompatSpinner f396b;

    AppCompatSpinner$b(AppCompatSpinner appCompatSpinner) {
        this.f396b = appCompatSpinner;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (!this.f396b.getInternalPopup().m14776c()) {
            this.f396b.b();
        }
        ViewTreeObserver viewTreeObserver = this.f396b.getViewTreeObserver();
        if (viewTreeObserver != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            } else {
                viewTreeObserver.removeGlobalOnLayoutListener(this);
            }
        }
    }
}
