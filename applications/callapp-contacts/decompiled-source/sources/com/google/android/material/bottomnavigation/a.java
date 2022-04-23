package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomnavigation/a.class */
public final class a extends g {
    public a(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.g
    public final MenuItem a(int i, int i2, int i3, CharSequence charSequence) {
        if (size() + 1 <= 5) {
            e();
            MenuItem a2 = super.a(i, i2, i3, charSequence);
            if (a2 instanceof i) {
                ((i) a2).a(true);
            }
            f();
            return a2;
        }
        throw new IllegalArgumentException("Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()");
    }

    @Override // androidx.appcompat.view.menu.g, android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        throw new UnsupportedOperationException("BottomNavigationView does not support submenus");
    }
}
