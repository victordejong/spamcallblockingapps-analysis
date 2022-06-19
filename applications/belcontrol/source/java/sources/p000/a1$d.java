package p000;

import android.view.MenuItem;
/* renamed from: a1$d */
/* loaded from: classes-dex2jar.jar:a1$d.class */
public class a1$d implements MenuItem.OnActionExpandListener {

    /* renamed from: a */
    public final MenuItem.OnActionExpandListener f13a;

    /* renamed from: b */
    public final /* synthetic */ a1 f14b;

    public a1$d(a1 a1Var, MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f14b = a1Var;
        this.f13a = onActionExpandListener;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.f13a.onMenuItemActionCollapse(this.f14b.c(menuItem));
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.f13a.onMenuItemActionExpand(this.f14b.c(menuItem));
    }
}
