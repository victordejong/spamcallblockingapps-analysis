package p151l;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import p109h0.AbstractMenuC2990a;
import p109h0.AbstractMenuItemC2991b;
import p226s.C4263g;
/* renamed from: l.e */
/* loaded from: classes-dex2jar.jar:l/e.class */
public class MenuC3423e extends AbstractC3415b implements Menu {

    /* renamed from: d */
    public final AbstractMenuC2990a f11483d;

    public MenuC3423e(Context context, AbstractMenuC2990a abstractMenuC2990a) {
        super(context);
        if (abstractMenuC2990a != null) {
            this.f11483d = abstractMenuC2990a;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return m2320e(this.f11483d.add(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return m2320e(this.f11483d.add(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m2320e(this.f11483d.add(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return m2320e(this.f11483d.add(charSequence));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int addIntentOptions = this.f11483d.addIntentOptions(i, i2, i3, componentName, intentArr, intent, i4, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i5 = 0; i5 < length; i5++) {
                menuItemArr[i5] = m2320e(menuItemArr2[i5]);
            }
        }
        return addIntentOptions;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return m2319f(this.f11483d.addSubMenu(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return m2319f(this.f11483d.addSubMenu(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return m2319f(this.f11483d.addSubMenu(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return m2319f(this.f11483d.addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public void clear() {
        C4263g c4263g = (C4263g) this.f11470b;
        if (c4263g != null) {
            c4263g.clear();
        }
        C4263g c4263g2 = (C4263g) this.f11471c;
        if (c4263g2 != null) {
            c4263g2.clear();
        }
        this.f11483d.clear();
    }

    @Override // android.view.Menu
    public void close() {
        this.f11483d.close();
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        return m2320e(this.f11483d.findItem(i));
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return m2320e(this.f11483d.getItem(i));
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        return this.f11483d.hasVisibleItems();
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return this.f11483d.isShortcutKey(i, keyEvent);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return this.f11483d.performIdentifierAction(i, i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        return this.f11483d.performShortcut(i, keyEvent, i2);
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        if (((C4263g) this.f11470b) != null) {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                C4263g c4263g = (C4263g) this.f11470b;
                if (i3 >= c4263g.f13365c) {
                    break;
                }
                int i4 = i3;
                if (((AbstractMenuItemC2991b) c4263g.m1195h(i3)).getGroupId() == i) {
                    ((C4263g) this.f11470b).m1194i(i3);
                    i4 = i3 - 1;
                }
                i2 = i4 + 1;
            }
        }
        this.f11483d.removeGroup(i);
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        if (((C4263g) this.f11470b) != null) {
            int i2 = 0;
            while (true) {
                C4263g c4263g = (C4263g) this.f11470b;
                if (i2 >= c4263g.f13365c) {
                    break;
                } else if (((AbstractMenuItemC2991b) c4263g.m1195h(i2)).getItemId() == i) {
                    ((C4263g) this.f11470b).m1194i(i2);
                    break;
                } else {
                    i2++;
                }
            }
        }
        this.f11483d.removeItem(i);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        this.f11483d.setGroupCheckable(i, z, z2);
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        this.f11483d.setGroupEnabled(i, z);
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        this.f11483d.setGroupVisible(i, z);
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f11483d.setQwertyMode(z);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f11483d.size();
    }
}
