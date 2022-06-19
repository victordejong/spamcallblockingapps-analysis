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
import androidx.appcompat.C0051a;
import androidx.appcompat.view.menu.AbstractC0197m;
import androidx.core.p023g.AbstractC0544m;
import androidx.core.p023g.AbstractC0545n;
import androidx.core.p023g.AbstractC0546o;
import androidx.core.p023g.C0547p;
import androidx.core.p023g.C0552u;
import androidx.customview.p026a.AbstractC0610a;
import com.google.android.flexbox.FlexItem;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout.class */
public class ActionBarOverlayLayout extends ViewGroup implements AbstractC0354y, AbstractC0544m, AbstractC0545n, AbstractC0546o {

    /* renamed from: e */
    static final int[] f828e = {C0051a.C0052a.actionBarSize, 16842841};

    /* renamed from: A */
    private final Runnable f829A;

    /* renamed from: B */
    private final C0547p f830B;

    /* renamed from: a */
    ActionBarContainer f831a;

    /* renamed from: b */
    boolean f832b;

    /* renamed from: c */
    ViewPropertyAnimator f833c;

    /* renamed from: d */
    final AnimatorListenerAdapter f834d;

    /* renamed from: f */
    private int f835f;

    /* renamed from: g */
    private int f836g;

    /* renamed from: h */
    private ContentFrameLayout f837h;

    /* renamed from: i */
    private AbstractC0355z f838i;

    /* renamed from: j */
    private Drawable f839j;

    /* renamed from: k */
    private boolean f840k;

    /* renamed from: l */
    private boolean f841l;

    /* renamed from: m */
    private boolean f842m;

    /* renamed from: n */
    private boolean f843n;

    /* renamed from: o */
    private int f844o;

    /* renamed from: p */
    private int f845p;

    /* renamed from: q */
    private final Rect f846q;

    /* renamed from: r */
    private final Rect f847r;

    /* renamed from: s */
    private final Rect f848s;

    /* renamed from: t */
    private final Rect f849t;

    /* renamed from: u */
    private final Rect f850u;

    /* renamed from: v */
    private final Rect f851v;

    /* renamed from: w */
    private final Rect f852w;

    /* renamed from: x */
    private AbstractC0212a f853x;

    /* renamed from: y */
    private OverScroller f854y;

    /* renamed from: z */
    private final Runnable f855z;

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$a.class */
    public interface AbstractC0212a {
        /* renamed from: b */
        void mo7488b(int i);

        /* renamed from: g */
        void mo7487g(boolean z);

        /* renamed from: j */
        void mo7486j();

        /* renamed from: k */
        void mo7485k();

        /* renamed from: l */
        void mo7484l();

        /* renamed from: m */
        void mo7483m();
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$b.class */
    public static class C0213b extends ViewGroup.MarginLayoutParams {
        public C0213b(int i, int i2) {
            super(i, i2);
        }

        public C0213b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0213b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f836g = 0;
        this.f846q = new Rect();
        this.f847r = new Rect();
        this.f848s = new Rect();
        this.f849t = new Rect();
        this.f850u = new Rect();
        this.f851v = new Rect();
        this.f852w = new Rect();
        this.f834d = new AnimatorListenerAdapter() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.f833c = null;
                actionBarOverlayLayout.f832b = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.f833c = null;
                actionBarOverlayLayout.f832b = false;
            }
        };
        this.f855z = new Runnable() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.2
            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.m7493d();
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.f833c = actionBarOverlayLayout.f831a.animate().translationY(FlexItem.FLEX_GROW_DEFAULT).setListener(ActionBarOverlayLayout.this.f834d);
            }
        };
        this.f829A = new Runnable() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.3
            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.m7493d();
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.f833c = actionBarOverlayLayout.f831a.animate().translationY(-ActionBarOverlayLayout.this.f831a.getHeight()).setListener(ActionBarOverlayLayout.this.f834d);
            }
        };
        m7499a(context);
        this.f830B = new C0547p(this);
    }

    /* renamed from: a */
    private AbstractC0355z m7497a(View view) {
        if (view instanceof AbstractC0355z) {
            return (AbstractC0355z) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    /* renamed from: a */
    private void m7499a(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f828e);
        this.f835f = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f839j = obtainStyledAttributes.getDrawable(1);
        setWillNotDraw(this.f839j == null);
        obtainStyledAttributes.recycle();
        boolean z = false;
        if (context.getApplicationInfo().targetSdkVersion < 19) {
            z = true;
        }
        this.f840k = z;
        this.f854y = new OverScroller(context);
    }

    /* renamed from: a */
    private boolean m7500a(float f, float f2) {
        this.f854y.fling(0, 0, 0, (int) f2, 0, 0, AbstractC0610a.INVALID_ID, Api.BaseClientBuilder.API_PRIORITY_OTHER);
        return this.f854y.getFinalY() > this.f831a.getHeight();
    }

    /* renamed from: a */
    private boolean m7496a(View view, Rect rect, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        C0213b c0213b = (C0213b) view.getLayoutParams();
        if (!z || c0213b.leftMargin == rect.left) {
            z5 = false;
        } else {
            c0213b.leftMargin = rect.left;
            z5 = true;
        }
        boolean z6 = z5;
        if (z2) {
            z6 = z5;
            if (c0213b.topMargin != rect.top) {
                c0213b.topMargin = rect.top;
                z6 = true;
            }
        }
        boolean z7 = z6;
        if (z4) {
            z7 = z6;
            if (c0213b.rightMargin != rect.right) {
                c0213b.rightMargin = rect.right;
                z7 = true;
            }
        }
        boolean z8 = z7;
        if (z3) {
            z8 = z7;
            if (c0213b.bottomMargin != rect.bottom) {
                c0213b.bottomMargin = rect.bottom;
                z8 = true;
            }
        }
        return z8;
    }

    /* renamed from: l */
    private void m7492l() {
        m7493d();
        postDelayed(this.f855z, 600L);
    }

    /* renamed from: m */
    private void m7491m() {
        m7493d();
        postDelayed(this.f829A, 600L);
    }

    /* renamed from: n */
    private void m7490n() {
        m7493d();
        this.f855z.run();
    }

    /* renamed from: o */
    private void m7489o() {
        m7493d();
        this.f829A.run();
    }

    /* renamed from: a */
    public C0213b generateLayoutParams(AttributeSet attributeSet) {
        return new C0213b(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.AbstractC0354y
    /* renamed from: a */
    public void mo6968a(int i) {
        m7494c();
        if (i == 2) {
            this.f838i.mo6938f();
        } else if (i == 5) {
            this.f838i.mo6937g();
        } else if (i != 109) {
        } else {
            setOverlayMode(true);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0354y
    /* renamed from: a */
    public void mo6967a(Menu menu, AbstractC0197m.AbstractC0198a abstractC0198a) {
        m7494c();
        this.f838i.mo6955a(menu, abstractC0198a);
    }

    @Override // androidx.core.p023g.AbstractC0546o
    /* renamed from: a */
    public void mo6052a(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        onNestedScroll(view, i, i2, i3, i4, i5);
    }

    /* renamed from: a */
    public boolean m7501a() {
        return this.f841l;
    }

    /* renamed from: b */
    public C0213b generateDefaultLayoutParams() {
        return new C0213b(-1, -1);
    }

    /* renamed from: c */
    void m7494c() {
        if (this.f837h == null) {
            this.f837h = (ContentFrameLayout) findViewById(C0051a.C0057f.action_bar_activity_content);
            this.f831a = (ActionBarContainer) findViewById(C0051a.C0057f.action_bar_container);
            this.f838i = m7497a(findViewById(C0051a.C0057f.action_bar));
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0213b;
    }

    /* renamed from: d */
    void m7493d() {
        removeCallbacks(this.f855z);
        removeCallbacks(this.f829A);
        ViewPropertyAnimator viewPropertyAnimator = this.f833c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f839j == null || this.f840k) {
            return;
        }
        int bottom = this.f831a.getVisibility() == 0 ? (int) (this.f831a.getBottom() + this.f831a.getTranslationY() + 0.5f) : 0;
        this.f839j.setBounds(0, bottom, getWidth(), this.f839j.getIntrinsicHeight() + bottom);
        this.f839j.draw(canvas);
    }

    @Override // androidx.appcompat.widget.AbstractC0354y
    /* renamed from: e */
    public boolean mo6966e() {
        m7494c();
        return this.f838i.mo6936h();
    }

    @Override // androidx.appcompat.widget.AbstractC0354y
    /* renamed from: f */
    public boolean mo6965f() {
        m7494c();
        return this.f838i.mo6935i();
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        m7494c();
        C0552u.m6229r(this);
        boolean m7496a = m7496a(this.f831a, rect, true, true, false, true);
        this.f849t.set(rect);
        C0321ay.m7114a(this, this.f849t, this.f846q);
        if (!this.f850u.equals(this.f849t)) {
            this.f850u.set(this.f849t);
            m7496a = true;
        }
        if (!this.f847r.equals(this.f846q)) {
            this.f847r.set(this.f846q);
            m7496a = true;
        }
        if (m7496a) {
            requestLayout();
            return true;
        }
        return true;
    }

    @Override // androidx.appcompat.widget.AbstractC0354y
    /* renamed from: g */
    public boolean mo6964g() {
        m7494c();
        return this.f838i.mo6934j();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0213b(layoutParams);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f831a;
        return actionBarContainer != null ? -((int) actionBarContainer.getTranslationY()) : 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f830B.m6303a();
    }

    public CharSequence getTitle() {
        m7494c();
        return this.f838i.mo6940e();
    }

    @Override // androidx.appcompat.widget.AbstractC0354y
    /* renamed from: h */
    public boolean mo6963h() {
        m7494c();
        return this.f838i.mo6933k();
    }

    @Override // androidx.appcompat.widget.AbstractC0354y
    /* renamed from: i */
    public boolean mo6962i() {
        m7494c();
        return this.f838i.mo6932l();
    }

    @Override // androidx.appcompat.widget.AbstractC0354y
    /* renamed from: j */
    public void mo6961j() {
        m7494c();
        this.f838i.mo6931m();
    }

    @Override // androidx.appcompat.widget.AbstractC0354y
    /* renamed from: k */
    public void mo6960k() {
        m7494c();
        this.f838i.mo6930n();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m7499a(getContext());
        C0552u.m6228s(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m7493d();
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
                C0213b c0213b = (C0213b) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = c0213b.leftMargin + paddingLeft;
                int i7 = c0213b.topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        m7494c();
        measureChildWithMargins(this.f831a, i, 0, i2, 0);
        C0213b c0213b = (C0213b) this.f831a.getLayoutParams();
        int max = Math.max(0, this.f831a.getMeasuredWidth() + c0213b.leftMargin + c0213b.rightMargin);
        int max2 = Math.max(0, this.f831a.getMeasuredHeight() + c0213b.topMargin + c0213b.bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f831a.getMeasuredState());
        boolean z = (C0552u.m6229r(this) & 256) != 0;
        if (z) {
            int i4 = this.f835f;
            i3 = i4;
            if (this.f842m) {
                i3 = i4;
                if (this.f831a.getTabContainer() != null) {
                    i3 = i4 + this.f835f;
                }
            }
        } else {
            i3 = this.f831a.getVisibility() != 8 ? this.f831a.getMeasuredHeight() : 0;
        }
        this.f848s.set(this.f846q);
        this.f851v.set(this.f849t);
        if (this.f841l || z) {
            this.f851v.top += i3;
            this.f851v.bottom += 0;
        } else {
            this.f848s.top += i3;
            this.f848s.bottom += 0;
        }
        m7496a(this.f837h, this.f848s, true, true, true, true);
        if (!this.f852w.equals(this.f851v)) {
            this.f852w.set(this.f851v);
            this.f837h.m7392a(this.f851v);
        }
        measureChildWithMargins(this.f837h, i, 0, i2, 0);
        C0213b c0213b2 = (C0213b) this.f837h.getLayoutParams();
        int max3 = Math.max(max, this.f837h.getMeasuredWidth() + c0213b2.leftMargin + c0213b2.rightMargin);
        int max4 = Math.max(max2, this.f837h.getMeasuredHeight() + c0213b2.topMargin + c0213b2.bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f837h.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.f843n || !z) {
            return false;
        }
        if (m7500a(f, f2)) {
            m7489o();
        } else {
            m7490n();
        }
        this.f832b = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // androidx.core.p023g.AbstractC0545n
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        this.f844o += i2;
        setActionBarHideOffset(this.f844o);
    }

    @Override // androidx.core.p023g.AbstractC0545n
    public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f830B.m6301a(view, view2, i);
        this.f844o = getActionBarHideOffset();
        m7493d();
        AbstractC0212a abstractC0212a = this.f853x;
        if (abstractC0212a != null) {
            abstractC0212a.mo7484l();
        }
    }

    @Override // androidx.core.p023g.AbstractC0545n
    public void onNestedScrollAccepted(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.f831a.getVisibility() != 0) {
            return false;
        }
        return this.f843n;
    }

    @Override // androidx.core.p023g.AbstractC0545n
    public boolean onStartNestedScroll(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public void onStopNestedScroll(View view) {
        if (this.f843n && !this.f832b) {
            if (this.f844o <= this.f831a.getHeight()) {
                m7492l();
            } else {
                m7491m();
            }
        }
        AbstractC0212a abstractC0212a = this.f853x;
        if (abstractC0212a != null) {
            abstractC0212a.mo7483m();
        }
    }

    @Override // androidx.core.p023g.AbstractC0545n
    public void onStopNestedScroll(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i);
        }
        m7494c();
        int i2 = this.f845p;
        this.f845p = i;
        boolean z = false;
        boolean z2 = (i & 4) == 0;
        if ((i & 256) != 0) {
            z = true;
        }
        AbstractC0212a abstractC0212a = this.f853x;
        if (abstractC0212a != null) {
            abstractC0212a.mo7487g(!z);
            if (z2 || !z) {
                this.f853x.mo7486j();
            } else {
                this.f853x.mo7485k();
            }
        }
        if (((i2 ^ i) & 256) == 0 || this.f853x == null) {
            return;
        }
        C0552u.m6228s(this);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f836g = i;
        AbstractC0212a abstractC0212a = this.f853x;
        if (abstractC0212a != null) {
            abstractC0212a.mo7488b(i);
        }
    }

    public void setActionBarHideOffset(int i) {
        m7493d();
        this.f831a.setTranslationY(-Math.max(0, Math.min(i, this.f831a.getHeight())));
    }

    public void setActionBarVisibilityCallback(AbstractC0212a abstractC0212a) {
        this.f853x = abstractC0212a;
        if (getWindowToken() != null) {
            this.f853x.mo7488b(this.f836g);
            int i = this.f845p;
            if (i == 0) {
                return;
            }
            onWindowSystemUiVisibilityChanged(i);
            C0552u.m6228s(this);
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.f842m = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.f843n) {
            this.f843n = z;
            if (z) {
                return;
            }
            m7493d();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i) {
        m7494c();
        this.f838i.mo6958a(i);
    }

    public void setIcon(Drawable drawable) {
        m7494c();
        this.f838i.mo6956a(drawable);
    }

    public void setLogo(int i) {
        m7494c();
        this.f838i.mo6948b(i);
    }

    public void setOverlayMode(boolean z) {
        this.f841l = z;
        this.f840k = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // androidx.appcompat.widget.AbstractC0354y
    public void setWindowCallback(Window.Callback callback) {
        m7494c();
        this.f838i.mo6954a(callback);
    }

    @Override // androidx.appcompat.widget.AbstractC0354y
    public void setWindowTitle(CharSequence charSequence) {
        m7494c();
        this.f838i.mo6951a(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
