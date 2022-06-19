package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.appcompat.view.menu.C0199g;
import androidx.appcompat.view.menu.C0203i;
/* renamed from: com.google.android.material.bottomnavigation.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/b.class */
public final class C4556b extends C0199g {
    public C4556b(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.C0199g
    /* renamed from: a */
    public MenuItem mo3601a(int i, int i2, int i3, CharSequence charSequence) {
        if (size() + 1 > 5) {
            throw new IllegalArgumentException("Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()");
        }
        m21858h();
        MenuItem mo3601a = super.mo3601a(i, i2, i3, charSequence);
        if (mo3601a instanceof C0203i) {
            ((C0203i) mo3601a).m21838a(true);
        }
        m21857i();
        return mo3601a;
    }

    @Override // androidx.appcompat.view.menu.C0199g, android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        throw new UnsupportedOperationException("BottomNavigationView does not support submenus");
    }
}
