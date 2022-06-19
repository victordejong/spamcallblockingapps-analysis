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
import androidx.appcompat.view.menu.AbstractC0193m;
import p020b.p021a.C1423a;
import p020b.p021a.C1428f;
import p020b.p041h.p042e.C1523b;
import p020b.p041h.p050l.AbstractC1669m;
import p020b.p041h.p050l.AbstractC1670n;
import p020b.p041h.p050l.AbstractC1671o;
import p020b.p041h.p050l.C1615e0;
import p020b.p041h.p050l.C1672p;
import p020b.p041h.p050l.C1679w;
@SuppressLint({"UnknownNullness"})
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout.class */
public class ActionBarOverlayLayout extends ViewGroup implements AbstractC0315o, AbstractC1671o, AbstractC1669m, AbstractC1670n {

    /* renamed from: d */
    static final int[] f768d = {C1423a.actionBarSize, 16842841};

    /* renamed from: A */
    private C1615e0 f769A;

    /* renamed from: B */
    private C1615e0 f770B;

    /* renamed from: C */
    private AbstractC0208d f771C;

    /* renamed from: D */
    private OverScroller f772D;

    /* renamed from: E */
    ViewPropertyAnimator f773E;

    /* renamed from: F */
    final AnimatorListenerAdapter f774F;

    /* renamed from: G */
    private final Runnable f775G;

    /* renamed from: H */
    private final Runnable f776H;

    /* renamed from: I */
    private final C1672p f777I;

    /* renamed from: e */
    private int f778e;

    /* renamed from: f */
    private int f779f;

    /* renamed from: g */
    private ContentFrameLayout f780g;

    /* renamed from: h */
    ActionBarContainer f781h;

    /* renamed from: i */
    private AbstractC0316p f782i;

    /* renamed from: j */
    private Drawable f783j;

    /* renamed from: k */
    private boolean f784k;

    /* renamed from: l */
    private boolean f785l;

    /* renamed from: m */
    private boolean f786m;

    /* renamed from: n */
    private boolean f787n;

    /* renamed from: o */
    boolean f788o;

    /* renamed from: p */
    private int f789p;

    /* renamed from: q */
    private int f790q;

    /* renamed from: r */
    private final Rect f791r;

    /* renamed from: s */
    private final Rect f792s;

    /* renamed from: t */
    private final Rect f793t;

    /* renamed from: u */
    private final Rect f794u;

    /* renamed from: v */
    private final Rect f795v;

    /* renamed from: w */
    private final Rect f796w;

    /* renamed from: x */
    private final Rect f797x;

    /* renamed from: y */
    private C1615e0 f798y;

    /* renamed from: z */
    private C1615e0 f799z;

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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$a.class */
    public class C0205a extends AnimatorListenerAdapter {
        C0205a() {
            ActionBarOverlayLayout.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f773E = null;
            actionBarOverlayLayout.f788o = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f773E = null;
            actionBarOverlayLayout.f788o = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$b.class */
    public class RunnableC0206b implements Runnable {
        RunnableC0206b() {
            ActionBarOverlayLayout.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.m35283s();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f773E = actionBarOverlayLayout.f781h.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.f774F);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$c.class */
    public class RunnableC0207c implements Runnable {
        RunnableC0207c() {
            ActionBarOverlayLayout.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.m35283s();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f773E = actionBarOverlayLayout.f781h.animate().translationY(-ActionBarOverlayLayout.this.f781h.getHeight()).setListener(ActionBarOverlayLayout.this.f774F);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$d.class */
    public interface AbstractC0208d {
        /* renamed from: a */
        void mo35275a();

        /* renamed from: b */
        void mo35274b();

        /* renamed from: c */
        void mo35273c(boolean z);

        /* renamed from: d */
        void mo35272d();

        /* renamed from: e */
        void mo35271e();

        void onWindowVisibilityChanged(int i);
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f779f = 0;
        this.f791r = new Rect();
        this.f792s = new Rect();
        this.f793t = new Rect();
        this.f794u = new Rect();
        this.f795v = new Rect();
        this.f796w = new Rect();
        this.f797x = new Rect();
        C1615e0 c1615e0 = C1615e0.f6224a;
        this.f798y = c1615e0;
        this.f799z = c1615e0;
        this.f769A = c1615e0;
        this.f770B = c1615e0;
        this.f774F = new C0205a();
        this.f775G = new RunnableC0206b();
        this.f776H = new RunnableC0207c();
        m35282t(context);
        this.f777I = new C1672p(this);
    }

    /* renamed from: n */
    private void m35288n() {
        m35283s();
        this.f776H.run();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0083  */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m35287o(android.view.View r4, android.graphics.Rect r5, boolean r6, boolean r7, boolean r8, boolean r9) {
        /*
            r3 = this;
            r0 = r4
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.appcompat.widget.ActionBarOverlayLayout$LayoutParams r0 = (androidx.appcompat.widget.ActionBarOverlayLayout.LayoutParams) r0
            r4 = r0
            r0 = 1
            r10 = r0
            r0 = r6
            if (r0 == 0) goto L2e
            r0 = r4
            int r0 = r0.leftMargin
            r11 = r0
            r0 = r5
            int r0 = r0.left
            r12 = r0
            r0 = r11
            r1 = r12
            if (r0 == r1) goto L2e
            r0 = r4
            r1 = r12
            r0.leftMargin = r1
            r0 = 1
            r13 = r0
            goto L31
        L2e:
            r0 = 0
            r13 = r0
        L31:
            r0 = r13
            r6 = r0
            r0 = r7
            if (r0 == 0) goto L57
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
            if (r0 == r1) goto L57
            r0 = r4
            r1 = r11
            r0.topMargin = r1
            r0 = 1
            r6 = r0
        L57:
            r0 = r6
            r7 = r0
            r0 = r9
            if (r0 == 0) goto L7e
            r0 = r4
            int r0 = r0.rightMargin
            r12 = r0
            r0 = r5
            int r0 = r0.right
            r11 = r0
            r0 = r6
            r7 = r0
            r0 = r12
            r1 = r11
            if (r0 == r1) goto L7e
            r0 = r4
            r1 = r11
            r0.rightMargin = r1
            r0 = 1
            r7 = r0
        L7e:
            r0 = r8
            if (r0 == 0) goto La2
            r0 = r4
            int r0 = r0.bottomMargin
            r11 = r0
            r0 = r5
            int r0 = r0.bottom
            r12 = r0
            r0 = r11
            r1 = r12
            if (r0 == r1) goto La2
            r0 = r4
            r1 = r12
            r0.bottomMargin = r1
            r0 = r10
            r6 = r0
            goto La5
        La2:
            r0 = r7
            r6 = r0
        La5:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.m35287o(android.view.View, android.graphics.Rect, boolean, boolean, boolean, boolean):boolean");
    }

    /* renamed from: r */
    private AbstractC0316p m35284r(View view) {
        if (view instanceof AbstractC0316p) {
            return (AbstractC0316p) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    /* renamed from: t */
    private void m35282t(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f768d);
        this.f778e = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f783j = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        boolean z = false;
        if (context.getApplicationInfo().targetSdkVersion < 19) {
            z = true;
        }
        this.f784k = z;
        this.f772D = new OverScroller(context);
    }

    /* renamed from: v */
    private void m35280v() {
        m35283s();
        postDelayed(this.f776H, 600L);
    }

    /* renamed from: w */
    private void m35279w() {
        m35283s();
        postDelayed(this.f775G, 600L);
    }

    /* renamed from: y */
    private void m35277y() {
        m35283s();
        this.f775G.run();
    }

    /* renamed from: z */
    private boolean m35276z(float f) {
        this.f772D.fling(0, 0, 0, (int) f, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return this.f772D.getFinalY() > this.f781h.getHeight();
    }

    @Override // androidx.appcompat.widget.AbstractC0315o
    /* renamed from: a */
    public boolean mo34802a() {
        m35278x();
        return this.f782i.mo34795a();
    }

    @Override // androidx.appcompat.widget.AbstractC0315o
    /* renamed from: b */
    public boolean mo34801b() {
        m35278x();
        return this.f782i.mo34794b();
    }

    @Override // androidx.appcompat.widget.AbstractC0315o
    /* renamed from: c */
    public boolean mo34800c() {
        m35278x();
        return this.f782i.mo34793c();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.appcompat.widget.AbstractC0315o
    /* renamed from: d */
    public boolean mo34799d() {
        m35278x();
        return this.f782i.mo34792d();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f783j == null || this.f784k) {
            return;
        }
        int bottom = this.f781h.getVisibility() == 0 ? (int) (this.f781h.getBottom() + this.f781h.getTranslationY() + 0.5f) : 0;
        this.f783j.setBounds(0, bottom, getWidth(), this.f783j.getIntrinsicHeight() + bottom);
        this.f783j.draw(canvas);
    }

    @Override // androidx.appcompat.widget.AbstractC0315o
    /* renamed from: e */
    public boolean mo34798e() {
        m35278x();
        return this.f782i.mo34791e();
    }

    @Override // androidx.appcompat.widget.AbstractC0315o
    /* renamed from: f */
    public void mo34797f(int i) {
        m35278x();
        if (i == 2) {
            this.f782i.mo34780p();
        } else if (i == 5) {
            this.f782i.mo34779q();
        } else if (i != 109) {
        } else {
            setOverlayMode(true);
        }
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            return super.fitSystemWindows(rect);
        }
        m35278x();
        boolean m35287o = m35287o(this.f781h, rect, true, true, false, true);
        this.f794u.set(rect);
        C0305k0.m34870a(this, this.f794u, this.f791r);
        if (!this.f795v.equals(this.f794u)) {
            this.f795v.set(this.f794u);
            m35287o = true;
        }
        if (!this.f792s.equals(this.f791r)) {
            this.f792s.set(this.f791r);
            m35287o = true;
        }
        if (!m35287o) {
            return true;
        }
        requestLayout();
        return true;
    }

    @Override // androidx.appcompat.widget.AbstractC0315o
    /* renamed from: g */
    public void mo34796g() {
        m35278x();
        this.f782i.mo34790f();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f781h;
        return actionBarContainer != null ? -((int) actionBarContainer.getTranslationY()) : 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f777I.m29360a();
    }

    public CharSequence getTitle() {
        m35278x();
        return this.f782i.getTitle();
    }

    @Override // p020b.p041h.p050l.AbstractC1670n
    /* renamed from: h */
    public void mo29361h(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        mo29366i(view, i, i2, i3, i4, i5);
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: i */
    public void mo29366i(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: j */
    public boolean mo29365j(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: k */
    public void mo29364k(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: l */
    public void mo29363l(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: m */
    public void mo29362m(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        m35278x();
        C1615e0 m29576x = C1615e0.m29576x(windowInsets, this);
        boolean m35287o = m35287o(this.f781h, new Rect(m29576x.m29590j(), m29576x.m29588l(), m29576x.m29589k(), m29576x.m29591i()), true, true, false, true);
        C1679w.m29296g(this, m29576x, this.f791r);
        Rect rect = this.f791r;
        C1615e0 m29586n = m29576x.m29586n(rect.left, rect.top, rect.right, rect.bottom);
        this.f798y = m29586n;
        if (!this.f799z.equals(m29586n)) {
            this.f799z = this.f798y;
            m35287o = true;
        }
        if (!this.f792s.equals(this.f791r)) {
            this.f792s.set(this.f791r);
            m35287o = true;
        }
        if (m35287o) {
            requestLayout();
        }
        return m29576x.m29599a().m29597c().m29598b().m29578v();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m35282t(getContext());
        C1679w.m29279o0(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m35283s();
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
        m35278x();
        measureChildWithMargins(this.f781h, i, 0, i2, 0);
        LayoutParams layoutParams = (LayoutParams) this.f781h.getLayoutParams();
        int max = Math.max(0, this.f781h.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
        int max2 = Math.max(0, this.f781h.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f781h.getMeasuredState());
        boolean z = (C1679w.m29322O(this) & 256) != 0;
        if (z) {
            int i4 = this.f778e;
            i3 = i4;
            if (this.f786m) {
                i3 = i4;
                if (this.f781h.getTabContainer() != null) {
                    i3 = i4 + this.f778e;
                }
            }
        } else {
            i3 = this.f781h.getVisibility() != 8 ? this.f781h.getMeasuredHeight() : 0;
        }
        this.f793t.set(this.f791r);
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 21) {
            this.f769A = this.f798y;
        } else {
            this.f796w.set(this.f794u);
        }
        if (!this.f785l && !z) {
            Rect rect = this.f793t;
            rect.top += i3;
            rect.bottom += 0;
            if (i5 >= 21) {
                this.f769A = this.f769A.m29586n(0, i3, 0, 0);
            }
        } else if (i5 >= 21) {
            this.f769A = new C1615e0.C1617b(this.f769A).m29572c(C1523b.m29846b(this.f769A.m29590j(), this.f769A.m29588l() + i3, this.f769A.m29589k(), this.f769A.m29591i() + 0)).m29574a();
        } else {
            Rect rect2 = this.f796w;
            rect2.top += i3;
            rect2.bottom += 0;
        }
        m35287o(this.f780g, this.f793t, true, true, true, true);
        if (i5 >= 21 && !this.f770B.equals(this.f769A)) {
            C1615e0 c1615e0 = this.f769A;
            this.f770B = c1615e0;
            C1679w.m29294h(this.f780g, c1615e0);
        } else if (i5 < 21 && !this.f797x.equals(this.f796w)) {
            this.f797x.set(this.f796w);
            this.f780g.m35178a(this.f796w);
        }
        measureChildWithMargins(this.f780g, i, 0, i2, 0);
        LayoutParams layoutParams2 = (LayoutParams) this.f780g.getLayoutParams();
        int max3 = Math.max(max, this.f780g.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
        int max4 = Math.max(max2, this.f780g.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f780g.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.f787n || !z) {
            return false;
        }
        if (m35276z(f2)) {
            m35288n();
        } else {
            m35277y();
        }
        this.f788o = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.f789p + i2;
        this.f789p = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f777I.m29359b(view, view2, i);
        this.f789p = getActionBarHideOffset();
        m35283s();
        AbstractC0208d abstractC0208d = this.f771C;
        if (abstractC0208d != null) {
            abstractC0208d.mo35271e();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.f781h.getVisibility() != 0) {
            return false;
        }
        return this.f787n;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public void onStopNestedScroll(View view) {
        if (this.f787n && !this.f788o) {
            if (this.f789p <= this.f781h.getHeight()) {
                m35279w();
            } else {
                m35280v();
            }
        }
        AbstractC0208d abstractC0208d = this.f771C;
        if (abstractC0208d != null) {
            abstractC0208d.mo35274b();
        }
    }

    @Override // android.view.View
    @Deprecated
    public void onWindowSystemUiVisibilityChanged(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i);
        }
        m35278x();
        int i2 = this.f790q;
        this.f790q = i;
        boolean z = false;
        boolean z2 = (i & 4) == 0;
        if ((i & 256) != 0) {
            z = true;
        }
        AbstractC0208d abstractC0208d = this.f771C;
        if (abstractC0208d != null) {
            abstractC0208d.mo35273c(!z);
            if (z2 || !z) {
                this.f771C.mo35275a();
            } else {
                this.f771C.mo35272d();
            }
        }
        if (((i2 ^ i) & 256) == 0 || this.f771C == null) {
            return;
        }
        C1679w.m29279o0(this);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f779f = i;
        AbstractC0208d abstractC0208d = this.f771C;
        if (abstractC0208d != null) {
            abstractC0208d.onWindowVisibilityChanged(i);
        }
    }

    /* renamed from: p */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    /* renamed from: q */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* renamed from: s */
    void m35283s() {
        removeCallbacks(this.f775G);
        removeCallbacks(this.f776H);
        ViewPropertyAnimator viewPropertyAnimator = this.f773E;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public void setActionBarHideOffset(int i) {
        m35283s();
        this.f781h.setTranslationY(-Math.max(0, Math.min(i, this.f781h.getHeight())));
    }

    public void setActionBarVisibilityCallback(AbstractC0208d abstractC0208d) {
        this.f771C = abstractC0208d;
        if (getWindowToken() != null) {
            this.f771C.onWindowVisibilityChanged(this.f779f);
            int i = this.f790q;
            if (i == 0) {
                return;
            }
            onWindowSystemUiVisibilityChanged(i);
            C1679w.m29279o0(this);
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.f786m = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.f787n) {
            this.f787n = z;
            if (z) {
                return;
            }
            m35283s();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i) {
        m35278x();
        this.f782i.setIcon(i);
    }

    public void setIcon(Drawable drawable) {
        m35278x();
        this.f782i.setIcon(drawable);
    }

    public void setLogo(int i) {
        m35278x();
        this.f782i.mo34786j(i);
    }

    @Override // androidx.appcompat.widget.AbstractC0315o
    public void setMenu(Menu menu, AbstractC0193m.AbstractC0194a abstractC0194a) {
        m35278x();
        this.f782i.setMenu(menu, abstractC0194a);
    }

    @Override // androidx.appcompat.widget.AbstractC0315o
    public void setMenuPrepared() {
        m35278x();
        this.f782i.setMenuPrepared();
    }

    public void setOverlayMode(boolean z) {
        this.f785l = z;
        this.f784k = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // androidx.appcompat.widget.AbstractC0315o
    public void setWindowCallback(Window.Callback callback) {
        m35278x();
        this.f782i.setWindowCallback(callback);
    }

    @Override // androidx.appcompat.widget.AbstractC0315o
    public void setWindowTitle(CharSequence charSequence) {
        m35278x();
        this.f782i.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* renamed from: u */
    public boolean m35281u() {
        return this.f785l;
    }

    /* renamed from: x */
    void m35278x() {
        if (this.f780g == null) {
            this.f780g = (ContentFrameLayout) findViewById(C1428f.action_bar_activity_content);
            this.f781h = (ActionBarContainer) findViewById(C1428f.action_bar_container);
            this.f782i = m35284r(findViewById(C1428f.action_bar));
        }
    }
}
