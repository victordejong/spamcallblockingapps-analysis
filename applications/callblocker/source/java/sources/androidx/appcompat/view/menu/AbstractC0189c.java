package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.core.p019b.p020a.AbstractMenuItemC0484b;
import androidx.core.p019b.p020a.AbstractSubMenuC0485c;
import androidx.p013b.C0373a;
import java.util.Iterator;
import java.util.Map;
/* renamed from: androidx.appcompat.view.menu.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/c.class */
public abstract class AbstractC0189c {

    /* renamed from: a */
    final Context f713a;

    /* renamed from: b */
    private Map<AbstractMenuItemC0484b, MenuItem> f714b;

    /* renamed from: c */
    private Map<AbstractSubMenuC0485c, SubMenu> f715c;

    public AbstractC0189c(Context context) {
        this.f713a = context;
    }

    /* renamed from: a */
    public final MenuItem m21918a(MenuItem menuItem) {
        if (menuItem instanceof AbstractMenuItemC0484b) {
            AbstractMenuItemC0484b abstractMenuItemC0484b = (AbstractMenuItemC0484b) menuItem;
            if (this.f714b == null) {
                this.f714b = new C0373a();
            }
            MenuItem menuItem2 = this.f714b.get(menuItem);
            menuItem = menuItem2;
            if (menuItem2 == null) {
                menuItem = new MenuItemC0205j(this.f713a, abstractMenuItemC0484b);
                this.f714b.put(abstractMenuItemC0484b, menuItem);
            }
        }
        return menuItem;
    }

    /* renamed from: a */
    public final SubMenu m21917a(SubMenu subMenu) {
        if (subMenu instanceof AbstractSubMenuC0485c) {
            AbstractSubMenuC0485c abstractSubMenuC0485c = (AbstractSubMenuC0485c) subMenu;
            if (this.f715c == null) {
                this.f715c = new C0373a();
            }
            SubMenu subMenu2 = this.f715c.get(abstractSubMenuC0485c);
            subMenu = subMenu2;
            if (subMenu2 == null) {
                subMenu = new SubMenuC0224s(this.f713a, abstractSubMenuC0485c);
                this.f715c.put(abstractSubMenuC0485c, subMenu);
            }
        }
        return subMenu;
    }

    /* renamed from: a */
    public final void m21920a() {
        if (this.f714b != null) {
            this.f714b.clear();
        }
        if (this.f715c != null) {
            this.f715c.clear();
        }
    }

    /* renamed from: a */
    public final void m21919a(int i) {
        if (this.f714b == null) {
            return;
        }
        Iterator<AbstractMenuItemC0484b> it = this.f714b.keySet().iterator();
        while (it.hasNext()) {
            if (i == it.next().getGroupId()) {
                it.remove();
            }
        }
    }

    /* renamed from: b */
    public final void m21916b(int i) {
        if (this.f714b == null) {
            return;
        }
        Iterator<AbstractMenuItemC0484b> it = this.f714b.keySet().iterator();
        while (it.hasNext()) {
            if (i == it.next().getItemId()) {
                it.remove();
                return;
            }
        }
    }
}
