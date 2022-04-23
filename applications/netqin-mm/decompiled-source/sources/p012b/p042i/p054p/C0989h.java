package p012b.p042i.p054p;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import p012b.p042i.p048k.p049a.AbstractMenuItemC0914b;
/* renamed from: b.i.p.h */
/* loaded from: classes-dex2jar.jar:b/i/p/h.class */
public final class C0989h {
    /* renamed from: a */
    public static MenuItem m35293a(MenuItem menuItem, AbstractC0952b bVar) {
        if (menuItem instanceof AbstractMenuItemC0914b) {
            return ((AbstractMenuItemC0914b) menuItem).mo35504a(bVar);
        }
        Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
        return menuItem;
    }

    /* renamed from: a */
    public static void m35296a(MenuItem menuItem, char c, int i) {
        if (menuItem instanceof AbstractMenuItemC0914b) {
            ((AbstractMenuItemC0914b) menuItem).setAlphabeticShortcut(c, i);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setAlphabeticShortcut(c, i);
        }
    }

    /* renamed from: a */
    public static void m35295a(MenuItem menuItem, ColorStateList colorStateList) {
        if (menuItem instanceof AbstractMenuItemC0914b) {
            ((AbstractMenuItemC0914b) menuItem).setIconTintList(colorStateList);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setIconTintList(colorStateList);
        }
    }

    /* renamed from: a */
    public static void m35294a(MenuItem menuItem, PorterDuff.Mode mode) {
        if (menuItem instanceof AbstractMenuItemC0914b) {
            ((AbstractMenuItemC0914b) menuItem).setIconTintMode(mode);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setIconTintMode(mode);
        }
    }

    /* renamed from: a */
    public static void m35292a(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof AbstractMenuItemC0914b) {
            ((AbstractMenuItemC0914b) menuItem).setContentDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setContentDescription(charSequence);
        }
    }

    /* renamed from: b */
    public static void m35291b(MenuItem menuItem, char c, int i) {
        if (menuItem instanceof AbstractMenuItemC0914b) {
            ((AbstractMenuItemC0914b) menuItem).setNumericShortcut(c, i);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setNumericShortcut(c, i);
        }
    }

    /* renamed from: b */
    public static void m35290b(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof AbstractMenuItemC0914b) {
            ((AbstractMenuItemC0914b) menuItem).setTooltipText(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setTooltipText(charSequence);
        }
    }
}
