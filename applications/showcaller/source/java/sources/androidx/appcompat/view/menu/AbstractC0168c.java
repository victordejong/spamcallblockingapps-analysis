package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import p020b.p036e.C1502g;
import p020b.p041h.p043f.p044a.AbstractMenuItemC1540b;
import p020b.p041h.p043f.p044a.AbstractSubMenuC1541c;
/* renamed from: androidx.appcompat.view.menu.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/c.class */
public abstract class AbstractC0168c {

    /* renamed from: a */
    final Context f571a;

    /* renamed from: b */
    private C1502g<AbstractMenuItemC1540b, MenuItem> f572b;

    /* renamed from: c */
    private C1502g<AbstractSubMenuC1541c, SubMenu> f573c;

    public AbstractC0168c(Context context) {
        this.f571a = context;
    }

    /* renamed from: c */
    public final MenuItem m35437c(MenuItem menuItem) {
        MenuItemC0184j menuItemC0184j = menuItem;
        if (menuItem instanceof AbstractMenuItemC1540b) {
            AbstractMenuItemC1540b abstractMenuItemC1540b = (AbstractMenuItemC1540b) menuItem;
            if (this.f572b == null) {
                this.f572b = new C1502g<>();
            }
            MenuItem menuItem2 = this.f572b.get(menuItem);
            menuItemC0184j = menuItem2;
            if (menuItem2 == null) {
                menuItemC0184j = new MenuItemC0184j(this.f571a, abstractMenuItemC1540b);
                this.f572b.put(abstractMenuItemC1540b, menuItemC0184j);
            }
        }
        return menuItemC0184j;
    }

    /* renamed from: d */
    public final SubMenu m35436d(SubMenu subMenu) {
        if (subMenu instanceof AbstractSubMenuC1541c) {
            AbstractSubMenuC1541c abstractSubMenuC1541c = (AbstractSubMenuC1541c) subMenu;
            if (this.f573c == null) {
                this.f573c = new C1502g<>();
            }
            SubMenu subMenu2 = this.f573c.get(abstractSubMenuC1541c);
            SubMenuC0203s subMenuC0203s = subMenu2;
            if (subMenu2 == null) {
                subMenuC0203s = new SubMenuC0203s(this.f571a, abstractSubMenuC1541c);
                this.f573c.put(abstractSubMenuC1541c, subMenuC0203s);
            }
            return subMenuC0203s;
        }
        return subMenu;
    }

    /* renamed from: e */
    public final void m35435e() {
        C1502g<AbstractMenuItemC1540b, MenuItem> c1502g = this.f572b;
        if (c1502g != null) {
            c1502g.clear();
        }
        C1502g<AbstractSubMenuC1541c, SubMenu> c1502g2 = this.f573c;
        if (c1502g2 != null) {
            c1502g2.clear();
        }
    }

    /* renamed from: f */
    public final void m35434f(int i) {
        if (this.f572b == null) {
            return;
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.f572b.size()) {
                return;
            }
            int i4 = i3;
            if (this.f572b.m29910i(i3).getGroupId() == i) {
                this.f572b.mo22746k(i3);
                i4 = i3 - 1;
            }
            i2 = i4 + 1;
        }
    }

    /* renamed from: g */
    public final void m35433g(int i) {
        if (this.f572b == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f572b.size(); i2++) {
            if (this.f572b.m29910i(i2).getItemId() == i) {
                this.f572b.mo22746k(i2);
                return;
            }
        }
    }
}
