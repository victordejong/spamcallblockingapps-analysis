package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.g;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/r.class */
public class r extends g implements SubMenu {
    public g l;
    private i m;

    public r(Context context, g gVar, i iVar) {
        super(context);
        this.l = gVar;
        this.m = iVar;
    }

    @Override // androidx.appcompat.view.menu.g
    public final String a() {
        i iVar = this.m;
        int itemId = iVar != null ? iVar.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.a() + ":" + itemId;
    }

    @Override // androidx.appcompat.view.menu.g
    public final void a(g.a aVar) {
        this.l.a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.view.menu.g
    public final boolean a(g gVar, MenuItem menuItem) {
        return super.a(gVar, menuItem) || this.l.a(gVar, menuItem);
    }

    @Override // androidx.appcompat.view.menu.g
    public final boolean a(i iVar) {
        return this.l.a(iVar);
    }

    @Override // androidx.appcompat.view.menu.g
    public final boolean b() {
        return this.l.b();
    }

    @Override // androidx.appcompat.view.menu.g
    public final boolean b(i iVar) {
        return this.l.b(iVar);
    }

    @Override // androidx.appcompat.view.menu.g
    public final boolean c() {
        return this.l.c();
    }

    @Override // androidx.appcompat.view.menu.g
    public final boolean d() {
        return this.l.d();
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.m;
    }

    @Override // androidx.appcompat.view.menu.g
    public final g l() {
        return this.l.l();
    }

    @Override // androidx.appcompat.view.menu.g, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.l.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        return (SubMenu) super.b(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.a(drawable);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        return (SubMenu) super.a(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.a(charSequence);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.a(view);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.m.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.m.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.g, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.l.setQwertyMode(z);
    }
}
