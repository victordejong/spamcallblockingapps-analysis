package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.C2080R;
import com.google.android.material.appbar.AppBarLayout;
import e.m.a.g.b.k;
import e.m.a.g.l.a;
import e.m.a.g.o.b;
import e.m.a.g.o.c;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1821i.C26568d0;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1577m.p1578a.p1677g.p1678a.C25156a;
import p193e.p1577m.p1578a.p1677g.p1680b.C25171g;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout.class */
public class CollapsingToolbarLayout extends FrameLayout {

    /* renamed from: D */
    public static final int f6595D = C2080R.style.Widget_Design_CollapsingToolbar;

    /* renamed from: A */
    public boolean f6596A;

    /* renamed from: C */
    public boolean f6598C;

    /* renamed from: b */
    public int f6600b;

    /* renamed from: c */
    public ViewGroup f6601c;

    /* renamed from: d */
    public View f6602d;

    /* renamed from: e */
    public View f6603e;

    /* renamed from: f */
    public int f6604f;

    /* renamed from: g */
    public int f6605g;

    /* renamed from: h */
    public int f6606h;

    /* renamed from: i */
    public int f6607i;

    /* renamed from: k */
    public final b f6609k;

    /* renamed from: l */
    public final a f6610l;

    /* renamed from: m */
    public boolean f6611m;

    /* renamed from: n */
    public boolean f6612n;

    /* renamed from: o */
    public Drawable f6613o;

    /* renamed from: p */
    public Drawable f6614p;

    /* renamed from: q */
    public int f6615q;

    /* renamed from: r */
    public boolean f6616r;

    /* renamed from: s */
    public ValueAnimator f6617s;

    /* renamed from: t */
    public long f6618t;

    /* renamed from: u */
    public int f6619u;

    /* renamed from: v */
    public AppBarLayout.c f6620v;

    /* renamed from: w */
    public int f6621w;

    /* renamed from: x */
    public int f6622x;

    /* renamed from: y */
    public C26568d0 f6623y;

    /* renamed from: a */
    public boolean f6599a = true;

    /* renamed from: j */
    public final Rect f6608j = new Rect();

    /* renamed from: z */
    public int f6624z = 0;

    /* renamed from: B */
    public int f6597B = 0;

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$a.class */
    public static class C2085a extends FrameLayout.LayoutParams {

        /* renamed from: a */
        public int f6625a;

        /* renamed from: b */
        public float f6626b;

        public C2085a(int i, int i2) {
            super(i, i2);
            this.f6625a = 0;
            this.f6626b = 0.5f;
        }

        public C2085a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f6625a = 0;
            this.f6626b = 0.5f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2080R.styleable.CollapsingToolbarLayout_Layout);
            this.f6625a = obtainStyledAttributes.getInt(C2080R.styleable.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            this.f6626b = obtainStyledAttributes.getFloat(C2080R.styleable.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f);
            obtainStyledAttributes.recycle();
        }

        public C2085a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f6625a = 0;
            this.f6626b = 0.5f;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CollapsingToolbarLayout(android.content.Context r8, android.util.AttributeSet r9) {
        /*
            Method dump skipped, instructions count: 533
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    /* renamed from: b */
    public static int m38471b(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            return view.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        }
        return view.getMeasuredHeight();
    }

    /* renamed from: d */
    public static k m38469d(View view) {
        int i = C2080R.C2082id.view_offset_helper;
        k kVar = (k) view.getTag(i);
        k kVar2 = kVar;
        if (kVar == null) {
            kVar2 = new k(view);
            view.setTag(i, kVar2);
        }
        return kVar2;
    }

    /* renamed from: a */
    public final void m38472a() {
        ViewGroup viewGroup;
        if (!this.f6599a) {
            return;
        }
        this.f6601c = null;
        this.f6602d = null;
        int i = this.f6600b;
        if (i != -1) {
            CollapsingToolbarLayout collapsingToolbarLayout = (ViewGroup) findViewById(i);
            this.f6601c = collapsingToolbarLayout;
            if (collapsingToolbarLayout != null) {
                ViewParent parent = collapsingToolbarLayout.getParent();
                while (true) {
                    CollapsingToolbarLayout collapsingToolbarLayout2 = parent;
                    if (collapsingToolbarLayout2 == this || collapsingToolbarLayout2 == null) {
                        break;
                    }
                    if (collapsingToolbarLayout2 instanceof View) {
                        collapsingToolbarLayout = collapsingToolbarLayout2;
                    }
                    parent = collapsingToolbarLayout2.getParent();
                }
                this.f6602d = collapsingToolbarLayout;
            }
        }
        if (this.f6601c == null) {
            int childCount = getChildCount();
            int i2 = 0;
            while (true) {
                viewGroup = null;
                if (i2 >= childCount) {
                    break;
                }
                View childAt = getChildAt(i2);
                if ((childAt instanceof Toolbar) || (childAt instanceof android.widget.Toolbar)) {
                    viewGroup = (ViewGroup) childAt;
                    break;
                }
                i2++;
            }
            this.f6601c = viewGroup;
        }
        m38466g();
        this.f6599a = false;
    }

    /* renamed from: c */
    public final int m38470c(View view) {
        return ((getHeight() - m38469d(view).b) - view.getHeight()) - ((FrameLayout.LayoutParams) ((C2085a) view.getLayoutParams())).bottomMargin;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C2085a;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        m38472a();
        if (this.f6601c == null && (drawable = this.f6613o) != null && this.f6615q > 0) {
            drawable.mutate().setAlpha(this.f6615q);
            this.f6613o.draw(canvas);
        }
        if (this.f6611m && this.f6612n) {
            if (this.f6601c != null && this.f6613o != null && this.f6615q > 0 && m38468e()) {
                b bVar = this.f6609k;
                if (bVar.c < bVar.f) {
                    int save = canvas.save();
                    canvas.clipRect(this.f6613o.getBounds(), Region.Op.DIFFERENCE);
                    this.f6609k.g(canvas);
                    canvas.restoreToCount(save);
                }
            }
            this.f6609k.g(canvas);
        }
        if (this.f6614p == null || this.f6615q <= 0) {
            return;
        }
        C26568d0 c26568d0 = this.f6623y;
        int m1661f = c26568d0 != null ? c26568d0.m1661f() : 0;
        if (m1661f <= 0) {
            return;
        }
        this.f6614p.setBounds(0, -this.f6621w, getWidth(), m1661f - this.f6621w);
        this.f6614p.mutate().setAlpha(this.f6615q);
        this.f6614p.draw(canvas);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
        r14 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0084  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean drawChild(android.graphics.Canvas r7, android.view.View r8, long r9) {
        /*
            r6 = this;
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f6613o
            r11 = r0
            r0 = 1
            r12 = r0
            r0 = r11
            if (r0 == 0) goto L73
            r0 = r6
            int r0 = r0.f6615q
            if (r0 <= 0) goto L73
            r0 = r6
            android.view.View r0 = r0.f6602d
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L32
            r0 = r13
            r1 = r6
            if (r0 != r1) goto L29
            goto L32
        L29:
            r0 = r8
            r1 = r13
            if (r0 != r1) goto L40
            goto L3a
        L32:
            r0 = r8
            r1 = r6
            android.view.ViewGroup r1 = r1.f6601c
            if (r0 != r1) goto L40
        L3a:
            r0 = 1
            r14 = r0
            goto L43
        L40:
            r0 = 0
            r14 = r0
        L43:
            r0 = r14
            if (r0 == 0) goto L73
            r0 = r6
            r1 = r11
            r2 = r8
            r3 = r6
            int r3 = r3.getWidth()
            r4 = r6
            int r4 = r4.getHeight()
            r0.m38467f(r1, r2, r3, r4)
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f6613o
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r1 = r6
            int r1 = r1.f6615q
            r0.setAlpha(r1)
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f6613o
            r1 = r7
            r0.draw(r1)
            r0 = 1
            r14 = r0
            goto L76
        L73:
            r0 = 0
            r14 = r0
        L76:
            r0 = r12
            r15 = r0
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            boolean r0 = super.drawChild(r1, r2, r3)
            if (r0 != 0) goto L93
            r0 = r14
            if (r0 == 0) goto L90
            r0 = r12
            r15 = r0
            goto L93
        L90:
            r0 = 0
            r15 = r0
        L93:
            r0 = r15
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f6614p;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.f6613o;
        boolean z2 = z;
        if (drawable2 != null) {
            z2 = z;
            if (drawable2.isStateful()) {
                z2 = z | drawable2.setState(drawableState);
            }
        }
        b bVar = this.f6609k;
        boolean z3 = z2;
        if (bVar != null) {
            z3 = z2 | bVar.y(drawableState);
        }
        if (z3) {
            invalidate();
        }
    }

    /* renamed from: e */
    public final boolean m38468e() {
        boolean z = true;
        if (this.f6622x != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public final void m38467f(Drawable drawable, View view, int i, int i2) {
        int i3 = i2;
        if (m38468e()) {
            i3 = i2;
            if (view != null) {
                i3 = i2;
                if (this.f6611m) {
                    i3 = view.getBottom();
                }
            }
        }
        drawable.setBounds(0, 0, i, i3);
    }

    /* renamed from: g */
    public final void m38466g() {
        View view;
        if (!this.f6611m && (view = this.f6603e) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f6603e);
            }
        }
        if (!this.f6611m || this.f6601c == null) {
            return;
        }
        if (this.f6603e == null) {
            this.f6603e = new View(getContext());
        }
        if (this.f6603e.getParent() != null) {
            return;
        }
        this.f6601c.addView(this.f6603e, -1, -1);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C2085a(-1, -1);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    /* renamed from: generateDefaultLayoutParams */
    public FrameLayout.LayoutParams mo46191generateDefaultLayoutParams() {
        return new C2085a(-1, -1);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C2085a(layoutParams);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C2085a(getContext(), attributeSet);
    }

    public int getCollapsedTitleGravity() {
        return this.f6609k.l;
    }

    public Typeface getCollapsedTitleTypeface() {
        Typeface typeface = this.f6609k.w;
        if (typeface == null) {
            typeface = Typeface.DEFAULT;
        }
        return typeface;
    }

    public Drawable getContentScrim() {
        return this.f6613o;
    }

    public int getExpandedTitleGravity() {
        return this.f6609k.k;
    }

    public int getExpandedTitleMarginBottom() {
        return this.f6607i;
    }

    public int getExpandedTitleMarginEnd() {
        return this.f6606h;
    }

    public int getExpandedTitleMarginStart() {
        return this.f6604f;
    }

    public int getExpandedTitleMarginTop() {
        return this.f6605g;
    }

    public Typeface getExpandedTitleTypeface() {
        Typeface typeface = this.f6609k.x;
        if (typeface == null) {
            typeface = Typeface.DEFAULT;
        }
        return typeface;
    }

    public int getHyphenationFrequency() {
        return this.f6609k.g0;
    }

    public int getLineCount() {
        StaticLayout staticLayout = this.f6609k.Y;
        return staticLayout != null ? staticLayout.getLineCount() : 0;
    }

    public float getLineSpacingAdd() {
        return this.f6609k.Y.getSpacingAdd();
    }

    public float getLineSpacingMultiplier() {
        return this.f6609k.Y.getSpacingMultiplier();
    }

    public int getMaxLines() {
        return this.f6609k.d0;
    }

    public int getScrimAlpha() {
        return this.f6615q;
    }

    public long getScrimAnimationDuration() {
        return this.f6618t;
    }

    public int getScrimVisibleHeightTrigger() {
        int i = this.f6619u;
        if (i >= 0) {
            return i + this.f6624z + this.f6597B;
        }
        C26568d0 c26568d0 = this.f6623y;
        int m1661f = c26568d0 != null ? c26568d0.m1661f() : 0;
        AtomicInteger atomicInteger = C26614s.f74505a;
        int minimumHeight = getMinimumHeight();
        return minimumHeight > 0 ? Math.min((minimumHeight * 2) + m1661f, getHeight()) : getHeight() / 3;
    }

    public Drawable getStatusBarScrim() {
        return this.f6614p;
    }

    public CharSequence getTitle() {
        return this.f6611m ? this.f6609k.B : null;
    }

    public int getTitleCollapseMode() {
        return this.f6622x;
    }

    /* renamed from: h */
    public final void m38465h() {
        if (this.f6613o == null && this.f6614p == null) {
            return;
        }
        setScrimsShown(getHeight() + this.f6621w < getScrimVisibleHeightTrigger());
    }

    /* renamed from: i */
    public final void m38464i(int i, int i2, int i3, int i4, boolean z) {
        View view;
        int i5;
        int i6;
        int i7;
        if (!this.f6611m || (view = this.f6603e) == null) {
            return;
        }
        AtomicInteger atomicInteger = C26614s.f74505a;
        int i8 = 0;
        boolean z2 = view.isAttachedToWindow() && this.f6603e.getVisibility() == 0;
        this.f6612n = z2;
        if (!z2 && !z) {
            return;
        }
        boolean z3 = getLayoutDirection() == 1;
        ViewGroup viewGroup = this.f6602d;
        if (viewGroup == null) {
            viewGroup = this.f6601c;
        }
        int m38470c = m38470c(viewGroup);
        c.a(this, this.f6603e, this.f6608j);
        ViewGroup viewGroup2 = this.f6601c;
        if (viewGroup2 instanceof Toolbar) {
            Toolbar toolbar = (Toolbar) viewGroup2;
            i8 = toolbar.getTitleMarginStart();
            i7 = toolbar.getTitleMarginEnd();
            i6 = toolbar.getTitleMarginTop();
            i5 = toolbar.getTitleMarginBottom();
        } else if (Build.VERSION.SDK_INT < 24 || !(viewGroup2 instanceof android.widget.Toolbar)) {
            i5 = 0;
            i7 = 0;
            i6 = 0;
        } else {
            android.widget.Toolbar toolbar2 = (android.widget.Toolbar) viewGroup2;
            i8 = toolbar2.getTitleMarginStart();
            i7 = toolbar2.getTitleMarginEnd();
            i6 = toolbar2.getTitleMarginTop();
            i5 = toolbar2.getTitleMarginBottom();
        }
        b bVar = this.f6609k;
        Rect rect = this.f6608j;
        int i9 = rect.left + (z3 ? i7 : i8);
        int i10 = rect.top + m38470c + i6;
        int i11 = rect.right;
        if (!z3) {
            i8 = i7;
        }
        int i12 = i11 - i8;
        int i13 = (rect.bottom + m38470c) - i5;
        if (!b.n(bVar.i, i9, i10, i12, i13)) {
            bVar.i.set(i9, i10, i12, i13);
            bVar.J = true;
            bVar.l();
        }
        b bVar2 = this.f6609k;
        int i14 = z3 ? this.f6606h : this.f6604f;
        int i15 = this.f6608j.top + this.f6605g;
        int i16 = (i3 - i) - (z3 ? this.f6604f : this.f6606h);
        int i17 = (i4 - i2) - this.f6607i;
        if (!b.n(bVar2.h, i14, i15, i16, i17)) {
            bVar2.h.set(i14, i15, i16, i17);
            bVar2.J = true;
            bVar2.l();
        }
        this.f6609k.m(z);
    }

    /* renamed from: j */
    public final void m38463j() {
        if (this.f6601c == null || !this.f6611m || !TextUtils.isEmpty(this.f6609k.B)) {
            return;
        }
        ViewGroup viewGroup = this.f6601c;
        setTitle(viewGroup instanceof Toolbar ? ((Toolbar) viewGroup).getTitle() : viewGroup instanceof android.widget.Toolbar ? ((android.widget.Toolbar) viewGroup).getTitle() : null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AppBarLayout parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = parent;
            if (m38468e()) {
                appBarLayout.setLiftOnScroll(false);
            }
            AtomicInteger atomicInteger = C26614s.f74505a;
            setFitsSystemWindows(appBarLayout.getFitsSystemWindows());
            if (this.f6620v == null) {
                this.f6620v = new b(this);
            }
            appBarLayout.a(this.f6620v);
            requestApplyInsets();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        List list;
        AppBarLayout parent = getParent();
        AppBarLayout.c cVar = this.f6620v;
        if (cVar != null && (parent instanceof AppBarLayout) && (list = parent.h) != null) {
            list.remove(cVar);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C26568d0 c26568d0 = this.f6623y;
        if (c26568d0 != null) {
            int m1661f = c26568d0.m1661f();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                AtomicInteger atomicInteger = C26614s.f74505a;
                if (!childAt.getFitsSystemWindows() && childAt.getTop() < m1661f) {
                    childAt.offsetTopAndBottom(m1661f);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            k m38469d = m38469d(getChildAt(i6));
            m38469d.b = m38469d.a.getTop();
            m38469d.c = m38469d.a.getLeft();
        }
        m38464i(i, i2, i3, i4, false);
        m38463j();
        m38465h();
        int childCount3 = getChildCount();
        for (int i7 = 0; i7 < childCount3; i7++) {
            m38469d(getChildAt(i7)).a();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        m38472a();
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        C26568d0 c26568d0 = this.f6623y;
        int m1661f = c26568d0 != null ? c26568d0.m1661f() : 0;
        if ((mode == 0 || this.f6596A) && m1661f > 0) {
            this.f6624z = m1661f;
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + m1661f, 1073741824));
        }
        if (this.f6598C && this.f6609k.d0 > 1) {
            m38463j();
            m38464i(0, 0, getMeasuredWidth(), getMeasuredHeight(), true);
            StaticLayout staticLayout = this.f6609k.Y;
            int i3 = 0;
            if (staticLayout != null) {
                i3 = staticLayout.getLineCount();
            }
            if (i3 > 1) {
                b bVar = this.f6609k;
                TextPaint textPaint = bVar.L;
                textPaint.setTextSize(bVar.m);
                textPaint.setTypeface(bVar.x);
                textPaint.setLetterSpacing(bVar.X);
                this.f6597B = (i3 - 1) * Math.round(bVar.L.descent() + (-bVar.L.ascent()));
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + this.f6597B, 1073741824));
            }
        }
        ViewGroup viewGroup = this.f6601c;
        if (viewGroup != null) {
            View view = this.f6602d;
            if (view == null || view == this) {
                setMinimumHeight(m38471b(viewGroup));
            } else {
                setMinimumHeight(m38471b(view));
            }
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.f6613o;
        if (drawable != null) {
            m38467f(drawable, this.f6601c, i, i2);
        }
    }

    public void setCollapsedTitleGravity(int i) {
        b bVar = this.f6609k;
        if (bVar.l != i) {
            bVar.l = i;
            bVar.m(false);
        }
    }

    public void setCollapsedTitleTextAppearance(int i) {
        this.f6609k.o(i);
    }

    public void setCollapsedTitleTextColor(int i) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedTitleTextColor(ColorStateList colorStateList) {
        b bVar = this.f6609k;
        if (bVar.p != colorStateList) {
            bVar.p = colorStateList;
            bVar.m(false);
        }
    }

    public void setCollapsedTitleTypeface(Typeface typeface) {
        this.f6609k.r(typeface);
    }

    public void setContentScrim(Drawable drawable) {
        Drawable drawable2 = this.f6613o;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f6613o = drawable3;
            if (drawable3 != null) {
                m38467f(drawable3, this.f6601c, getWidth(), getHeight());
                this.f6613o.setCallback(this);
                this.f6613o.setAlpha(this.f6615q);
            }
            AtomicInteger atomicInteger = C26614s.f74505a;
            postInvalidateOnAnimation();
        }
    }

    public void setContentScrimColor(int i) {
        setContentScrim(new ColorDrawable(i));
    }

    public void setContentScrimResource(int i) {
        Context context = getContext();
        Object obj = C26467a.f74235a;
        setContentScrim(C26467a.C26470c.m1789b(context, i));
    }

    public void setExpandedTitleColor(int i) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedTitleGravity(int i) {
        b bVar = this.f6609k;
        if (bVar.k != i) {
            bVar.k = i;
            bVar.m(false);
        }
    }

    public void setExpandedTitleMarginBottom(int i) {
        this.f6607i = i;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i) {
        this.f6606h = i;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i) {
        this.f6604f = i;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i) {
        this.f6605g = i;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(int i) {
        this.f6609k.s(i);
    }

    public void setExpandedTitleTextColor(ColorStateList colorStateList) {
        b bVar = this.f6609k;
        if (bVar.o != colorStateList) {
            bVar.o = colorStateList;
            bVar.m(false);
        }
    }

    public void setExpandedTitleTypeface(Typeface typeface) {
        this.f6609k.v(typeface);
    }

    public void setExtraMultilineHeightEnabled(boolean z) {
        this.f6598C = z;
    }

    public void setForceApplySystemWindowInsetTop(boolean z) {
        this.f6596A = z;
    }

    public void setHyphenationFrequency(int i) {
        this.f6609k.g0 = i;
    }

    public void setLineSpacingAdd(float f) {
        this.f6609k.e0 = f;
    }

    public void setLineSpacingMultiplier(float f) {
        this.f6609k.f0 = f;
    }

    public void setMaxLines(int i) {
        b bVar = this.f6609k;
        if (i != bVar.d0) {
            bVar.d0 = i;
            bVar.f();
            bVar.m(false);
        }
    }

    public void setRtlTextDirectionHeuristicsEnabled(boolean z) {
        this.f6609k.E = z;
    }

    public void setScrimAlpha(int i) {
        ViewGroup viewGroup;
        if (i != this.f6615q) {
            if (this.f6613o != null && (viewGroup = this.f6601c) != null) {
                AtomicInteger atomicInteger = C26614s.f74505a;
                viewGroup.postInvalidateOnAnimation();
            }
            this.f6615q = i;
            AtomicInteger atomicInteger2 = C26614s.f74505a;
            postInvalidateOnAnimation();
        }
    }

    public void setScrimAnimationDuration(long j) {
        this.f6618t = j;
    }

    public void setScrimVisibleHeightTrigger(int i) {
        if (this.f6619u != i) {
            this.f6619u = i;
            m38465h();
        }
    }

    public void setScrimsShown(boolean z) {
        AtomicInteger atomicInteger = C26614s.f74505a;
        boolean z2 = isLaidOut() && !isInEditMode();
        if (this.f6616r != z) {
            if (z2) {
                int i = z ? 255 : 0;
                m38472a();
                ValueAnimator valueAnimator = this.f6617s;
                if (valueAnimator == null) {
                    ValueAnimator valueAnimator2 = new ValueAnimator();
                    this.f6617s = valueAnimator2;
                    valueAnimator2.setDuration(this.f6618t);
                    this.f6617s.setInterpolator(i > this.f6615q ? C25156a.f70399c : C25156a.f70400d);
                    this.f6617s.addUpdateListener(new C25171g(this));
                } else if (valueAnimator.isRunning()) {
                    this.f6617s.cancel();
                }
                this.f6617s.setIntValues(this.f6615q, i);
                this.f6617s.start();
            } else {
                int i2 = 0;
                if (z) {
                    i2 = 255;
                }
                setScrimAlpha(i2);
            }
            this.f6616r = z;
        }
    }

    public void setStatusBarScrim(Drawable drawable) {
        Drawable drawable2 = this.f6614p;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f6614p = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f6614p.setState(getDrawableState());
                }
                Drawable drawable4 = this.f6614p;
                AtomicInteger atomicInteger = C26614s.f74505a;
                drawable4.setLayoutDirection(getLayoutDirection());
                this.f6614p.setVisible(getVisibility() == 0, false);
                this.f6614p.setCallback(this);
                this.f6614p.setAlpha(this.f6615q);
            }
            AtomicInteger atomicInteger2 = C26614s.f74505a;
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarScrimColor(int i) {
        setStatusBarScrim(new ColorDrawable(i));
    }

    public void setStatusBarScrimResource(int i) {
        Context context = getContext();
        Object obj = C26467a.f74235a;
        setStatusBarScrim(C26467a.C26470c.m1789b(context, i));
    }

    public void setTitle(CharSequence charSequence) {
        this.f6609k.z(charSequence);
        setContentDescription(getTitle());
    }

    public void setTitleCollapseMode(int i) {
        this.f6622x = i;
        boolean m38468e = m38468e();
        this.f6609k.d = m38468e;
        AppBarLayout parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = parent;
            if (m38468e()) {
                appBarLayout.setLiftOnScroll(false);
            }
        }
        if (!m38468e || this.f6613o != null) {
            return;
        }
        float dimension = getResources().getDimension(C2080R.dimen.design_appbar_elevation);
        a aVar = this.f6610l;
        setContentScrimColor(aVar.a(aVar.c, dimension));
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.f6611m) {
            this.f6611m = z;
            setContentDescription(getTitle());
            m38466g();
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f6614p;
        if (drawable != null && drawable.isVisible() != z) {
            this.f6614p.setVisible(z, false);
        }
        Drawable drawable2 = this.f6613o;
        if (drawable2 == null || drawable2.isVisible() == z) {
            return;
        }
        this.f6613o.setVisible(z, false);
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f6613o || drawable == this.f6614p;
    }
}
