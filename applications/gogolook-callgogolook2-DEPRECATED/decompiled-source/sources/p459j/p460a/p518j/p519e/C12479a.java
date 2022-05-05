package p459j.p460a.p518j.p519e;

import android.content.ComponentName;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.legacy.app.ActionBarDrawerToggle;
import gogolook.callgogolook2.MyApplication;
import java.util.ArrayList;
import java.util.Iterator;
import p459j.p460a.p582w0.C14206w4;
/* renamed from: j.a.j.e.a */
/* loaded from: classes2-dex2jar.jar:j/a/j/e/a.class */
public class C12479a {

    /* renamed from: j.a.j.e.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/j/e/a$a.class */
    public static final class MenuC12480a implements Menu {

        /* renamed from: a */
        public ArrayList<MenuItem> f28107a = new ArrayList<>();

        @Override // android.view.Menu
        public MenuItem add(int i) {
            return add(0, 0, 0, C12479a.m6053b(i));
        }

        @Override // android.view.Menu
        public MenuItem add(int i, int i2, int i3, int i4) {
            return add(i, i2, i3, C12479a.m6053b(i4));
        }

        @Override // android.view.Menu
        public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
            MenuItem a = C12479a.m6056a(i, i2, i3, charSequence);
            this.f28107a.add(a);
            return a;
        }

        @Override // android.view.Menu
        public MenuItem add(CharSequence charSequence) {
            return add(0, 0, 0, charSequence);
        }

        @Override // android.view.Menu
        public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
            return 0;
        }

        @Override // android.view.Menu
        public SubMenu addSubMenu(int i) {
            return addSubMenu(0, 0, 0, C12479a.m6053b(i));
        }

        @Override // android.view.Menu
        public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
            return addSubMenu(i, i2, i3, C12479a.m6053b(i4));
        }

        @Override // android.view.Menu
        public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
            return add(i, i2, i3, charSequence).getSubMenu();
        }

        @Override // android.view.Menu
        public SubMenu addSubMenu(CharSequence charSequence) {
            return addSubMenu(0, 0, 0, charSequence);
        }

        @Override // android.view.Menu
        public void clear() {
            this.f28107a.clear();
        }

        @Override // android.view.Menu
        public void close() {
        }

        @Override // android.view.Menu
        public MenuItem findItem(int i) {
            Iterator<MenuItem> it = this.f28107a.iterator();
            while (it.hasNext()) {
                MenuItem next = it.next();
                if (next.getItemId() == i) {
                    return next;
                }
                for (int i2 = 0; i2 < next.getSubMenu().size(); i2++) {
                    if (next.getSubMenu().getItem(i2).getItemId() == i) {
                        return next.getSubMenu().getItem(i2);
                    }
                }
            }
            return null;
        }

        @Override // android.view.Menu
        public MenuItem getItem(int i) {
            return this.f28107a.get(i);
        }

        @Override // android.view.Menu
        public boolean hasVisibleItems() {
            Iterator<MenuItem> it = this.f28107a.iterator();
            while (it.hasNext()) {
                if (it.next().isVisible()) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.view.Menu
        public boolean isShortcutKey(int i, KeyEvent keyEvent) {
            return false;
        }

        @Override // android.view.Menu
        public boolean performIdentifierAction(int i, int i2) {
            return false;
        }

        @Override // android.view.Menu
        public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
            return false;
        }

        @Override // android.view.Menu
        public void removeGroup(int i) {
        }

        @Override // android.view.Menu
        public void removeItem(int i) {
            Iterator<MenuItem> it = this.f28107a.iterator();
            int i2 = -1;
            while (it.hasNext()) {
                MenuItem next = it.next();
                if (next.getItemId() == i) {
                    i2 = this.f28107a.indexOf(next);
                }
            }
            if (i2 != -1) {
                this.f28107a.remove(i2);
            }
        }

        @Override // android.view.Menu
        public void setGroupCheckable(int i, boolean z, boolean z2) {
        }

        @Override // android.view.Menu
        public void setGroupEnabled(int i, boolean z) {
        }

        @Override // android.view.Menu
        public void setGroupVisible(int i, boolean z) {
        }

        @Override // android.view.Menu
        public void setQwertyMode(boolean z) {
        }

        @Override // android.view.Menu
        public int size() {
            return this.f28107a.size();
        }
    }

    /* renamed from: j.a.j.e.a$b */
    /* loaded from: classes2-dex2jar.jar:j/a/j/e/a$b.class */
    public static final class MenuItemC12481b implements MenuItem {

        /* renamed from: a */
        public CharSequence f28108a;

        /* renamed from: b */
        public Drawable f28109b;

        /* renamed from: c */
        public Intent f28110c;

        /* renamed from: d */
        public boolean f28111d;

        /* renamed from: e */
        public boolean f28112e;

        /* renamed from: f */
        public boolean f28113f;

        /* renamed from: g */
        public boolean f28114g;

        /* renamed from: h */
        public SubMenu f28115h;

        /* renamed from: i */
        public View f28116i;

        /* renamed from: j */
        public ActionProvider f28117j;

        /* renamed from: k */
        public final /* synthetic */ int f28118k;

        /* renamed from: l */
        public final /* synthetic */ int f28119l;

        /* renamed from: m */
        public final /* synthetic */ int f28120m;

        public MenuItemC12481b(int i, int i2, int i3) {
            this.f28118k = i;
            this.f28119l = i2;
            this.f28120m = i3;
        }

        @Override // android.view.MenuItem
        public boolean collapseActionView() {
            return false;
        }

        @Override // android.view.MenuItem
        public boolean expandActionView() {
            return false;
        }

        @Override // android.view.MenuItem
        public ActionProvider getActionProvider() {
            return this.f28117j;
        }

        @Override // android.view.MenuItem
        public View getActionView() {
            return this.f28116i;
        }

        @Override // android.view.MenuItem
        public char getAlphabeticShortcut() {
            return (char) 0;
        }

        @Override // android.view.MenuItem
        public int getGroupId() {
            return this.f28119l;
        }

        @Override // android.view.MenuItem
        public Drawable getIcon() {
            return this.f28109b;
        }

        @Override // android.view.MenuItem
        public Intent getIntent() {
            return this.f28110c;
        }

        @Override // android.view.MenuItem
        public int getItemId() {
            return this.f28118k;
        }

        @Override // android.view.MenuItem
        public ContextMenu.ContextMenuInfo getMenuInfo() {
            return null;
        }

        @Override // android.view.MenuItem
        public char getNumericShortcut() {
            return (char) 0;
        }

        @Override // android.view.MenuItem
        public int getOrder() {
            return this.f28120m;
        }

        @Override // android.view.MenuItem
        public SubMenu getSubMenu() {
            if (this.f28115h == null) {
                this.f28115h = C12479a.m6055a(getGroupId(), getItemId(), 0, null, this);
            }
            return this.f28115h;
        }

        @Override // android.view.MenuItem
        public CharSequence getTitle() {
            return this.f28108a;
        }

        @Override // android.view.MenuItem
        public CharSequence getTitleCondensed() {
            return null;
        }

        @Override // android.view.MenuItem
        public boolean hasSubMenu() {
            SubMenu subMenu = this.f28115h;
            return subMenu != null && subMenu.size() > 0;
        }

        @Override // android.view.MenuItem
        public boolean isActionViewExpanded() {
            return false;
        }

        @Override // android.view.MenuItem
        public boolean isCheckable() {
            return this.f28111d;
        }

        @Override // android.view.MenuItem
        public boolean isChecked() {
            return this.f28112e;
        }

        @Override // android.view.MenuItem
        public boolean isEnabled() {
            return this.f28114g;
        }

        @Override // android.view.MenuItem
        public boolean isVisible() {
            return this.f28113f;
        }

        @Override // android.view.MenuItem
        public MenuItem setActionProvider(ActionProvider actionProvider) {
            this.f28117j = actionProvider;
            return this;
        }

        @Override // android.view.MenuItem
        public MenuItem setActionView(int i) {
            setActionView(C12479a.m6052c().inflate(i, (ViewGroup) null));
            return this;
        }

        @Override // android.view.MenuItem
        public MenuItem setActionView(View view) {
            this.f28116i = view;
            return this;
        }

        @Override // android.view.MenuItem
        public MenuItem setAlphabeticShortcut(char c) {
            return this;
        }

        @Override // android.view.MenuItem
        public MenuItem setCheckable(boolean z) {
            this.f28111d = z;
            return this;
        }

        @Override // android.view.MenuItem
        public MenuItem setChecked(boolean z) {
            this.f28112e = z;
            return this;
        }

        @Override // android.view.MenuItem
        public MenuItem setEnabled(boolean z) {
            this.f28114g = z;
            return this;
        }

        @Override // android.view.MenuItem
        public MenuItem setIcon(int i) {
            this.f28109b = C12479a.m6057a(i);
            return this;
        }

        @Override // android.view.MenuItem
        public MenuItem setIcon(Drawable drawable) {
            this.f28109b = drawable;
            return this;
        }

        @Override // android.view.MenuItem
        public MenuItem setIntent(Intent intent) {
            this.f28110c = intent;
            return this;
        }

        @Override // android.view.MenuItem
        public MenuItem setNumericShortcut(char c) {
            return this;
        }

        @Override // android.view.MenuItem
        public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
            return this;
        }

        @Override // android.view.MenuItem
        public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            return this;
        }

        @Override // android.view.MenuItem
        public MenuItem setShortcut(char c, char c2) {
            return this;
        }

        @Override // android.view.MenuItem
        public void setShowAsAction(int i) {
        }

        @Override // android.view.MenuItem
        public MenuItem setShowAsActionFlags(int i) {
            return this;
        }

        @Override // android.view.MenuItem
        public MenuItem setTitle(int i) {
            this.f28108a = C12479a.m6053b(i);
            return this;
        }

        @Override // android.view.MenuItem
        public MenuItem setTitle(CharSequence charSequence) {
            this.f28108a = charSequence;
            return this;
        }

        @Override // android.view.MenuItem
        public MenuItem setTitleCondensed(CharSequence charSequence) {
            return this;
        }

        @Override // android.view.MenuItem
        public MenuItem setVisible(boolean z) {
            this.f28113f = z;
            return this;
        }
    }

    /* renamed from: j.a.j.e.a$c */
    /* loaded from: classes2-dex2jar.jar:j/a/j/e/a$c.class */
    public static final class SubMenuC12482c implements SubMenu {

        /* renamed from: a */
        public MenuItem f28121a;

        /* renamed from: b */
        public ArrayList<MenuItem> f28122b = new ArrayList<>();

        /* renamed from: c */
        public final /* synthetic */ MenuItem f28123c;

        /* renamed from: d */
        public final /* synthetic */ int f28124d;

        /* renamed from: e */
        public final /* synthetic */ int f28125e;

        /* renamed from: f */
        public final /* synthetic */ int f28126f;

        /* renamed from: g */
        public final /* synthetic */ CharSequence f28127g;

        public SubMenuC12482c(MenuItem menuItem, int i, int i2, int i3, CharSequence charSequence) {
            this.f28123c = menuItem;
            this.f28124d = i;
            this.f28125e = i2;
            this.f28126f = i3;
            this.f28127g = charSequence;
            this.f28121a = this.f28123c;
        }

        @Override // android.view.Menu
        public MenuItem add(int i) {
            return add(0, 0, 0, C12479a.m6053b(i));
        }

        @Override // android.view.Menu
        public MenuItem add(int i, int i2, int i3, int i4) {
            return add(i, i2, i3, C12479a.m6053b(i4));
        }

        @Override // android.view.Menu
        public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
            MenuItem a = C12479a.m6056a(i, i2, i3, charSequence);
            this.f28122b.add(a);
            return a;
        }

        @Override // android.view.Menu
        public MenuItem add(CharSequence charSequence) {
            return add(0, 0, 0, charSequence);
        }

        @Override // android.view.Menu
        public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
            return 0;
        }

        @Override // android.view.Menu
        public SubMenu addSubMenu(int i) {
            addSubMenu(0, 0, 0, C12479a.m6053b(i));
            return this;
        }

        @Override // android.view.Menu
        public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
            addSubMenu(i, i2, i3, C12479a.m6053b(i4));
            return this;
        }

        @Override // android.view.Menu
        public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
            return add(i, i2, i3, charSequence).getSubMenu();
        }

        @Override // android.view.Menu
        public SubMenu addSubMenu(CharSequence charSequence) {
            addSubMenu(0, 0, 0, charSequence);
            return this;
        }

        @Override // android.view.Menu
        public void clear() {
            this.f28122b.clear();
        }

        @Override // android.view.SubMenu
        public void clearHeader() {
        }

        @Override // android.view.Menu
        public void close() {
        }

        @Override // android.view.Menu
        public MenuItem findItem(int i) {
            Iterator<MenuItem> it = this.f28122b.iterator();
            while (it.hasNext()) {
                MenuItem next = it.next();
                if (next.getItemId() == i) {
                    return next;
                }
            }
            return null;
        }

        @Override // android.view.SubMenu
        public MenuItem getItem() {
            if (this.f28121a == null) {
                this.f28121a = C12479a.m6056a(this.f28124d, this.f28125e, this.f28126f, this.f28127g);
            }
            return this.f28121a;
        }

        @Override // android.view.Menu
        public MenuItem getItem(int i) {
            return this.f28122b.get(i);
        }

        @Override // android.view.Menu
        public boolean hasVisibleItems() {
            Iterator<MenuItem> it = this.f28122b.iterator();
            while (it.hasNext()) {
                if (it.next().isVisible()) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.view.Menu
        public boolean isShortcutKey(int i, KeyEvent keyEvent) {
            return false;
        }

        @Override // android.view.Menu
        public boolean performIdentifierAction(int i, int i2) {
            return false;
        }

        @Override // android.view.Menu
        public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
            return false;
        }

        @Override // android.view.Menu
        public void removeGroup(int i) {
        }

        @Override // android.view.Menu
        public void removeItem(int i) {
        }

        @Override // android.view.Menu
        public void setGroupCheckable(int i, boolean z, boolean z2) {
        }

        @Override // android.view.Menu
        public void setGroupEnabled(int i, boolean z) {
        }

        @Override // android.view.Menu
        public void setGroupVisible(int i, boolean z) {
        }

        @Override // android.view.SubMenu
        @NonNull
        public SubMenu setHeaderIcon(int i) {
            C12479a.m6057a(i);
            return this;
        }

        @Override // android.view.SubMenu
        @NonNull
        public SubMenu setHeaderIcon(Drawable drawable) {
            return this;
        }

        @Override // android.view.SubMenu
        @NonNull
        public SubMenu setHeaderTitle(int i) {
            C12479a.m6053b(i);
            return this;
        }

        @Override // android.view.SubMenu
        @NonNull
        public SubMenu setHeaderTitle(CharSequence charSequence) {
            return this;
        }

        @Override // android.view.SubMenu
        @NonNull
        public SubMenu setHeaderView(View view) {
            return this;
        }

        @Override // android.view.SubMenu
        @NonNull
        public SubMenu setIcon(int i) {
            C12479a.m6057a(i);
            return this;
        }

        @Override // android.view.SubMenu
        @NonNull
        public SubMenu setIcon(Drawable drawable) {
            return this;
        }

        @Override // android.view.Menu
        public void setQwertyMode(boolean z) {
        }

        @Override // android.view.Menu
        public int size() {
            return this.f28122b.size();
        }
    }

    /* renamed from: a */
    public static Drawable m6057a(int i) {
        try {
            return MyApplication.m29013o().getResources().getDrawable(i);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public static Menu m6058a() {
        return new MenuC12480a();
    }

    /* renamed from: a */
    public static MenuItem m6056a(int i, int i2, int i3, CharSequence charSequence) {
        MenuItemC12481b bVar = new MenuItemC12481b(i2, i, i3);
        bVar.setTitle(charSequence);
        return bVar;
    }

    /* renamed from: a */
    public static SubMenu m6055a(int i, int i2, int i3, CharSequence charSequence, MenuItem menuItem) {
        return new SubMenuC12482c(menuItem, i, i2, i3, charSequence);
    }

    /* renamed from: b */
    public static MenuItem m6054b() {
        return m6056a(0, ActionBarDrawerToggle.ID_HOME, 0, null);
    }

    /* renamed from: b */
    public static String m6053b(int i) {
        try {
            return C14206w4.m2225a(i);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: c */
    public static LayoutInflater m6052c() {
        return (LayoutInflater) MyApplication.m29013o().getSystemService("layout_inflater");
    }
}
