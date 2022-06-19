package androidx.appcompat.widget;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import androidx.appcompat.widget.AppCompatSpinner;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$d$c.class */
public class AppCompatSpinner$d$c implements PopupWindow.OnDismissListener {

    /* renamed from: a */
    public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f290a;

    /* renamed from: b */
    public final /* synthetic */ AppCompatSpinner.d f291b;

    public AppCompatSpinner$d$c(AppCompatSpinner.d dVar, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        this.f291b = dVar;
        this.f290a = onGlobalLayoutListener;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.f291b.L.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f290a);
        }
    }
}
