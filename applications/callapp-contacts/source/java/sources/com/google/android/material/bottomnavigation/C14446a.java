package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.appcompat.view.menu.C0268g;
import androidx.appcompat.view.menu.C0272i;
/* renamed from: com.google.android.material.bottomnavigation.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomnavigation/a.class */
public final class C14446a extends C0268g {
    public C14446a(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.C0268g
    /* renamed from: a */
    public final MenuItem mo11138a(int i, int i2, int i3, CharSequence charSequence) {
        if (size() + 1 <= 5) {
            m46088e();
            MenuItem mo11138a = super.mo11138a(i, i2, i3, charSequence);
            if (mo11138a instanceof C0272i) {
                ((C0272i) mo11138a).m46076a(true);
            }
            m46087f();
            return mo11138a;
        }
        throw new IllegalArgumentException("Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()");
    }

    @Override // androidx.appcompat.view.menu.C0268g, android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        throw new UnsupportedOperationException("BottomNavigationView does not support submenus");
    }
}
