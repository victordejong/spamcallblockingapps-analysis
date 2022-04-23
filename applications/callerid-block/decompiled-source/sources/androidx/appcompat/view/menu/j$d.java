package androidx.appcompat.view.menu;

import android.view.MenuItem;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$d.class */
class j$d implements MenuItem.OnActionExpandListener {

    /* renamed from: a */
    private final MenuItem.OnActionExpandListener f324a;

    /* renamed from: b */
    final /* synthetic */ j f325b;

    j$d(j jVar, MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f325b = jVar;
        this.f324a = onActionExpandListener;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.f324a.onMenuItemActionCollapse(this.f325b.m14851c(menuItem));
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.f324a.onMenuItemActionExpand(this.f325b.m14851c(menuItem));
    }
}
