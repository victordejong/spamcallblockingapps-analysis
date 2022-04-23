package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.a.a;
import com.google.android.material.internal.r;
import com.google.android.material.tabs.TabLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/b.class */
public class b {
    private static RectF a(TabLayout.TabView tabView) {
        TextView textView = tabView.f30844a;
        ImageView imageView = tabView.f30845b;
        View view = tabView.f30846c;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        for (int i3 = 0; i3 < 3; i3++) {
            View view2 = new View[]{textView, imageView, view}[i3];
            i = i;
            i2 = i2;
            z = z;
            if (view2 != null) {
                i = i;
                i2 = i2;
                z = z;
                if (view2.getVisibility() == 0) {
                    i2 = z ? Math.min(i2, view2.getLeft()) : view2.getLeft();
                    i = z ? Math.max(i, view2.getRight()) : view2.getRight();
                    z = true;
                }
            }
        }
        int i4 = i - i2;
        TextView textView2 = tabView.f30844a;
        ImageView imageView2 = tabView.f30845b;
        View view3 = tabView.f30846c;
        int i5 = 0;
        int i6 = 0;
        boolean z2 = false;
        for (int i7 = 0; i7 < 3; i7++) {
            View view4 = new View[]{textView2, imageView2, view3}[i7];
            i5 = i5;
            i6 = i6;
            z2 = z2;
            if (view4 != null) {
                i5 = i5;
                i6 = i6;
                z2 = z2;
                if (view4.getVisibility() == 0) {
                    i6 = z2 ? Math.min(i6, view4.getTop()) : view4.getTop();
                    i5 = z2 ? Math.max(i5, view4.getBottom()) : view4.getBottom();
                    z2 = true;
                }
            }
        }
        int a2 = (int) r.a(tabView.getContext(), 24);
        int i8 = i4;
        if (i4 < a2) {
            i8 = a2;
        }
        int left = (tabView.getLeft() + tabView.getRight()) / 2;
        int top = (tabView.getTop() + tabView.getBottom()) / 2;
        int i9 = i8 / 2;
        return new RectF(left - i9, top - ((i5 - i6) / 2), i9 + left, top + (left / 2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RectF a(TabLayout tabLayout, View view) {
        return view == null ? new RectF() : (tabLayout.v || !(view instanceof TabLayout.TabView)) ? new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()) : a((TabLayout.TabView) view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(TabLayout tabLayout, View view, Drawable drawable) {
        RectF a2 = a(tabLayout, view);
        drawable.setBounds((int) a2.left, drawable.getBounds().top, (int) a2.right, drawable.getBounds().bottom);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        RectF a2 = a(tabLayout, view);
        RectF a3 = a(tabLayout, view2);
        drawable.setBounds(a.a((int) a2.left, (int) a3.left, f), drawable.getBounds().top, a.a((int) a2.right, (int) a3.right, f), drawable.getBounds().bottom);
    }
}
