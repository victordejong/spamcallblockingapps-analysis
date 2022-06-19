package androidx.core.p023g;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import androidx.core.p017b.p018a.AbstractMenuItemC0461b;
/* renamed from: androidx.core.g.g */
/* loaded from: classes-dex2jar.jar:androidx/core/g/g.class */
public final class C0538g {
    /* renamed from: a */
    public static MenuItem m6327a(MenuItem menuItem, AbstractC0530b abstractC0530b) {
        if (menuItem instanceof AbstractMenuItemC0461b) {
            return ((AbstractMenuItemC0461b) menuItem).mo6549a(abstractC0530b);
        }
        Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
        return menuItem;
    }

    /* renamed from: a */
    public static void m6330a(MenuItem menuItem, char c, int i) {
        if (menuItem instanceof AbstractMenuItemC0461b) {
            ((AbstractMenuItemC0461b) menuItem).setNumericShortcut(c, i);
        } else if (Build.VERSION.SDK_INT < 26) {
        } else {
            menuItem.setNumericShortcut(c, i);
        }
    }

    /* renamed from: a */
    public static void m6329a(MenuItem menuItem, ColorStateList colorStateList) {
        if (menuItem instanceof AbstractMenuItemC0461b) {
            ((AbstractMenuItemC0461b) menuItem).setIconTintList(colorStateList);
        } else if (Build.VERSION.SDK_INT < 26) {
        } else {
            menuItem.setIconTintList(colorStateList);
        }
    }

    /* renamed from: a */
    public static void m6328a(MenuItem menuItem, PorterDuff.Mode mode) {
        if (menuItem instanceof AbstractMenuItemC0461b) {
            ((AbstractMenuItemC0461b) menuItem).setIconTintMode(mode);
        } else if (Build.VERSION.SDK_INT < 26) {
        } else {
            menuItem.setIconTintMode(mode);
        }
    }

    /* renamed from: a */
    public static void m6326a(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof AbstractMenuItemC0461b) {
            ((AbstractMenuItemC0461b) menuItem).mo6548a(charSequence);
        } else if (Build.VERSION.SDK_INT < 26) {
        } else {
            menuItem.setContentDescription(charSequence);
        }
    }

    /* renamed from: b */
    public static void m6325b(MenuItem menuItem, char c, int i) {
        if (menuItem instanceof AbstractMenuItemC0461b) {
            ((AbstractMenuItemC0461b) menuItem).setAlphabeticShortcut(c, i);
        } else if (Build.VERSION.SDK_INT < 26) {
        } else {
            menuItem.setAlphabeticShortcut(c, i);
        }
    }

    /* renamed from: b */
    public static void m6324b(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof AbstractMenuItemC0461b) {
            ((AbstractMenuItemC0461b) menuItem).mo6547b(charSequence);
        } else if (Build.VERSION.SDK_INT < 26) {
        } else {
            menuItem.setTooltipText(charSequence);
        }
    }
}
