package p193e.p194a.p1129p5.p1132s0;

import android.view.View;
import android.view.ViewTreeObserver;
import s1.z.b.a;
/* renamed from: e.a.p5.s0.e0 */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/e0.class */
public final class ViewTreeObserver$OnPreDrawListenerC19285e0 implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    public final /* synthetic */ View f53690a;

    /* renamed from: b */
    public final /* synthetic */ a f53691b;

    public ViewTreeObserver$OnPreDrawListenerC19285e0(View view, a aVar) {
        this.f53690a = view;
        this.f53691b = aVar;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        this.f53690a.getViewTreeObserver().removeOnPreDrawListener(this);
        this.f53691b.invoke();
        return true;
    }
}
