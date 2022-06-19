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
import androidx.core.content.C0265a;
import androidx.core.graphics.drawable.C0283a;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.a;
import com.google.android.material.internal.c;
import d.h.m.b0;
import d.h.m.t;
import e.c.a.b.b;
import e.c.a.b.f;
import e.c.a.b.k;
import e.c.a.b.l;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout.class */
public class CollapsingToolbarLayout extends FrameLayout {

    /* renamed from: y */
    private static final int f10568y = k.Widget_Design_CollapsingToolbar;

    /* renamed from: b */
    private boolean f10569b;

    /* renamed from: c */
    private int f10570c;

    /* renamed from: d */
    private ViewGroup f10571d;

    /* renamed from: e */
    private View f10572e;

    /* renamed from: f */
    private View f10573f;

    /* renamed from: g */
    private int f10574g;

    /* renamed from: h */
    private int f10575h;

    /* renamed from: i */
    private int f10576i;

    /* renamed from: j */
    private int f10577j;

    /* renamed from: k */
    private final Rect f10578k;

    /* renamed from: l */
    final a f10579l;

    /* renamed from: m */
    private boolean f10580m;

    /* renamed from: n */
    private boolean f10581n;

    /* renamed from: o */
    private Drawable f10582o;

    /* renamed from: p */
    Drawable f10583p;

    /* renamed from: q */
    private int f10584q;

    /* renamed from: r */
    private boolean f10585r;

    /* renamed from: s */
    private ValueAnimator f10586s;

    /* renamed from: t */
    private long f10587t;

    /* renamed from: u */
    private int f10588u;

    /* renamed from: v */
    private AppBarLayout.d f10589v;

    /* renamed from: w */
    int f10590w;

    /* renamed from: x */
    b0 f10591x;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams.class */
    public static class LayoutParams extends FrameLayout.LayoutParams {

        /* renamed from: a */
        int f10592a;

        /* renamed from: b */
        float f10593b;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f10592a = 0;
            this.f10593b = 0.5f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f10592a = 0;
            this.f10593b = 0.5f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, l.CollapsingToolbarLayout_Layout);
            this.f10592a = obtainStyledAttributes.getInt(l.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            m3726a(obtainStyledAttributes.getFloat(l.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f));
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f10592a = 0;
            this.f10593b = 0.5f;
        }

        /* renamed from: a */
        public void m3726a(float f) {
            this.f10593b = f;
        }
    }

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$b.class */
    public class C2411b implements ValueAnimator.AnimatorUpdateListener {
        C2411b() {
            CollapsingToolbarLayout.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CollapsingToolbarLayout.this.setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    public CollapsingToolbarLayout(Context context) {
        this(context, null);
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.collapsingToolbarLayoutStyle);
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
    private void m3742a(int i) {
        m3741b();
        ValueAnimator valueAnimator = this.f10586s;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.f10586s = valueAnimator2;
            valueAnimator2.setDuration(this.f10587t);
            this.f10586s.setInterpolator(i > this.f10584q ? e.c.a.b.m.a.c : e.c.a.b.m.a.d);
            this.f10586s.addUpdateListener(new C2411b());
        } else if (valueAnimator.isRunning()) {
            this.f10586s.cancel();
        }
        this.f10586s.setIntValues(this.f10584q, i);
        this.f10586s.start();
    }

    /* renamed from: b */
    private void m3741b() {
        ViewGroup viewGroup;
        if (!this.f10569b) {
            return;
        }
        this.f10571d = null;
        this.f10572e = null;
        int i = this.f10570c;
        if (i != -1) {
            ViewGroup viewGroup2 = (ViewGroup) findViewById(i);
            this.f10571d = viewGroup2;
            if (viewGroup2 != null) {
                this.f10572e = m3740c(viewGroup2);
            }
        }
        if (this.f10571d == null) {
            int childCount = getChildCount();
            int i2 = 0;
            while (true) {
                viewGroup = null;
                if (i2 >= childCount) {
                    break;
                }
                View childAt = getChildAt(i2);
                if (m3733j(childAt)) {
                    viewGroup = (ViewGroup) childAt;
                    break;
                }
                i2++;
            }
            this.f10571d = viewGroup;
        }
        m3728o();
        this.f10569b = false;
    }

    /* renamed from: c */
    private View m3740c(View view) {
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

    /* renamed from: f */
    private static int m3737f(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            return view.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        }
        return view.getMeasuredHeight();
    }

    /* renamed from: h */
    private static CharSequence m3735h(View view) {
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getTitle();
        }
        if (Build.VERSION.SDK_INT >= 21 && (view instanceof android.widget.Toolbar)) {
            return ((android.widget.Toolbar) view).getTitle();
        }
        return null;
    }

    /* renamed from: i */
    static a m3734i(View view) {
        int i = f.view_offset_helper;
        a aVar = (a) view.getTag(i);
        a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = new a(view);
            view.setTag(i, aVar2);
        }
        return aVar2;
    }

    /* renamed from: j */
    private static boolean m3733j(View view) {
        return (view instanceof Toolbar) || (Build.VERSION.SDK_INT >= 21 && (view instanceof android.widget.Toolbar));
    }

    /* renamed from: k */
    private boolean m3732k(View view) {
        View view2 = this.f10572e;
        boolean z = true;
        if (view2 == null || view2 == this ? view != this.f10571d : view != view2) {
            z = false;
        }
        return z;
    }

    /* renamed from: m */
    private void m3730m(boolean z) {
        int i;
        int i2;
        int i3;
        ViewGroup viewGroup = this.f10572e;
        if (viewGroup == null) {
            viewGroup = this.f10571d;
        }
        int m3736g = m3736g(viewGroup);
        c.a(this, this.f10573f, this.f10578k);
        ViewGroup viewGroup2 = this.f10571d;
        int i4 = 0;
        if (viewGroup2 instanceof Toolbar) {
            Toolbar toolbar = (Toolbar) viewGroup2;
            i4 = toolbar.getTitleMarginStart();
            i3 = toolbar.getTitleMarginEnd();
            i2 = toolbar.getTitleMarginTop();
            i = toolbar.getTitleMarginBottom();
        } else if (Build.VERSION.SDK_INT < 24 || !(viewGroup2 instanceof android.widget.Toolbar)) {
            i = 0;
            i3 = 0;
            i2 = 0;
        } else {
            android.widget.Toolbar toolbar2 = (android.widget.Toolbar) viewGroup2;
            i4 = toolbar2.getTitleMarginStart();
            i3 = toolbar2.getTitleMarginEnd();
            i2 = toolbar2.getTitleMarginTop();
            i = toolbar2.getTitleMarginBottom();
        }
        a aVar = this.f10579l;
        Rect rect = this.f10578k;
        int i5 = rect.left;
        int i6 = z ? i3 : i4;
        int i7 = rect.top;
        int i8 = rect.right;
        if (!z) {
            i4 = i3;
        }
        aVar.M(i5 + i6, i7 + m3736g + i2, i8 - i4, (rect.bottom + m3736g) - i);
    }

    /* renamed from: n */
    private void m3729n() {
        setContentDescription(getTitle());
    }

    /* renamed from: o */
    private void m3728o() {
        View view;
        if (!this.f10580m && (view = this.f10573f) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f10573f);
            }
        }
        if (!this.f10580m || this.f10571d == null) {
            return;
        }
        if (this.f10573f == null) {
            this.f10573f = new View(getContext());
        }
        if (this.f10573f.getParent() != null) {
            return;
        }
        this.f10571d.addView(this.f10573f, -1, -1);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: d */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        m3741b();
        if (this.f10571d == null && (drawable = this.f10582o) != null && this.f10584q > 0) {
            drawable.mutate().setAlpha(this.f10584q);
            this.f10582o.draw(canvas);
        }
        if (this.f10580m && this.f10581n) {
            this.f10579l.j(canvas);
        }
        if (this.f10583p == null || this.f10584q <= 0) {
            return;
        }
        b0 b0Var = this.f10591x;
        int h = b0Var != null ? b0Var.h() : 0;
        if (h <= 0) {
            return;
        }
        this.f10583p.setBounds(0, -this.f10590w, getWidth(), h - this.f10590w);
        this.f10583p.mutate().setAlpha(this.f10584q);
        this.f10583p.draw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean z;
        if (this.f10582o == null || this.f10584q <= 0 || !m3732k(view)) {
            z = false;
        } else {
            this.f10582o.mutate().setAlpha(this.f10584q);
            this.f10582o.draw(canvas);
            z = true;
        }
        boolean z2 = true;
        if (!super.drawChild(canvas, view, j)) {
            z2 = z;
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f10583p;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.f10582o;
        boolean z2 = z;
        if (drawable2 != null) {
            z2 = z;
            if (drawable2.isStateful()) {
                z2 = z | drawable2.setState(drawableState);
            }
        }
        a aVar = this.f10579l;
        boolean z3 = z2;
        if (aVar != null) {
            z3 = z2 | aVar.h0(drawableState);
        }
        if (z3) {
            invalidate();
        }
    }

    /* renamed from: e */
    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    /* renamed from: g */
    final int m3736g(View view) {
        return ((getHeight() - m3734i(view).b()) - view.getHeight()) - ((FrameLayout.LayoutParams) ((LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public int getCollapsedTitleGravity() {
        return this.f10579l.o();
    }

    public Typeface getCollapsedTitleTypeface() {
        return this.f10579l.s();
    }

    public Drawable getContentScrim() {
        return this.f10582o;
    }

    public int getExpandedTitleGravity() {
        return this.f10579l.w();
    }

    public int getExpandedTitleMarginBottom() {
        return this.f10577j;
    }

    public int getExpandedTitleMarginEnd() {
        return this.f10576i;
    }

    public int getExpandedTitleMarginStart() {
        return this.f10574g;
    }

    public int getExpandedTitleMarginTop() {
        return this.f10575h;
    }

    public Typeface getExpandedTitleTypeface() {
        return this.f10579l.y();
    }

    public int getMaxLines() {
        return this.f10579l.A();
    }

    int getScrimAlpha() {
        return this.f10584q;
    }

    public long getScrimAnimationDuration() {
        return this.f10587t;
    }

    public int getScrimVisibleHeightTrigger() {
        int i = this.f10588u;
        if (i >= 0) {
            return i;
        }
        b0 b0Var = this.f10591x;
        int h = b0Var != null ? b0Var.h() : 0;
        int C = t.C(this);
        return C > 0 ? Math.min((C * 2) + h, getHeight()) : getHeight() / 3;
    }

    public Drawable getStatusBarScrim() {
        return this.f10583p;
    }

    public CharSequence getTitle() {
        return this.f10580m ? this.f10579l.B() : null;
    }

    /* renamed from: l */
    b0 m3731l(b0 b0Var) {
        b0 b0Var2 = t.y(this) ? b0Var : null;
        if (!d.h.l.c.a(this.f10591x, b0Var2)) {
            this.f10591x = b0Var2;
            requestLayout();
        }
        return b0Var.c();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AppBarLayout parent = getParent();
        if (parent instanceof AppBarLayout) {
            t.v0(this, t.y((View) parent));
            if (this.f10589v == null) {
                this.f10589v = new c(this);
            }
            parent.b(this.f10589v);
            t.k0(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        AppBarLayout parent = getParent();
        AppBarLayout.d dVar = this.f10589v;
        if (dVar != null && (parent instanceof AppBarLayout)) {
            parent.p(dVar);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view;
        super.onLayout(z, i, i2, i3, i4);
        b0 b0Var = this.f10591x;
        if (b0Var != null) {
            int h = b0Var.h();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (!t.y(childAt) && childAt.getTop() < h) {
                    t.Y(childAt, h);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            m3734i(getChildAt(i6)).d();
        }
        if (this.f10580m && (view = this.f10573f) != null) {
            boolean z2 = t.R(view) && this.f10573f.getVisibility() == 0;
            this.f10581n = z2;
            if (z2) {
                boolean z3 = t.B(this) == 1;
                m3730m(z3);
                this.f10579l.U(z3 ? this.f10576i : this.f10574g, this.f10578k.top + this.f10575h, (i3 - i) - (z3 ? this.f10574g : this.f10576i), (i4 - i2) - this.f10577j);
                this.f10579l.K();
            }
        }
        if (this.f10571d != null && this.f10580m && TextUtils.isEmpty(this.f10579l.B())) {
            setTitle(m3735h(this.f10571d));
        }
        m3727p();
        int childCount3 = getChildCount();
        for (int i7 = 0; i7 < childCount3; i7++) {
            m3734i(getChildAt(i7)).a();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        m3741b();
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        b0 b0Var = this.f10591x;
        int h = b0Var != null ? b0Var.h() : 0;
        if (mode == 0 && h > 0) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + h, 1073741824));
        }
        ViewGroup viewGroup = this.f10571d;
        if (viewGroup != null) {
            View view = this.f10572e;
            setMinimumHeight((view == null || view == this) ? m3737f(viewGroup) : m3737f(view));
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.f10582o;
        if (drawable != null) {
            drawable.setBounds(0, 0, i, i2);
        }
    }

    /* renamed from: p */
    final void m3727p() {
        if (this.f10582o == null && this.f10583p == null) {
            return;
        }
        setScrimsShown(getHeight() + this.f10590w < getScrimVisibleHeightTrigger());
    }

    public void setCollapsedTitleGravity(int i) {
        this.f10579l.R(i);
    }

    public void setCollapsedTitleTextAppearance(int i) {
        this.f10579l.O(i);
    }

    public void setCollapsedTitleTextColor(int i) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedTitleTextColor(ColorStateList colorStateList) {
        this.f10579l.Q(colorStateList);
    }

    public void setCollapsedTitleTypeface(Typeface typeface) {
        this.f10579l.S(typeface);
    }

    public void setContentScrim(Drawable drawable) {
        Drawable drawable2 = this.f10582o;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f10582o = drawable3;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, getWidth(), getHeight());
                this.f10582o.setCallback(this);
                this.f10582o.setAlpha(this.f10584q);
            }
            t.d0(this);
        }
    }

    public void setContentScrimColor(int i) {
        setContentScrim(new ColorDrawable(i));
    }

    public void setContentScrimResource(int i) {
        setContentScrim(C0265a.m13551f(getContext(), i));
    }

    public void setExpandedTitleColor(int i) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedTitleGravity(int i) {
        this.f10579l.Z(i);
    }

    public void setExpandedTitleMargin(int i, int i2, int i3, int i4) {
        this.f10574g = i;
        this.f10575h = i2;
        this.f10576i = i3;
        this.f10577j = i4;
        requestLayout();
    }

    public void setExpandedTitleMarginBottom(int i) {
        this.f10577j = i;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i) {
        this.f10576i = i;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i) {
        this.f10574g = i;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i) {
        this.f10575h = i;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(int i) {
        this.f10579l.W(i);
    }

    public void setExpandedTitleTextColor(ColorStateList colorStateList) {
        this.f10579l.Y(colorStateList);
    }

    public void setExpandedTitleTypeface(Typeface typeface) {
        this.f10579l.b0(typeface);
    }

    public void setMaxLines(int i) {
        this.f10579l.f0(i);
    }

    void setScrimAlpha(int i) {
        ViewGroup viewGroup;
        if (i != this.f10584q) {
            if (this.f10582o != null && (viewGroup = this.f10571d) != null) {
                t.d0(viewGroup);
            }
            this.f10584q = i;
            t.d0(this);
        }
    }

    public void setScrimAnimationDuration(long j) {
        this.f10587t = j;
    }

    public void setScrimVisibleHeightTrigger(int i) {
        if (this.f10588u != i) {
            this.f10588u = i;
            m3727p();
        }
    }

    public void setScrimsShown(boolean z) {
        setScrimsShown(z, t.S(this) && !isInEditMode());
    }

    public void setScrimsShown(boolean z, boolean z2) {
        if (this.f10585r != z) {
            int i = 255;
            if (z2) {
                if (!z) {
                    i = 0;
                }
                m3742a(i);
            } else {
                if (!z) {
                    i = 0;
                }
                setScrimAlpha(i);
            }
            this.f10585r = z;
        }
    }

    public void setStatusBarScrim(Drawable drawable) {
        Drawable drawable2 = this.f10583p;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f10583p = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f10583p.setState(getDrawableState());
                }
                C0283a.m13466m(this.f10583p, t.B(this));
                this.f10583p.setVisible(getVisibility() == 0, false);
                this.f10583p.setCallback(this);
                this.f10583p.setAlpha(this.f10584q);
            }
            t.d0(this);
        }
    }

    public void setStatusBarScrimColor(int i) {
        setStatusBarScrim(new ColorDrawable(i));
    }

    public void setStatusBarScrimResource(int i) {
        setStatusBarScrim(C0265a.m13551f(getContext(), i));
    }

    public void setTitle(CharSequence charSequence) {
        this.f10579l.i0(charSequence);
        m3729n();
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.f10580m) {
            this.f10580m = z;
            m3729n();
            m3728o();
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f10583p;
        if (drawable != null && drawable.isVisible() != z) {
            this.f10583p.setVisible(z, false);
        }
        Drawable drawable2 = this.f10582o;
        if (drawable2 == null || drawable2.isVisible() == z) {
            return;
        }
        this.f10582o.setVisible(z, false);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f10582o || drawable == this.f10583p;
    }
}
