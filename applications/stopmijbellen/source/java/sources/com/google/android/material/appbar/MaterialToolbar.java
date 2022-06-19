package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p029c4.C0822f;
import p098g0.C2789a;
import p102g4.C2811a;
import p124i4.C3102d;
import p134j4.C3260w0;
import p163m0.C3589v;
import p163m0.C3611y;
import p230s3.C4285a;
import p262v3.C4634p;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/MaterialToolbar.class */
public class MaterialToolbar extends Toolbar {

    /* renamed from: S */
    public Integer f6256S;

    /* renamed from: T */
    public boolean f6257T;

    /* renamed from: U */
    public boolean f6258U;

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        super(C2811a.m2970a(context, attributeSet, C3681R.attr.toolbarStyle, 2131887149), attributeSet, C3681R.attr.toolbarStyle);
        Context context2 = getContext();
        int i = 0;
        TypedArray m687d = C4634p.m687d(context2, attributeSet, C3260w0.f11045z, C3681R.attr.toolbarStyle, 2131887149, new int[0]);
        if (m687d.hasValue(0)) {
            setNavigationIconTint(m687d.getColor(0, -1));
        }
        this.f6257T = m687d.getBoolean(2, false);
        this.f6258U = m687d.getBoolean(1, false);
        m687d.recycle();
        Drawable background = getBackground();
        if (background == null || (background instanceof ColorDrawable)) {
            C0822f c0822f = new C0822f();
            c0822f.m7314q(ColorStateList.valueOf(background != null ? ((ColorDrawable) background).getColor() : i));
            c0822f.f3010a.f3035b = new C4285a(context2);
            c0822f.m7307x();
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            c0822f.m7315p(C3589v.C3598i.m2042i(this));
            C3589v.C3593d.m2077q(this, c0822f);
        }
    }

    public Integer getNavigationIconTint() {
        return this.f6256S;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof C0822f) {
            C3102d.m2644H(this, (C0822f) background);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f6257T || this.f6258U) {
            TextView m2617v = C3102d.m2617v(this, getTitle());
            TextView m2617v2 = C3102d.m2617v(this, getSubtitle());
            if (m2617v == null && m2617v2 == null) {
                return;
            }
            int measuredWidth = getMeasuredWidth();
            int i5 = measuredWidth / 2;
            int paddingLeft = getPaddingLeft();
            int paddingRight = measuredWidth - getPaddingRight();
            int i6 = 0;
            while (i6 < getChildCount()) {
                View childAt = getChildAt(i6);
                int i7 = paddingRight;
                int i8 = paddingLeft;
                if (childAt.getVisibility() != 8) {
                    i7 = paddingRight;
                    i8 = paddingLeft;
                    if (childAt != m2617v) {
                        i7 = paddingRight;
                        i8 = paddingLeft;
                        if (childAt != m2617v2) {
                            int i9 = paddingLeft;
                            if (childAt.getRight() < i5) {
                                i9 = paddingLeft;
                                if (childAt.getRight() > paddingLeft) {
                                    i9 = childAt.getRight();
                                }
                            }
                            i7 = paddingRight;
                            i8 = i9;
                            if (childAt.getLeft() > i5) {
                                i7 = paddingRight;
                                i8 = i9;
                                if (childAt.getLeft() < paddingRight) {
                                    i7 = childAt.getLeft();
                                    i8 = i9;
                                }
                            }
                        }
                    }
                }
                i6++;
                paddingRight = i7;
                paddingLeft = i8;
            }
            Pair<Integer, Integer> pair = new Pair<>(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
            if (this.f6257T && m2617v != null) {
                m4766x(m2617v, pair);
            }
            if (!this.f6258U || m2617v2 == null) {
                return;
            }
            m4766x(m2617v2, pair);
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C3102d.m2645G(this, f);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = drawable;
            if (this.f6256S != null) {
                drawable2 = C2789a.m3007h(drawable.mutate());
                drawable2.setTint(this.f6256S.intValue());
            }
        }
        super.setNavigationIcon(drawable2);
    }

    public void setNavigationIconTint(int i) {
        this.f6256S = Integer.valueOf(i);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z) {
        if (this.f6258U != z) {
            this.f6258U = z;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z) {
        if (this.f6257T != z) {
            this.f6257T = z;
            requestLayout();
        }
    }

    /* renamed from: x */
    public final void m4766x(View view, Pair<Integer, Integer> pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = view.getMeasuredWidth();
        int i = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i2 = measuredWidth2 + i;
        int max = Math.max(Math.max(((Integer) pair.first).intValue() - i, 0), Math.max(i2 - ((Integer) pair.second).intValue(), 0));
        int i3 = i;
        int i4 = i2;
        if (max > 0) {
            i3 = i + max;
            i4 = i2 - max;
            view.measure(View.MeasureSpec.makeMeasureSpec(i4 - i3, 1073741824), view.getMeasuredHeightAndState());
        }
        view.layout(i3, view.getTop(), i4, view.getBottom());
    }
}
