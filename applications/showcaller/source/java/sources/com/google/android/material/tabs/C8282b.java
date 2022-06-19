package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.internal.C8209q;
import com.google.android.material.tabs.TabLayout;
import p078c.p084c.p085a.p096b.p097m.C1897a;
/* renamed from: com.google.android.material.tabs.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/b.class */
public class C8282b {
    /* renamed from: a */
    public static RectF m4089a(TabLayout tabLayout, View view) {
        return view == null ? new RectF() : (tabLayout.m4153x() || !(view instanceof TabLayout.TabView)) ? new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()) : m4088b((TabLayout.TabView) view, 24);
    }

    /* renamed from: b */
    static RectF m4088b(TabLayout.TabView tabView, int i) {
        int contentWidth = tabView.getContentWidth();
        int contentHeight = tabView.getContentHeight();
        int m4450c = (int) C8209q.m4450c(tabView.getContext(), i);
        int i2 = contentWidth;
        if (contentWidth < m4450c) {
            i2 = m4450c;
        }
        int left = (tabView.getLeft() + tabView.getRight()) / 2;
        int top = (tabView.getTop() + tabView.getBottom()) / 2;
        int i3 = i2 / 2;
        return new RectF(left - i3, top - (contentHeight / 2), i3 + left, top + (left / 2));
    }

    /* renamed from: c */
    public void mo4087c(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        RectF m4089a = m4089a(tabLayout, view);
        RectF m4089a2 = m4089a(tabLayout, view2);
        drawable.setBounds(C1897a.m28750c((int) m4089a.left, (int) m4089a2.left, f), drawable.getBounds().top, C1897a.m28750c((int) m4089a.right, (int) m4089a2.right, f), drawable.getBounds().bottom);
    }

    /* renamed from: d */
    public void m4086d(TabLayout tabLayout, View view, Drawable drawable) {
        RectF m4089a = m4089a(tabLayout, view);
        drawable.setBounds((int) m4089a.left, drawable.getBounds().top, (int) m4089a.right, drawable.getBounds().bottom);
    }
}
