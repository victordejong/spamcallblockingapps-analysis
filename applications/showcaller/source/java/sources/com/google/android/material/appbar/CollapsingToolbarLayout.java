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
import androidx.core.content.C0586a;
import androidx.core.graphics.drawable.C0615a;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.C8173a;
import com.google.android.material.internal.C8177c;
import p020b.p041h.p045g.C1542a;
import p020b.p041h.p049k.C1592c;
import p020b.p041h.p050l.AbstractC1673q;
import p020b.p041h.p050l.C1615e0;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p097m.C1897a;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout.class */
public class CollapsingToolbarLayout extends FrameLayout {

    /* renamed from: d */
    private static final int f36039d = C1895k.Widget_Design_CollapsingToolbar;

    /* renamed from: A */
    C1615e0 f36040A;

    /* renamed from: e */
    private boolean f36041e;

    /* renamed from: f */
    private int f36042f;

    /* renamed from: g */
    private ViewGroup f36043g;

    /* renamed from: h */
    private View f36044h;

    /* renamed from: i */
    private View f36045i;

    /* renamed from: j */
    private int f36046j;

    /* renamed from: k */
    private int f36047k;

    /* renamed from: l */
    private int f36048l;

    /* renamed from: m */
    private int f36049m;

    /* renamed from: n */
    private final Rect f36050n;

    /* renamed from: o */
    final C8173a f36051o;

    /* renamed from: p */
    private boolean f36052p;

    /* renamed from: q */
    private boolean f36053q;

    /* renamed from: r */
    private Drawable f36054r;

    /* renamed from: s */
    Drawable f36055s;

    /* renamed from: t */
    private int f36056t;

    /* renamed from: u */
    private boolean f36057u;

    /* renamed from: v */
    private ValueAnimator f36058v;

    /* renamed from: w */
    private long f36059w;

    /* renamed from: x */
    private int f36060x;

    /* renamed from: y */
    private AppBarLayout.AbstractC7995d f36061y;

    /* renamed from: z */
    int f36062z;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams.class */
    public static class LayoutParams extends FrameLayout.LayoutParams {

        /* renamed from: a */
        int f36063a;

        /* renamed from: b */
        float f36064b;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f36063a = 0;
            this.f36064b = 0.5f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f36063a = 0;
            this.f36064b = 0.5f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1896l.CollapsingToolbarLayout_Layout);
            this.f36063a = obtainStyledAttributes.getInt(C1896l.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            m5694a(obtainStyledAttributes.getFloat(C1896l.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f));
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f36063a = 0;
            this.f36064b = 0.5f;
        }

        /* renamed from: a */
        public void m5694a(float f) {
            this.f36064b = f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$a.class */
    public class C7996a implements AbstractC1673q {
        C7996a() {
            CollapsingToolbarLayout.this = r4;
        }

        @Override // p020b.p041h.p050l.AbstractC1673q
        /* renamed from: a */
        public C1615e0 mo4441a(View view, C1615e0 c1615e0) {
            return CollapsingToolbarLayout.this.m5699l(c1615e0);
        }
    }

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$b.class */
    public class C7997b implements ValueAnimator.AnimatorUpdateListener {
        C7997b() {
            CollapsingToolbarLayout.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CollapsingToolbarLayout.this.setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$c.class */
    private class C7998c implements AppBarLayout.AbstractC7995d {
        C7998c() {
            CollapsingToolbarLayout.this = r4;
        }

        @Override // com.google.android.material.appbar.AppBarLayout.AbstractC7994c
        /* renamed from: a */
        public void mo5693a(AppBarLayout appBarLayout, int i) {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            collapsingToolbarLayout.f36062z = i;
            C1615e0 c1615e0 = collapsingToolbarLayout.f36040A;
            int m29588l = c1615e0 != null ? c1615e0.m29588l() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                C8000a m5702i = CollapsingToolbarLayout.m5702i(childAt);
                int i3 = layoutParams.f36063a;
                if (i3 == 1) {
                    m5702i.m5662f(C1542a.m29769b(-i, 0, CollapsingToolbarLayout.this.m5704g(childAt)));
                } else if (i3 == 2) {
                    m5702i.m5662f(Math.round((-i) * layoutParams.f36064b));
                }
            }
            CollapsingToolbarLayout.this.m5695p();
            CollapsingToolbarLayout collapsingToolbarLayout2 = CollapsingToolbarLayout.this;
            if (collapsingToolbarLayout2.f36055s != null && m29588l > 0) {
                C1679w.m29293h0(collapsingToolbarLayout2);
            }
            CollapsingToolbarLayout.this.f36051o.m4589d0(Math.abs(i) / ((CollapsingToolbarLayout.this.getHeight() - C1679w.m29344D(CollapsingToolbarLayout.this)) - m29588l));
        }
    }

    public CollapsingToolbarLayout(Context context) {
        this(context, null);
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.collapsingToolbarLayoutStyle);
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
    private void m5710a(int i) {
        m5709b();
        ValueAnimator valueAnimator = this.f36058v;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.f36058v = valueAnimator2;
            valueAnimator2.setDuration(this.f36059w);
            this.f36058v.setInterpolator(i > this.f36056t ? C1897a.f6815c : C1897a.f6816d);
            this.f36058v.addUpdateListener(new C7997b());
        } else if (valueAnimator.isRunning()) {
            this.f36058v.cancel();
        }
        this.f36058v.setIntValues(this.f36056t, i);
        this.f36058v.start();
    }

    /* renamed from: b */
    private void m5709b() {
        ViewGroup viewGroup;
        if (!this.f36041e) {
            return;
        }
        this.f36043g = null;
        this.f36044h = null;
        int i = this.f36042f;
        if (i != -1) {
            ViewGroup viewGroup2 = (ViewGroup) findViewById(i);
            this.f36043g = viewGroup2;
            if (viewGroup2 != null) {
                this.f36044h = m5708c(viewGroup2);
            }
        }
        if (this.f36043g == null) {
            int childCount = getChildCount();
            int i2 = 0;
            while (true) {
                viewGroup = null;
                if (i2 >= childCount) {
                    break;
                }
                View childAt = getChildAt(i2);
                if (m5701j(childAt)) {
                    viewGroup = (ViewGroup) childAt;
                    break;
                }
                i2++;
            }
            this.f36043g = viewGroup;
        }
        m5696o();
        this.f36041e = false;
    }

    /* renamed from: c */
    private View m5708c(View view) {
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
    private static int m5705f(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            return view.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        }
        return view.getMeasuredHeight();
    }

    /* renamed from: h */
    private static CharSequence m5703h(View view) {
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getTitle();
        }
        if (Build.VERSION.SDK_INT >= 21 && (view instanceof android.widget.Toolbar)) {
            return ((android.widget.Toolbar) view).getTitle();
        }
        return null;
    }

    /* renamed from: i */
    static C8000a m5702i(View view) {
        int i = C1890f.view_offset_helper;
        C8000a c8000a = (C8000a) view.getTag(i);
        C8000a c8000a2 = c8000a;
        if (c8000a == null) {
            c8000a2 = new C8000a(view);
            view.setTag(i, c8000a2);
        }
        return c8000a2;
    }

    /* renamed from: j */
    private static boolean m5701j(View view) {
        return (view instanceof Toolbar) || (Build.VERSION.SDK_INT >= 21 && (view instanceof android.widget.Toolbar));
    }

    /* renamed from: k */
    private boolean m5700k(View view) {
        View view2 = this.f36044h;
        boolean z = true;
        if (view2 == null || view2 == this ? view != this.f36043g : view != view2) {
            z = false;
        }
        return z;
    }

    /* renamed from: m */
    private void m5698m(boolean z) {
        int i;
        int i2;
        int i3;
        ViewGroup viewGroup = this.f36044h;
        if (viewGroup == null) {
            viewGroup = this.f36043g;
        }
        int m5704g = m5704g(viewGroup);
        C8177c.m4556a(this, this.f36045i, this.f36050n);
        ViewGroup viewGroup2 = this.f36043g;
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
        C8173a c8173a = this.f36051o;
        Rect rect = this.f36050n;
        int i5 = rect.left;
        int i6 = z ? i3 : i4;
        int i7 = rect.top;
        int i8 = rect.right;
        if (z) {
            i3 = i4;
        }
        c8173a.m4610M(i5 + i6, i7 + m5704g + i2, i8 - i3, (rect.bottom + m5704g) - i);
    }

    /* renamed from: n */
    private void m5697n() {
        setContentDescription(getTitle());
    }

    /* renamed from: o */
    private void m5696o() {
        View view;
        if (!this.f36052p && (view = this.f36045i) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f36045i);
            }
        }
        if (!this.f36052p || this.f36043g == null) {
            return;
        }
        if (this.f36045i == null) {
            this.f36045i = new View(getContext());
        }
        if (this.f36045i.getParent() != null) {
            return;
        }
        this.f36043g.addView(this.f36045i, -1, -1);
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
        m5709b();
        if (this.f36043g == null && (drawable = this.f36054r) != null && this.f36056t > 0) {
            drawable.mutate().setAlpha(this.f36056t);
            this.f36054r.draw(canvas);
        }
        if (this.f36052p && this.f36053q) {
            this.f36051o.m4578j(canvas);
        }
        if (this.f36055s == null || this.f36056t <= 0) {
            return;
        }
        C1615e0 c1615e0 = this.f36040A;
        int m29588l = c1615e0 != null ? c1615e0.m29588l() : 0;
        if (m29588l <= 0) {
            return;
        }
        this.f36055s.setBounds(0, -this.f36062z, getWidth(), m29588l - this.f36062z);
        this.f36055s.mutate().setAlpha(this.f36056t);
        this.f36055s.draw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean z;
        if (this.f36054r == null || this.f36056t <= 0 || !m5700k(view)) {
            z = false;
        } else {
            this.f36054r.mutate().setAlpha(this.f36056t);
            this.f36054r.draw(canvas);
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
        Drawable drawable = this.f36055s;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.f36054r;
        boolean z2 = z;
        if (drawable2 != null) {
            z2 = z;
            if (drawable2.isStateful()) {
                z2 = z | drawable2.setState(drawableState);
            }
        }
        C8173a c8173a = this.f36051o;
        boolean z3 = z2;
        if (c8173a != null) {
            z3 = z2 | c8173a.m4581h0(drawableState);
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
    final int m5704g(View view) {
        return ((getHeight() - m5702i(view).m5666b()) - view.getHeight()) - ((FrameLayout.LayoutParams) ((LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public int getCollapsedTitleGravity() {
        return this.f36051o.m4570o();
    }

    public Typeface getCollapsedTitleTypeface() {
        return this.f36051o.m4566s();
    }

    public Drawable getContentScrim() {
        return this.f36054r;
    }

    public int getExpandedTitleGravity() {
        return this.f36051o.m4562w();
    }

    public int getExpandedTitleMarginBottom() {
        return this.f36049m;
    }

    public int getExpandedTitleMarginEnd() {
        return this.f36048l;
    }

    public int getExpandedTitleMarginStart() {
        return this.f36046j;
    }

    public int getExpandedTitleMarginTop() {
        return this.f36047k;
    }

    public Typeface getExpandedTitleTypeface() {
        return this.f36051o.m4560y();
    }

    public int getMaxLines() {
        return this.f36051o.m4622A();
    }

    int getScrimAlpha() {
        return this.f36056t;
    }

    public long getScrimAnimationDuration() {
        return this.f36059w;
    }

    public int getScrimVisibleHeightTrigger() {
        int i = this.f36060x;
        if (i >= 0) {
            return i;
        }
        C1615e0 c1615e0 = this.f36040A;
        int m29588l = c1615e0 != null ? c1615e0.m29588l() : 0;
        int m29344D = C1679w.m29344D(this);
        return m29344D > 0 ? Math.min((m29344D * 2) + m29588l, getHeight()) : getHeight() / 3;
    }

    public Drawable getStatusBarScrim() {
        return this.f36055s;
    }

    public CharSequence getTitle() {
        return this.f36052p ? this.f36051o.m4621B() : null;
    }

    /* renamed from: l */
    C1615e0 m5699l(C1615e0 c1615e0) {
        C1615e0 c1615e02 = C1679w.m29258z(this) ? c1615e0 : null;
        if (!C1592c.m29668a(this.f36040A, c1615e02)) {
            this.f36040A = c1615e02;
            requestLayout();
        }
        return c1615e0.m29597c();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            C1679w.m29257z0(this, C1679w.m29258z((View) parent));
            if (this.f36061y == null) {
                this.f36061y = new C7998c();
            }
            ((AppBarLayout) parent).m5774b(this.f36061y);
            C1679w.m29279o0(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.AbstractC7995d abstractC7995d = this.f36061y;
        if (abstractC7995d != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).m5760p(abstractC7995d);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view;
        super.onLayout(z, i, i2, i3, i4);
        C1615e0 c1615e0 = this.f36040A;
        if (c1615e0 != null) {
            int m29588l = c1615e0.m29588l();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (!C1679w.m29258z(childAt) && childAt.getTop() < m29588l) {
                    C1679w.m29305b0(childAt, m29588l);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            m5702i(getChildAt(i6)).m5664d();
        }
        if (this.f36052p && (view = this.f36045i) != null) {
            boolean z2 = C1679w.m29314U(view) && this.f36045i.getVisibility() == 0;
            this.f36053q = z2;
            if (z2) {
                boolean z3 = C1679w.m29346C(this) == 1;
                m5698m(z3);
                this.f36051o.m4602U(z3 ? this.f36048l : this.f36046j, this.f36050n.top + this.f36047k, (i3 - i) - (z3 ? this.f36046j : this.f36048l), (i4 - i2) - this.f36049m);
                this.f36051o.m4612K();
            }
        }
        if (this.f36043g != null && this.f36052p && TextUtils.isEmpty(this.f36051o.m4621B())) {
            setTitle(m5703h(this.f36043g));
        }
        m5695p();
        int childCount3 = getChildCount();
        for (int i7 = 0; i7 < childCount3; i7++) {
            m5702i(getChildAt(i7)).m5667a();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        m5709b();
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        C1615e0 c1615e0 = this.f36040A;
        int m29588l = c1615e0 != null ? c1615e0.m29588l() : 0;
        if (mode == 0 && m29588l > 0) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + m29588l, 1073741824));
        }
        ViewGroup viewGroup = this.f36043g;
        if (viewGroup != null) {
            View view = this.f36044h;
            if (view == null || view == this) {
                setMinimumHeight(m5705f(viewGroup));
            } else {
                setMinimumHeight(m5705f(view));
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.f36054r;
        if (drawable != null) {
            drawable.setBounds(0, 0, i, i2);
        }
    }

    /* renamed from: p */
    final void m5695p() {
        if (this.f36054r == null && this.f36055s == null) {
            return;
        }
        setScrimsShown(getHeight() + this.f36062z < getScrimVisibleHeightTrigger());
    }

    public void setCollapsedTitleGravity(int i) {
        this.f36051o.m4605R(i);
    }

    public void setCollapsedTitleTextAppearance(int i) {
        this.f36051o.m4608O(i);
    }

    public void setCollapsedTitleTextColor(int i) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedTitleTextColor(ColorStateList colorStateList) {
        this.f36051o.m4606Q(colorStateList);
    }

    public void setCollapsedTitleTypeface(Typeface typeface) {
        this.f36051o.m4604S(typeface);
    }

    public void setContentScrim(Drawable drawable) {
        Drawable drawable2 = this.f36054r;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f36054r = drawable3;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, getWidth(), getHeight());
                this.f36054r.setCallback(this);
                this.f36054r.setAlpha(this.f36056t);
            }
            C1679w.m29293h0(this);
        }
    }

    public void setContentScrimColor(int i) {
        setContentScrim(new ColorDrawable(i));
    }

    public void setContentScrimResource(int i) {
        setContentScrim(C0586a.m33348f(getContext(), i));
    }

    public void setExpandedTitleColor(int i) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedTitleGravity(int i) {
        this.f36051o.m4597Z(i);
    }

    public void setExpandedTitleMargin(int i, int i2, int i3, int i4) {
        this.f36046j = i;
        this.f36047k = i2;
        this.f36048l = i3;
        this.f36049m = i4;
        requestLayout();
    }

    public void setExpandedTitleMarginBottom(int i) {
        this.f36049m = i;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i) {
        this.f36048l = i;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i) {
        this.f36046j = i;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i) {
        this.f36047k = i;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(int i) {
        this.f36051o.m4600W(i);
    }

    public void setExpandedTitleTextColor(ColorStateList colorStateList) {
        this.f36051o.m4598Y(colorStateList);
    }

    public void setExpandedTitleTypeface(Typeface typeface) {
        this.f36051o.m4593b0(typeface);
    }

    public void setMaxLines(int i) {
        this.f36051o.m4585f0(i);
    }

    void setScrimAlpha(int i) {
        ViewGroup viewGroup;
        if (i != this.f36056t) {
            if (this.f36054r != null && (viewGroup = this.f36043g) != null) {
                C1679w.m29293h0(viewGroup);
            }
            this.f36056t = i;
            C1679w.m29293h0(this);
        }
    }

    public void setScrimAnimationDuration(long j) {
        this.f36059w = j;
    }

    public void setScrimVisibleHeightTrigger(int i) {
        if (this.f36060x != i) {
            this.f36060x = i;
            m5695p();
        }
    }

    public void setScrimsShown(boolean z) {
        setScrimsShown(z, C1679w.m29313V(this) && !isInEditMode());
    }

    public void setScrimsShown(boolean z, boolean z2) {
        if (this.f36057u != z) {
            int i = 255;
            if (z2) {
                if (!z) {
                    i = 0;
                }
                m5710a(i);
            } else {
                if (!z) {
                    i = 0;
                }
                setScrimAlpha(i);
            }
            this.f36057u = z;
        }
    }

    public void setStatusBarScrim(Drawable drawable) {
        Drawable drawable2 = this.f36055s;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f36055s = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f36055s.setState(getDrawableState());
                }
                C0615a.m33217m(this.f36055s, C1679w.m29346C(this));
                this.f36055s.setVisible(getVisibility() == 0, false);
                this.f36055s.setCallback(this);
                this.f36055s.setAlpha(this.f36056t);
            }
            C1679w.m29293h0(this);
        }
    }

    public void setStatusBarScrimColor(int i) {
        setStatusBarScrim(new ColorDrawable(i));
    }

    public void setStatusBarScrimResource(int i) {
        setStatusBarScrim(C0586a.m33348f(getContext(), i));
    }

    public void setTitle(CharSequence charSequence) {
        this.f36051o.m4579i0(charSequence);
        m5697n();
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.f36052p) {
            this.f36052p = z;
            m5697n();
            m5696o();
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f36055s;
        if (drawable != null && drawable.isVisible() != z) {
            this.f36055s.setVisible(z, false);
        }
        Drawable drawable2 = this.f36054r;
        if (drawable2 == null || drawable2.isVisible() == z) {
            return;
        }
        this.f36054r.setVisible(z, false);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f36054r || drawable == this.f36055s;
    }
}
