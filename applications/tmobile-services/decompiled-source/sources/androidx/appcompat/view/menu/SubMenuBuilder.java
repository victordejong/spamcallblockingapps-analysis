package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/SubMenuBuilder.class */
public class SubMenuBuilder extends MenuBuilder implements SubMenu {

    /* renamed from: B */
    private MenuBuilder f741B;

    /* renamed from: C */
    private MenuItemImpl f742C;

    public SubMenuBuilder(Context context, MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        super(context);
        this.f741B = menuBuilder;
        this.f742C = menuItemImpl;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    /* renamed from: F */
    public MenuBuilder mo21788F() {
        return this.f741B.mo21788F();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    /* renamed from: H */
    public boolean mo21787H() {
        return this.f741B.mo21787H();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    /* renamed from: I */
    public boolean mo21786I() {
        return this.f741B.mo21786I();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    /* renamed from: J */
    public boolean mo21785J() {
        return this.f741B.mo21785J();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    /* renamed from: V */
    public void mo21784V(MenuBuilder.Callback callback) {
        this.f741B.mo21784V(callback);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    /* renamed from: f */
    public boolean mo21783f(MenuItemImpl menuItemImpl) {
        return this.f741B.mo21783f(menuItemImpl);
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.f742C;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.view.menu.MenuBuilder
    /* renamed from: h */
    public boolean mo21782h(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        return super.mo21782h(menuBuilder, menuItem) || this.f741B.mo21782h(menuBuilder, menuItem);
    }

    /* renamed from: i0 */
    public Menu m21781i0() {
        return this.f741B;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    /* renamed from: m */
    public boolean mo21780m(MenuItemImpl menuItemImpl) {
        return this.f741B.mo21780m(menuItemImpl);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f741B.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        super.m21877Y(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        super.m21876Z(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        super.m21873b0(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        super.m21871c0(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        super.m21869d0(view);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.f742C.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f742C.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f741B.setQwertyMode(z);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    /* renamed from: v */
    public String mo21779v() {
        MenuItemImpl menuItemImpl = this.f742C;
        int itemId = menuItemImpl != null ? menuItemImpl.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.mo21779v() + ":" + itemId;
    }
}
