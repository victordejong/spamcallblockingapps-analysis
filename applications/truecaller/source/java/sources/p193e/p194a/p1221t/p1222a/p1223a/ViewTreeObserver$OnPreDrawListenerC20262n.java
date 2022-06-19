package p193e.p194a.p1221t.p1222a.p1223a;

import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.t.a.a.n */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/a/n.class */
public final class ViewTreeObserver$OnPreDrawListenerC20262n implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    public final /* synthetic */ C20263o f57036a;

    /* renamed from: b */
    public final /* synthetic */ C20246f f57037b;

    public ViewTreeObserver$OnPreDrawListenerC20262n(C20263o c20263o, C20246f c20246f) {
        this.f57036a = c20263o;
        this.f57037b = c20246f;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        this.f57036a.f57040c.getViewTreeObserver().removeOnPreDrawListener(this);
        ViewGroup.LayoutParams layoutParams = this.f57036a.f57040c.getLayoutParams();
        int m4001J2 = C25225a.m4001J2(this.f57036a.f57040c.getMeasuredWidth() / this.f57037b.f57004b.f56996b);
        layoutParams.height = m4001J2;
        AbstractC20264p abstractC20264p = this.f57036a.f57038a;
        if (abstractC20264p != null) {
            abstractC20264p.mo11299c(this.f57037b.f57003a, layoutParams.width, m4001J2);
        }
        this.f57036a.f57040c.setLayoutParams(layoutParams);
        return true;
    }
}
