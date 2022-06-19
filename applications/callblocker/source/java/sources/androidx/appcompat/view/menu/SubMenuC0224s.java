package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.core.p019b.p020a.AbstractSubMenuC0485c;
/* renamed from: androidx.appcompat.view.menu.s */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/s.class */
public class SubMenuC0224s extends MenuC0218o implements SubMenu {

    /* renamed from: b */
    private final AbstractSubMenuC0485c f885b;

    public SubMenuC0224s(Context context, AbstractSubMenuC0485c abstractSubMenuC0485c) {
        super(context, abstractSubMenuC0485c);
        this.f885b = abstractSubMenuC0485c;
    }

    @Override // android.view.SubMenu
    public void clearHeader() {
        this.f885b.clearHeader();
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return m21918a(this.f885b.getItem());
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        this.f885b.setHeaderIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        this.f885b.setHeaderIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        this.f885b.setHeaderTitle(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        this.f885b.setHeaderTitle(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        this.f885b.setHeaderView(view);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.f885b.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f885b.setIcon(drawable);
        return this;
    }
}
