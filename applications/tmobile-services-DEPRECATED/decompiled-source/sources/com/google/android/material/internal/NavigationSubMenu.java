package com.google.android.material.internal;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.SubMenuBuilder;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationSubMenu.class */
public class NavigationSubMenu extends SubMenuBuilder {
    public NavigationSubMenu(Context context, NavigationMenu navigationMenu, MenuItemImpl menuItemImpl) {
        super(context, navigationMenu, menuItemImpl);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    /* renamed from: M */
    public void mo9484M(boolean z) {
        super.mo9484M(z);
        ((MenuBuilder) m21781i0()).mo9484M(z);
    }
}
