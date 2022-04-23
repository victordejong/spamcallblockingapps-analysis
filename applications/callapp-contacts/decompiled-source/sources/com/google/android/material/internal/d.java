package com.google.android.material.internal;

import android.content.Context;
import android.view.SubMenu;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/d.class */
public final class d extends g {
    public d(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.g, android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        i iVar = (i) a(i, i2, i3, charSequence);
        f fVar = new f(this.f808a, this, iVar);
        iVar.a(fVar);
        return fVar;
    }
}
