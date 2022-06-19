package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import p078c.p084c.p085a.p096b.p097m.C1897a;
/* renamed from: com.google.android.material.tabs.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/a.class */
public class C8281a extends C8282b {
    /* renamed from: e */
    private static float m4091e(float f) {
        return (float) (1.0d - Math.cos((f * 3.141592653589793d) / 2.0d));
    }

    /* renamed from: f */
    private static float m4090f(float f) {
        return (float) Math.sin((f * 3.141592653589793d) / 2.0d);
    }

    @Override // com.google.android.material.tabs.C8282b
    /* renamed from: c */
    public void mo4087c(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        float f2;
        float f3;
        RectF m4089a = C8282b.m4089a(tabLayout, view);
        RectF m4089a2 = C8282b.m4089a(tabLayout, view2);
        if (m4089a.left < m4089a2.left) {
            float m4091e = m4091e(f);
            float m4090f = m4090f(f);
            f3 = m4091e;
            f2 = m4090f;
        } else {
            float m4090f2 = m4090f(f);
            f2 = m4091e(f);
            f3 = m4090f2;
        }
        drawable.setBounds(C1897a.m28750c((int) m4089a.left, (int) m4089a2.left, f3), drawable.getBounds().top, C1897a.m28750c((int) m4089a.right, (int) m4089a2.right, f2), drawable.getBounds().bottom);
    }
}
