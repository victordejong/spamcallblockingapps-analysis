package p081h.p203i.p204a.p294f.p306l;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.IdRes;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* renamed from: h.i.a.f.l.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/l/c.class */
public final class C9206c {

    /* renamed from: a */
    public final View f21023a;

    /* renamed from: b */
    public boolean f21024b = false;
    @IdRes

    /* renamed from: c */
    public int f21025c = 0;

    public C9206c(AbstractC9205b bVar) {
        this.f21023a = (View) bVar;
    }

    /* renamed from: a */
    public final void m15775a() {
        ViewParent parent = this.f21023a.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).dispatchDependentViewsChanged(this.f21023a);
        }
    }

    /* renamed from: a */
    public void m15774a(Bundle bundle) {
        this.f21024b = bundle.getBoolean("expanded", false);
        this.f21025c = bundle.getInt("expandedComponentIdHint", 0);
        if (this.f21024b) {
            m15775a();
        }
    }

    @IdRes
    /* renamed from: b */
    public int m15773b() {
        return this.f21025c;
    }

    /* renamed from: c */
    public boolean m15772c() {
        return this.f21024b;
    }

    /* renamed from: d */
    public Bundle m15771d() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.f21024b);
        bundle.putInt("expandedComponentIdHint", this.f21025c);
        return bundle;
    }
}
