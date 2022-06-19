package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import com.google.android.material.C2080R;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$b.class */
public class AppBarLayout$b extends LinearLayout.LayoutParams {

    /* renamed from: a */
    public int f6593a;

    /* renamed from: b */
    public Interpolator f6594b;

    public AppBarLayout$b(int i, int i2) {
        super(i, i2);
        this.f6593a = 1;
    }

    public AppBarLayout$b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6593a = 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2080R.styleable.AppBarLayout_Layout);
        this.f6593a = obtainStyledAttributes.getInt(C2080R.styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
        int i = C2080R.styleable.AppBarLayout_Layout_layout_scrollInterpolator;
        if (obtainStyledAttributes.hasValue(i)) {
            this.f6594b = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(i, 0));
        }
        obtainStyledAttributes.recycle();
    }

    public AppBarLayout$b(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f6593a = 1;
    }

    public AppBarLayout$b(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f6593a = 1;
    }

    public AppBarLayout$b(LinearLayout.LayoutParams layoutParams) {
        super(layoutParams);
        this.f6593a = 1;
    }
}
