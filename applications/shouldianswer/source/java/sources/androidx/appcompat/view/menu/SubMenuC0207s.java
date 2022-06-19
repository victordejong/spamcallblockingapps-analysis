package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.core.p017b.p018a.AbstractSubMenuC0462c;
/* renamed from: androidx.appcompat.view.menu.s */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/s.class */
public class SubMenuC0207s extends MenuC0201o implements SubMenu {

    /* renamed from: b */
    private final AbstractSubMenuC0462c f804b;

    public SubMenuC0207s(Context context, AbstractSubMenuC0462c abstractSubMenuC0462c) {
        super(context, abstractSubMenuC0462c);
        this.f804b = abstractSubMenuC0462c;
    }

    @Override // android.view.SubMenu
    public void clearHeader() {
        this.f804b.clearHeader();
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return m7587a(this.f804b.getItem());
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        this.f804b.setHeaderIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        this.f804b.setHeaderIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        this.f804b.setHeaderTitle(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        this.f804b.setHeaderTitle(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        this.f804b.setHeaderView(view);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.f804b.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f804b.setIcon(drawable);
        return this;
    }
}
