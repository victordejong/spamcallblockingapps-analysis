package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.internal.C14654r;
import com.google.android.material.p364a.C14389a;
import com.google.android.material.tabs.TabLayout;
/* renamed from: com.google.android.material.tabs.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/b.class */
public class C14782b {
    /* renamed from: a */
    private static RectF m10075a(TabLayout.TabView tabView) {
        TextView textView = tabView.f53930a;
        ImageView imageView = tabView.f53931b;
        View view = tabView.f53932c;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (i >= 3) {
                break;
            }
            View view2 = new View[]{textView, imageView, view}[i];
            int i4 = i2;
            int i5 = i3;
            boolean z3 = z2;
            if (view2 != null) {
                i4 = i2;
                i5 = i3;
                z3 = z2;
                if (view2.getVisibility() == 0) {
                    z3 = true;
                    i5 = z2 ? Math.min(i3, view2.getLeft()) : view2.getLeft();
                    i4 = z2 ? Math.max(i2, view2.getRight()) : view2.getRight();
                }
            }
            i++;
            i2 = i4;
            i3 = i5;
            z = z3;
        }
        int i6 = i2 - i3;
        TextView textView2 = tabView.f53930a;
        ImageView imageView2 = tabView.f53931b;
        View view3 = tabView.f53932c;
        int i7 = 0;
        int i8 = 0;
        boolean z4 = false;
        int i9 = 0;
        while (i9 < 3) {
            View view4 = new View[]{textView2, imageView2, view3}[i9];
            int i10 = i7;
            int i11 = i8;
            boolean z5 = z4;
            if (view4 != null) {
                i10 = i7;
                i11 = i8;
                z5 = z4;
                if (view4.getVisibility() == 0) {
                    z5 = true;
                    i11 = z4 ? Math.min(i8, view4.getTop()) : view4.getTop();
                    i10 = z4 ? Math.max(i7, view4.getBottom()) : view4.getBottom();
                }
            }
            i9++;
            i7 = i10;
            i8 = i11;
            z4 = z5;
        }
        int m10498a = (int) C14654r.m10498a(tabView.getContext(), 24);
        int i12 = i6;
        if (i6 < m10498a) {
            i12 = m10498a;
        }
        int left = (tabView.getLeft() + tabView.getRight()) / 2;
        int top = (tabView.getTop() + tabView.getBottom()) / 2;
        int i13 = i12 / 2;
        return new RectF(left - i13, top - ((i7 - i8) / 2), i13 + left, top + (left / 2));
    }

    /* renamed from: a */
    public static RectF m10074a(TabLayout tabLayout, View view) {
        return view == null ? new RectF() : (tabLayout.f53925v || !(view instanceof TabLayout.TabView)) ? new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()) : m10075a((TabLayout.TabView) view);
    }

    /* renamed from: a */
    public static void m10073a(TabLayout tabLayout, View view, Drawable drawable) {
        RectF m10074a = m10074a(tabLayout, view);
        drawable.setBounds((int) m10074a.left, drawable.getBounds().top, (int) m10074a.right, drawable.getBounds().bottom);
    }

    /* renamed from: a */
    public void mo10072a(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        RectF m10074a = m10074a(tabLayout, view);
        RectF m10074a2 = m10074a(tabLayout, view2);
        drawable.setBounds(C14389a.m11338a((int) m10074a.left, (int) m10074a2.left, f), drawable.getBounds().top, C14389a.m11338a((int) m10074a.right, (int) m10074a2.right, f), drawable.getBounds().bottom);
    }
}
