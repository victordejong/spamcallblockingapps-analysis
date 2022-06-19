package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.C0182g;
/* renamed from: androidx.appcompat.view.menu.r */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/r.class */
public class SubMenuC0206r extends C0182g implements SubMenu {
    private C0186i mItem;
    private C0182g mParentMenu;

    public SubMenuC0206r(Context context, C0182g c0182g, C0186i c0186i) {
        super(context);
        this.mParentMenu = c0182g;
        this.mItem = c0186i;
    }

    @Override // androidx.appcompat.view.menu.C0182g
    public boolean collapseItemActionView(C0186i c0186i) {
        return this.mParentMenu.collapseItemActionView(c0186i);
    }

    @Override // androidx.appcompat.view.menu.C0182g
    public boolean dispatchMenuItemSelected(C0182g c0182g, MenuItem menuItem) {
        return super.dispatchMenuItemSelected(c0182g, menuItem) || this.mParentMenu.dispatchMenuItemSelected(c0182g, menuItem);
    }

    @Override // androidx.appcompat.view.menu.C0182g
    public boolean expandItemActionView(C0186i c0186i) {
        return this.mParentMenu.expandItemActionView(c0186i);
    }

    @Override // androidx.appcompat.view.menu.C0182g
    public String getActionViewStatesKey() {
        C0186i c0186i = this.mItem;
        int itemId = c0186i != null ? c0186i.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.getActionViewStatesKey() + ":" + itemId;
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.mItem;
    }

    public Menu getParentMenu() {
        return this.mParentMenu;
    }

    @Override // androidx.appcompat.view.menu.C0182g
    public C0182g getRootMenu() {
        return this.mParentMenu.getRootMenu();
    }

    @Override // androidx.appcompat.view.menu.C0182g
    public boolean isGroupDividerEnabled() {
        return this.mParentMenu.isGroupDividerEnabled();
    }

    @Override // androidx.appcompat.view.menu.C0182g
    public boolean isQwertyMode() {
        return this.mParentMenu.isQwertyMode();
    }

    @Override // androidx.appcompat.view.menu.C0182g
    public boolean isShortcutsVisible() {
        return this.mParentMenu.isShortcutsVisible();
    }

    @Override // androidx.appcompat.view.menu.C0182g
    public void setCallback(C0182g.AbstractC0183a abstractC0183a) {
        this.mParentMenu.setCallback(abstractC0183a);
    }

    @Override // androidx.appcompat.view.menu.C0182g, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.mParentMenu.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        return (SubMenu) super.setHeaderIconInt(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.setHeaderIconInt(drawable);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        return (SubMenu) super.setHeaderTitleInt(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.setHeaderTitleInt(charSequence);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.setHeaderViewInt(view);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.mItem.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.mItem.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.C0182g, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.mParentMenu.setQwertyMode(z);
    }

    @Override // androidx.appcompat.view.menu.C0182g
    public void setShortcutsVisible(boolean z) {
        this.mParentMenu.setShortcutsVisible(z);
    }
}
