package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationMenu.class */
public final class BottomNavigationMenu extends MenuBuilder {
    public BottomNavigationMenu(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.view.menu.MenuBuilder
    /* renamed from: a */
    public MenuItem mo10471a(int i, int i2, int i3, CharSequence charSequence) {
        if (size() + 1 <= 5) {
            m21863h0();
            MenuItem a = super.mo10471a(i, i2, i3, charSequence);
            if (a instanceof MenuItemImpl) {
                ((MenuItemImpl) a).m21825t(true);
            }
            m21864g0();
            return a;
        }
        throw new IllegalArgumentException("Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()");
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    @NonNull
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        throw new UnsupportedOperationException("BottomNavigationView does not support submenus");
    }
}
