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
import androidx.core.view.ac;
import androidx.core.view.v;
import com.google.android.material.a;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.b;
import java.util.ArrayList;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout.class */
public class CollapsingToolbarLayout extends FrameLayout {
    private static final int e = a.k.Widget_Design_CollapsingToolbar;

    /* renamed from: a  reason: collision with root package name */
    final com.google.android.material.internal.a f30216a;

    /* renamed from: b  reason: collision with root package name */
    Drawable f30217b;

    /* renamed from: c  reason: collision with root package name */
    int f30218c;

    /* renamed from: d  reason: collision with root package name */
    ac f30219d;
    private boolean f;
    private int g;
    private ViewGroup h;
    private View i;
    private View j;
    private int k;
    private int l;
    private int m;
    private int n;
    private final Rect o;
    private boolean p;
    private boolean q;
    private Drawable r;
    private int s;
    private boolean t;
    private ValueAnimator u;
    private long v;
    private int w;
    private AppBarLayout.b x;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams.class */
    public static class LayoutParams extends FrameLayout.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public int f30222a;

        /* renamed from: b  reason: collision with root package name */
        float f30223b;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f30222a = 0;
            this.f30223b = 0.5f;
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2, i3);
            this.f30222a = 0;
            this.f30223b = 0.5f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f30222a = 0;
            this.f30223b = 0.5f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.l.CollapsingToolbarLayout_Layout);
            this.f30222a = obtainStyledAttributes.getInt(a.l.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            this.f30223b = obtainStyledAttributes.getFloat(a.l.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f30222a = 0;
            this.f30223b = 0.5f;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f30222a = 0;
            this.f30223b = 0.5f;
        }

        public LayoutParams(FrameLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f30222a = 0;
            this.f30223b = 0.5f;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$a.class */
    final class a implements AppBarLayout.b {
        a() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.a
        public final void a(int i) {
            CollapsingToolbarLayout.this.f30218c = i;
            int b2 = CollapsingToolbarLayout.this.f30219d != null ? CollapsingToolbarLayout.this.f30219d.b() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                com.google.android.material.appbar.a a2 = CollapsingToolbarLayout.a(childAt);
                int i3 = layoutParams.f30222a;
                if (i3 == 1) {
                    a2.a(androidx.core.b.a.a(-i, 0, CollapsingToolbarLayout.this.b(childAt)));
                } else if (i3 == 2) {
                    a2.a(Math.round((-i) * layoutParams.f30223b));
                }
            }
            CollapsingToolbarLayout.this.a();
            if (CollapsingToolbarLayout.this.f30217b != null && b2 > 0) {
                v.d(CollapsingToolbarLayout.this);
            }
            CollapsingToolbarLayout.this.f30216a.b(Math.abs(i) / ((CollapsingToolbarLayout.this.getHeight() - v.l(CollapsingToolbarLayout.this)) - b2));
        }
    }

    public CollapsingToolbarLayout(Context context) {
        this(context, null);
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.collapsingToolbarLayoutStyle);
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

    static com.google.android.material.appbar.a a(View view) {
        com.google.android.material.appbar.a aVar = (com.google.android.material.appbar.a) view.getTag(a.f.view_offset_helper);
        com.google.android.material.appbar.a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = new com.google.android.material.appbar.a(view);
            view.setTag(a.f.view_offset_helper, aVar2);
        }
        return aVar2;
    }

    private void b() {
        if (this.f) {
            ViewGroup viewGroup = null;
            this.h = null;
            this.i = null;
            int i = this.g;
            if (i != -1) {
                ViewGroup viewGroup2 = (ViewGroup) findViewById(i);
                this.h = viewGroup2;
                if (viewGroup2 != null) {
                    this.i = d(viewGroup2);
                }
            }
            if (this.h == null) {
                int childCount = getChildCount();
                int i2 = 0;
                while (true) {
                    if (i2 >= childCount) {
                        break;
                    }
                    View childAt = getChildAt(i2);
                    if (c(childAt)) {
                        viewGroup = (ViewGroup) childAt;
                        break;
                    }
                    i2++;
                }
                this.h = viewGroup;
            }
            c();
            this.f = false;
        }
    }

    private void c() {
        View view;
        if (!this.p && (view = this.j) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.j);
            }
        }
        if (this.p && this.h != null) {
            if (this.j == null) {
                this.j = new View(getContext());
            }
            if (this.j.getParent() == null) {
                this.h.addView(this.j, -1, -1);
            }
        }
    }

    private static boolean c(View view) {
        if (!(view instanceof Toolbar)) {
            return Build.VERSION.SDK_INT >= 21 && (view instanceof android.widget.Toolbar);
        }
        return true;
    }

    private View d(View view) {
        View view2 = view;
        for (ViewParent parent = view.getParent(); parent != this && parent != null; parent = parent.getParent()) {
            if (parent instanceof View) {
                view2 = (View) parent;
            }
        }
        return view2;
    }

    private CharSequence d() {
        if (this.p) {
            return this.f30216a.e;
        }
        return null;
    }

    private int e() {
        int i = this.w;
        if (i >= 0) {
            return i;
        }
        ac acVar = this.f30219d;
        int b2 = acVar != null ? acVar.b() : 0;
        int l = v.l(this);
        return l > 0 ? Math.min((l * 2) + b2, getHeight()) : getHeight() / 3;
    }

    private static int e(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return view.getMeasuredHeight();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return view.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    private static LayoutParams f() {
        return new LayoutParams(-1, -1);
    }

    private void g() {
        setContentDescription(d());
    }

    final void a() {
        if (this.r != null || this.f30217b != null) {
            setScrimsShown(getHeight() + this.f30218c < e());
        }
    }

    final void a(int i) {
        ViewGroup viewGroup;
        if (i != this.s) {
            if (!(this.r == null || (viewGroup = this.h) == null)) {
                v.d(viewGroup);
            }
            this.s = i;
            v.d(this);
        }
    }

    final int b(View view) {
        return ((getHeight() - a(view).f30239a) - view.getHeight()) - ((LayoutParams) view.getLayoutParams()).bottomMargin;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        b();
        if (this.h == null && (drawable = this.r) != null && this.s > 0) {
            drawable.mutate().setAlpha(this.s);
            this.r.draw(canvas);
        }
        if (this.p && this.q) {
            this.f30216a.a(canvas);
        }
        if (this.f30217b != null && this.s > 0) {
            ac acVar = this.f30219d;
            int b2 = acVar != null ? acVar.b() : 0;
            if (b2 > 0) {
                this.f30217b.setBounds(0, -this.f30218c, getWidth(), b2 - this.f30218c);
                this.f30217b.mutate().setAlpha(this.s);
                this.f30217b.draw(canvas);
            }
        }
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
            android.graphics.drawable.Drawable r0 = r0.r
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x005f
            r0 = r6
            int r0 = r0.s
            if (r0 <= 0) goto L_0x005f
            r0 = r6
            android.view.View r0 = r0.i
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x002f
            r0 = r12
            r1 = r6
            if (r0 != r1) goto L_0x0026
            goto L_0x002f
        L_0x0026:
            r0 = r8
            r1 = r12
            if (r0 != r1) goto L_0x003d
            goto L_0x0037
        L_0x002f:
            r0 = r8
            r1 = r6
            android.view.ViewGroup r1 = r1.h
            if (r0 != r1) goto L_0x003d
        L_0x0037:
            r0 = 1
            r13 = r0
            goto L_0x0040
        L_0x003d:
            r0 = 0
            r13 = r0
        L_0x0040:
            r0 = r13
            if (r0 == 0) goto L_0x005f
            r0 = r11
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r1 = r6
            int r1 = r1.s
            r0.setAlpha(r1)
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.r
            r1 = r7
            r0.draw(r1)
            r0 = 1
            r13 = r0
            goto L_0x0062
        L_0x005f:
            r0 = 0
            r13 = r0
        L_0x0062:
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            boolean r0 = super.drawChild(r1, r2, r3)
            if (r0 != 0) goto L_0x0076
            r0 = r13
            if (r0 == 0) goto L_0x0074
            goto L_0x0076
        L_0x0074:
            r0 = 0
            return r0
        L_0x0076:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f30217b;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.r;
        boolean z2 = z;
        if (drawable2 != null) {
            z2 = z;
            if (drawable2.isStateful()) {
                z2 = z | drawable2.setState(drawableState);
            }
        }
        com.google.android.material.internal.a aVar = this.f30216a;
        boolean z3 = z2;
        if (aVar != null) {
            z3 = z2 | aVar.a(drawableState);
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
            v.b(this, v.s((View) parent));
            if (this.x == null) {
                this.x = new a();
            }
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            AppBarLayout.b bVar = this.x;
            if (appBarLayout.f30197d == null) {
                appBarLayout.f30197d = new ArrayList();
            }
            if (bVar != null && !appBarLayout.f30197d.contains(bVar)) {
                appBarLayout.f30197d.add(bVar);
            }
            v.r(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.b bVar = this.x;
        if (bVar != null && (parent instanceof AppBarLayout)) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            if (!(appBarLayout.f30197d == null || bVar == null)) {
                appBarLayout.f30197d.remove(bVar);
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
        ac acVar = this.f30219d;
        if (acVar != null) {
            int b2 = acVar.b();
            int childCount = getChildCount();
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = getChildAt(i9);
                if (!v.s(childAt) && childAt.getTop() < b2) {
                    v.e(childAt, b2);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i10 = 0; i10 < childCount2; i10++) {
            a(getChildAt(i10)).a();
        }
        if (this.p && (view = this.j) != null) {
            boolean z2 = true;
            boolean z3 = v.E(view) && this.j.getVisibility() == 0;
            this.q = z3;
            if (z3) {
                if (v.f(this) != 1) {
                    z2 = false;
                }
                View view2 = this.i;
                if (view2 == null) {
                    view2 = this.h;
                }
                int b3 = b(view2);
                b.b(this, this.j, this.o);
                ViewGroup viewGroup = this.h;
                if (viewGroup instanceof Toolbar) {
                    Toolbar toolbar = (Toolbar) viewGroup;
                    i6 = toolbar.e;
                    i8 = toolbar.f;
                    i5 = toolbar.g;
                    i7 = toolbar.h;
                } else {
                    if (Build.VERSION.SDK_INT >= 24) {
                        ViewGroup viewGroup2 = this.h;
                        if (viewGroup2 instanceof android.widget.Toolbar) {
                            android.widget.Toolbar toolbar2 = (android.widget.Toolbar) viewGroup2;
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
                com.google.android.material.internal.a aVar = this.f30216a;
                int i11 = this.o.left;
                int i12 = z2 ? i8 : i6;
                int i13 = this.o.top;
                int i14 = this.o.right;
                if (!z2) {
                    i6 = i8;
                }
                aVar.b(i11 + i12, i13 + b3 + i5, i14 - i6, (this.o.bottom + b3) - i7);
                this.f30216a.a(z2 ? this.m : this.k, this.o.top + this.l, (i3 - i) - (z2 ? this.k : this.m), (i4 - i2) - this.n);
                this.f30216a.b();
            }
        }
        if (this.h != null && this.p && TextUtils.isEmpty(this.f30216a.e)) {
            ViewGroup viewGroup3 = this.h;
            setTitle(viewGroup3 instanceof Toolbar ? ((Toolbar) viewGroup3).i : (Build.VERSION.SDK_INT < 21 || !(viewGroup3 instanceof android.widget.Toolbar)) ? null : ((android.widget.Toolbar) viewGroup3).getTitle());
        }
        a();
        int childCount3 = getChildCount();
        for (int i15 = 0; i15 < childCount3; i15++) {
            a(getChildAt(i15)).b();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        b();
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        ac acVar = this.f30219d;
        int b2 = acVar != null ? acVar.b() : 0;
        if (mode == 0 && b2 > 0) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + b2, 1073741824));
        }
        ViewGroup viewGroup = this.h;
        if (viewGroup != null) {
            View view = this.i;
            if (view == null || view == this) {
                setMinimumHeight(e(viewGroup));
            } else {
                setMinimumHeight(e(view));
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.r;
        if (drawable != null) {
            drawable.setBounds(0, 0, i, i2);
        }
    }

    public void setCollapsedTitleGravity(int i) {
        this.f30216a.b(i);
    }

    public void setCollapsedTitleTextAppearance(int i) {
        this.f30216a.c(i);
    }

    public void setCollapsedTitleTextColor(int i) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedTitleTextColor(ColorStateList colorStateList) {
        this.f30216a.a(colorStateList);
    }

    public void setCollapsedTitleTypeface(Typeface typeface) {
        this.f30216a.a(typeface);
    }

    public void setContentScrim(Drawable drawable) {
        Drawable drawable2 = this.r;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.r = drawable3;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, getWidth(), getHeight());
                this.r.setCallback(this);
                this.r.setAlpha(this.s);
            }
            v.d(this);
        }
    }

    public void setContentScrimColor(int i) {
        setContentScrim(new ColorDrawable(i));
    }

    public void setContentScrimResource(int i) {
        setContentScrim(androidx.core.content.b.a(getContext(), i));
    }

    public void setExpandedTitleColor(int i) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedTitleGravity(int i) {
        this.f30216a.a(i);
    }

    public void setExpandedTitleMargin(int i, int i2, int i3, int i4) {
        this.k = i;
        this.l = i2;
        this.m = i3;
        this.n = i4;
        requestLayout();
    }

    public void setExpandedTitleMarginBottom(int i) {
        this.n = i;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i) {
        this.m = i;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i) {
        this.k = i;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i) {
        this.l = i;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(int i) {
        this.f30216a.d(i);
    }

    public void setExpandedTitleTextColor(ColorStateList colorStateList) {
        this.f30216a.b(colorStateList);
    }

    public void setExpandedTitleTypeface(Typeface typeface) {
        this.f30216a.b(typeface);
    }

    public void setMaxLines(int i) {
        this.f30216a.e(i);
    }

    public void setScrimAnimationDuration(long j) {
        this.v = j;
    }

    public void setScrimVisibleHeightTrigger(int i) {
        if (this.w != i) {
            this.w = i;
            a();
        }
    }

    public void setScrimsShown(boolean z) {
        setScrimsShown(z, v.B(this) && !isInEditMode());
    }

    public void setScrimsShown(boolean z, boolean z2) {
        if (this.t != z) {
            int i = 255;
            if (z2) {
                if (!z) {
                    i = 0;
                }
                b();
                ValueAnimator valueAnimator = this.u;
                if (valueAnimator == null) {
                    ValueAnimator valueAnimator2 = new ValueAnimator();
                    this.u = valueAnimator2;
                    valueAnimator2.setDuration(this.v);
                    this.u.setInterpolator(i > this.s ? com.google.android.material.a.a.f30175c : com.google.android.material.a.a.f30176d);
                    this.u.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.CollapsingToolbarLayout.2
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                            CollapsingToolbarLayout.this.a(((Integer) valueAnimator3.getAnimatedValue()).intValue());
                        }
                    });
                } else if (valueAnimator.isRunning()) {
                    this.u.cancel();
                }
                this.u.setIntValues(this.s, i);
                this.u.start();
            } else {
                if (!z) {
                    i = 0;
                }
                a(i);
            }
            this.t = z;
        }
    }

    public void setStatusBarScrim(Drawable drawable) {
        Drawable drawable2 = this.f30217b;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f30217b = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f30217b.setState(getDrawableState());
                }
                androidx.core.graphics.drawable.a.b(this.f30217b, v.f(this));
                this.f30217b.setVisible(getVisibility() == 0, false);
                this.f30217b.setCallback(this);
                this.f30217b.setAlpha(this.s);
            }
            v.d(this);
        }
    }

    public void setStatusBarScrimColor(int i) {
        setStatusBarScrim(new ColorDrawable(i));
    }

    public void setStatusBarScrimResource(int i) {
        setStatusBarScrim(androidx.core.content.b.a(getContext(), i));
    }

    public void setTitle(CharSequence charSequence) {
        this.f30216a.a(charSequence);
        g();
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.p) {
            this.p = z;
            g();
            c();
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f30217b;
        if (!(drawable == null || drawable.isVisible() == z)) {
            this.f30217b.setVisible(z, false);
        }
        Drawable drawable2 = this.r;
        if (drawable2 != null && drawable2.isVisible() != z) {
            this.r.setVisible(z, false);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.r || drawable == this.f30217b;
    }
}
