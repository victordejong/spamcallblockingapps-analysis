package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import e.c.a.b.l;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$LayoutParams.class */
public class AppBarLayout$LayoutParams extends LinearLayout.LayoutParams {

    /* renamed from: a */
    int f10565a;

    /* renamed from: b */
    Interpolator f10566b;

    public AppBarLayout$LayoutParams(int i, int i2) {
        super(i, i2);
        this.f10565a = 1;
    }

    public AppBarLayout$LayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10565a = 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, l.AppBarLayout_Layout);
        this.f10565a = obtainStyledAttributes.getInt(l.AppBarLayout_Layout_layout_scrollFlags, 0);
        int i = l.AppBarLayout_Layout_layout_scrollInterpolator;
        if (obtainStyledAttributes.hasValue(i)) {
            this.f10566b = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(i, 0));
        }
        obtainStyledAttributes.recycle();
    }

    public AppBarLayout$LayoutParams(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f10565a = 1;
    }

    public AppBarLayout$LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f10565a = 1;
    }

    public AppBarLayout$LayoutParams(LinearLayout.LayoutParams layoutParams) {
        super(layoutParams);
        this.f10565a = 1;
    }

    /* renamed from: a */
    public int m3746a() {
        return this.f10565a;
    }

    /* renamed from: b */
    public Interpolator m3745b() {
        return this.f10566b;
    }

    /* renamed from: c */
    boolean m3744c() {
        int i = this.f10565a;
        boolean z = true;
        if ((i & 1) != 1 || (i & 10) == 0) {
            z = false;
        }
        return z;
    }
}
