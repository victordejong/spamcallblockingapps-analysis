package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.p364a.C14389a;
/* renamed from: com.google.android.material.tabs.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/a.class */
public final class C14781a extends C14782b {
    /* renamed from: a */
    private static float m10077a(float f) {
        return (float) Math.sin((f * 3.141592653589793d) / 2.0d);
    }

    /* renamed from: b */
    private static float m10076b(float f) {
        return (float) (1.0d - Math.cos((f * 3.141592653589793d) / 2.0d));
    }

    @Override // com.google.android.material.tabs.C14782b
    /* renamed from: a */
    public final void mo10072a(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        float f2;
        float f3;
        RectF a = m10074a(tabLayout, view);
        RectF a2 = m10074a(tabLayout, view2);
        if (a.left < a2.left) {
            float m10076b = m10076b(f);
            f2 = m10077a(f);
            f3 = m10076b;
        } else {
            float m10077a = m10077a(f);
            f2 = m10076b(f);
            f3 = m10077a;
        }
        drawable.setBounds(C14389a.m11338a((int) a.left, (int) a2.left, f3), drawable.getBounds().top, C14389a.m11338a((int) a.right, (int) a2.right, f2), drawable.getBounds().bottom);
    }
}
