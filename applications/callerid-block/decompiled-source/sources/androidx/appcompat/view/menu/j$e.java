package androidx.appcompat.view.menu;

import android.view.MenuItem;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j$e.class */
class j$e implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a */
    private final MenuItem.OnMenuItemClickListener f326a;

    /* renamed from: b */
    final /* synthetic */ j f327b;

    j$e(j jVar, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f327b = jVar;
        this.f326a = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        return this.f326a.onMenuItemClick(this.f327b.m14851c(menuItem));
    }
}
