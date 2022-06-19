package p151l;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import p109h0.AbstractSubMenuC2992c;
/* renamed from: l.g */
/* loaded from: classes-dex2jar.jar:l/g.class */
public class SubMenuC3425g extends MenuC3423e implements SubMenu {

    /* renamed from: e */
    public final AbstractSubMenuC2992c f11484e;

    public SubMenuC3425g(Context context, AbstractSubMenuC2992c abstractSubMenuC2992c) {
        super(context, abstractSubMenuC2992c);
        this.f11484e = abstractSubMenuC2992c;
    }

    @Override // android.view.SubMenu
    public void clearHeader() {
        this.f11484e.clearHeader();
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return m2320e(this.f11484e.getItem());
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        this.f11484e.setHeaderIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        this.f11484e.setHeaderIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        this.f11484e.setHeaderTitle(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        this.f11484e.setHeaderTitle(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        this.f11484e.setHeaderView(view);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.f11484e.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f11484e.setIcon(drawable);
        return this;
    }
}
