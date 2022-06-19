package p193e.p194a.p1129p5.p1132s0;

import android.view.View;
import s1.z.c.l;
/* renamed from: e.a.p5.s0.f0 */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/f0.class */
public final class View$OnAttachStateChangeListenerC19290f0 implements View.OnAttachStateChangeListener {
    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        l.e(view, "v");
        view.removeOnAttachStateChangeListener(this);
        view.requestApplyInsets();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        l.e(view, "v");
    }
}
