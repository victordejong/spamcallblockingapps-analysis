package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.core.p030a.p031a.AbstractMenuItemC0713b;
import androidx.core.p030a.p031a.AbstractSubMenuC0714c;
import androidx.p023b.C0441g;
/* renamed from: androidx.appcompat.view.menu.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/c.class */
public abstract class AbstractC0258c {

    /* renamed from: a */
    final Context f823a;

    /* renamed from: b */
    private C0441g<AbstractMenuItemC0713b, MenuItem> f824b;

    /* renamed from: c */
    private C0441g<AbstractSubMenuC0714c, SubMenu> f825c;

    public AbstractC0258c(Context context) {
        this.f823a = context;
    }

    /* renamed from: a */
    public final MenuItem m46123a(MenuItem menuItem) {
        MenuItemC0274j menuItemC0274j = menuItem;
        if (menuItem instanceof AbstractMenuItemC0713b) {
            AbstractMenuItemC0713b abstractMenuItemC0713b = (AbstractMenuItemC0713b) menuItem;
            if (this.f824b == null) {
                this.f824b = new C0441g<>();
            }
            MenuItem menuItem2 = this.f824b.get(menuItem);
            menuItemC0274j = menuItem2;
            if (menuItem2 == null) {
                menuItemC0274j = new MenuItemC0274j(this.f823a, abstractMenuItemC0713b);
                this.f824b.put(abstractMenuItemC0713b, menuItemC0274j);
            }
        }
        return menuItemC0274j;
    }

    /* renamed from: a */
    public final SubMenu m46122a(SubMenu subMenu) {
        if (subMenu instanceof AbstractSubMenuC0714c) {
            AbstractSubMenuC0714c abstractSubMenuC0714c = (AbstractSubMenuC0714c) subMenu;
            if (this.f825c == null) {
                this.f825c = new C0441g<>();
            }
            SubMenu subMenu2 = this.f825c.get(abstractSubMenuC0714c);
            SubMenuC0293s subMenuC0293s = subMenu2;
            if (subMenu2 == null) {
                subMenuC0293s = new SubMenuC0293s(this.f823a, abstractSubMenuC0714c);
                this.f825c.put(abstractSubMenuC0714c, subMenuC0293s);
            }
            return subMenuC0293s;
        }
        return subMenu;
    }

    /* renamed from: a */
    public final void m46125a() {
        C0441g<AbstractMenuItemC0713b, MenuItem> c0441g = this.f824b;
        if (c0441g != null) {
            c0441g.clear();
        }
        C0441g<AbstractSubMenuC0714c, SubMenu> c0441g2 = this.f825c;
        if (c0441g2 != null) {
            c0441g2.clear();
        }
    }

    /* renamed from: a */
    public final void m46124a(int i) {
        if (this.f824b == null) {
            return;
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.f824b.size()) {
                return;
            }
            int i4 = i3;
            if (this.f824b.m45517b(i3).getGroupId() == i) {
                this.f824b.mo37600d(i3);
                i4 = i3 - 1;
            }
            i2 = i4 + 1;
        }
    }

    /* renamed from: b */
    public final void m46121b(int i) {
        if (this.f824b == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f824b.size(); i2++) {
            if (this.f824b.m45517b(i2).getItemId() == i) {
                this.f824b.mo37600d(i2);
                return;
            }
        }
    }
}
