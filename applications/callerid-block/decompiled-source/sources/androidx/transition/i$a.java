package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import d.h.m.t;
/* loaded from: classes-dex2jar.jar:androidx/transition/i$a.class */
class i$a implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: b */
    final /* synthetic */ i f2735b;

    i$a(i iVar) {
        this.f2735b = iVar;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        View view;
        t.d0(this.f2735b);
        i iVar = this.f2735b;
        ViewGroup viewGroup = iVar.b;
        if (viewGroup == null || (view = iVar.c) == null) {
            return true;
        }
        viewGroup.endViewTransition(view);
        t.d0(this.f2735b.b);
        i iVar2 = this.f2735b;
        iVar2.b = null;
        iVar2.c = null;
        return true;
    }
}
