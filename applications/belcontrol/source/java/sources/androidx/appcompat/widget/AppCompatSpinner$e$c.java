package androidx.appcompat.widget;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import androidx.appcompat.widget.AppCompatSpinner;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$e$c.class */
public class AppCompatSpinner$e$c implements PopupWindow.OnDismissListener {

    /* renamed from: a */
    public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f544a;

    /* renamed from: b */
    public final /* synthetic */ AppCompatSpinner.e f545b;

    public AppCompatSpinner$e$c(AppCompatSpinner.e eVar, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        this.f545b = eVar;
        this.f544a = onGlobalLayoutListener;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.f545b.O.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f544a);
        }
    }
}
