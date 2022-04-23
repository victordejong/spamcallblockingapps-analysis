package androidx.appcompat.widget;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import androidx.appcompat.widget.AppCompatSpinner;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$e$c.class */
class AppCompatSpinner$e$c implements PopupWindow.OnDismissListener {

    /* renamed from: b */
    final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f401b;

    /* renamed from: c */
    final /* synthetic */ AppCompatSpinner.e f402c;

    AppCompatSpinner$e$c(AppCompatSpinner.e eVar, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        this.f402c = eVar;
        this.f401b = onGlobalLayoutListener;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.f402c.N.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f401b);
        }
    }
}
