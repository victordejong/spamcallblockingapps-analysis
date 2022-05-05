package android.support.p001v4.view;

import android.annotation.SuppressLint;
import android.os.Build;
import android.support.p001v4.internal.view.SupportMenu;
import android.view.Menu;
import android.view.MenuItem;
/* renamed from: android.support.v4.view.MenuCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/view/MenuCompat.class */
public final class MenuCompat {
    private MenuCompat() {
    }

    @SuppressLint({"NewApi"})
    public static void setGroupDividerEnabled(Menu menu, boolean z) {
        if (menu instanceof SupportMenu) {
            ((SupportMenu) menu).setGroupDividerEnabled(z);
        } else if (Build.VERSION.SDK_INT >= 28) {
            menu.setGroupDividerEnabled(z);
        }
    }

    @Deprecated
    public static void setShowAsAction(MenuItem menuItem, int i) {
        menuItem.setShowAsAction(i);
    }
}
