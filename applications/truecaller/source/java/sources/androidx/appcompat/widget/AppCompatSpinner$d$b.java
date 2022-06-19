package androidx.appcompat.widget;

import android.view.ViewTreeObserver;
import androidx.appcompat.widget.AppCompatSpinner;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$d$b.class */
public class AppCompatSpinner$d$b implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ AppCompatSpinner.d f289a;

    public AppCompatSpinner$d$b(AppCompatSpinner.d dVar) {
        this.f289a = dVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        AppCompatSpinner.d dVar = this.f289a;
        AppCompatSpinner appCompatSpinner = dVar.L;
        Objects.requireNonNull(dVar);
        AtomicInteger atomicInteger = C26614s.f74505a;
        if (!(appCompatSpinner.isAttachedToWindow() && appCompatSpinner.getGlobalVisibleRect(dVar.J))) {
            this.f289a.dismiss();
            return;
        }
        this.f289a.r();
        this.f289a.show();
    }
}
