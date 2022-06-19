package p251u3;

import android.view.ViewTreeObserver;
import com.google.android.material.floatingactionbutton.C1782d;
/* renamed from: u3.c */
/* loaded from: classes-dex2jar.jar:u3/c.class */
public class ViewTreeObserver$OnPreDrawListenerC4481c implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    public final /* synthetic */ C1782d f13883a;

    public ViewTreeObserver$OnPreDrawListenerC4481c(C1782d c1782d) {
        this.f13883a = c1782d;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        C1782d c1782d = this.f13883a;
        float rotation = c1782d.f6688w.getRotation();
        if (c1782d.f6681p != rotation) {
            c1782d.f6681p = rotation;
            c1782d.mo870v();
            return true;
        }
        return true;
    }
}
