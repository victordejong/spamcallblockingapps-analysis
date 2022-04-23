package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.collection.SimpleArrayMap;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.internal.view.SupportSubMenu;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/BaseMenuWrapper.class */
public abstract class BaseMenuWrapper {

    /* renamed from: a */
    final Context f552a;

    /* renamed from: b */
    private SimpleArrayMap<SupportMenuItem, MenuItem> f553b;

    /* renamed from: c */
    private SimpleArrayMap<SupportSubMenu, SubMenu> f554c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseMenuWrapper(Context context) {
        this.f552a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final MenuItem m21923c(MenuItem menuItem) {
        MenuItem menuItem2 = menuItem;
        if (menuItem instanceof SupportMenuItem) {
            SupportMenuItem supportMenuItem = (SupportMenuItem) menuItem;
            if (this.f553b == null) {
                this.f553b = new SimpleArrayMap<>();
            }
            MenuItem menuItem3 = this.f553b.get(menuItem);
            menuItem2 = menuItem3;
            if (menuItem3 == null) {
                menuItem2 = new MenuItemWrapperICS(this.f552a, supportMenuItem);
                this.f553b.put(supportMenuItem, menuItem2);
            }
        }
        return menuItem2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final SubMenu m21922d(SubMenu subMenu) {
        if (!(subMenu instanceof SupportSubMenu)) {
            return subMenu;
        }
        SupportSubMenu supportSubMenu = (SupportSubMenu) subMenu;
        if (this.f554c == null) {
            this.f554c = new SimpleArrayMap<>();
        }
        SubMenu subMenu2 = this.f554c.get(supportSubMenu);
        SubMenu subMenu3 = subMenu2;
        if (subMenu2 == null) {
            subMenu3 = new SubMenuWrapperICS(this.f552a, supportSubMenu);
            this.f554c.put(supportSubMenu, subMenu3);
        }
        return subMenu3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m21921e() {
        SimpleArrayMap<SupportMenuItem, MenuItem> simpleArrayMap = this.f553b;
        if (simpleArrayMap != null) {
            simpleArrayMap.clear();
        }
        SimpleArrayMap<SupportSubMenu, SubMenu> simpleArrayMap2 = this.f554c;
        if (simpleArrayMap2 != null) {
            simpleArrayMap2.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m21920f(int i) {
        if (this.f553b != null) {
            int i2 = 0;
            while (i2 < this.f553b.size()) {
                int i3 = i2;
                if (this.f553b.m21007k(i2).getGroupId() == i) {
                    this.f553b.mo18659m(i2);
                    i3 = i2 - 1;
                }
                i2 = i3 + 1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final void m21919g(int i) {
        if (this.f553b != null) {
            for (int i2 = 0; i2 < this.f553b.size(); i2++) {
                if (this.f553b.m21007k(i2).getItemId() == i) {
                    this.f553b.mo18659m(i2);
                    return;
                }
            }
        }
    }
}
