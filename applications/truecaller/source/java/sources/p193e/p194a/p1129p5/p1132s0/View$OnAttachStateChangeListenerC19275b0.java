package p193e.p194a.p1129p5.p1132s0;

import android.view.View;
import s1.z.b.a;
/* renamed from: e.a.p5.s0.b0 */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/b0.class */
public final class View$OnAttachStateChangeListenerC19275b0 implements View.OnAttachStateChangeListener {

    /* renamed from: a */
    public final /* synthetic */ View f53675a;

    /* renamed from: b */
    public final /* synthetic */ a f53676b;

    public View$OnAttachStateChangeListenerC19275b0(View view, a aVar) {
        this.f53675a = view;
        this.f53676b = aVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f53675a.removeOnAttachStateChangeListener(this);
        this.f53676b.invoke();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
    }
}
