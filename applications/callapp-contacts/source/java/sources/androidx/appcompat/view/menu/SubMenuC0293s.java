package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.core.p030a.p031a.AbstractSubMenuC0714c;
/* renamed from: androidx.appcompat.view.menu.s */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/s.class */
public final class SubMenuC0293s extends MenuC0287o implements SubMenu {

    /* renamed from: b */
    private final AbstractSubMenuC0714c f995b;

    public SubMenuC0293s(Context context, AbstractSubMenuC0714c abstractSubMenuC0714c) {
        super(context, abstractSubMenuC0714c);
        this.f995b = abstractSubMenuC0714c;
    }

    @Override // android.view.SubMenu
    public final void clearHeader() {
        this.f995b.clearHeader();
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return m46123a(this.f995b.getItem());
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i) {
        this.f995b.setHeaderIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        this.f995b.setHeaderIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i) {
        this.f995b.setHeaderTitle(i);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        this.f995b.setHeaderTitle(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        this.f995b.setHeaderView(view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i) {
        this.f995b.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.f995b.setIcon(drawable);
        return this;
    }
}
