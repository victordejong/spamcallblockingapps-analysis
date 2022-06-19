package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
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
import android.widget.OverScroller;
import androidx.appcompat.C0083a;
import androidx.appcompat.view.menu.AbstractC0214m;
import androidx.core.p026h.AbstractC0587m;
import androidx.core.p026h.AbstractC0588n;
import androidx.core.p026h.AbstractC0589o;
import androidx.core.p026h.C0590p;
import androidx.core.p026h.C0595u;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout.class */
public class ActionBarOverlayLayout extends ViewGroup implements AbstractC0367w, AbstractC0587m, AbstractC0588n, AbstractC0589o {

    /* renamed from: e */
    static final int[] f909e = {C0083a.C0084a.actionBarSize, 16842841};

    /* renamed from: A */
    private final Runnable f910A;

    /* renamed from: B */
    private final C0590p f911B;

    /* renamed from: a */
    ActionBarContainer f912a;

    /* renamed from: b */
    boolean f913b;

    /* renamed from: c */
    ViewPropertyAnimator f914c;

    /* renamed from: d */
    final AnimatorListenerAdapter f915d;

    /* renamed from: f */
    private int f916f;

    /* renamed from: g */
    private int f917g;

    /* renamed from: h */
    private ContentFrameLayout f918h;

    /* renamed from: i */
    private AbstractC0368x f919i;

    /* renamed from: j */
    private Drawable f920j;

    /* renamed from: k */
    private boolean f921k;

    /* renamed from: l */
    private boolean f922l;

    /* renamed from: m */
    private boolean f923m;

    /* renamed from: n */
    private boolean f924n;

    /* renamed from: o */
    private int f925o;

    /* renamed from: p */
    private int f926p;

    /* renamed from: q */
    private final Rect f927q;

    /* renamed from: r */
    private final Rect f928r;

    /* renamed from: s */
    private final Rect f929s;

    /* renamed from: t */
    private final Rect f930t;

    /* renamed from: u */
    private final Rect f931u;

    /* renamed from: v */
    private final Rect f932v;

    /* renamed from: w */
    private final Rect f933w;

    /* renamed from: x */
    private AbstractC0229a f934x;

    /* renamed from: y */
    private OverScroller f935y;

    /* renamed from: z */
    private final Runnable f936z;

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$a.class */
    public interface AbstractC0229a {
        /* renamed from: a */
        void mo21759a(int i);

        /* renamed from: g */
        void mo21758g(boolean z);

        /* renamed from: j */
        void mo21757j();

        /* renamed from: k */
        void mo21756k();

        /* renamed from: l */
        void mo21755l();

        /* renamed from: m */
        void mo21754m();
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$b.class */
    public static class C0230b extends ViewGroup.MarginLayoutParams {
        public C0230b(int i, int i2) {
            super(i, i2);
        }

        public C0230b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0230b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f917g = 0;
        this.f927q = new Rect();
        this.f928r = new Rect();
        this.f929s = new Rect();
        this.f930t = new Rect();
        this.f931u = new Rect();
        this.f932v = new Rect();
        this.f933w = new Rect();
        this.f915d = new AnimatorListenerAdapter() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ActionBarOverlayLayout.this.f914c = null;
                ActionBarOverlayLayout.this.f913b = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ActionBarOverlayLayout.this.f914c = null;
                ActionBarOverlayLayout.this.f913b = false;
            }
        };
        this.f936z = new Runnable() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.2
            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.m21764d();
                ActionBarOverlayLayout.this.f914c = ActionBarOverlayLayout.this.f912a.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.f915d);
            }
        };
        this.f910A = new Runnable() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.3
            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.m21764d();
                ActionBarOverlayLayout.this.f914c = ActionBarOverlayLayout.this.f912a.animate().translationY(-ActionBarOverlayLayout.this.f912a.getHeight()).setListener(ActionBarOverlayLayout.this.f915d);
            }
        };
        m21770a(context);
        this.f911B = new C0590p(this);
    }

    /* renamed from: a */
    private AbstractC0368x m21768a(View view) {
        AbstractC0368x wrapper;
        if (view instanceof AbstractC0368x) {
            wrapper = (AbstractC0368x) view;
        } else if (!(view instanceof Toolbar)) {
            throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
        } else {
            wrapper = ((Toolbar) view).getWrapper();
        }
        return wrapper;
    }

    /* renamed from: a */
    private void m21770a(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f909e);
        this.f916f = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f920j = obtainStyledAttributes.getDrawable(1);
        setWillNotDraw(this.f920j == null);
        obtainStyledAttributes.recycle();
        this.f921k = context.getApplicationInfo().targetSdkVersion < 19;
        this.f935y = new OverScroller(context);
    }

    /* renamed from: a */
    private boolean m21771a(float f, float f2) {
        boolean z = false;
        this.f935y.fling(0, 0, 0, (int) f2, 0, 0, RecyclerView.UNDEFINED_DURATION, Integer.MAX_VALUE);
        if (this.f935y.getFinalY() > this.f912a.getHeight()) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    private boolean m21767a(View view, Rect rect, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        C0230b c0230b = (C0230b) view.getLayoutParams();
        boolean z6 = false;
        if (z) {
            z6 = false;
            if (c0230b.leftMargin != rect.left) {
                c0230b.leftMargin = rect.left;
                z6 = true;
            }
        }
        boolean z7 = z6;
        if (z2) {
            z7 = z6;
            if (c0230b.topMargin != rect.top) {
                c0230b.topMargin = rect.top;
                z7 = true;
            }
        }
        boolean z8 = z7;
        if (z4) {
            z8 = z7;
            if (c0230b.rightMargin != rect.right) {
                c0230b.rightMargin = rect.right;
                z8 = true;
            }
        }
        if (!z3 || c0230b.bottomMargin == rect.bottom) {
            z5 = z8;
        } else {
            c0230b.bottomMargin = rect.bottom;
            z5 = true;
        }
        return z5;
    }

    /* renamed from: l */
    private void m21763l() {
        m21764d();
        postDelayed(this.f936z, 600L);
    }

    /* renamed from: m */
    private void m21762m() {
        m21764d();
        postDelayed(this.f910A, 600L);
    }

    /* renamed from: n */
    private void m21761n() {
        m21764d();
        this.f936z.run();
    }

    /* renamed from: o */
    private void m21760o() {
        m21764d();
        this.f910A.run();
    }

    /* renamed from: a */
    public C0230b generateLayoutParams(AttributeSet attributeSet) {
        return new C0230b(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.AbstractC0367w
    /* renamed from: a */
    public void mo21207a(int i) {
        m21765c();
        switch (i) {
            case 2:
                this.f919i.mo21180f();
                return;
            case 5:
                this.f919i.mo21179g();
                return;
            case 109:
                setOverlayMode(true);
                return;
            default:
                return;
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0367w
    /* renamed from: a */
    public void mo21206a(Menu menu, AbstractC0214m.AbstractC0215a abstractC0215a) {
        m21765c();
        this.f919i.mo21194a(menu, abstractC0215a);
    }

    @Override // androidx.core.p026h.AbstractC0588n
    /* renamed from: a */
    public void mo20226a(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // androidx.core.p026h.AbstractC0588n
    /* renamed from: a */
    public void mo20224a(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // androidx.core.p026h.AbstractC0589o
    /* renamed from: a */
    public void mo20223a(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        mo20224a(view, i, i2, i3, i4, i5);
    }

    @Override // androidx.core.p026h.AbstractC0588n
    /* renamed from: a */
    public void mo20222a(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    /* renamed from: a */
    public boolean m21772a() {
        return this.f922l;
    }

    @Override // androidx.core.p026h.AbstractC0588n
    /* renamed from: a */
    public boolean mo20220a(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    /* renamed from: b */
    public C0230b generateDefaultLayoutParams() {
        return new C0230b(-1, -1);
    }

    @Override // androidx.core.p026h.AbstractC0588n
    /* renamed from: b */
    public void mo20212b(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    /* renamed from: c */
    void m21765c() {
        if (this.f918h == null) {
            this.f918h = (ContentFrameLayout) findViewById(C0083a.C0089f.action_bar_activity_content);
            this.f912a = (ActionBarContainer) findViewById(C0083a.C0089f.action_bar_container);
            this.f919i = m21768a(findViewById(C0083a.C0089f.action_bar));
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0230b;
    }

    /* renamed from: d */
    void m21764d() {
        removeCallbacks(this.f936z);
        removeCallbacks(this.f910A);
        if (this.f914c != null) {
            this.f914c.cancel();
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f920j == null || this.f921k) {
            return;
        }
        int bottom = this.f912a.getVisibility() == 0 ? (int) (this.f912a.getBottom() + this.f912a.getTranslationY() + 0.5f) : 0;
        this.f920j.setBounds(0, bottom, getWidth(), this.f920j.getIntrinsicHeight() + bottom);
        this.f920j.draw(canvas);
    }

    @Override // androidx.appcompat.widget.AbstractC0367w
    /* renamed from: e */
    public boolean mo21205e() {
        m21765c();
        return this.f919i.mo21178h();
    }

    @Override // androidx.appcompat.widget.AbstractC0367w
    /* renamed from: f */
    public boolean mo21204f() {
        m21765c();
        return this.f919i.mo21177i();
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        m21765c();
        if ((C0595u.m20308p(this) & 256) != 0) {
        }
        boolean m21767a = m21767a((View) this.f912a, rect, true, true, false, true);
        this.f930t.set(rect);
        C0327av.m21388a(this, this.f930t, this.f927q);
        if (!this.f931u.equals(this.f930t)) {
            this.f931u.set(this.f930t);
            m21767a = true;
        }
        if (!this.f928r.equals(this.f927q)) {
            this.f928r.set(this.f927q);
            m21767a = true;
        }
        if (m21767a) {
            requestLayout();
            return true;
        }
        return true;
    }

    @Override // androidx.appcompat.widget.AbstractC0367w
    /* renamed from: g */
    public boolean mo21203g() {
        m21765c();
        return this.f919i.mo21176j();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0230b(layoutParams);
    }

    public int getActionBarHideOffset() {
        return this.f912a != null ? -((int) this.f912a.getTranslationY()) : 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f911B.m20380a();
    }

    public CharSequence getTitle() {
        m21765c();
        return this.f919i.mo21181e();
    }

    @Override // androidx.appcompat.widget.AbstractC0367w
    /* renamed from: h */
    public boolean mo21202h() {
        m21765c();
        return this.f919i.mo21175k();
    }

    @Override // androidx.appcompat.widget.AbstractC0367w
    /* renamed from: i */
    public boolean mo21201i() {
        m21765c();
        return this.f919i.mo21174l();
    }

    @Override // androidx.appcompat.widget.AbstractC0367w
    /* renamed from: j */
    public void mo21200j() {
        m21765c();
        this.f919i.mo21173m();
    }

    @Override // androidx.appcompat.widget.AbstractC0367w
    /* renamed from: k */
    public void mo21199k() {
        m21765c();
        this.f919i.mo21172n();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m21770a(getContext());
        C0595u.m20307q(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m21764d();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        getPaddingRight();
        int paddingTop = getPaddingTop();
        getPaddingBottom();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                C0230b c0230b = (C0230b) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = c0230b.leftMargin + paddingLeft;
                int i7 = c0230b.topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int measuredHeight;
        m21765c();
        measureChildWithMargins(this.f912a, i, 0, i2, 0);
        C0230b c0230b = (C0230b) this.f912a.getLayoutParams();
        int max = Math.max(0, this.f912a.getMeasuredWidth() + c0230b.leftMargin + c0230b.rightMargin);
        int max2 = Math.max(0, c0230b.bottomMargin + this.f912a.getMeasuredHeight() + c0230b.topMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f912a.getMeasuredState());
        boolean z = (C0595u.m20308p(this) & 256) != 0;
        if (z) {
            int i3 = this.f916f;
            measuredHeight = i3;
            if (this.f923m) {
                measuredHeight = i3;
                if (this.f912a.getTabContainer() != null) {
                    measuredHeight = i3 + this.f916f;
                }
            }
        } else {
            measuredHeight = this.f912a.getVisibility() != 8 ? this.f912a.getMeasuredHeight() : 0;
        }
        this.f929s.set(this.f927q);
        this.f932v.set(this.f930t);
        if (this.f922l || z) {
            Rect rect = this.f932v;
            rect.top = measuredHeight + rect.top;
            this.f932v.bottom += 0;
        } else {
            Rect rect2 = this.f929s;
            rect2.top = measuredHeight + rect2.top;
            this.f929s.bottom += 0;
        }
        m21767a((View) this.f918h, this.f929s, true, true, true, true);
        if (!this.f933w.equals(this.f932v)) {
            this.f933w.set(this.f932v);
            this.f918h.m21695a(this.f932v);
        }
        measureChildWithMargins(this.f918h, i, 0, i2, 0);
        C0230b c0230b2 = (C0230b) this.f918h.getLayoutParams();
        int max3 = Math.max(max, this.f918h.getMeasuredWidth() + c0230b2.leftMargin + c0230b2.rightMargin);
        int max4 = Math.max(max2, c0230b2.bottomMargin + this.f918h.getMeasuredHeight() + c0230b2.topMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f918h.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        boolean z2;
        if (!this.f924n || !z) {
            z2 = false;
        } else {
            if (m21771a(f, f2)) {
                m21760o();
            } else {
                m21761n();
            }
            this.f913b = true;
            z2 = true;
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        this.f925o += i2;
        setActionBarHideOffset(this.f925o);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f911B.m20377a(view, view2, i);
        this.f925o = getActionBarHideOffset();
        m21764d();
        if (this.f934x != null) {
            this.f934x.mo21755l();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return ((i & 2) == 0 || this.f912a.getVisibility() != 0) ? false : this.f924n;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public void onStopNestedScroll(View view) {
        if (this.f924n && !this.f913b) {
            if (this.f925o <= this.f912a.getHeight()) {
                m21763l();
            } else {
                m21762m();
            }
        }
        if (this.f934x != null) {
            this.f934x.mo21754m();
        }
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i) {
        boolean z = true;
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i);
        }
        m21765c();
        int i2 = this.f926p;
        this.f926p = i;
        boolean z2 = (i & 4) == 0;
        boolean z3 = (i & 256) != 0;
        if (this.f934x != null) {
            AbstractC0229a abstractC0229a = this.f934x;
            if (z3) {
                z = false;
            }
            abstractC0229a.mo21758g(z);
            if (z2 || !z3) {
                this.f934x.mo21757j();
            } else {
                this.f934x.mo21756k();
            }
        }
        if (((i2 ^ i) & 256) == 0 || this.f934x == null) {
            return;
        }
        C0595u.m20307q(this);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f917g = i;
        if (this.f934x != null) {
            this.f934x.mo21759a(i);
        }
    }

    public void setActionBarHideOffset(int i) {
        m21764d();
        this.f912a.setTranslationY(-Math.max(0, Math.min(i, this.f912a.getHeight())));
    }

    public void setActionBarVisibilityCallback(AbstractC0229a abstractC0229a) {
        this.f934x = abstractC0229a;
        if (getWindowToken() != null) {
            this.f934x.mo21759a(this.f917g);
            if (this.f926p == 0) {
                return;
            }
            onWindowSystemUiVisibilityChanged(this.f926p);
            C0595u.m20307q(this);
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.f923m = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.f924n) {
            this.f924n = z;
            if (z) {
                return;
            }
            m21764d();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i) {
        m21765c();
        this.f919i.mo21197a(i);
    }

    public void setIcon(Drawable drawable) {
        m21765c();
        this.f919i.mo21195a(drawable);
    }

    public void setLogo(int i) {
        m21765c();
        this.f919i.mo21187b(i);
    }

    public void setOverlayMode(boolean z) {
        this.f922l = z;
        this.f921k = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // androidx.appcompat.widget.AbstractC0367w
    public void setWindowCallback(Window.Callback callback) {
        m21765c();
        this.f919i.mo21193a(callback);
    }

    @Override // androidx.appcompat.widget.AbstractC0367w
    public void setWindowTitle(CharSequence charSequence) {
        m21765c();
        this.f919i.mo21190a(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
