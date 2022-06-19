package p020b.p041h.p050l;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import p020b.p041h.p043f.p044a.AbstractMenuItemC1540b;
/* renamed from: b.h.l.i */
/* loaded from: classes-dex2jar.jar:b/h/l/i.class */
public final class C1665i {
    /* renamed from: a */
    public static MenuItem m29398a(MenuItem menuItem, AbstractC1605b abstractC1605b) {
        if (menuItem instanceof AbstractMenuItemC1540b) {
            return ((AbstractMenuItemC1540b) menuItem).mo29772a(abstractC1605b);
        }
        Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
        return menuItem;
    }

    /* renamed from: b */
    public static void m29397b(MenuItem menuItem, char c, int i) {
        if (menuItem instanceof AbstractMenuItemC1540b) {
            ((AbstractMenuItemC1540b) menuItem).setAlphabeticShortcut(c, i);
        } else if (Build.VERSION.SDK_INT < 26) {
        } else {
            menuItem.setAlphabeticShortcut(c, i);
        }
    }

    /* renamed from: c */
    public static void m29396c(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof AbstractMenuItemC1540b) {
            ((AbstractMenuItemC1540b) menuItem).setContentDescription(charSequence);
        } else if (Build.VERSION.SDK_INT < 26) {
        } else {
            menuItem.setContentDescription(charSequence);
        }
    }

    /* renamed from: d */
    public static void m29395d(MenuItem menuItem, ColorStateList colorStateList) {
        if (menuItem instanceof AbstractMenuItemC1540b) {
            ((AbstractMenuItemC1540b) menuItem).setIconTintList(colorStateList);
        } else if (Build.VERSION.SDK_INT < 26) {
        } else {
            menuItem.setIconTintList(colorStateList);
        }
    }

    /* renamed from: e */
    public static void m29394e(MenuItem menuItem, PorterDuff.Mode mode) {
        if (menuItem instanceof AbstractMenuItemC1540b) {
            ((AbstractMenuItemC1540b) menuItem).setIconTintMode(mode);
        } else if (Build.VERSION.SDK_INT < 26) {
        } else {
            menuItem.setIconTintMode(mode);
        }
    }

    /* renamed from: f */
    public static void m29393f(MenuItem menuItem, char c, int i) {
        if (menuItem instanceof AbstractMenuItemC1540b) {
            ((AbstractMenuItemC1540b) menuItem).setNumericShortcut(c, i);
        } else if (Build.VERSION.SDK_INT < 26) {
        } else {
            menuItem.setNumericShortcut(c, i);
        }
    }

    /* renamed from: g */
    public static void m29392g(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof AbstractMenuItemC1540b) {
            ((AbstractMenuItemC1540b) menuItem).setTooltipText(charSequence);
        } else if (Build.VERSION.SDK_INT < 26) {
        } else {
            menuItem.setTooltipText(charSequence);
        }
    }
}
