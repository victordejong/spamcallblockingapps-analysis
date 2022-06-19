package p151l;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import com.raizlabs.android.dbflow.config.AbstractC2116c;
import com.raizlabs.android.dbflow.config.FlowManager;
import p024b9.AbstractC0742b;
import p034c9.AbstractC0859f;
import p034c9.C0854a;
import p034c9.C0860g;
import p109h0.AbstractMenuItemC2991b;
import p109h0.AbstractSubMenuC2992c;
import p226s.C4263g;
/* renamed from: l.b */
/* loaded from: classes-dex2jar.jar:l/b.class */
public abstract class AbstractC3415b {

    /* renamed from: a */
    public final Object f11469a;

    /* renamed from: b */
    public Object f11470b;

    /* renamed from: c */
    public Object f11471c;

    public /* synthetic */ AbstractC3415b(Object obj) {
        this.f11469a = obj;
    }

    /* renamed from: c */
    public abstract Object mo6c(C0860g c0860g, Object obj);

    /* renamed from: d */
    public AbstractC0742b m2321d() {
        if (((AbstractC0742b) this.f11471c) == null) {
            this.f11471c = FlowManager.m3907f((Class) this.f11469a);
        }
        return (AbstractC0742b) this.f11471c;
    }

    /* renamed from: e */
    public MenuItem m2320e(MenuItem menuItem) {
        MenuItemC3416c menuItemC3416c = menuItem;
        if (menuItem instanceof AbstractMenuItemC2991b) {
            AbstractMenuItemC2991b abstractMenuItemC2991b = (AbstractMenuItemC2991b) menuItem;
            if (((C4263g) this.f11470b) == null) {
                this.f11470b = new C4263g();
            }
            MenuItem menuItem2 = (MenuItem) ((C4263g) this.f11470b).getOrDefault(menuItem, null);
            menuItemC3416c = menuItem2;
            if (menuItem2 == null) {
                menuItemC3416c = new MenuItemC3416c((Context) this.f11469a, abstractMenuItemC2991b);
                ((C4263g) this.f11470b).put(abstractMenuItemC2991b, menuItemC3416c);
            }
        }
        return menuItemC3416c;
    }

    /* renamed from: f */
    public SubMenu m2319f(SubMenu subMenu) {
        if (subMenu instanceof AbstractSubMenuC2992c) {
            AbstractSubMenuC2992c abstractSubMenuC2992c = (AbstractSubMenuC2992c) subMenu;
            if (((C4263g) this.f11471c) == null) {
                this.f11471c = new C4263g();
            }
            SubMenu subMenu2 = (SubMenu) ((C4263g) this.f11471c).get(abstractSubMenuC2992c);
            SubMenuC3425g subMenuC3425g = subMenu2;
            if (subMenu2 == null) {
                subMenuC3425g = new SubMenuC3425g((Context) this.f11469a, abstractSubMenuC2992c);
                ((C4263g) this.f11471c).put(abstractSubMenuC2992c, subMenuC3425g);
            }
            return subMenuC3425g;
        }
        return subMenu;
    }

    /* renamed from: g */
    public Object mo9g(AbstractC0859f abstractC0859f, String str) {
        return mo8h(abstractC0859f, str, null);
    }

    /* renamed from: h */
    public Object mo8h(AbstractC0859f abstractC0859f, String str, Object obj) {
        return mo7i(((C0854a) abstractC0859f).m7275b(str, null), null);
    }

    /* renamed from: i */
    public Object mo7i(C0860g c0860g, Object obj) {
        Object obj2 = obj;
        if (c0860g != null) {
            try {
                obj2 = mo6c(c0860g, obj);
            } finally {
                c0860g.close();
            }
        }
        return obj2;
    }

    /* renamed from: j */
    public Object m2318j(String str) {
        if (((AbstractC2116c) this.f11470b) == null) {
            this.f11470b = FlowManager.m3908e((Class) this.f11469a);
        }
        return mo9g(((AbstractC2116c) this.f11470b).m3891j(), str);
    }
}
