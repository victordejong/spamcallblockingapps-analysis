package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.appcompat.view.menu.C0178g;
import androidx.appcompat.view.menu.C0182i;
/* renamed from: com.google.android.material.bottomnavigation.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/a.class */
public final class C8032a extends C0178g {
    public C8032a(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.C0178g
    /* renamed from: a */
    public MenuItem mo5463a(int i, int i2, int i3, CharSequence charSequence) {
        if (size() + 1 <= 5) {
            m35382h0();
            MenuItem mo5463a = super.mo5463a(i, i2, i3, charSequence);
            if (mo5463a instanceof C0182i) {
                ((C0182i) mo5463a).m35344t(true);
            }
            m35383g0();
            return mo5463a;
        }
        throw new IllegalArgumentException("Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()");
    }

    @Override // androidx.appcompat.view.menu.C0178g, android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        throw new UnsupportedOperationException("BottomNavigationView does not support submenus");
    }
}
