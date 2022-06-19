package com.cocosw.bottomsheet;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.cocosw.bottomsheet.a */
/* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/a.class */
public class MenuC1591a implements Menu {

    /* renamed from: d */
    public static final int[] f5896d = {1, 4, 5, 3, 2, 0};

    /* renamed from: a */
    public Context f5897a;

    /* renamed from: b */
    public boolean f5898b;

    /* renamed from: c */
    public ArrayList<MenuItemC1592b> f5899c = new ArrayList<>();

    public MenuC1591a(Context context) {
        this.f5897a = context;
    }

    /* renamed from: a */
    public static int m4865a(ArrayList<MenuItemC1592b> arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).f5902c <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    /* renamed from: d */
    public static int m4862d(int i) {
        int i2 = ((-65536) & i) >> 16;
        if (i2 >= 0) {
            int[] iArr = f5896d;
            if (i2 < iArr.length) {
                return (i & 65535) | (iArr[i2] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return add(0, 0, 0, i);
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return add(i, i2, i3, this.f5897a.getResources().getString(i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        MenuItemC1592b menuItemC1592b = new MenuItemC1592b(this.f5897a, i, i2, 0, i3, charSequence);
        ArrayList<MenuItemC1592b> arrayList = this.f5899c;
        arrayList.add(m4865a(arrayList, m4862d(i3)), menuItemC1592b);
        return menuItemC1592b;
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return add(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int i5;
        PackageManager packageManager = this.f5897a.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        int i6 = 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
            i6 = 0;
        }
        while (i6 < size) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i6);
            int i7 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i7 < 0 ? intent : intentArr[i7]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            MenuItem add = add(i, i2, i3, resolveInfo.loadLabel(packageManager));
            Drawable loadIcon = resolveInfo.loadIcon(packageManager);
            MenuItemC1592b menuItemC1592b = (MenuItemC1592b) add;
            menuItemC1592b.f5908i = loadIcon;
            menuItemC1592b.f5905f = intent2;
            if (menuItemArr != null && (i5 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i5] = menuItemC1592b;
            }
            i6++;
        }
        return size;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return null;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return null;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return null;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return null;
    }

    /* renamed from: b */
    public final int m4864b(int i) {
        ArrayList<MenuItemC1592b> arrayList = this.f5899c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (arrayList.get(i2).f5900a == i) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: c */
    public final MenuItemC1592b m4863c(int i) {
        boolean z = this.f5898b;
        ArrayList<MenuItemC1592b> arrayList = this.f5899c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItemC1592b menuItemC1592b = arrayList.get(i2);
            if (i == (z ? menuItemC1592b.f5907h : menuItemC1592b.f5906g)) {
                return menuItemC1592b;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public void clear() {
        this.f5899c.clear();
    }

    @Override // android.view.Menu
    public void close() {
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        int m4864b = m4864b(i);
        if (m4864b < 0) {
            return null;
        }
        return this.f5899c.get(m4864b);
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.f5899c.get(i);
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        ArrayList<MenuItemC1592b> arrayList = this.f5899c;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (arrayList.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return m4863c(i) != null;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        int m4864b = m4864b(i);
        if (m4864b < 0) {
            return false;
        }
        return this.f5899c.get(m4864b).m4861c();
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        MenuItemC1592b m4863c = m4863c(i);
        if (m4863c == null) {
            return false;
        }
        return m4863c.m4861c();
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        ArrayList<MenuItemC1592b> arrayList = this.f5899c;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            if (arrayList.get(i2).f5901b == i) {
                arrayList.remove(i2);
                size--;
            } else {
                i2++;
            }
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        int m4864b = m4864b(i);
        if (m4864b < 0) {
            return;
        }
        this.f5899c.remove(m4864b);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        ArrayList<MenuItemC1592b> arrayList = this.f5899c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItemC1592b menuItemC1592b = arrayList.get(i2);
            if (menuItemC1592b.f5901b == i) {
                int i3 = (menuItemC1592b.f5911l & (-2)) | (z ? 1 : 0);
                menuItemC1592b.f5911l = i3;
                menuItemC1592b.f5911l = (i3 & (-5)) | (z2 ? 4 : 0);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        ArrayList<MenuItemC1592b> arrayList = this.f5899c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItemC1592b menuItemC1592b = arrayList.get(i2);
            if (menuItemC1592b.f5901b == i) {
                menuItemC1592b.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        ArrayList<MenuItemC1592b> arrayList = this.f5899c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItemC1592b menuItemC1592b = arrayList.get(i2);
            if (menuItemC1592b.f5901b == i) {
                menuItemC1592b.setVisible(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f5898b = z;
    }

    @Override // android.view.Menu
    public int size() {
        return this.f5899c.size();
    }
}
