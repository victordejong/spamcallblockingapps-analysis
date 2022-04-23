package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/a.class */
public final class a extends b {
    private static float a(float f) {
        return (float) Math.sin((f * 3.141592653589793d) / 2.0d);
    }

    private static float b(float f) {
        return (float) (1.0d - Math.cos((f * 3.141592653589793d) / 2.0d));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.tabs.b
    public final void a(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        float f2;
        float f3;
        RectF a2 = a(tabLayout, view);
        RectF a3 = a(tabLayout, view2);
        if (a2.left < a3.left) {
            f3 = b(f);
            f2 = a(f);
        } else {
            f3 = a(f);
            f2 = b(f);
        }
        drawable.setBounds(com.google.android.material.a.a.a((int) a2.left, (int) a3.left, f3), drawable.getBounds().top, com.google.android.material.a.a.a((int) a2.right, (int) a3.right, f2), drawable.getBounds().bottom);
    }
}
