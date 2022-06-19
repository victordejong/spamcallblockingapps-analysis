package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import d.e.g;
import d.h.f.a.b;
import d.h.f.a.c;
/* renamed from: androidx.appcompat.view.menu.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/c.class */
abstract class AbstractC0093c {

    /* renamed from: a */
    final Context f304a;

    /* renamed from: b */
    private g<b, MenuItem> f305b;

    /* renamed from: c */
    private g<c, SubMenu> f306c;

    AbstractC0093c(Context context) {
        this.f304a = context;
    }

    /* renamed from: c */
    public final MenuItem m14851c(MenuItem menuItem) {
        MenuItem menuItem2 = menuItem;
        if (menuItem instanceof b) {
            b bVar = (b) menuItem;
            if (this.f305b == null) {
                this.f305b = new g<>();
            }
            MenuItem menuItem3 = (MenuItem) this.f305b.get(menuItem);
            menuItem2 = menuItem3;
            if (menuItem3 == null) {
                menuItem2 = new j(this.f304a, bVar);
                this.f305b.put(bVar, menuItem2);
            }
        }
        return menuItem2;
    }

    /* renamed from: d */
    final SubMenu m14850d(SubMenu subMenu) {
        if (subMenu instanceof c) {
            c cVar = (c) subMenu;
            if (this.f306c == null) {
                this.f306c = new g<>();
            }
            s sVar = (SubMenu) this.f306c.get(cVar);
            s sVar2 = sVar;
            if (sVar == null) {
                sVar2 = new s(this.f304a, cVar);
                this.f306c.put(cVar, sVar2);
            }
            return sVar2;
        }
        return subMenu;
    }

    /* renamed from: e */
    final void m14849e() {
        g<b, MenuItem> gVar = this.f305b;
        if (gVar != null) {
            gVar.clear();
        }
        g<c, SubMenu> gVar2 = this.f306c;
        if (gVar2 != null) {
            gVar2.clear();
        }
    }

    /* renamed from: f */
    final void m14848f(int i) {
        if (this.f305b == null) {
            return;
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.f305b.size()) {
                return;
            }
            int i4 = i3;
            if (((b) this.f305b.i(i3)).getGroupId() == i) {
                this.f305b.k(i3);
                i4 = i3 - 1;
            }
            i2 = i4 + 1;
        }
    }

    /* renamed from: g */
    final void m14847g(int i) {
        if (this.f305b == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f305b.size(); i2++) {
            if (((b) this.f305b.i(i2)).getItemId() == i) {
                this.f305b.k(i2);
                return;
            }
        }
    }
}
