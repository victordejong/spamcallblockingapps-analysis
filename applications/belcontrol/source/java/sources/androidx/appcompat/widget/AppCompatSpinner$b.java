package androidx.appcompat.widget;

import android.os.Build;
import android.view.ViewTreeObserver;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$b.class */
public class AppCompatSpinner$b implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ AppCompatSpinner f539a;

    public AppCompatSpinner$b(AppCompatSpinner appCompatSpinner) {
        this.f539a = appCompatSpinner;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (!this.f539a.getInternalPopup().m6970a()) {
            this.f539a.b();
        }
        ViewTreeObserver viewTreeObserver = this.f539a.getViewTreeObserver();
        if (viewTreeObserver != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            } else {
                viewTreeObserver.removeGlobalOnLayoutListener(this);
            }
        }
    }
}
