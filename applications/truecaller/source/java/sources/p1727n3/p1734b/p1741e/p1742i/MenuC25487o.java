package p1727n3.p1734b.p1741e.p1742i;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import p1727n3.p1788g.C26187h;
import p1727n3.p1807k.p1814d.p1815a.AbstractMenuC26505a;
import p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b;
import p1727n3.p1807k.p1814d.p1815a.AbstractSubMenuC26507c;
/* renamed from: n3.b.e.i.o */
/* loaded from: classes-dex2jar.jar:n3/b/e/i/o.class */
public class MenuC25487o extends AbstractC25464c implements Menu {

    /* renamed from: d */
    public final AbstractMenuC26505a f71297d;

    public MenuC25487o(Context context, AbstractMenuC26505a abstractMenuC26505a) {
        super(context);
        if (abstractMenuC26505a != null) {
            this.f71297d = abstractMenuC26505a;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return m3491c(this.f71297d.add(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return m3491c(this.f71297d.add(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m3491c(this.f71297d.add(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return m3491c(this.f71297d.add(charSequence));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int addIntentOptions = this.f71297d.addIntentOptions(i, i2, i3, componentName, intentArr, intent, i4, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i5 = 0; i5 < length; i5++) {
                menuItemArr[i5] = m3491c(menuItemArr2[i5]);
            }
        }
        return addIntentOptions;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return m3490d(this.f71297d.addSubMenu(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return m3490d(this.f71297d.addSubMenu(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return m3490d(this.f71297d.addSubMenu(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return m3490d(this.f71297d.addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public void clear() {
        C26187h<AbstractMenuItemC26506b, MenuItem> c26187h = this.f71188b;
        if (c26187h != null) {
            c26187h.clear();
        }
        C26187h<AbstractSubMenuC26507c, SubMenu> c26187h2 = this.f71189c;
        if (c26187h2 != null) {
            c26187h2.clear();
        }
        this.f71297d.clear();
    }

    @Override // android.view.Menu
    public void close() {
        this.f71297d.close();
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        return m3491c(this.f71297d.findItem(i));
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return m3491c(this.f71297d.getItem(i));
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        return this.f71297d.hasVisibleItems();
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return this.f71297d.isShortcutKey(i, keyEvent);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return this.f71297d.performIdentifierAction(i, i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        return this.f71297d.performShortcut(i, keyEvent, i2);
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        if (this.f71188b != null) {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                C26187h<AbstractMenuItemC26506b, MenuItem> c26187h = this.f71188b;
                if (i3 >= c26187h.f73025c) {
                    break;
                }
                int i4 = i3;
                if (c26187h.m2576l(i3).getGroupId() == i) {
                    this.f71188b.m2574n(i3);
                    i4 = i3 - 1;
                }
                i2 = i4 + 1;
            }
        }
        this.f71297d.removeGroup(i);
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        if (this.f71188b != null) {
            int i2 = 0;
            while (true) {
                C26187h<AbstractMenuItemC26506b, MenuItem> c26187h = this.f71188b;
                if (i2 >= c26187h.f73025c) {
                    break;
                } else if (c26187h.m2576l(i2).getItemId() == i) {
                    this.f71188b.m2574n(i2);
                    break;
                } else {
                    i2++;
                }
            }
        }
        this.f71297d.removeItem(i);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        this.f71297d.setGroupCheckable(i, z, z2);
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        this.f71297d.setGroupEnabled(i, z);
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        this.f71297d.setGroupVisible(i, z);
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f71297d.setQwertyMode(z);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f71297d.size();
    }
}
