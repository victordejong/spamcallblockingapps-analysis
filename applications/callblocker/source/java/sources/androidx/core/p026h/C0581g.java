package androidx.core.p026h;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import androidx.core.p019b.p020a.AbstractMenuItemC0484b;
/* renamed from: androidx.core.h.g */
/* loaded from: classes-dex2jar.jar:androidx/core/h/g.class */
public final class C0581g {
    /* renamed from: a */
    public static MenuItem m20404a(MenuItem menuItem, AbstractC0573b abstractC0573b) {
        if (menuItem instanceof AbstractMenuItemC0484b) {
            menuItem = ((AbstractMenuItemC0484b) menuItem).mo20730a(abstractC0573b);
        } else {
            Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
        }
        return menuItem;
    }

    /* renamed from: a */
    public static void m20407a(MenuItem menuItem, char c, int i) {
        if (menuItem instanceof AbstractMenuItemC0484b) {
            ((AbstractMenuItemC0484b) menuItem).setNumericShortcut(c, i);
        } else if (Build.VERSION.SDK_INT < 26) {
        } else {
            menuItem.setNumericShortcut(c, i);
        }
    }

    /* renamed from: a */
    public static void m20406a(MenuItem menuItem, ColorStateList colorStateList) {
        if (menuItem instanceof AbstractMenuItemC0484b) {
            ((AbstractMenuItemC0484b) menuItem).setIconTintList(colorStateList);
        } else if (Build.VERSION.SDK_INT < 26) {
        } else {
            menuItem.setIconTintList(colorStateList);
        }
    }

    /* renamed from: a */
    public static void m20405a(MenuItem menuItem, PorterDuff.Mode mode) {
        if (menuItem instanceof AbstractMenuItemC0484b) {
            ((AbstractMenuItemC0484b) menuItem).setIconTintMode(mode);
        } else if (Build.VERSION.SDK_INT < 26) {
        } else {
            menuItem.setIconTintMode(mode);
        }
    }

    /* renamed from: a */
    public static void m20403a(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof AbstractMenuItemC0484b) {
            ((AbstractMenuItemC0484b) menuItem).mo20729a(charSequence);
        } else if (Build.VERSION.SDK_INT < 26) {
        } else {
            menuItem.setContentDescription(charSequence);
        }
    }

    /* renamed from: b */
    public static void m20402b(MenuItem menuItem, char c, int i) {
        if (menuItem instanceof AbstractMenuItemC0484b) {
            ((AbstractMenuItemC0484b) menuItem).setAlphabeticShortcut(c, i);
        } else if (Build.VERSION.SDK_INT < 26) {
        } else {
            menuItem.setAlphabeticShortcut(c, i);
        }
    }

    /* renamed from: b */
    public static void m20401b(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof AbstractMenuItemC0484b) {
            ((AbstractMenuItemC0484b) menuItem).mo20728b(charSequence);
        } else if (Build.VERSION.SDK_INT < 26) {
        } else {
            menuItem.setTooltipText(charSequence);
        }
    }
}
