package com.google.android.material.internal;

import android.content.Context;
import android.view.SubMenu;
import androidx.appcompat.view.menu.C0182g;
import androidx.appcompat.view.menu.C0186i;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenu.class */
public class NavigationMenu extends C0182g {
    public NavigationMenu(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.C0182g, android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        C0186i c0186i = (C0186i) addInternal(i, i2, i3, charSequence);
        NavigationSubMenu navigationSubMenu = new NavigationSubMenu(getContext(), this, c0186i);
        c0186i.m7559a(navigationSubMenu);
        return navigationSubMenu;
    }
}
