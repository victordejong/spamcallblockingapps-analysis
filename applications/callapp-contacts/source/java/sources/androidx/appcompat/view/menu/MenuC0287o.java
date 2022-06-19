package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.core.p030a.p031a.AbstractMenuC0712a;
/* renamed from: androidx.appcompat.view.menu.o */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/o.class */
public class MenuC0287o extends AbstractC0258c implements Menu {

    /* renamed from: b */
    private final AbstractMenuC0712a f969b;

    public MenuC0287o(Context context, AbstractMenuC0712a abstractMenuC0712a) {
        super(context);
        if (abstractMenuC0712a != null) {
            this.f969b = abstractMenuC0712a;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return m46123a(this.f969b.add(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return m46123a(this.f969b.add(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m46123a(this.f969b.add(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return m46123a(this.f969b.add(charSequence));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int addIntentOptions = this.f969b.addIntentOptions(i, i2, i3, componentName, intentArr, intent, i4, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i5 = 0; i5 < length; i5++) {
                menuItemArr[i5] = m46123a(menuItemArr2[i5]);
            }
        }
        return addIntentOptions;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return m46122a(this.f969b.addSubMenu(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return m46122a(this.f969b.addSubMenu(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return m46122a(this.f969b.addSubMenu(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return m46122a(this.f969b.addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public void clear() {
        m46125a();
        this.f969b.clear();
    }

    @Override // android.view.Menu
    public void close() {
        this.f969b.close();
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        return m46123a(this.f969b.findItem(i));
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return m46123a(this.f969b.getItem(i));
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        return this.f969b.hasVisibleItems();
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return this.f969b.isShortcutKey(i, keyEvent);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return this.f969b.performIdentifierAction(i, i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        return this.f969b.performShortcut(i, keyEvent, i2);
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        m46124a(i);
        this.f969b.removeGroup(i);
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        m46121b(i);
        this.f969b.removeItem(i);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        this.f969b.setGroupCheckable(i, z, z2);
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        this.f969b.setGroupEnabled(i, z);
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        this.f969b.setGroupVisible(i, z);
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f969b.setQwertyMode(z);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f969b.size();
    }
}
