package com.google.android.material.internal;

import android.content.Context;
import android.view.SubMenu;
import androidx.appcompat.view.menu.C0268g;
import androidx.appcompat.view.menu.C0272i;
/* renamed from: com.google.android.material.internal.d */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/d.class */
public final class C14621d extends C0268g {
    public C14621d(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.C0268g, android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        C0272i c0272i = (C0272i) mo11138a(i, i2, i3, charSequence);
        C14635f c14635f = new C14635f(this.f883a, this, c0272i);
        c0272i.m46078a(c14635f);
        return c14635f;
    }
}
