package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.C0054R;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R$id;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.AppBarLayout;
import p081h.p203i.p204a.p294f.p295a.C9167a;
import p081h.p203i.p204a.p294f.p296b.C9177a;
import p081h.p203i.p204a.p294f.p308n.C9223c;
import p081h.p203i.p204a.p294f.p308n.C9224d;
import p081h.p203i.p204a.p294f.p308n.C9245k;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout.class */
public class CollapsingToolbarLayout extends FrameLayout {

    /* renamed from: a */
    public boolean f7251a;

    /* renamed from: b */
    public int f7252b;

    /* renamed from: c */
    public Toolbar f7253c;

    /* renamed from: d */
    public View f7254d;

    /* renamed from: e */
    public View f7255e;

    /* renamed from: f */
    public int f7256f;

    /* renamed from: g */
    public int f7257g;

    /* renamed from: h */
    public int f7258h;

    /* renamed from: i */
    public int f7259i;

    /* renamed from: j */
    public final Rect f7260j;

    /* renamed from: k */
    public final C9223c f7261k;

    /* renamed from: l */
    public boolean f7262l;

    /* renamed from: m */
    public boolean f7263m;

    /* renamed from: n */
    public Drawable f7264n;

    /* renamed from: o */
    public Drawable f7265o;

    /* renamed from: p */
    public int f7266p;

    /* renamed from: q */
    public boolean f7267q;

    /* renamed from: r */
    public ValueAnimator f7268r;

    /* renamed from: s */
    public long f7269s;

    /* renamed from: t */
    public int f7270t;

    /* renamed from: u */
    public AppBarLayout.AbstractC3594c f7271u;

    /* renamed from: v */
    public int f7272v;

    /* renamed from: w */
    public WindowInsetsCompat f7273w;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams.class */
    public static class LayoutParams extends FrameLayout.LayoutParams {

        /* renamed from: a */
        public int f7274a;

        /* renamed from: b */
        public float f7275b;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f7274a = 0;
            this.f7275b = 0.5f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f7274a = 0;
            this.f7275b = 0.5f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CollapsingToolbarLayout_Layout);
            this.f7274a = obtainStyledAttributes.getInt(R$styleable.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            m31571a(obtainStyledAttributes.getFloat(R$styleable.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f));
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f7274a = 0;
            this.f7275b = 0.5f;
        }

        /* renamed from: a */
        public void m31571a(float f) {
            this.f7275b = f;
        }
    }

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$a.class */
    public class C3595a implements OnApplyWindowInsetsListener {
        public C3595a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return CollapsingToolbarLayout.this.m31587a(windowInsetsCompat);
        }
    }

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$b.class */
    public class C3596b implements ValueAnimator.AnimatorUpdateListener {
        public C3596b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CollapsingToolbarLayout.this.m31578c(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$c.class */
    public class C3597c implements AppBarLayout.AbstractC3594c {
        public C3597c() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.AbstractC3593b
        /* renamed from: a */
        public void mo26837a(AppBarLayout appBarLayout, int i) {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            collapsingToolbarLayout.f7272v = i;
            WindowInsetsCompat windowInsetsCompat = collapsingToolbarLayout.f7273w;
            int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                C9177a e = CollapsingToolbarLayout.m31573e(childAt);
                int i3 = layoutParams.f7274a;
                if (i3 == 1) {
                    e.m15943b(MathUtils.clamp(-i, 0, CollapsingToolbarLayout.this.m31580b(childAt)));
                } else if (i3 == 2) {
                    e.m15943b(Math.round((-i) * layoutParams.f7275b));
                }
            }
            CollapsingToolbarLayout.this.m31572f();
            CollapsingToolbarLayout collapsingToolbarLayout2 = CollapsingToolbarLayout.this;
            if (collapsingToolbarLayout2.f7265o != null && systemWindowInsetTop > 0) {
                ViewCompat.postInvalidateOnAnimation(collapsingToolbarLayout2);
            }
            CollapsingToolbarLayout.this.f7261k.m15689e(Math.abs(i) / ((CollapsingToolbarLayout.this.getHeight() - ViewCompat.getMinimumHeight(CollapsingToolbarLayout.this)) - systemWindowInsetTop));
        }
    }

    public CollapsingToolbarLayout(Context context) {
        this(context, null);
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7251a = true;
        this.f7260j = new Rect();
        this.f7270t = -1;
        this.f7261k = new C9223c(this);
        this.f7261k.m15699b(C9167a.f20883e);
        TypedArray c = C9245k.m15637c(context, attributeSet, R$styleable.CollapsingToolbarLayout, i, R$style.Widget_Design_CollapsingToolbar, new int[0]);
        this.f7261k.m15688e(c.getInt(R$styleable.CollapsingToolbarLayout_expandedTitleGravity, 8388691));
        this.f7261k.m15694c(c.getInt(R$styleable.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
        int dimensionPixelSize = c.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_expandedTitleMargin, 0);
        this.f7259i = dimensionPixelSize;
        this.f7258h = dimensionPixelSize;
        this.f7257g = dimensionPixelSize;
        this.f7256f = dimensionPixelSize;
        if (c.hasValue(R$styleable.CollapsingToolbarLayout_expandedTitleMarginStart)) {
            this.f7256f = c.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_expandedTitleMarginStart, 0);
        }
        if (c.hasValue(R$styleable.CollapsingToolbarLayout_expandedTitleMarginEnd)) {
            this.f7258h = c.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_expandedTitleMarginEnd, 0);
        }
        if (c.hasValue(R$styleable.CollapsingToolbarLayout_expandedTitleMarginTop)) {
            this.f7257g = c.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_expandedTitleMarginTop, 0);
        }
        if (c.hasValue(R$styleable.CollapsingToolbarLayout_expandedTitleMarginBottom)) {
            this.f7259i = c.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_expandedTitleMarginBottom, 0);
        }
        this.f7262l = c.getBoolean(R$styleable.CollapsingToolbarLayout_titleEnabled, true);
        m31586a(c.getText(R$styleable.CollapsingToolbarLayout_title));
        this.f7261k.m15691d(R$style.TextAppearance_Design_CollapsingToolbar_Expanded);
        this.f7261k.m15701b(C0054R.C0058style.TextAppearance_AppCompat_Widget_ActionBar_Title);
        if (c.hasValue(R$styleable.CollapsingToolbarLayout_expandedTitleTextAppearance)) {
            this.f7261k.m15691d(c.getResourceId(R$styleable.CollapsingToolbarLayout_expandedTitleTextAppearance, 0));
        }
        if (c.hasValue(R$styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance)) {
            this.f7261k.m15701b(c.getResourceId(R$styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance, 0));
        }
        this.f7270t = c.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
        this.f7269s = c.getInt(R$styleable.CollapsingToolbarLayout_scrimAnimationDuration, 600);
        m31589a(c.getDrawable(R$styleable.CollapsingToolbarLayout_contentScrim));
        m31581b(c.getDrawable(R$styleable.CollapsingToolbarLayout_statusBarScrim));
        this.f7252b = c.getResourceId(R$styleable.CollapsingToolbarLayout_toolbarId, -1);
        c.recycle();
        setWillNotDraw(false);
        ViewCompat.setOnApplyWindowInsetsListener(this, new C3595a());
    }

    /* renamed from: d */
    public static int m31575d(@NonNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return view.getHeight();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return view.getHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    /* renamed from: e */
    public static C9177a m31573e(View view) {
        C9177a aVar = (C9177a) view.getTag(R$id.view_offset_helper);
        C9177a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = new C9177a(view);
            view.setTag(R$id.view_offset_helper, aVar2);
        }
        return aVar2;
    }

    /* renamed from: a */
    public final View m31588a(View view) {
        View view2 = view;
        for (ViewParent parent = view.getParent(); parent != this && parent != null; parent = parent.getParent()) {
            if (parent instanceof View) {
                view2 = (View) parent;
            }
        }
        return view2;
    }

    /* renamed from: a */
    public WindowInsetsCompat m31587a(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(this) ? windowInsetsCompat : null;
        if (!ObjectsCompat.equals(this.f7273w, windowInsetsCompat2)) {
            this.f7273w = windowInsetsCompat2;
            requestLayout();
        }
        return windowInsetsCompat.consumeSystemWindowInsets();
    }

    /* renamed from: a */
    public final void m31591a() {
        if (this.f7251a) {
            Toolbar toolbar = null;
            this.f7253c = null;
            this.f7254d = null;
            int i = this.f7252b;
            if (i != -1) {
                this.f7253c = (Toolbar) findViewById(i);
                Toolbar toolbar2 = this.f7253c;
                if (toolbar2 != null) {
                    this.f7254d = m31588a(toolbar2);
                }
            }
            if (this.f7253c == null) {
                int childCount = getChildCount();
                int i2 = 0;
                while (true) {
                    if (i2 >= childCount) {
                        break;
                    }
                    View childAt = getChildAt(i2);
                    if (childAt instanceof Toolbar) {
                        toolbar = (Toolbar) childAt;
                        break;
                    }
                    i2++;
                }
                this.f7253c = toolbar;
            }
            m31574e();
            this.f7251a = false;
        }
    }

    /* renamed from: a */
    public final void m31590a(int i) {
        m31591a();
        ValueAnimator valueAnimator = this.f7268r;
        if (valueAnimator == null) {
            this.f7268r = new ValueAnimator();
            this.f7268r.setDuration(this.f7269s);
            this.f7268r.setInterpolator(i > this.f7266p ? C9167a.f20881c : C9167a.f20882d);
            this.f7268r.addUpdateListener(new C3596b());
        } else if (valueAnimator.isRunning()) {
            this.f7268r.cancel();
        }
        this.f7268r.setIntValues(this.f7266p, i);
        this.f7268r.start();
    }

    /* renamed from: a */
    public void m31589a(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f7264n;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f7264n = drawable3;
            Drawable drawable4 = this.f7264n;
            if (drawable4 != null) {
                drawable4.setBounds(0, 0, getWidth(), getHeight());
                this.f7264n.setCallback(this);
                this.f7264n.setAlpha(this.f7266p);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    /* renamed from: a */
    public void m31586a(@Nullable CharSequence charSequence) {
        this.f7261k.m15697b(charSequence);
        m31576d();
    }

    /* renamed from: a */
    public void m31585a(boolean z) {
        m31584a(z, ViewCompat.isLaidOut(this) && !isInEditMode());
    }

    /* renamed from: a */
    public void m31584a(boolean z, boolean z2) {
        if (this.f7267q != z) {
            int i = 255;
            if (z2) {
                if (!z) {
                    i = 0;
                }
                m31590a(i);
            } else {
                if (!z) {
                    i = 0;
                }
                m31578c(i);
            }
            this.f7267q = z;
        }
    }

    /* renamed from: b */
    public int m31583b() {
        int i = this.f7270t;
        if (i >= 0) {
            return i;
        }
        WindowInsetsCompat windowInsetsCompat = this.f7273w;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        return minimumHeight > 0 ? Math.min((minimumHeight * 2) + systemWindowInsetTop, getHeight()) : getHeight() / 3;
    }

    /* renamed from: b */
    public final int m31580b(View view) {
        return ((getHeight() - m31573e(view).m15946a()) - view.getHeight()) - ((FrameLayout.LayoutParams) ((LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    /* renamed from: b */
    public void m31582b(int i) {
        this.f7257g = i;
        requestLayout();
    }

    /* renamed from: b */
    public void m31581b(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f7265o;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f7265o = drawable3;
            Drawable drawable4 = this.f7265o;
            if (drawable4 != null) {
                if (drawable4.isStateful()) {
                    this.f7265o.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.f7265o, ViewCompat.getLayoutDirection(this));
                this.f7265o.setVisible(getVisibility() == 0, false);
                this.f7265o.setCallback(this);
                this.f7265o.setAlpha(this.f7266p);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Nullable
    /* renamed from: c */
    public CharSequence m31579c() {
        return this.f7262l ? this.f7261k.m15681k() : null;
    }

    /* renamed from: c */
    public void m31578c(int i) {
        Toolbar toolbar;
        if (i != this.f7266p) {
            if (!(this.f7264n == null || (toolbar = this.f7253c) == null)) {
                ViewCompat.postInvalidateOnAnimation(toolbar);
            }
            this.f7266p = i;
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    /* renamed from: c */
    public final boolean m31577c(View view) {
        View view2 = this.f7254d;
        boolean z = true;
        if (view2 == null || view2 == this ? view != this.f7253c : view != view2) {
            z = false;
        }
        return z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: d */
    public final void m31576d() {
        setContentDescription(m31579c());
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        m31591a();
        if (this.f7253c == null && (drawable = this.f7264n) != null && this.f7266p > 0) {
            drawable.mutate().setAlpha(this.f7266p);
            this.f7264n.draw(canvas);
        }
        if (this.f7262l && this.f7263m) {
            this.f7261k.m15710a(canvas);
        }
        if (this.f7265o != null && this.f7266p > 0) {
            WindowInsetsCompat windowInsetsCompat = this.f7273w;
            int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
            if (systemWindowInsetTop > 0) {
                this.f7265o.setBounds(0, -this.f7272v, getWidth(), systemWindowInsetTop - this.f7272v);
                this.f7265o.mutate().setAlpha(this.f7266p);
                this.f7265o.draw(canvas);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        boolean z;
        if (this.f7264n == null || this.f7266p <= 0 || !m31577c(view)) {
            z = false;
        } else {
            this.f7264n.mutate().setAlpha(this.f7266p);
            this.f7264n.draw(canvas);
            z = true;
        }
        boolean z2 = true;
        if (!super.drawChild(canvas, view, j)) {
            z2 = z;
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f7265o;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.f7264n;
        boolean z2 = z;
        if (drawable2 != null) {
            z2 = z;
            if (drawable2.isStateful()) {
                z2 = z | drawable2.setState(drawableState);
            }
        }
        C9223c cVar = this.f7261k;
        boolean z3 = z2;
        if (cVar != null) {
            z3 = z2 | cVar.m15704a(drawableState);
        }
        if (z3) {
            invalidate();
        }
    }

    /* renamed from: e */
    public final void m31574e() {
        View view;
        if (!this.f7262l && (view = this.f7255e) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f7255e);
            }
        }
        if (this.f7262l && this.f7253c != null) {
            if (this.f7255e == null) {
                this.f7255e = new View(getContext());
            }
            if (this.f7255e.getParent() == null) {
                this.f7253c.addView(this.f7255e, -1, -1);
            }
        }
    }

    /* renamed from: f */
    public final void m31572f() {
        if (this.f7264n != null || this.f7265o != null) {
            m31585a(getHeight() + this.f7272v < m31583b());
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            ViewCompat.setFitsSystemWindows(this, ViewCompat.getFitsSystemWindows((View) parent));
            if (this.f7271u == null) {
                this.f7271u = new C3597c();
            }
            ((AppBarLayout) parent).m31643a(this.f7271u);
            ViewCompat.requestApplyInsets(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.AbstractC3594c cVar = this.f7271u;
        if (cVar != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).m31637b(cVar);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view;
        super.onLayout(z, i, i2, i3, i4);
        WindowInsetsCompat windowInsetsCompat = this.f7273w;
        if (windowInsetsCompat != null) {
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (!ViewCompat.getFitsSystemWindows(childAt) && childAt.getTop() < systemWindowInsetTop) {
                    ViewCompat.offsetTopAndBottom(childAt, systemWindowInsetTop);
                }
            }
        }
        if (this.f7262l && (view = this.f7255e) != null) {
            boolean z2 = true;
            this.f7263m = ViewCompat.isAttachedToWindow(view) && this.f7255e.getVisibility() == 0;
            if (this.f7263m) {
                if (ViewCompat.getLayoutDirection(this) != 1) {
                    z2 = false;
                }
                View view2 = this.f7254d;
                if (view2 == null) {
                    view2 = this.f7253c;
                }
                int b = m31580b(view2);
                C9224d.m15677a(this, this.f7255e, this.f7260j);
                this.f7261k.m15713a(this.f7260j.left + (z2 ? this.f7253c.getTitleMarginEnd() : this.f7253c.getTitleMarginStart()), this.f7260j.top + b + this.f7253c.getTitleMarginTop(), this.f7260j.right + (z2 ? this.f7253c.getTitleMarginStart() : this.f7253c.getTitleMarginEnd()), (this.f7260j.bottom + b) - this.f7253c.getTitleMarginBottom());
                this.f7261k.m15700b(z2 ? this.f7258h : this.f7256f, this.f7260j.top + this.f7257g, (i3 - i) - (z2 ? this.f7256f : this.f7258h), (i4 - i2) - this.f7259i);
                this.f7261k.m15678n();
            }
        }
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            m31573e(getChildAt(i6)).m15942c();
        }
        if (this.f7253c != null) {
            if (this.f7262l && TextUtils.isEmpty(this.f7261k.m15681k())) {
                m31586a(this.f7253c.getTitle());
            }
            View view3 = this.f7254d;
            if (view3 == null || view3 == this) {
                setMinimumHeight(m31575d(this.f7253c));
            } else {
                setMinimumHeight(m31575d(view3));
            }
        }
        m31572f();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        m31591a();
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        WindowInsetsCompat windowInsetsCompat = this.f7273w;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if (mode == 0 && systemWindowInsetTop > 0) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + systemWindowInsetTop, 1073741824));
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.f7264n;
        if (drawable != null) {
            drawable.setBounds(0, 0, i, i2);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f7265o;
        if (!(drawable == null || drawable.isVisible() == z)) {
            this.f7265o.setVisible(z, false);
        }
        Drawable drawable2 = this.f7264n;
        if (drawable2 != null && drawable2.isVisible() != z) {
            this.f7264n.setVisible(z, false);
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f7264n || drawable == this.f7265o;
    }
}
