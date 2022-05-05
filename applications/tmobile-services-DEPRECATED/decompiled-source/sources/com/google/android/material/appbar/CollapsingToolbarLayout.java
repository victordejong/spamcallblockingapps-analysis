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
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.C0042R;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.C1027R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout.class */
public class CollapsingToolbarLayout extends FrameLayout {

    /* renamed from: C */
    private static final int f9989C = C1027R.style.Widget_Design_CollapsingToolbar;

    /* renamed from: A */
    int f9990A;
    @Nullable

    /* renamed from: B */
    WindowInsetsCompat f9991B;

    /* renamed from: f */
    private boolean f9992f;

    /* renamed from: g */
    private int f9993g;
    @Nullable

    /* renamed from: h */
    private Toolbar f9994h;
    @Nullable

    /* renamed from: i */
    private View f9995i;

    /* renamed from: j */
    private View f9996j;

    /* renamed from: k */
    private int f9997k;

    /* renamed from: l */
    private int f9998l;

    /* renamed from: m */
    private int f9999m;

    /* renamed from: n */
    private int f10000n;

    /* renamed from: o */
    private final Rect f10001o;
    @NonNull

    /* renamed from: p */
    final CollapsingTextHelper f10002p;

    /* renamed from: q */
    private boolean f10003q;

    /* renamed from: r */
    private boolean f10004r;
    @Nullable

    /* renamed from: s */
    private Drawable f10005s;
    @Nullable

    /* renamed from: t */
    Drawable f10006t;

    /* renamed from: u */
    private int f10007u;

    /* renamed from: v */
    private boolean f10008v;

    /* renamed from: w */
    private ValueAnimator f10009w;

    /* renamed from: x */
    private long f10010x;

    /* renamed from: y */
    private int f10011y;

    /* renamed from: z */
    private AppBarLayout.OnOffsetChangedListener f10012z;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams.class */
    public static class LayoutParams extends FrameLayout.LayoutParams {

        /* renamed from: a */
        int f10015a;

        /* renamed from: b */
        float f10016b;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f10015a = 0;
            this.f10016b = 0.5f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f10015a = 0;
            this.f10016b = 0.5f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1027R.styleable.CollapsingToolbarLayout_Layout);
            this.f10015a = obtainStyledAttributes.getInt(C1027R.styleable.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            m10658a(obtainStyledAttributes.getFloat(C1027R.styleable.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f));
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(@NonNull ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f10015a = 0;
            this.f10016b = 0.5f;
        }

        /* renamed from: a */
        public void m10658a(float f) {
            this.f10016b = f;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener.class */
    private class OffsetUpdateListener implements AppBarLayout.OnOffsetChangedListener {
        OffsetUpdateListener() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        /* renamed from: a */
        public void mo10657a(AppBarLayout appBarLayout, int i) {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            collapsingToolbarLayout.f9990A = i;
            WindowInsetsCompat windowInsetsCompat = collapsingToolbarLayout.f9991B;
            int h = windowInsetsCompat != null ? windowInsetsCompat.m19093h() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                ViewOffsetHelper h2 = CollapsingToolbarLayout.m10664h(childAt);
                int i3 = layoutParams.f10015a;
                if (i3 == 1) {
                    h2.m10627f(MathUtils.m19451b(-i, 0, CollapsingToolbarLayout.this.m10665g(childAt)));
                } else if (i3 == 2) {
                    h2.m10627f(Math.round((-i) * layoutParams.f10016b));
                }
            }
            CollapsingToolbarLayout.this.m10659m();
            CollapsingToolbarLayout collapsingToolbarLayout2 = CollapsingToolbarLayout.this;
            if (collapsingToolbarLayout2.f10006t != null && h > 0) {
                ViewCompat.m19203d0(collapsingToolbarLayout2);
            }
            CollapsingToolbarLayout.this.f10002p.m9586d0(Math.abs(i) / ((CollapsingToolbarLayout.this.getHeight() - ViewCompat.m19242B(CollapsingToolbarLayout.this)) - h));
        }
    }

    public CollapsingToolbarLayout(@NonNull Context context) {
        this(context, null);
    }

    public CollapsingToolbarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CollapsingToolbarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f9989C), attributeSet, i);
        this.f9992f = true;
        this.f10001o = new Rect();
        this.f10011y = -1;
        Context context2 = getContext();
        CollapsingTextHelper collapsingTextHelper = new CollapsingTextHelper(this);
        this.f10002p = collapsingTextHelper;
        collapsingTextHelper.m9574j0(AnimationUtils.f9927e);
        TypedArray h = ThemeEnforcement.m9445h(context2, attributeSet, C1027R.styleable.CollapsingToolbarLayout, i, f9989C, new int[0]);
        this.f10002p.m9594Z(h.getInt(C1027R.styleable.CollapsingToolbarLayout_expandedTitleGravity, 8388691));
        this.f10002p.m9602R(h.getInt(C1027R.styleable.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
        int dimensionPixelSize = h.getDimensionPixelSize(C1027R.styleable.CollapsingToolbarLayout_expandedTitleMargin, 0);
        this.f10000n = dimensionPixelSize;
        this.f9999m = dimensionPixelSize;
        this.f9998l = dimensionPixelSize;
        this.f9997k = dimensionPixelSize;
        if (h.hasValue(C1027R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart)) {
            this.f9997k = h.getDimensionPixelSize(C1027R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart, 0);
        }
        if (h.hasValue(C1027R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd)) {
            this.f9999m = h.getDimensionPixelSize(C1027R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd, 0);
        }
        if (h.hasValue(C1027R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop)) {
            this.f9998l = h.getDimensionPixelSize(C1027R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop, 0);
        }
        if (h.hasValue(C1027R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom)) {
            this.f10000n = h.getDimensionPixelSize(C1027R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom, 0);
        }
        this.f10003q = h.getBoolean(C1027R.styleable.CollapsingToolbarLayout_titleEnabled, true);
        setTitle(h.getText(C1027R.styleable.CollapsingToolbarLayout_title));
        this.f10002p.m9597W(C1027R.style.TextAppearance_Design_CollapsingToolbar_Expanded);
        this.f10002p.m9605O(C0042R.style.TextAppearance_AppCompat_Widget_ActionBar_Title);
        if (h.hasValue(C1027R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance)) {
            this.f10002p.m9597W(h.getResourceId(C1027R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance, 0));
        }
        if (h.hasValue(C1027R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance)) {
            this.f10002p.m9605O(h.getResourceId(C1027R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance, 0));
        }
        this.f10011y = h.getDimensionPixelSize(C1027R.styleable.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
        if (h.hasValue(C1027R.styleable.CollapsingToolbarLayout_maxLines)) {
            this.f10002p.m9582f0(h.getInt(C1027R.styleable.CollapsingToolbarLayout_maxLines, 1));
        }
        this.f10010x = h.getInt(C1027R.styleable.CollapsingToolbarLayout_scrimAnimationDuration, 600);
        setContentScrim(h.getDrawable(C1027R.styleable.CollapsingToolbarLayout_contentScrim));
        setStatusBarScrim(h.getDrawable(C1027R.styleable.CollapsingToolbarLayout_statusBarScrim));
        this.f9993g = h.getResourceId(C1027R.styleable.CollapsingToolbarLayout_toolbarId, -1);
        h.recycle();
        setWillNotDraw(false);
        ViewCompat.m19243A0(this, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.appbar.CollapsingToolbarLayout.1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            /* renamed from: a */
            public WindowInsetsCompat mo9036a(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
                return CollapsingToolbarLayout.this.m10662j(windowInsetsCompat);
            }
        });
    }

    /* renamed from: a */
    private void m10671a(int i) {
        m10670b();
        ValueAnimator valueAnimator = this.f10009w;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.f10009w = valueAnimator2;
            valueAnimator2.setDuration(this.f10010x);
            this.f10009w.setInterpolator(i > this.f10007u ? AnimationUtils.f9925c : AnimationUtils.f9926d);
            this.f10009w.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.CollapsingToolbarLayout.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator3) {
                    CollapsingToolbarLayout.this.setScrimAlpha(((Integer) valueAnimator3.getAnimatedValue()).intValue());
                }
            });
        } else if (valueAnimator.isRunning()) {
            this.f10009w.cancel();
        }
        this.f10009w.setIntValues(this.f10007u, i);
        this.f10009w.start();
    }

    /* renamed from: b */
    private void m10670b() {
        if (this.f9992f) {
            Toolbar toolbar = null;
            this.f9994h = null;
            this.f9995i = null;
            int i = this.f9993g;
            if (i != -1) {
                Toolbar toolbar2 = (Toolbar) findViewById(i);
                this.f9994h = toolbar2;
                if (toolbar2 != null) {
                    this.f9995i = m10669c(toolbar2);
                }
            }
            if (this.f9994h == null) {
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
                this.f9994h = toolbar;
            }
            m10660l();
            this.f9992f = false;
        }
    }

    @NonNull
    /* renamed from: c */
    private View m10669c(@NonNull View view) {
        View view2 = view;
        for (ViewParent parent = view.getParent(); parent != this && parent != null; parent = parent.getParent()) {
            if (parent instanceof View) {
                view2 = (View) parent;
            }
        }
        return view2;
    }

    /* renamed from: f */
    private static int m10666f(@NonNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return view.getHeight();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return view.getHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    @NonNull
    /* renamed from: h */
    static ViewOffsetHelper m10664h(@NonNull View view) {
        ViewOffsetHelper viewOffsetHelper = (ViewOffsetHelper) view.getTag(C1027R.C1030id.view_offset_helper);
        ViewOffsetHelper viewOffsetHelper2 = viewOffsetHelper;
        if (viewOffsetHelper == null) {
            viewOffsetHelper2 = new ViewOffsetHelper(view);
            view.setTag(C1027R.C1030id.view_offset_helper, viewOffsetHelper2);
        }
        return viewOffsetHelper2;
    }

    /* renamed from: i */
    private boolean m10663i(View view) {
        View view2 = this.f9995i;
        boolean z = true;
        if (view2 == null || view2 == this ? view != this.f9994h : view != view2) {
            z = false;
        }
        return z;
    }

    /* renamed from: k */
    private void m10661k() {
        setContentDescription(getTitle());
    }

    /* renamed from: l */
    private void m10660l() {
        View view;
        if (!this.f10003q && (view = this.f9996j) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f9996j);
            }
        }
        if (this.f10003q && this.f9994h != null) {
            if (this.f9996j == null) {
                this.f9996j = new View(getContext());
            }
            if (this.f9996j.getParent() == null) {
                this.f9994h.addView(this.f9996j, -1, -1);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        m10670b();
        if (this.f9994h == null && (drawable = this.f10005s) != null && this.f10007u > 0) {
            drawable.mutate().setAlpha(this.f10007u);
            this.f10005s.draw(canvas);
        }
        if (this.f10003q && this.f10004r) {
            this.f10002p.m9575j(canvas);
        }
        if (this.f10006t != null && this.f10007u > 0) {
            WindowInsetsCompat windowInsetsCompat = this.f9991B;
            int h = windowInsetsCompat != null ? windowInsetsCompat.m19093h() : 0;
            if (h > 0) {
                this.f10006t.setBounds(0, -this.f9990A, getWidth(), h - this.f9990A);
                this.f10006t.mutate().setAlpha(this.f10007u);
                this.f10006t.draw(canvas);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean z;
        if (this.f10005s == null || this.f10007u <= 0 || !m10663i(view)) {
            z = false;
        } else {
            this.f10005s.mutate().setAlpha(this.f10007u);
            this.f10005s.draw(canvas);
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
        Drawable drawable = this.f10006t;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.f10005s;
        boolean z2 = z;
        if (drawable2 != null) {
            z2 = z;
            if (drawable2.isStateful()) {
                z2 = z | drawable2.setState(drawableState);
            }
        }
        CollapsingTextHelper collapsingTextHelper = this.f10002p;
        boolean z3 = z2;
        if (collapsingTextHelper != null) {
            z3 = z2 | collapsingTextHelper.m9578h0(drawableState);
        }
        if (z3) {
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    /* renamed from: g */
    final int m10665g(@NonNull View view) {
        return ((getHeight() - m10664h(view).m10631b()) - view.getHeight()) - ((FrameLayout.LayoutParams) ((LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public int getCollapsedTitleGravity() {
        return this.f10002p.m9567o();
    }

    @NonNull
    public Typeface getCollapsedTitleTypeface() {
        return this.f10002p.m9563s();
    }

    @Nullable
    public Drawable getContentScrim() {
        return this.f10005s;
    }

    public int getExpandedTitleGravity() {
        return this.f10002p.m9559w();
    }

    public int getExpandedTitleMarginBottom() {
        return this.f10000n;
    }

    public int getExpandedTitleMarginEnd() {
        return this.f9999m;
    }

    public int getExpandedTitleMarginStart() {
        return this.f9997k;
    }

    public int getExpandedTitleMarginTop() {
        return this.f9998l;
    }

    @NonNull
    public Typeface getExpandedTitleTypeface() {
        return this.f10002p.m9557y();
    }

    @RestrictTo
    public int getMaxLines() {
        return this.f10002p.m9619A();
    }

    int getScrimAlpha() {
        return this.f10007u;
    }

    public long getScrimAnimationDuration() {
        return this.f10010x;
    }

    public int getScrimVisibleHeightTrigger() {
        int i = this.f10011y;
        if (i >= 0) {
            return i;
        }
        WindowInsetsCompat windowInsetsCompat = this.f9991B;
        int h = windowInsetsCompat != null ? windowInsetsCompat.m19093h() : 0;
        int B = ViewCompat.m19242B(this);
        return B > 0 ? Math.min((B * 2) + h, getHeight()) : getHeight() / 3;
    }

    @Nullable
    public Drawable getStatusBarScrim() {
        return this.f10006t;
    }

    @Nullable
    public CharSequence getTitle() {
        return this.f10003q ? this.f10002p.m9618B() : null;
    }

    /* renamed from: j */
    WindowInsetsCompat m10662j(@NonNull WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.m19164x(this) ? windowInsetsCompat : null;
        if (!ObjectsCompat.m19346a(this.f9991B, windowInsetsCompat2)) {
            this.f9991B = windowInsetsCompat2;
            requestLayout();
        }
        return windowInsetsCompat.m19098c();
    }

    /* renamed from: m */
    final void m10659m() {
        if (this.f10005s != null || this.f10006t != null) {
            setScrimsShown(getHeight() + this.f9990A < getScrimVisibleHeightTrigger());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            ViewCompat.m19167v0(this, ViewCompat.m19164x((View) parent));
            if (this.f10012z == null) {
                this.f10012z = new OffsetUpdateListener();
            }
            ((AppBarLayout) parent).m10736b(this.f10012z);
            ViewCompat.m19189k0(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.OnOffsetChangedListener onOffsetChangedListener = this.f10012z;
        if (onOffsetChangedListener != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).m10722p(onOffsetChangedListener);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view;
        super.onLayout(z, i, i2, i3, i4);
        WindowInsetsCompat windowInsetsCompat = this.f9991B;
        if (windowInsetsCompat != null) {
            int h = windowInsetsCompat.m19093h();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (!ViewCompat.m19164x(childAt) && childAt.getTop() < h) {
                    ViewCompat.m19212Y(childAt, h);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            m10664h(getChildAt(i6)).m10629d();
        }
        if (this.f10003q && (view = this.f9996j) != null) {
            boolean z2 = true;
            boolean z3 = ViewCompat.m19219R(view) && this.f9996j.getVisibility() == 0;
            this.f10004r = z3;
            if (z3) {
                if (ViewCompat.m19244A(this) != 1) {
                    z2 = false;
                }
                View view2 = this.f9995i;
                if (view2 == null) {
                    view2 = this.f9994h;
                }
                int g = m10665g(view2);
                DescendantOffsetUtils.m9554a(this, this.f9996j, this.f10001o);
                this.f10002p.m9607M(this.f10001o.left + (z2 ? this.f9994h.getTitleMarginEnd() : this.f9994h.getTitleMarginStart()), this.f10001o.top + g + this.f9994h.getTitleMarginTop(), this.f10001o.right - (z2 ? this.f9994h.getTitleMarginStart() : this.f9994h.getTitleMarginEnd()), (this.f10001o.bottom + g) - this.f9994h.getTitleMarginBottom());
                this.f10002p.m9599U(z2 ? this.f9999m : this.f9997k, this.f10001o.top + this.f9998l, (i3 - i) - (z2 ? this.f9997k : this.f9999m), (i4 - i2) - this.f10000n);
                this.f10002p.m9609K();
            }
        }
        if (this.f9994h != null) {
            if (this.f10003q && TextUtils.isEmpty(this.f10002p.m9618B())) {
                setTitle(this.f9994h.getTitle());
            }
            View view3 = this.f9995i;
            if (view3 == null || view3 == this) {
                setMinimumHeight(m10666f(this.f9994h));
            } else {
                setMinimumHeight(m10666f(view3));
            }
        }
        m10659m();
        int childCount3 = getChildCount();
        for (int i7 = 0; i7 < childCount3; i7++) {
            m10664h(getChildAt(i7)).m10632a();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        m10670b();
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        WindowInsetsCompat windowInsetsCompat = this.f9991B;
        int h = windowInsetsCompat != null ? windowInsetsCompat.m19093h() : 0;
        if (mode == 0 && h > 0) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + h, 1073741824));
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.f10005s;
        if (drawable != null) {
            drawable.setBounds(0, 0, i, i2);
        }
    }

    public void setCollapsedTitleGravity(int i) {
        this.f10002p.m9602R(i);
    }

    public void setCollapsedTitleTextAppearance(@StyleRes int i) {
        this.f10002p.m9605O(i);
    }

    public void setCollapsedTitleTextColor(@ColorInt int i) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f10002p.m9603Q(colorStateList);
    }

    public void setCollapsedTitleTypeface(@Nullable Typeface typeface) {
        this.f10002p.m9601S(typeface);
    }

    public void setContentScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f10005s;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f10005s = drawable3;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, getWidth(), getHeight());
                this.f10005s.setCallback(this);
                this.f10005s.setAlpha(this.f10007u);
            }
            ViewCompat.m19203d0(this);
        }
    }

    public void setContentScrimColor(@ColorInt int i) {
        setContentScrim(new ColorDrawable(i));
    }

    public void setContentScrimResource(@DrawableRes int i) {
        setContentScrim(ContextCompat.m19673f(getContext(), i));
    }

    public void setExpandedTitleColor(@ColorInt int i) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedTitleGravity(int i) {
        this.f10002p.m9594Z(i);
    }

    public void setExpandedTitleMargin(int i, int i2, int i3, int i4) {
        this.f9997k = i;
        this.f9998l = i2;
        this.f9999m = i3;
        this.f10000n = i4;
        requestLayout();
    }

    public void setExpandedTitleMarginBottom(int i) {
        this.f10000n = i;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i) {
        this.f9999m = i;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i) {
        this.f9997k = i;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i) {
        this.f9998l = i;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(@StyleRes int i) {
        this.f10002p.m9597W(i);
    }

    public void setExpandedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f10002p.m9595Y(colorStateList);
    }

    public void setExpandedTitleTypeface(@Nullable Typeface typeface) {
        this.f10002p.m9590b0(typeface);
    }

    @RestrictTo
    public void setMaxLines(int i) {
        this.f10002p.m9582f0(i);
    }

    void setScrimAlpha(int i) {
        Toolbar toolbar;
        if (i != this.f10007u) {
            if (!(this.f10005s == null || (toolbar = this.f9994h) == null)) {
                ViewCompat.m19203d0(toolbar);
            }
            this.f10007u = i;
            ViewCompat.m19203d0(this);
        }
    }

    public void setScrimAnimationDuration(@IntRange(from = 0) long j) {
        this.f10010x = j;
    }

    public void setScrimVisibleHeightTrigger(@IntRange(from = 0) int i) {
        if (this.f10011y != i) {
            this.f10011y = i;
            m10659m();
        }
    }

    public void setScrimsShown(boolean z) {
        setScrimsShown(z, ViewCompat.m19218S(this) && !isInEditMode());
    }

    public void setScrimsShown(boolean z, boolean z2) {
        if (this.f10008v != z) {
            int i = 255;
            if (z2) {
                if (!z) {
                    i = 0;
                }
                m10671a(i);
            } else {
                if (!z) {
                    i = 0;
                }
                setScrimAlpha(i);
            }
            this.f10008v = z;
        }
    }

    public void setStatusBarScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f10006t;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f10006t = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f10006t.setState(getDrawableState());
                }
                DrawableCompat.m19500m(this.f10006t, ViewCompat.m19244A(this));
                this.f10006t.setVisible(getVisibility() == 0, false);
                this.f10006t.setCallback(this);
                this.f10006t.setAlpha(this.f10007u);
            }
            ViewCompat.m19203d0(this);
        }
    }

    public void setStatusBarScrimColor(@ColorInt int i) {
        setStatusBarScrim(new ColorDrawable(i));
    }

    public void setStatusBarScrimResource(@DrawableRes int i) {
        setStatusBarScrim(ContextCompat.m19673f(getContext(), i));
    }

    public void setTitle(@Nullable CharSequence charSequence) {
        this.f10002p.m9576i0(charSequence);
        m10661k();
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.f10003q) {
            this.f10003q = z;
            m10661k();
            m10660l();
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f10006t;
        if (!(drawable == null || drawable.isVisible() == z)) {
            this.f10006t.setVisible(z, false);
        }
        Drawable drawable2 = this.f10005s;
        if (drawable2 != null && drawable2.isVisible() != z) {
            this.f10005s.setVisible(z, false);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(@NonNull Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f10005s || drawable == this.f10006t;
    }
}
