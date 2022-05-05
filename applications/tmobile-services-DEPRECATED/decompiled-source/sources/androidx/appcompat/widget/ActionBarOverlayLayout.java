package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.core.graphics.Insets;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.gms.common.api.Api;
import com.google.firebase.appindexing.Indexable;
@SuppressLint({"UnknownNullness"})
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout.class */
public class ActionBarOverlayLayout extends ViewGroup implements DecorContentParent, NestedScrollingParent, NestedScrollingParent2, NestedScrollingParent3 {

    /* renamed from: K */
    static final int[] f779K = {C0042R.attr.actionBarSize, 16842841};
    @NonNull

    /* renamed from: A */
    private WindowInsetsCompat f780A;
    @NonNull

    /* renamed from: B */
    private WindowInsetsCompat f781B;
    @NonNull

    /* renamed from: C */
    private WindowInsetsCompat f782C;

    /* renamed from: D */
    private ActionBarVisibilityCallback f783D;

    /* renamed from: E */
    private OverScroller f784E;

    /* renamed from: F */
    ViewPropertyAnimator f785F;

    /* renamed from: G */
    final AnimatorListenerAdapter f786G;

    /* renamed from: H */
    private final Runnable f787H;

    /* renamed from: I */
    private final Runnable f788I;

    /* renamed from: J */
    private final NestedScrollingParentHelper f789J;

    /* renamed from: f */
    private int f790f;

    /* renamed from: g */
    private int f791g;

    /* renamed from: h */
    private ContentFrameLayout f792h;

    /* renamed from: i */
    ActionBarContainer f793i;

    /* renamed from: j */
    private DecorToolbar f794j;

    /* renamed from: k */
    private Drawable f795k;

    /* renamed from: l */
    private boolean f796l;

    /* renamed from: m */
    private boolean f797m;

    /* renamed from: n */
    private boolean f798n;

    /* renamed from: o */
    private boolean f799o;

    /* renamed from: p */
    boolean f800p;

    /* renamed from: q */
    private int f801q;

    /* renamed from: r */
    private int f802r;

    /* renamed from: s */
    private final Rect f803s;

    /* renamed from: t */
    private final Rect f804t;

    /* renamed from: u */
    private final Rect f805u;

    /* renamed from: v */
    private final Rect f806v;

    /* renamed from: w */
    private final Rect f807w;

    /* renamed from: x */
    private final Rect f808x;

    /* renamed from: y */
    private final Rect f809y;
    @NonNull

    /* renamed from: z */
    private WindowInsetsCompat f810z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback.class */
    public interface ActionBarVisibilityCallback {
        /* renamed from: a */
        void mo21750a();

        /* renamed from: b */
        void mo21749b();

        /* renamed from: c */
        void mo21748c(boolean z);

        /* renamed from: d */
        void mo21747d();

        /* renamed from: e */
        void mo21746e();

        /* renamed from: f */
        void mo21745f(int i);
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public ActionBarOverlayLayout(@NonNull Context context) {
        this(context, null);
    }

    public ActionBarOverlayLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f791g = 0;
        this.f803s = new Rect();
        this.f804t = new Rect();
        this.f805u = new Rect();
        this.f806v = new Rect();
        this.f807w = new Rect();
        this.f808x = new Rect();
        this.f809y = new Rect();
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.f3306b;
        this.f810z = windowInsetsCompat;
        this.f780A = windowInsetsCompat;
        this.f781B = windowInsetsCompat;
        this.f782C = windowInsetsCompat;
        this.f786G = new AnimatorListenerAdapter() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.f785F = null;
                actionBarOverlayLayout.f800p = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.f785F = null;
                actionBarOverlayLayout.f800p = false;
            }
        };
        this.f787H = new Runnable() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.2
            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.m21758s();
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.f785F = actionBarOverlayLayout.f793i.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.f786G);
            }
        };
        this.f788I = new Runnable() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.3
            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.m21758s();
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.f785F = actionBarOverlayLayout.f793i.animate().translationY(-ActionBarOverlayLayout.this.f793i.getHeight()).setListener(ActionBarOverlayLayout.this.f786G);
            }
        };
        m21757t(context);
        this.f789J = new NestedScrollingParentHelper(this);
    }

    /* renamed from: h */
    private void m21763h() {
        m21758s();
        this.f788I.run();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0083  */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m21762o(@androidx.annotation.NonNull android.view.View r4, @androidx.annotation.NonNull android.graphics.Rect r5, boolean r6, boolean r7, boolean r8, boolean r9) {
        /*
            r3 = this;
            r0 = r4
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.appcompat.widget.ActionBarOverlayLayout$LayoutParams r0 = (androidx.appcompat.widget.ActionBarOverlayLayout.LayoutParams) r0
            r4 = r0
            r0 = 1
            r10 = r0
            r0 = r6
            if (r0 == 0) goto L_0x002e
            r0 = r4
            int r0 = r0.leftMargin
            r11 = r0
            r0 = r5
            int r0 = r0.left
            r12 = r0
            r0 = r11
            r1 = r12
            if (r0 == r1) goto L_0x002e
            r0 = r4
            r1 = r12
            r0.leftMargin = r1
            r0 = 1
            r13 = r0
            goto L_0x0031
        L_0x002e:
            r0 = 0
            r13 = r0
        L_0x0031:
            r0 = r13
            r6 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0057
            r0 = r4
            int r0 = r0.topMargin
            r12 = r0
            r0 = r5
            int r0 = r0.top
            r11 = r0
            r0 = r13
            r6 = r0
            r0 = r12
            r1 = r11
            if (r0 == r1) goto L_0x0057
            r0 = r4
            r1 = r11
            r0.topMargin = r1
            r0 = 1
            r6 = r0
        L_0x0057:
            r0 = r6
            r7 = r0
            r0 = r9
            if (r0 == 0) goto L_0x007e
            r0 = r4
            int r0 = r0.rightMargin
            r11 = r0
            r0 = r5
            int r0 = r0.right
            r12 = r0
            r0 = r6
            r7 = r0
            r0 = r11
            r1 = r12
            if (r0 == r1) goto L_0x007e
            r0 = r4
            r1 = r12
            r0.rightMargin = r1
            r0 = 1
            r7 = r0
        L_0x007e:
            r0 = r8
            if (r0 == 0) goto L_0x00a3
            r0 = r4
            int r0 = r0.bottomMargin
            r12 = r0
            r0 = r5
            int r0 = r0.bottom
            r11 = r0
            r0 = r12
            r1 = r11
            if (r0 == r1) goto L_0x00a3
            r0 = r4
            r1 = r11
            r0.bottomMargin = r1
            r0 = r10
            r7 = r0
            goto L_0x00a3
        L_0x00a3:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.m21762o(android.view.View, android.graphics.Rect, boolean, boolean, boolean, boolean):boolean");
    }

    /* renamed from: r */
    private DecorToolbar m21759r(View view) {
        if (view instanceof DecorToolbar) {
            return (DecorToolbar) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    /* renamed from: t */
    private void m21757t(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f779K);
        boolean z = false;
        this.f790f = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f795k = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        if (context.getApplicationInfo().targetSdkVersion < 19) {
            z = true;
        }
        this.f796l = z;
        this.f784E = new OverScroller(context);
    }

    /* renamed from: v */
    private void m21755v() {
        m21758s();
        postDelayed(this.f788I, 600L);
    }

    /* renamed from: w */
    private void m21754w() {
        m21758s();
        postDelayed(this.f787H, 600L);
    }

    /* renamed from: y */
    private void m21752y() {
        m21758s();
        this.f787H.run();
    }

    /* renamed from: z */
    private boolean m21751z(float f) {
        this.f784E.fling(0, 0, 0, (int) f, 0, 0, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER);
        return this.f784E.getFinalY() > this.f793i.getHeight();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    /* renamed from: a */
    public boolean mo21512a() {
        m21753x();
        return this.f794j.mo21196a();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    /* renamed from: b */
    public boolean mo21511b() {
        m21753x();
        return this.f794j.mo21195b();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    /* renamed from: c */
    public boolean mo21510c() {
        m21753x();
        return this.f794j.mo21194c();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    /* renamed from: d */
    public boolean mo21509d() {
        m21753x();
        return this.f794j.mo21193d();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f795k != null && !this.f796l) {
            int bottom = this.f793i.getVisibility() == 0 ? (int) (this.f793i.getBottom() + this.f793i.getTranslationY() + 0.5f) : 0;
            this.f795k.setBounds(0, bottom, getWidth(), this.f795k.getIntrinsicHeight() + bottom);
            this.f795k.draw(canvas);
        }
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    /* renamed from: e */
    public boolean mo21508e() {
        m21753x();
        return this.f794j.mo21192e();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    /* renamed from: f */
    public void mo21507f(int i) {
        m21753x();
        if (i == 2) {
            this.f794j.mo21177t();
        } else if (i == 5) {
            this.f794j.mo21176u();
        } else if (i == 109) {
            setOverlayMode(true);
        }
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            return super.fitSystemWindows(rect);
        }
        m21753x();
        boolean o = m21762o(this.f793i, rect, true, true, false, true);
        this.f806v.set(rect);
        ViewUtils.m21150a(this, this.f806v, this.f803s);
        if (!this.f807w.equals(this.f806v)) {
            this.f807w.set(this.f806v);
            o = true;
        }
        if (!this.f804t.equals(this.f803s)) {
            this.f804t.set(this.f803s);
            o = true;
        }
        if (!o) {
            return true;
        }
        requestLayout();
        return true;
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    /* renamed from: g */
    public void mo21506g() {
        m21753x();
        this.f794j.mo21191f();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f793i;
        return actionBarContainer != null ? -((int) actionBarContainer.getTranslationY()) : 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f789J.m19254a();
    }

    public CharSequence getTitle() {
        m21753x();
        return this.f794j.getTitle();
    }

    @Override // androidx.core.view.NestedScrollingParent3
    /* renamed from: i */
    public void mo18867i(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        mo18866j(view, i, i2, i3, i4, i5);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: j */
    public void mo18866j(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: k */
    public boolean mo18865k(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: l */
    public void mo18864l(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: m */
    public void mo18863m(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: n */
    public void mo18862n(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // android.view.View
    @RequiresApi
    public WindowInsets onApplyWindowInsets(@NonNull WindowInsets windowInsets) {
        m21753x();
        WindowInsetsCompat p = WindowInsetsCompat.m19085p(windowInsets);
        boolean o = m21762o(this.f793i, new Rect(p.m19095f(), p.m19093h(), p.m19094g(), p.m19096e()), true, true, false, true);
        ViewCompat.m19198g(this, p, this.f803s);
        Rect rect = this.f803s;
        WindowInsetsCompat k = p.m19090k(rect.left, rect.top, rect.right, rect.bottom);
        this.f810z = k;
        o = true;
        if (!this.f780A.equals(k)) {
            this.f780A = this.f810z;
            o = true;
        }
        if (!this.f804t.equals(this.f803s)) {
            this.f804t.set(this.f803s);
        }
        if (o) {
            requestLayout();
        }
        return p.m19100a().m19098c().m19099b().m19086o();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m21757t(getContext());
        ViewCompat.m19189k0(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m21758s();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        m21753x();
        measureChildWithMargins(this.f793i, i, 0, i2, 0);
        LayoutParams layoutParams = (LayoutParams) this.f793i.getLayoutParams();
        int max = Math.max(0, this.f793i.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
        int max2 = Math.max(0, this.f793i.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f793i.getMeasuredState());
        boolean z = (ViewCompat.m19225L(this) & Indexable.MAX_URL_LENGTH) != 0;
        if (z) {
            int i4 = this.f790f;
            i3 = i4;
            if (this.f798n) {
                i3 = i4;
                if (this.f793i.getTabContainer() != null) {
                    i3 = i4 + this.f790f;
                }
            }
        } else {
            i3 = this.f793i.getVisibility() != 8 ? this.f793i.getMeasuredHeight() : 0;
        }
        this.f805u.set(this.f803s);
        if (Build.VERSION.SDK_INT >= 21) {
            this.f781B = this.f810z;
        } else {
            this.f808x.set(this.f806v);
        }
        if (!this.f797m && !z) {
            Rect rect = this.f805u;
            rect.top += i3;
            rect.bottom += 0;
            if (Build.VERSION.SDK_INT >= 21) {
                this.f781B = this.f781B.m19090k(0, i3, 0, 0);
            }
        } else if (Build.VERSION.SDK_INT >= 21) {
            Insets a = Insets.m19583a(this.f781B.m19095f(), this.f781B.m19093h() + i3, this.f781B.m19094g(), this.f781B.m19096e() + 0);
            WindowInsetsCompat.Builder builder = new WindowInsetsCompat.Builder(this.f781B);
            builder.m19082c(a);
            this.f781B = builder.m19084a();
        } else {
            Rect rect2 = this.f808x;
            rect2.top += i3;
            rect2.bottom += 0;
        }
        m21762o(this.f792h, this.f805u, true, true, true, true);
        if (Build.VERSION.SDK_INT >= 21 && !this.f782C.equals(this.f781B)) {
            WindowInsetsCompat windowInsetsCompat = this.f781B;
            this.f782C = windowInsetsCompat;
            ViewCompat.m19196h(this.f792h, windowInsetsCompat);
        } else if (Build.VERSION.SDK_INT < 21 && !this.f809y.equals(this.f808x)) {
            this.f809y.set(this.f808x);
            this.f792h.m21514a(this.f808x);
        }
        measureChildWithMargins(this.f792h, i, 0, i2, 0);
        LayoutParams layoutParams2 = (LayoutParams) this.f792h.getLayoutParams();
        int max3 = Math.max(max, this.f792h.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
        int max4 = Math.max(max2, this.f792h.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f792h.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.f799o || !z) {
            return false;
        }
        if (m21751z(f2)) {
            m21763h();
        } else {
            m21752y();
        }
        this.f800p = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.f801q + i2;
        this.f801q = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f789J.m19253b(view, view2, i);
        this.f801q = getActionBarHideOffset();
        m21758s();
        ActionBarVisibilityCallback actionBarVisibilityCallback = this.f783D;
        if (actionBarVisibilityCallback != null) {
            actionBarVisibilityCallback.mo21746e();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.f793i.getVisibility() != 0) {
            return false;
        }
        return this.f799o;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        if (this.f799o && !this.f800p) {
            if (this.f801q <= this.f793i.getHeight()) {
                m21754w();
            } else {
                m21755v();
            }
        }
        ActionBarVisibilityCallback actionBarVisibilityCallback = this.f783D;
        if (actionBarVisibilityCallback != null) {
            actionBarVisibilityCallback.mo21749b();
        }
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i);
        }
        m21753x();
        int i2 = this.f802r;
        this.f802r = i;
        boolean z = false;
        boolean z2 = (i & 4) == 0;
        if ((i & Indexable.MAX_URL_LENGTH) != 0) {
            z = true;
        }
        ActionBarVisibilityCallback actionBarVisibilityCallback = this.f783D;
        if (actionBarVisibilityCallback != null) {
            actionBarVisibilityCallback.mo21748c(!z);
            if (z2 || !z) {
                this.f783D.mo21750a();
            } else {
                this.f783D.mo21747d();
            }
        }
        if (((i2 ^ i) & Indexable.MAX_URL_LENGTH) != 0 && this.f783D != null) {
            ViewCompat.m19189k0(this);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f791g = i;
        ActionBarVisibilityCallback actionBarVisibilityCallback = this.f783D;
        if (actionBarVisibilityCallback != null) {
            actionBarVisibilityCallback.mo21745f(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: p */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    /* renamed from: q */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* renamed from: s */
    void m21758s() {
        removeCallbacks(this.f787H);
        removeCallbacks(this.f788I);
        ViewPropertyAnimator viewPropertyAnimator = this.f785F;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public void setActionBarHideOffset(int i) {
        m21758s();
        this.f793i.setTranslationY(-Math.max(0, Math.min(i, this.f793i.getHeight())));
    }

    public void setActionBarVisibilityCallback(ActionBarVisibilityCallback actionBarVisibilityCallback) {
        this.f783D = actionBarVisibilityCallback;
        if (getWindowToken() != null) {
            this.f783D.mo21745f(this.f791g);
            int i = this.f802r;
            if (i != 0) {
                onWindowSystemUiVisibilityChanged(i);
                ViewCompat.m19189k0(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.f798n = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.f799o) {
            this.f799o = z;
            if (!z) {
                m21758s();
                setActionBarHideOffset(0);
            }
        }
    }

    public void setIcon(int i) {
        m21753x();
        this.f794j.setIcon(i);
    }

    public void setIcon(Drawable drawable) {
        m21753x();
        this.f794j.setIcon(drawable);
    }

    public void setLogo(int i) {
        m21753x();
        this.f794j.mo21185l(i);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setMenu(Menu menu, MenuPresenter.Callback callback) {
        m21753x();
        this.f794j.setMenu(menu, callback);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setMenuPrepared() {
        m21753x();
        this.f794j.setMenuPrepared();
    }

    public void setOverlayMode(boolean z) {
        this.f797m = z;
        this.f796l = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setWindowCallback(Window.Callback callback) {
        m21753x();
        this.f794j.setWindowCallback(callback);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setWindowTitle(CharSequence charSequence) {
        m21753x();
        this.f794j.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* renamed from: u */
    public boolean m21756u() {
        return this.f797m;
    }

    /* renamed from: x */
    void m21753x() {
        if (this.f792h == null) {
            this.f792h = (ContentFrameLayout) findViewById(C0042R.C0045id.action_bar_activity_content);
            this.f793i = (ActionBarContainer) findViewById(C0042R.C0045id.action_bar_container);
            this.f794j = m21759r(findViewById(C0042R.C0045id.action_bar));
        }
    }
}
