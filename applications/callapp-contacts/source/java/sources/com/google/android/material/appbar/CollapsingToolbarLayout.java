package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.C0790b;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.p032b.C0770a;
import androidx.core.view.C0889ac;
import androidx.core.view.C0926v;
import com.google.android.material.C14376a;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.C14616a;
import com.google.android.material.internal.C14619b;
import com.google.android.material.p364a.C14389a;
import java.util.ArrayList;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout.class */
public class CollapsingToolbarLayout extends FrameLayout {

    /* renamed from: e */
    private static final int f52433e = C14376a.C14387k.Widget_Design_CollapsingToolbar;

    /* renamed from: a */
    final C14616a f52434a;

    /* renamed from: b */
    Drawable f52435b;

    /* renamed from: c */
    int f52436c;

    /* renamed from: d */
    C0889ac f52437d;

    /* renamed from: f */
    private boolean f52438f;

    /* renamed from: g */
    private int f52439g;

    /* renamed from: h */
    private ViewGroup f52440h;

    /* renamed from: i */
    private View f52441i;

    /* renamed from: j */
    private View f52442j;

    /* renamed from: k */
    private int f52443k;

    /* renamed from: l */
    private int f52444l;

    /* renamed from: m */
    private int f52445m;

    /* renamed from: n */
    private int f52446n;

    /* renamed from: o */
    private final Rect f52447o;

    /* renamed from: p */
    private boolean f52448p;

    /* renamed from: q */
    private boolean f52449q;

    /* renamed from: r */
    private Drawable f52450r;

    /* renamed from: s */
    private int f52451s;

    /* renamed from: t */
    private boolean f52452t;

    /* renamed from: u */
    private ValueAnimator f52453u;

    /* renamed from: v */
    private long f52454v;

    /* renamed from: w */
    private int f52455w;

    /* renamed from: x */
    private AppBarLayout.AbstractC14409b f52456x;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams.class */
    public static class LayoutParams extends FrameLayout.LayoutParams {

        /* renamed from: a */
        public int f52459a;

        /* renamed from: b */
        float f52460b;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f52459a = 0;
            this.f52460b = 0.5f;
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2, i3);
            this.f52459a = 0;
            this.f52460b = 0.5f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f52459a = 0;
            this.f52460b = 0.5f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C14376a.C14388l.CollapsingToolbarLayout_Layout);
            this.f52459a = obtainStyledAttributes.getInt(C14376a.C14388l.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            this.f52460b = obtainStyledAttributes.getFloat(C14376a.C14388l.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f52459a = 0;
            this.f52460b = 0.5f;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f52459a = 0;
            this.f52460b = 0.5f;
        }

        public LayoutParams(FrameLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f52459a = 0;
            this.f52460b = 0.5f;
        }
    }

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$a.class */
    final class C14412a implements AppBarLayout.AbstractC14409b {
        C14412a() {
            CollapsingToolbarLayout.this = r4;
        }

        @Override // com.google.android.material.appbar.AppBarLayout.AbstractC14408a
        /* renamed from: a */
        public final void mo11264a(int i) {
            CollapsingToolbarLayout.this.f52436c = i;
            int m44227b = CollapsingToolbarLayout.this.f52437d != null ? CollapsingToolbarLayout.this.f52437d.m44227b() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                C14414a m11275a = CollapsingToolbarLayout.m11275a(childAt);
                int i3 = layoutParams.f52459a;
                if (i3 == 1) {
                    m11275a.m11247a(C0770a.m44521a(-i, 0, CollapsingToolbarLayout.this.m11273b(childAt)));
                } else if (i3 == 2) {
                    m11275a.m11247a(Math.round((-i) * layoutParams.f52460b));
                }
            }
            CollapsingToolbarLayout.this.m11277a();
            if (CollapsingToolbarLayout.this.f52435b != null && m44227b > 0) {
                C0926v.m44101d(CollapsingToolbarLayout.this);
            }
            CollapsingToolbarLayout.this.f52434a.m10589b(Math.abs(i) / ((CollapsingToolbarLayout.this.getHeight() - C0926v.m44087l(CollapsingToolbarLayout.this)) - m44227b));
        }
    }

    public CollapsingToolbarLayout(Context context) {
        this(context, null);
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.collapsingToolbarLayoutStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CollapsingToolbarLayout(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: a */
    static C14414a m11275a(View view) {
        C14414a c14414a = (C14414a) view.getTag(C14376a.C14382f.view_offset_helper);
        C14414a c14414a2 = c14414a;
        if (c14414a == null) {
            c14414a2 = new C14414a(view);
            view.setTag(C14376a.C14382f.view_offset_helper, c14414a2);
        }
        return c14414a2;
    }

    /* renamed from: b */
    private void m11274b() {
        ViewGroup viewGroup;
        if (!this.f52438f) {
            return;
        }
        this.f52440h = null;
        this.f52441i = null;
        int i = this.f52439g;
        if (i != -1) {
            ViewGroup viewGroup2 = (ViewGroup) findViewById(i);
            this.f52440h = viewGroup2;
            if (viewGroup2 != null) {
                this.f52441i = m11269d(viewGroup2);
            }
        }
        if (this.f52440h == null) {
            int childCount = getChildCount();
            int i2 = 0;
            while (true) {
                viewGroup = null;
                if (i2 >= childCount) {
                    break;
                }
                View childAt = getChildAt(i2);
                if (m11271c(childAt)) {
                    viewGroup = (ViewGroup) childAt;
                    break;
                }
                i2++;
            }
            this.f52440h = viewGroup;
        }
        m11272c();
        this.f52438f = false;
    }

    /* renamed from: c */
    private void m11272c() {
        View view;
        if (!this.f52448p && (view = this.f52442j) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f52442j);
            }
        }
        if (!this.f52448p || this.f52440h == null) {
            return;
        }
        if (this.f52442j == null) {
            this.f52442j = new View(getContext());
        }
        if (this.f52442j.getParent() != null) {
            return;
        }
        this.f52440h.addView(this.f52442j, -1, -1);
    }

    /* renamed from: c */
    private static boolean m11271c(View view) {
        if (!(view instanceof Toolbar)) {
            return Build.VERSION.SDK_INT >= 21 && (view instanceof android.widget.Toolbar);
        }
        return true;
    }

    /* renamed from: d */
    private View m11269d(View view) {
        View view2 = view;
        ViewParent parent = view.getParent();
        while (true) {
            ViewParent viewParent = parent;
            if (viewParent == this || viewParent == null) {
                break;
            }
            if (viewParent instanceof View) {
                view2 = (View) viewParent;
            }
            parent = viewParent.getParent();
        }
        return view2;
    }

    /* renamed from: d */
    private CharSequence m11270d() {
        if (this.f52448p) {
            return this.f52434a.f53350e;
        }
        return null;
    }

    /* renamed from: e */
    private int m11268e() {
        int i = this.f52455w;
        if (i >= 0) {
            return i;
        }
        C0889ac c0889ac = this.f52437d;
        int m44227b = c0889ac != null ? c0889ac.m44227b() : 0;
        int m44087l = C0926v.m44087l(this);
        return m44087l > 0 ? Math.min((m44087l * 2) + m44227b, getHeight()) : getHeight() / 3;
    }

    /* renamed from: e */
    private static int m11267e(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            return view.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        }
        return view.getMeasuredHeight();
    }

    /* renamed from: f */
    private static LayoutParams m11266f() {
        return new LayoutParams(-1, -1);
    }

    /* renamed from: g */
    private void m11265g() {
        setContentDescription(m11270d());
    }

    /* renamed from: a */
    final void m11277a() {
        if (this.f52450r == null && this.f52435b == null) {
            return;
        }
        setScrimsShown(getHeight() + this.f52436c < m11268e());
    }

    /* renamed from: a */
    final void m11276a(int i) {
        ViewGroup viewGroup;
        if (i != this.f52451s) {
            if (this.f52450r != null && (viewGroup = this.f52440h) != null) {
                C0926v.m44101d(viewGroup);
            }
            this.f52451s = i;
            C0926v.m44101d(this);
        }
    }

    /* renamed from: b */
    final int m11273b(View view) {
        return ((getHeight() - m11275a(view).f52481a) - view.getHeight()) - ((LayoutParams) view.getLayoutParams()).bottomMargin;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        m11274b();
        if (this.f52440h == null && (drawable = this.f52450r) != null && this.f52451s > 0) {
            drawable.mutate().setAlpha(this.f52451s);
            this.f52450r.draw(canvas);
        }
        if (this.f52448p && this.f52449q) {
            this.f52434a.m10598a(canvas);
        }
        if (this.f52435b == null || this.f52451s <= 0) {
            return;
        }
        C0889ac c0889ac = this.f52437d;
        int m44227b = c0889ac != null ? c0889ac.m44227b() : 0;
        if (m44227b <= 0) {
            return;
        }
        this.f52435b.setBounds(0, -this.f52436c, getWidth(), m44227b - this.f52436c);
        this.f52435b.mutate().setAlpha(this.f52451s);
        this.f52435b.draw(canvas);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
        r13 = true;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean drawChild(android.graphics.Canvas r7, android.view.View r8, long r9) {
        /*
            r6 = this;
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f52450r
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L5f
            r0 = r6
            int r0 = r0.f52451s
            if (r0 <= 0) goto L5f
            r0 = r6
            android.view.View r0 = r0.f52441i
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L2f
            r0 = r12
            r1 = r6
            if (r0 != r1) goto L26
            goto L2f
        L26:
            r0 = r8
            r1 = r12
            if (r0 != r1) goto L3d
            goto L37
        L2f:
            r0 = r8
            r1 = r6
            android.view.ViewGroup r1 = r1.f52440h
            if (r0 != r1) goto L3d
        L37:
            r0 = 1
            r13 = r0
            goto L40
        L3d:
            r0 = 0
            r13 = r0
        L40:
            r0 = r13
            if (r0 == 0) goto L5f
            r0 = r11
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r1 = r6
            int r1 = r1.f52451s
            r0.setAlpha(r1)
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f52450r
            r1 = r7
            r0.draw(r1)
            r0 = 1
            r13 = r0
            goto L62
        L5f:
            r0 = 0
            r13 = r0
        L62:
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            boolean r0 = super.drawChild(r1, r2, r3)
            if (r0 != 0) goto L76
            r0 = r13
            if (r0 == 0) goto L74
            goto L76
        L74:
            r0 = 0
            return r0
        L76:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f52435b;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.f52450r;
        boolean z2 = z;
        if (drawable2 != null) {
            z2 = z;
            if (drawable2.isStateful()) {
                z2 = z | drawable2.setState(drawableState);
            }
        }
        C14616a c14616a = this.f52434a;
        boolean z3 = z2;
        if (c14616a != null) {
            z3 = z2 | c14616a.m10591a(drawableState);
        }
        if (z3) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            C0926v.m44106b(this, C0926v.m44080s((View) parent));
            if (this.f52456x == null) {
                this.f52456x = new C14412a();
            }
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            AppBarLayout.AbstractC14409b abstractC14409b = this.f52456x;
            if (appBarLayout.f52395d == null) {
                appBarLayout.f52395d = new ArrayList();
            }
            if (abstractC14409b != null && !appBarLayout.f52395d.contains(abstractC14409b)) {
                appBarLayout.f52395d.add(abstractC14409b);
            }
            C0926v.m44081r(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.AbstractC14409b abstractC14409b = this.f52456x;
        if (abstractC14409b != null && (parent instanceof AppBarLayout)) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            if (appBarLayout.f52395d != null && abstractC14409b != null) {
                appBarLayout.f52395d.remove(abstractC14409b);
            }
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view;
        int i5;
        int i6;
        int i7;
        int i8;
        super.onLayout(z, i, i2, i3, i4);
        C0889ac c0889ac = this.f52437d;
        if (c0889ac != null) {
            int m44227b = c0889ac.m44227b();
            int childCount = getChildCount();
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = getChildAt(i9);
                if (!C0926v.m44080s(childAt) && childAt.getTop() < m44227b) {
                    C0926v.m44098e(childAt, m44227b);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i10 = 0; i10 < childCount2; i10++) {
            m11275a(getChildAt(i10)).m11248a();
        }
        if (this.f52448p && (view = this.f52442j) != null) {
            boolean z2 = true;
            boolean z3 = C0926v.m44154E(view) && this.f52442j.getVisibility() == 0;
            this.f52449q = z3;
            if (z3) {
                if (C0926v.m44097f(this) != 1) {
                    z2 = false;
                }
                ViewGroup viewGroup = this.f52441i;
                if (viewGroup == null) {
                    viewGroup = this.f52440h;
                }
                int m11273b = m11273b(viewGroup);
                C14619b.m10556b(this, this.f52442j, this.f52447o);
                ViewGroup viewGroup2 = this.f52440h;
                if (viewGroup2 instanceof Toolbar) {
                    Toolbar toolbar = (Toolbar) viewGroup2;
                    i6 = toolbar.f1445e;
                    i8 = toolbar.f1446f;
                    i5 = toolbar.f1447g;
                    i7 = toolbar.f1448h;
                } else {
                    if (Build.VERSION.SDK_INT >= 24) {
                        ViewGroup viewGroup3 = this.f52440h;
                        if (viewGroup3 instanceof android.widget.Toolbar) {
                            android.widget.Toolbar toolbar2 = (android.widget.Toolbar) viewGroup3;
                            i6 = toolbar2.getTitleMarginStart();
                            i8 = toolbar2.getTitleMarginEnd();
                            i5 = toolbar2.getTitleMarginTop();
                            i7 = toolbar2.getTitleMarginBottom();
                        }
                    }
                    i7 = 0;
                    i6 = 0;
                    i8 = 0;
                    i5 = 0;
                }
                C14616a c14616a = this.f52434a;
                int i11 = this.f52447o.left;
                int i12 = z2 ? i8 : i6;
                int i13 = this.f52447o.top;
                int i14 = this.f52447o.right;
                if (!z2) {
                    i6 = i8;
                }
                c14616a.m10587b(i11 + i12, i13 + m11273b + i5, i14 - i6, (this.f52447o.bottom + m11273b) - i7);
                this.f52434a.m10601a(z2 ? this.f52445m : this.f52443k, this.f52447o.top + this.f52444l, (i3 - i) - (z2 ? this.f52443k : this.f52445m), (i4 - i2) - this.f52446n);
                this.f52434a.m10590b();
            }
        }
        if (this.f52440h != null && this.f52448p && TextUtils.isEmpty(this.f52434a.f53350e)) {
            ViewGroup viewGroup4 = this.f52440h;
            setTitle(viewGroup4 instanceof Toolbar ? ((Toolbar) viewGroup4).f1449i : (Build.VERSION.SDK_INT < 21 || !(viewGroup4 instanceof android.widget.Toolbar)) ? null : ((android.widget.Toolbar) viewGroup4).getTitle());
        }
        m11277a();
        int childCount3 = getChildCount();
        for (int i15 = 0; i15 < childCount3; i15++) {
            m11275a(getChildAt(i15)).m11246b();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        m11274b();
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        C0889ac c0889ac = this.f52437d;
        int m44227b = c0889ac != null ? c0889ac.m44227b() : 0;
        if (mode == 0 && m44227b > 0) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + m44227b, 1073741824));
        }
        ViewGroup viewGroup = this.f52440h;
        if (viewGroup != null) {
            View view = this.f52441i;
            if (view == null || view == this) {
                setMinimumHeight(m11267e(viewGroup));
            } else {
                setMinimumHeight(m11267e(view));
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.f52450r;
        if (drawable != null) {
            drawable.setBounds(0, 0, i, i2);
        }
    }

    public void setCollapsedTitleGravity(int i) {
        this.f52434a.m10588b(i);
    }

    public void setCollapsedTitleTextAppearance(int i) {
        this.f52434a.m10581c(i);
    }

    public void setCollapsedTitleTextColor(int i) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedTitleTextColor(ColorStateList colorStateList) {
        this.f52434a.m10599a(colorStateList);
    }

    public void setCollapsedTitleTypeface(Typeface typeface) {
        this.f52434a.m10594a(typeface);
    }

    public void setContentScrim(Drawable drawable) {
        Drawable drawable2 = this.f52450r;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f52450r = drawable3;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, getWidth(), getHeight());
                this.f52450r.setCallback(this);
                this.f52450r.setAlpha(this.f52451s);
            }
            C0926v.m44101d(this);
        }
    }

    public void setContentScrimColor(int i) {
        setContentScrim(new ColorDrawable(i));
    }

    public void setContentScrimResource(int i) {
        setContentScrim(C0790b.m44502a(getContext(), i));
    }

    public void setExpandedTitleColor(int i) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedTitleGravity(int i) {
        this.f52434a.m10604a(i);
    }

    public void setExpandedTitleMargin(int i, int i2, int i3, int i4) {
        this.f52443k = i;
        this.f52444l = i2;
        this.f52445m = i3;
        this.f52446n = i4;
        requestLayout();
    }

    public void setExpandedTitleMarginBottom(int i) {
        this.f52446n = i;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i) {
        this.f52445m = i;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i) {
        this.f52443k = i;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i) {
        this.f52444l = i;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(int i) {
        this.f52434a.m10576d(i);
    }

    public void setExpandedTitleTextColor(ColorStateList colorStateList) {
        this.f52434a.m10586b(colorStateList);
    }

    public void setExpandedTitleTypeface(Typeface typeface) {
        this.f52434a.m10585b(typeface);
    }

    public void setMaxLines(int i) {
        this.f52434a.m10572e(i);
    }

    public void setScrimAnimationDuration(long j) {
        this.f52454v = j;
    }

    public void setScrimVisibleHeightTrigger(int i) {
        if (this.f52455w != i) {
            this.f52455w = i;
            m11277a();
        }
    }

    public void setScrimsShown(boolean z) {
        setScrimsShown(z, C0926v.m44157B(this) && !isInEditMode());
    }

    public void setScrimsShown(boolean z, boolean z2) {
        if (this.f52452t != z) {
            int i = 255;
            if (z2) {
                if (!z) {
                    i = 0;
                }
                m11274b();
                ValueAnimator valueAnimator = this.f52453u;
                if (valueAnimator == null) {
                    ValueAnimator valueAnimator2 = new ValueAnimator();
                    this.f52453u = valueAnimator2;
                    valueAnimator2.setDuration(this.f52454v);
                    this.f52453u.setInterpolator(i > this.f52451s ? C14389a.f52370c : C14389a.f52371d);
                    this.f52453u.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.CollapsingToolbarLayout.2
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                            CollapsingToolbarLayout.this.m11276a(((Integer) valueAnimator3.getAnimatedValue()).intValue());
                        }
                    });
                } else if (valueAnimator.isRunning()) {
                    this.f52453u.cancel();
                }
                this.f52453u.setIntValues(this.f52451s, i);
                this.f52453u.start();
            } else {
                if (!z) {
                    i = 0;
                }
                m11276a(i);
            }
            this.f52452t = z;
        }
    }

    public void setStatusBarScrim(Drawable drawable) {
        Drawable drawable2 = this.f52435b;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f52435b = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f52435b.setState(getDrawableState());
                }
                C0840a.m44349b(this.f52435b, C0926v.m44097f(this));
                this.f52435b.setVisible(getVisibility() == 0, false);
                this.f52435b.setCallback(this);
                this.f52435b.setAlpha(this.f52451s);
            }
            C0926v.m44101d(this);
        }
    }

    public void setStatusBarScrimColor(int i) {
        setStatusBarScrim(new ColorDrawable(i));
    }

    public void setStatusBarScrimResource(int i) {
        setStatusBarScrim(C0790b.m44502a(getContext(), i));
    }

    public void setTitle(CharSequence charSequence) {
        this.f52434a.m10592a(charSequence);
        m11265g();
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.f52448p) {
            this.f52448p = z;
            m11265g();
            m11272c();
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f52435b;
        if (drawable != null && drawable.isVisible() != z) {
            this.f52435b.setVisible(z, false);
        }
        Drawable drawable2 = this.f52450r;
        if (drawable2 == null || drawable2.isVisible() == z) {
            return;
        }
        this.f52450r.setVisible(z, false);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f52450r || drawable == this.f52435b;
    }
}
