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
import android.support.p012v4.media.C0082b;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.appcompat.view.menu.AbstractC0144i;
import com.google.android.gms.common.api.Api;
import java.util.Objects;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p086f.C2689y;
import p087f0.C2695b;
import p140k.C3305g;
import p163m0.AbstractC3577j;
import p163m0.AbstractC3578k;
import p163m0.C3551b0;
import p163m0.C3579l;
import p163m0.C3589v;
import p163m0.C3611y;
@SuppressLint({"UnknownNullness"})
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout.class */
public class ActionBarOverlayLayout extends ViewGroup implements AbstractC0227f0, AbstractC3577j, AbstractC3578k {

    /* renamed from: B */
    public static final int[] f545B = {C3681R.attr.actionBarSize, 16842841};

    /* renamed from: a */
    public int f547a;

    /* renamed from: c */
    public ContentFrameLayout f549c;

    /* renamed from: d */
    public ActionBarContainer f550d;

    /* renamed from: e */
    public AbstractC0230g0 f551e;

    /* renamed from: f */
    public Drawable f552f;

    /* renamed from: g */
    public boolean f553g;

    /* renamed from: h */
    public boolean f554h;

    /* renamed from: i */
    public boolean f555i;

    /* renamed from: j */
    public boolean f556j;

    /* renamed from: k */
    public boolean f557k;

    /* renamed from: l */
    public int f558l;

    /* renamed from: m */
    public int f559m;

    /* renamed from: q */
    public C3551b0 f563q;

    /* renamed from: r */
    public C3551b0 f564r;

    /* renamed from: s */
    public C3551b0 f565s;

    /* renamed from: t */
    public C3551b0 f566t;

    /* renamed from: u */
    public AbstractC0156d f567u;

    /* renamed from: v */
    public OverScroller f568v;

    /* renamed from: w */
    public ViewPropertyAnimator f569w;

    /* renamed from: b */
    public int f548b = 0;

    /* renamed from: n */
    public final Rect f560n = new Rect();

    /* renamed from: o */
    public final Rect f561o = new Rect();

    /* renamed from: p */
    public final Rect f562p = new Rect();

    /* renamed from: x */
    public final AnimatorListenerAdapter f570x = new C0153a();

    /* renamed from: y */
    public final Runnable f571y = new RunnableC0154b();

    /* renamed from: z */
    public final Runnable f572z = new RunnableC0155c();

    /* renamed from: A */
    public final C3579l f546A = new C3579l();

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$a.class */
    public class C0153a extends AnimatorListenerAdapter {
        public C0153a() {
            ActionBarOverlayLayout.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f569w = null;
            actionBarOverlayLayout.f557k = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f569w = null;
            actionBarOverlayLayout.f557k = false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$b.class */
    public class RunnableC0154b implements Runnable {
        public RunnableC0154b() {
            ActionBarOverlayLayout.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.m8666q();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f569w = actionBarOverlayLayout.f550d.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.f570x);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$c.class */
    public class RunnableC0155c implements Runnable {
        public RunnableC0155c() {
            ActionBarOverlayLayout.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.m8666q();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f569w = actionBarOverlayLayout.f550d.animate().translationY(-ActionBarOverlayLayout.this.f550d.getHeight()).setListener(ActionBarOverlayLayout.this.f570x);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$d.class */
    public interface AbstractC0156d {
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$e.class */
    public static class C0157e extends ViewGroup.MarginLayoutParams {
        public C0157e(int i, int i2) {
            super(i, i2);
        }

        public C0157e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0157e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        C3551b0 c3551b0 = C3551b0.f11719b;
        this.f563q = c3551b0;
        this.f564r = c3551b0;
        this.f565s = c3551b0;
        this.f566t = c3551b0;
        m8665r(context);
    }

    @Override // androidx.appcompat.widget.AbstractC0227f0
    /* renamed from: a */
    public void mo8535a(Menu menu, AbstractC0144i.AbstractC0145a abstractC0145a) {
        m8664s();
        this.f551e.mo8525a(menu, abstractC0145a);
    }

    @Override // androidx.appcompat.widget.AbstractC0227f0
    /* renamed from: b */
    public boolean mo8534b() {
        m8664s();
        return this.f551e.mo8524b();
    }

    @Override // androidx.appcompat.widget.AbstractC0227f0
    /* renamed from: c */
    public void mo8533c() {
        m8664s();
        this.f551e.mo8523c();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0157e;
    }

    @Override // androidx.appcompat.widget.AbstractC0227f0
    /* renamed from: d */
    public boolean mo8532d() {
        m8664s();
        return this.f551e.mo8522d();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        super.draw(canvas);
        if (this.f552f == null || this.f553g) {
            return;
        }
        if (this.f550d.getVisibility() == 0) {
            i = (int) (this.f550d.getTranslationY() + this.f550d.getBottom() + 0.5f);
        } else {
            i = 0;
        }
        this.f552f.setBounds(0, i, getWidth(), this.f552f.getIntrinsicHeight() + i);
        this.f552f.draw(canvas);
    }

    @Override // androidx.appcompat.widget.AbstractC0227f0
    /* renamed from: e */
    public boolean mo8531e() {
        m8664s();
        return this.f551e.mo8521e();
    }

    @Override // androidx.appcompat.widget.AbstractC0227f0
    /* renamed from: f */
    public boolean mo8530f() {
        m8664s();
        return this.f551e.mo8520f();
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // androidx.appcompat.widget.AbstractC0227f0
    /* renamed from: g */
    public boolean mo8529g() {
        m8664s();
        return this.f551e.mo8519g();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0157e(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0157e(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0157e(layoutParams);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f550d;
        return actionBarContainer != null ? -((int) actionBarContainer.getTranslationY()) : 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f546A.m2128a();
    }

    public CharSequence getTitle() {
        m8664s();
        return this.f551e.getTitle();
    }

    @Override // p163m0.AbstractC3577j
    /* renamed from: h */
    public void mo445h(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // p163m0.AbstractC3577j
    /* renamed from: i */
    public void mo444i(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // p163m0.AbstractC3577j
    /* renamed from: j */
    public void mo443j(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0227f0
    /* renamed from: k */
    public void mo8528k(int i) {
        m8664s();
        if (i == 2) {
            this.f551e.mo8504v();
        } else if (i == 5) {
            this.f551e.mo8503w();
        } else if (i != 109) {
        } else {
            setOverlayMode(true);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0227f0
    /* renamed from: l */
    public void mo8527l() {
        m8664s();
        this.f551e.mo8518h();
    }

    @Override // p163m0.AbstractC3578k
    /* renamed from: m */
    public void mo441m(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // p163m0.AbstractC3577j
    /* renamed from: n */
    public void mo440n(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // p163m0.AbstractC3577j
    /* renamed from: o */
    public boolean mo439o(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        m8664s();
        C3551b0 m2173j = C3551b0.m2173j(windowInsets, this);
        boolean m8667p = m8667p(this.f550d, new Rect(m2173j.m2180c(), m2173j.m2178e(), m2173j.m2179d(), m2173j.m2181b()), true, true, false, true);
        Rect rect = this.f560n;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3598i.m2049b(this, m2173j, rect);
        Rect rect2 = this.f560n;
        C3551b0 mo2155j = m2173j.f11720a.mo2155j(rect2.left, rect2.top, rect2.right, rect2.bottom);
        this.f563q = mo2155j;
        if (!this.f564r.equals(mo2155j)) {
            this.f564r = this.f563q;
            m8667p = true;
        }
        if (!this.f561o.equals(this.f560n)) {
            this.f561o.set(this.f560n);
            m8667p = true;
        }
        if (m8667p) {
            requestLayout();
        }
        return m2173j.f11720a.mo2164a().m2182a().f11720a.mo2163b().m2175h();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m8665r(getContext());
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3597h.m2051c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m8666q();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                C0157e c0157e = (C0157e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) c0157e).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) c0157e).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        m8664s();
        measureChildWithMargins(this.f550d, i, 0, i2, 0);
        C0157e c0157e = (C0157e) this.f550d.getLayoutParams();
        int max = Math.max(0, this.f550d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0157e).leftMargin + ((ViewGroup.MarginLayoutParams) c0157e).rightMargin);
        int max2 = Math.max(0, this.f550d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0157e).topMargin + ((ViewGroup.MarginLayoutParams) c0157e).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f550d.getMeasuredState());
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        boolean z = (C3589v.C3593d.m2087g(this) & 256) != 0;
        if (z) {
            int i4 = this.f547a;
            i3 = i4;
            if (this.f555i) {
                i3 = i4;
                if (this.f550d.getTabContainer() != null) {
                    i3 = i4 + this.f547a;
                }
            }
        } else {
            i3 = this.f550d.getVisibility() != 8 ? this.f550d.getMeasuredHeight() : 0;
        }
        this.f562p.set(this.f560n);
        C3551b0 c3551b0 = this.f563q;
        this.f565s = c3551b0;
        if (this.f554h || z) {
            C2695b m3253a = C2695b.m3253a(c3551b0.m2180c(), this.f565s.m2178e() + i3, this.f565s.m2179d(), this.f565s.m2181b() + 0);
            C3551b0 c3551b02 = this.f565s;
            int i5 = Build.VERSION.SDK_INT;
            C3551b0.C3555d c3555d = i5 >= 30 ? new C3551b0.C3555d(c3551b02) : i5 >= 29 ? new C3551b0.C3554c(c3551b02) : new C3551b0.C3553b(c3551b02);
            c3555d.mo2168d(m3253a);
            this.f565s = c3555d.mo2170b();
        } else {
            Rect rect = this.f562p;
            rect.top += i3;
            rect.bottom += 0;
            this.f565s = c3551b0.f11720a.mo2155j(0, i3, 0, 0);
        }
        m8667p(this.f549c, this.f562p, true, true, true, true);
        if (!this.f566t.equals(this.f565s)) {
            C3551b0 c3551b03 = this.f565s;
            this.f566t = c3551b03;
            C3589v.m2119e(this.f549c, c3551b03);
        }
        measureChildWithMargins(this.f549c, i, 0, i2, 0);
        C0157e c0157e2 = (C0157e) this.f549c.getLayoutParams();
        int max3 = Math.max(max, this.f549c.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0157e2).leftMargin + ((ViewGroup.MarginLayoutParams) c0157e2).rightMargin);
        int max4 = Math.max(max2, this.f549c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0157e2).topMargin + ((ViewGroup.MarginLayoutParams) c0157e2).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f549c.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + max3, getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + max4, getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        boolean z2 = false;
        if (!this.f556j || !z) {
            return false;
        }
        this.f568v.fling(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER);
        if (this.f568v.getFinalY() > this.f550d.getHeight()) {
            z2 = true;
        }
        if (z2) {
            m8666q();
            this.f572z.run();
        } else {
            m8666q();
            this.f571y.run();
        }
        this.f557k = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.f558l + i2;
        this.f558l = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        C2689y c2689y;
        C3305g c3305g;
        this.f546A.f11774a = i;
        this.f558l = getActionBarHideOffset();
        m8666q();
        AbstractC0156d abstractC0156d = this.f567u;
        if (abstractC0156d == null || (c3305g = (c2689y = (C2689y) abstractC0156d).f9257t) == null) {
            return;
        }
        c3305g.m2397a();
        c2689y.f9257t = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.f550d.getVisibility() != 0) {
            return false;
        }
        return this.f556j;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        if (this.f556j && !this.f557k) {
            if (this.f558l <= this.f550d.getHeight()) {
                m8666q();
                postDelayed(this.f571y, 600L);
            } else {
                m8666q();
                postDelayed(this.f572z, 600L);
            }
        }
        AbstractC0156d abstractC0156d = this.f567u;
        if (abstractC0156d != null) {
            Objects.requireNonNull(abstractC0156d);
        }
    }

    @Override // android.view.View
    @Deprecated
    public void onWindowSystemUiVisibilityChanged(int i) {
        super.onWindowSystemUiVisibilityChanged(i);
        m8664s();
        int i2 = this.f559m;
        this.f559m = i;
        boolean z = (i & 4) == 0;
        boolean z2 = (i & 256) != 0;
        AbstractC0156d abstractC0156d = this.f567u;
        if (abstractC0156d != null) {
            ((C2689y) abstractC0156d).f9253p = !z2;
            if (z || !z2) {
                C2689y c2689y = (C2689y) abstractC0156d;
                if (c2689y.f9254q) {
                    c2689y.f9254q = false;
                    c2689y.m3259w(true);
                }
            } else {
                C2689y c2689y2 = (C2689y) abstractC0156d;
                if (!c2689y2.f9254q) {
                    c2689y2.f9254q = true;
                    c2689y2.m3259w(true);
                }
            }
        }
        if (((i2 ^ i) & 256) == 0 || this.f567u == null) {
            return;
        }
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3597h.m2051c(this);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f548b = i;
        AbstractC0156d abstractC0156d = this.f567u;
        if (abstractC0156d != null) {
            ((C2689y) abstractC0156d).f9252o = i;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0083  */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8667p(android.view.View r4, android.graphics.Rect r5, boolean r6, boolean r7, boolean r8, boolean r9) {
        /*
            r3 = this;
            r0 = r4
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.appcompat.widget.ActionBarOverlayLayout$e r0 = (androidx.appcompat.widget.ActionBarOverlayLayout.C0157e) r0
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
            r11 = r0
            r0 = r5
            int r0 = r0.top
            r12 = r0
            r0 = r13
            r6 = r0
            r0 = r11
            r1 = r12
            if (r0 == r1) goto L57
            r0 = r4
            r1 = r12
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
            r11 = r0
            r0 = r5
            int r0 = r0.right
            r12 = r0
            r0 = r6
            r7 = r0
            r0 = r11
            r1 = r12
            if (r0 == r1) goto L7e
            r0 = r4
            r1 = r12
            r0.rightMargin = r1
            r0 = 1
            r7 = r0
        L7e:
            r0 = r8
            if (r0 == 0) goto La3
            r0 = r4
            int r0 = r0.bottomMargin
            r12 = r0
            r0 = r5
            int r0 = r0.bottom
            r11 = r0
            r0 = r12
            r1 = r11
            if (r0 == r1) goto La3
            r0 = r4
            r1 = r11
            r0.bottomMargin = r1
            r0 = r10
            r7 = r0
            goto La3
        La3:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.m8667p(android.view.View, android.graphics.Rect, boolean, boolean, boolean, boolean):boolean");
    }

    /* renamed from: q */
    public void m8666q() {
        removeCallbacks(this.f571y);
        removeCallbacks(this.f572z);
        ViewPropertyAnimator viewPropertyAnimator = this.f569w;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    /* renamed from: r */
    public final void m8665r(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f545B);
        this.f547a = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f552f = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        boolean z = false;
        if (context.getApplicationInfo().targetSdkVersion < 19) {
            z = true;
        }
        this.f553g = z;
        this.f568v = new OverScroller(context);
    }

    /* renamed from: s */
    public void m8664s() {
        AbstractC0230g0 abstractC0230g0;
        if (this.f549c == null) {
            this.f549c = (ContentFrameLayout) findViewById(C3681R.C3684id.action_bar_activity_content);
            this.f550d = (ActionBarContainer) findViewById(C3681R.C3684id.action_bar_container);
            View findViewById = findViewById(C3681R.C3684id.action_bar);
            if (findViewById instanceof AbstractC0230g0) {
                abstractC0230g0 = (AbstractC0230g0) findViewById;
            } else if (!(findViewById instanceof Toolbar)) {
                StringBuilder m8752j = C0082b.m8752j("Can't make a decor toolbar out of ");
                m8752j.append(findViewById.getClass().getSimpleName());
                throw new IllegalStateException(m8752j.toString());
            } else {
                abstractC0230g0 = ((Toolbar) findViewById).getWrapper();
            }
            this.f551e = abstractC0230g0;
        }
    }

    public void setActionBarHideOffset(int i) {
        m8666q();
        this.f550d.setTranslationY(-Math.max(0, Math.min(i, this.f550d.getHeight())));
    }

    public void setActionBarVisibilityCallback(AbstractC0156d abstractC0156d) {
        this.f567u = abstractC0156d;
        if (getWindowToken() != null) {
            ((C2689y) this.f567u).f9252o = this.f548b;
            int i = this.f559m;
            if (i == 0) {
                return;
            }
            onWindowSystemUiVisibilityChanged(i);
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3597h.m2051c(this);
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.f555i = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.f556j) {
            this.f556j = z;
            if (z) {
                return;
            }
            m8666q();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i) {
        m8664s();
        this.f551e.setIcon(i);
    }

    public void setIcon(Drawable drawable) {
        m8664s();
        this.f551e.setIcon(drawable);
    }

    public void setLogo(int i) {
        m8664s();
        this.f551e.mo8508r(i);
    }

    public void setOverlayMode(boolean z) {
        this.f554h = z;
        this.f553g = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // androidx.appcompat.widget.AbstractC0227f0
    public void setWindowCallback(Window.Callback callback) {
        m8664s();
        this.f551e.setWindowCallback(callback);
    }

    @Override // androidx.appcompat.widget.AbstractC0227f0
    public void setWindowTitle(CharSequence charSequence) {
        m8664s();
        this.f551e.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
