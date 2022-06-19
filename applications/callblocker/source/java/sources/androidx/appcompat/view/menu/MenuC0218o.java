package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.core.p019b.p020a.AbstractMenuC0483a;
/* renamed from: androidx.appcompat.view.menu.o */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/o.class */
public class MenuC0218o extends AbstractC0189c implements Menu {

    /* renamed from: b */
    private final AbstractMenuC0483a f859b;

    public MenuC0218o(Context context, AbstractMenuC0483a abstractMenuC0483a) {
        super(context);
        if (abstractMenuC0483a == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f859b = abstractMenuC0483a;
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return m21918a(this.f859b.add(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return m21918a(this.f859b.add(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m21918a(this.f859b.add(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return m21918a(this.f859b.add(charSequence));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = null;
        if (menuItemArr != null) {
            menuItemArr2 = new MenuItem[menuItemArr.length];
        }
        int addIntentOptions = this.f859b.addIntentOptions(i, i2, i3, componentName, intentArr, intent, i4, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i5 = 0; i5 < length; i5++) {
                menuItemArr[i5] = m21918a(menuItemArr2[i5]);
            }
        }
        return addIntentOptions;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return m21917a(this.f859b.addSubMenu(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return m21917a(this.f859b.addSubMenu(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return m21917a(this.f859b.addSubMenu(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return m21917a(this.f859b.addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public void clear() {
        m21920a();
        this.f859b.clear();
    }

    @Override // android.view.Menu
    public void close() {
        this.f859b.close();
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        return m21918a(this.f859b.findItem(i));
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return m21918a(this.f859b.getItem(i));
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        return this.f859b.hasVisibleItems();
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return this.f859b.isShortcutKey(i, keyEvent);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return this.f859b.performIdentifierAction(i, i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        return this.f859b.performShortcut(i, keyEvent, i2);
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        m21919a(i);
        this.f859b.removeGroup(i);
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        m21916b(i);
        this.f859b.removeItem(i);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        this.f859b.setGroupCheckable(i, z, z2);
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        this.f859b.setGroupEnabled(i, z);
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        this.f859b.setGroupVisible(i, z);
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f859b.setQwertyMode(z);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f859b.size();
    }
}
