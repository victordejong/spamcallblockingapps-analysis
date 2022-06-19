package androidx.appcompat.widget;

import android.view.ViewTreeObserver;
import androidx.appcompat.widget.AppCompatSpinner;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$e$b.class */
public class AppCompatSpinner$e$b implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ AppCompatSpinner.e f543a;

    public AppCompatSpinner$e$b(AppCompatSpinner.e eVar) {
        this.f543a = eVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        AppCompatSpinner.e eVar = this.f543a;
        if (!eVar.S(eVar.O)) {
            this.f543a.dismiss();
            return;
        }
        this.f543a.Q();
        AppCompatSpinner.e.P(this.f543a);
    }
}
