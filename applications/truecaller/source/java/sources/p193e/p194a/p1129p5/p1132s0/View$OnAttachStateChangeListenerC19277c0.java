package p193e.p194a.p1129p5.p1132s0;

import android.view.View;
import s1.z.b.a;
/* renamed from: e.a.p5.s0.c0 */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/c0.class */
public final class View$OnAttachStateChangeListenerC19277c0 implements View.OnAttachStateChangeListener {

    /* renamed from: a */
    public final /* synthetic */ View f53678a;

    /* renamed from: b */
    public final /* synthetic */ a f53679b;

    public View$OnAttachStateChangeListenerC19277c0(View view, a aVar) {
        this.f53678a = view;
        this.f53679b = aVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f53678a.removeOnAttachStateChangeListener(this);
        this.f53679b.invoke();
    }
}
