package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.b.g;
import androidx.core.a.a.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/c.class */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    final Context f781a;

    /* renamed from: b  reason: collision with root package name */
    private g<b, MenuItem> f782b;

    /* renamed from: c  reason: collision with root package name */
    private g<androidx.core.a.a.c, SubMenu> f783c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context) {
        this.f781a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final MenuItem a(MenuItem menuItem) {
        MenuItem menuItem2 = menuItem;
        if (menuItem instanceof b) {
            b bVar = (b) menuItem;
            if (this.f782b == null) {
                this.f782b = new g<>();
            }
            MenuItem menuItem3 = this.f782b.get(menuItem);
            menuItem2 = menuItem3;
            if (menuItem3 == null) {
                menuItem2 = new j(this.f781a, bVar);
                this.f782b.put(bVar, menuItem2);
            }
        }
        return menuItem2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SubMenu a(SubMenu subMenu) {
        if (!(subMenu instanceof androidx.core.a.a.c)) {
            return subMenu;
        }
        androidx.core.a.a.c cVar = (androidx.core.a.a.c) subMenu;
        if (this.f783c == null) {
            this.f783c = new g<>();
        }
        SubMenu subMenu2 = this.f783c.get(cVar);
        SubMenu subMenu3 = subMenu2;
        if (subMenu2 == null) {
            subMenu3 = new s(this.f781a, cVar);
            this.f783c.put(cVar, subMenu3);
        }
        return subMenu3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        g<b, MenuItem> gVar = this.f782b;
        if (gVar != null) {
            gVar.clear();
        }
        g<androidx.core.a.a.c, SubMenu> gVar2 = this.f783c;
        if (gVar2 != null) {
            gVar2.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        if (this.f782b != null) {
            int i2 = 0;
            while (i2 < this.f782b.size()) {
                int i3 = i2;
                if (this.f782b.b(i2).getGroupId() == i) {
                    this.f782b.d(i2);
                    i3 = i2 - 1;
                }
                i2 = i3 + 1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(int i) {
        if (this.f782b != null) {
            for (int i2 = 0; i2 < this.f782b.size(); i2++) {
                if (this.f782b.b(i2).getItemId() == i) {
                    this.f782b.d(i2);
                    return;
                }
            }
        }
    }
}
