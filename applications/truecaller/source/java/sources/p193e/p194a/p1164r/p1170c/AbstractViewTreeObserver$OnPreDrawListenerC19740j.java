package p193e.p194a.p1164r.p1170c;

import android.view.View;
import android.view.ViewTreeObserver;
/* renamed from: e.a.r.c.j */
/* loaded from: classes16-dex2jar.jar:e/a/r/c/j.class */
public abstract class AbstractViewTreeObserver$OnPreDrawListenerC19740j<ViewType extends View> implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    public final ViewType f54782a;

    public AbstractViewTreeObserver$OnPreDrawListenerC19740j(ViewType viewtype) {
        this.f54782a = viewtype;
        viewtype.getViewTreeObserver().addOnPreDrawListener(this);
    }

    /* renamed from: a */
    public abstract void m12920a(ViewType viewtype);

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        m12920a(this.f54782a);
        this.f54782a.getViewTreeObserver().removeOnPreDrawListener(this);
        return false;
    }
}
