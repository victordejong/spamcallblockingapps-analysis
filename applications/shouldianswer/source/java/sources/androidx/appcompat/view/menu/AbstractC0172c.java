package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.core.p017b.p018a.AbstractMenuItemC0461b;
import androidx.core.p017b.p018a.AbstractSubMenuC0462c;
import androidx.p014c.C0374a;
import java.util.Iterator;
import java.util.Map;
/* renamed from: androidx.appcompat.view.menu.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/c.class */
public abstract class AbstractC0172c {

    /* renamed from: a */
    final Context f661a;

    /* renamed from: b */
    private Map<AbstractMenuItemC0461b, MenuItem> f662b;

    /* renamed from: c */
    private Map<AbstractSubMenuC0462c, SubMenu> f663c;

    public AbstractC0172c(Context context) {
        this.f661a = context;
    }

    /* renamed from: a */
    public final MenuItem m7587a(MenuItem menuItem) {
        MenuItemC0188j menuItemC0188j = menuItem;
        if (menuItem instanceof AbstractMenuItemC0461b) {
            AbstractMenuItemC0461b abstractMenuItemC0461b = (AbstractMenuItemC0461b) menuItem;
            if (this.f662b == null) {
                this.f662b = new C0374a();
            }
            MenuItem menuItem2 = this.f662b.get(menuItem);
            menuItemC0188j = menuItem2;
            if (menuItem2 == null) {
                menuItemC0188j = new MenuItemC0188j(this.f661a, abstractMenuItemC0461b);
                this.f662b.put(abstractMenuItemC0461b, menuItemC0188j);
            }
        }
        return menuItemC0188j;
    }

    /* renamed from: a */
    public final SubMenu m7586a(SubMenu subMenu) {
        if (subMenu instanceof AbstractSubMenuC0462c) {
            AbstractSubMenuC0462c abstractSubMenuC0462c = (AbstractSubMenuC0462c) subMenu;
            if (this.f663c == null) {
                this.f663c = new C0374a();
            }
            SubMenu subMenu2 = this.f663c.get(abstractSubMenuC0462c);
            SubMenuC0207s subMenuC0207s = subMenu2;
            if (subMenu2 == null) {
                subMenuC0207s = new SubMenuC0207s(this.f661a, abstractSubMenuC0462c);
                this.f663c.put(abstractSubMenuC0462c, subMenuC0207s);
            }
            return subMenuC0207s;
        }
        return subMenu;
    }

    /* renamed from: a */
    public final void m7589a() {
        Map<AbstractMenuItemC0461b, MenuItem> map = this.f662b;
        if (map != null) {
            map.clear();
        }
        Map<AbstractSubMenuC0462c, SubMenu> map2 = this.f663c;
        if (map2 != null) {
            map2.clear();
        }
    }

    /* renamed from: a */
    public final void m7588a(int i) {
        Map<AbstractMenuItemC0461b, MenuItem> map = this.f662b;
        if (map == null) {
            return;
        }
        Iterator<AbstractMenuItemC0461b> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (i == it.next().getGroupId()) {
                it.remove();
            }
        }
    }

    /* renamed from: b */
    public final void m7585b(int i) {
        Map<AbstractMenuItemC0461b, MenuItem> map = this.f662b;
        if (map == null) {
            return;
        }
        Iterator<AbstractMenuItemC0461b> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (i == it.next().getItemId()) {
                it.remove();
                return;
            }
        }
    }
}
