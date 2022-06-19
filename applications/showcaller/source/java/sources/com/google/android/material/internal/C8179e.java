package com.google.android.material.internal;

import android.content.Context;
import android.view.SubMenu;
import androidx.appcompat.view.menu.C0178g;
import androidx.appcompat.view.menu.C0182i;
/* renamed from: com.google.android.material.internal.e */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/e.class */
public class C8179e extends C0178g {
    public C8179e(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.C0178g, android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        C0182i c0182i = (C0182i) mo5463a(i, i2, i3, charSequence);
        C8193g c8193g = new C8193g(m35369w(), this, c0182i);
        c0182i.m35340x(c8193g);
        return c8193g;
    }
}
