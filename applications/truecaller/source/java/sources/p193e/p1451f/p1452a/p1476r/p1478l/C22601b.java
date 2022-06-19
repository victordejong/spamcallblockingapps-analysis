package p193e.p1451f.p1452a.p1476r.p1478l;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import p193e.p1451f.p1452a.p1476r.p1478l.AbstractC22604d;
/* renamed from: e.f.a.r.l.b */
/* loaded from: classes-dex2jar.jar:e/f/a/r/l/b.class */
public class C22601b implements AbstractC22604d<Drawable> {

    /* renamed from: a */
    public final int f62615a;

    /* renamed from: b */
    public final boolean f62616b;

    public C22601b(int i, boolean z) {
        this.f62615a = i;
        this.f62616b = z;
    }

    @Override // p193e.p1451f.p1452a.p1476r.p1478l.AbstractC22604d
    /* renamed from: a */
    public boolean mo8040a(Drawable drawable, AbstractC22604d.AbstractC22605a abstractC22605a) {
        Drawable drawable2 = drawable;
        Drawable mo8039a = abstractC22605a.mo8039a();
        Drawable drawable3 = mo8039a;
        if (mo8039a == null) {
            drawable3 = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{drawable3, drawable2});
        transitionDrawable.setCrossFadeEnabled(this.f62616b);
        transitionDrawable.startTransition(this.f62615a);
        abstractC22605a.mo8038f(transitionDrawable);
        return true;
    }
}
