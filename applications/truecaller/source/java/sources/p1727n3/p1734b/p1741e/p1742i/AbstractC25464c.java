package p1727n3.p1734b.p1741e.p1742i;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import p1727n3.p1788g.C26187h;
import p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b;
import p1727n3.p1807k.p1814d.p1815a.AbstractSubMenuC26507c;
/* renamed from: n3.b.e.i.c */
/* loaded from: classes-dex2jar.jar:n3/b/e/i/c.class */
public abstract class AbstractC25464c {

    /* renamed from: a */
    public final Context f71187a;

    /* renamed from: b */
    public C26187h<AbstractMenuItemC26506b, MenuItem> f71188b;

    /* renamed from: c */
    public C26187h<AbstractSubMenuC26507c, SubMenu> f71189c;

    public AbstractC25464c(Context context) {
        this.f71187a = context;
    }

    /* renamed from: c */
    public final MenuItem m3491c(MenuItem menuItem) {
        MenuItemC25475j menuItemC25475j = menuItem;
        if (menuItem instanceof AbstractMenuItemC26506b) {
            AbstractMenuItemC26506b abstractMenuItemC26506b = (AbstractMenuItemC26506b) menuItem;
            if (this.f71188b == null) {
                this.f71188b = new C26187h<>();
            }
            MenuItem orDefault = this.f71188b.getOrDefault(menuItem, null);
            menuItemC25475j = orDefault;
            if (orDefault == null) {
                menuItemC25475j = new MenuItemC25475j(this.f71187a, abstractMenuItemC26506b);
                this.f71188b.put(abstractMenuItemC26506b, menuItemC25475j);
            }
        }
        return menuItemC25475j;
    }

    /* renamed from: d */
    public final SubMenu m3490d(SubMenu subMenu) {
        if (subMenu instanceof AbstractSubMenuC26507c) {
            AbstractSubMenuC26507c abstractSubMenuC26507c = (AbstractSubMenuC26507c) subMenu;
            if (this.f71189c == null) {
                this.f71189c = new C26187h<>();
            }
            SubMenu subMenu2 = this.f71189c.get(abstractSubMenuC26507c);
            SubMenu subMenu3 = subMenu2;
            if (subMenu2 == null) {
                subMenu3 = new s(this.f71187a, abstractSubMenuC26507c);
                this.f71189c.put(abstractSubMenuC26507c, subMenu3);
            }
            return subMenu3;
        }
        return subMenu;
    }
}
