package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import p020b.p041h.p043f.p044a.AbstractMenuC1539a;
/* renamed from: androidx.appcompat.view.menu.o */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/o.class */
public class MenuC0197o extends AbstractC0168c implements Menu {

    /* renamed from: d */
    private final AbstractMenuC1539a f717d;

    public MenuC0197o(Context context, AbstractMenuC1539a abstractMenuC1539a) {
        super(context);
        if (abstractMenuC1539a != null) {
            this.f717d = abstractMenuC1539a;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return m35437c(this.f717d.add(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return m35437c(this.f717d.add(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m35437c(this.f717d.add(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return m35437c(this.f717d.add(charSequence));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int addIntentOptions = this.f717d.addIntentOptions(i, i2, i3, componentName, intentArr, intent, i4, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i5 = 0; i5 < length; i5++) {
                menuItemArr[i5] = m35437c(menuItemArr2[i5]);
            }
        }
        return addIntentOptions;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return m35436d(this.f717d.addSubMenu(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return m35436d(this.f717d.addSubMenu(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return m35436d(this.f717d.addSubMenu(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return m35436d(this.f717d.addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public void clear() {
        m35435e();
        this.f717d.clear();
    }

    @Override // android.view.Menu
    public void close() {
        this.f717d.close();
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        return m35437c(this.f717d.findItem(i));
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return m35437c(this.f717d.getItem(i));
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        return this.f717d.hasVisibleItems();
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return this.f717d.isShortcutKey(i, keyEvent);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return this.f717d.performIdentifierAction(i, i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        return this.f717d.performShortcut(i, keyEvent, i2);
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        m35434f(i);
        this.f717d.removeGroup(i);
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        m35433g(i);
        this.f717d.removeItem(i);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        this.f717d.setGroupCheckable(i, z, z2);
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        this.f717d.setGroupEnabled(i, z);
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        this.f717d.setGroupVisible(i, z);
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f717d.setQwertyMode(z);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f717d.size();
    }
}
