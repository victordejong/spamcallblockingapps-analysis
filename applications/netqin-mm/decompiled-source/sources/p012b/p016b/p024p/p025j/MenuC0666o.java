package p012b.p016b.p024p.p025j;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import p012b.p042i.p048k.p049a.AbstractMenuC0913a;
/* renamed from: b.b.p.j.o */
/* loaded from: classes-dex2jar.jar:b/b/p/j/o.class */
public class MenuC0666o extends AbstractC0637c implements Menu {

    /* renamed from: d */
    public final AbstractMenuC0913a f3315d;

    public MenuC0666o(Context context, AbstractMenuC0913a aVar) {
        super(context);
        if (aVar != null) {
            this.f3315d = aVar;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return m36642a(this.f3315d.add(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return m36642a(this.f3315d.add(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m36642a(this.f3315d.add(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return m36642a(this.f3315d.add(charSequence));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int addIntentOptions = this.f3315d.addIntentOptions(i, i2, i3, componentName, intentArr, intent, i4, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i5 = 0; i5 < length; i5++) {
                menuItemArr[i5] = m36642a(menuItemArr2[i5]);
            }
        }
        return addIntentOptions;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return m36641a(this.f3315d.addSubMenu(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return m36641a(this.f3315d.addSubMenu(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return m36641a(this.f3315d.addSubMenu(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return m36641a(this.f3315d.addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public void clear() {
        m36640b();
        this.f3315d.clear();
    }

    @Override // android.view.Menu
    public void close() {
        this.f3315d.close();
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        return m36642a(this.f3315d.findItem(i));
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return m36642a(this.f3315d.getItem(i));
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        return this.f3315d.hasVisibleItems();
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return this.f3315d.isShortcutKey(i, keyEvent);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return this.f3315d.performIdentifierAction(i, i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        return this.f3315d.performShortcut(i, keyEvent, i2);
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        m36643a(i);
        this.f3315d.removeGroup(i);
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        m36639b(i);
        this.f3315d.removeItem(i);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        this.f3315d.setGroupCheckable(i, z, z2);
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        this.f3315d.setGroupEnabled(i, z);
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        this.f3315d.setGroupVisible(i, z);
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f3315d.setQwertyMode(z);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f3315d.size();
    }
}
