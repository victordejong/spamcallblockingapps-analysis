package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import p020b.p041h.p043f.p044a.AbstractSubMenuC1541c;
/* renamed from: androidx.appcompat.view.menu.s */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/s.class */
public class SubMenuC0203s extends MenuC0197o implements SubMenu {

    /* renamed from: e */
    private final AbstractSubMenuC1541c f743e;

    public SubMenuC0203s(Context context, AbstractSubMenuC1541c abstractSubMenuC1541c) {
        super(context, abstractSubMenuC1541c);
        this.f743e = abstractSubMenuC1541c;
    }

    @Override // android.view.SubMenu
    public void clearHeader() {
        this.f743e.clearHeader();
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return m35437c(this.f743e.getItem());
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        this.f743e.setHeaderIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        this.f743e.setHeaderIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        this.f743e.setHeaderTitle(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        this.f743e.setHeaderTitle(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        this.f743e.setHeaderView(view);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.f743e.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f743e.setIcon(drawable);
        return this;
    }
}
