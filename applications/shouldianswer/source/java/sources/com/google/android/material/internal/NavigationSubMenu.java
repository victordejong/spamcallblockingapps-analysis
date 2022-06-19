package com.google.android.material.internal;

import android.content.Context;
import androidx.appcompat.view.menu.C0182g;
import androidx.appcompat.view.menu.C0186i;
import androidx.appcompat.view.menu.SubMenuC0206r;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationSubMenu.class */
public class NavigationSubMenu extends SubMenuC0206r {
    public NavigationSubMenu(Context context, NavigationMenu navigationMenu, C0186i c0186i) {
        super(context, navigationMenu, c0186i);
    }

    @Override // androidx.appcompat.view.menu.C0182g
    public void onItemsChanged(boolean z) {
        super.onItemsChanged(z);
        ((C0182g) getParentMenu()).onItemsChanged(z);
    }
}
