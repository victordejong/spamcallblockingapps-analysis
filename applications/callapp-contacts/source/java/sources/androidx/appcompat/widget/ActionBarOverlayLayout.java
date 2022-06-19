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
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.appcompat.C0142a;
import androidx.appcompat.view.menu.AbstractC0283m;
import androidx.core.graphics.C0835b;
import androidx.core.view.AbstractC0918n;
import androidx.core.view.AbstractC0919o;
import androidx.core.view.AbstractC0920p;
import androidx.core.view.C0889ac;
import androidx.core.view.C0921q;
import androidx.core.view.C0926v;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout.class */
public class ActionBarOverlayLayout extends ViewGroup implements AbstractC0405n, AbstractC0918n, AbstractC0919o, AbstractC0920p {

    /* renamed from: f */
    static final int[] f1019f = {C0142a.C0143a.actionBarSize, 16842841};

    /* renamed from: A */
    private C0889ac f1020A;

    /* renamed from: B */
    private AbstractC0298a f1021B;

    /* renamed from: C */
    private OverScroller f1022C;

    /* renamed from: D */
    private final Runnable f1023D;

    /* renamed from: E */
    private final Runnable f1024E;

    /* renamed from: F */
    private final C0921q f1025F;

    /* renamed from: a */
    ActionBarContainer f1026a;

    /* renamed from: b */
    public boolean f1027b;

    /* renamed from: c */
    boolean f1028c;

    /* renamed from: d */
    ViewPropertyAnimator f1029d;

    /* renamed from: e */
    final AnimatorListenerAdapter f1030e;

    /* renamed from: g */
    private int f1031g;

    /* renamed from: h */
    private int f1032h;

    /* renamed from: i */
    private ContentFrameLayout f1033i;

    /* renamed from: j */
    private AbstractC0406o f1034j;

    /* renamed from: k */
    private Drawable f1035k;

    /* renamed from: l */
    private boolean f1036l;

    /* renamed from: m */
    private boolean f1037m;

    /* renamed from: n */
    private boolean f1038n;

    /* renamed from: o */
    private int f1039o;

    /* renamed from: p */
    private int f1040p;

    /* renamed from: q */
    private final Rect f1041q;

    /* renamed from: r */
    private final Rect f1042r;

    /* renamed from: s */
    private final Rect f1043s;

    /* renamed from: t */
    private final Rect f1044t;

    /* renamed from: u */
    private final Rect f1045u;

    /* renamed from: v */
    private final Rect f1046v;

    /* renamed from: w */
    private final Rect f1047w;

    /* renamed from: x */
    private C0889ac f1048x;

    /* renamed from: y */
    private C0889ac f1049y;

    /* renamed from: z */
    private C0889ac f1050z;

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

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$a.class */
    public interface AbstractC0298a {
        /* renamed from: c */
        void mo46022c(int i);

        /* renamed from: e */
        void mo46021e(boolean z);

        /* renamed from: n */
        void mo46020n();

        /* renamed from: o */
        void mo46019o();

        /* renamed from: p */
        void mo46018p();
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1032h = 0;
        this.f1041q = new Rect();
        this.f1042r = new Rect();
        this.f1043s = new Rect();
        this.f1044t = new Rect();
        this.f1045u = new Rect();
        this.f1046v = new Rect();
        this.f1047w = new Rect();
        this.f1048x = C0889ac.f3695a;
        this.f1049y = C0889ac.f3695a;
        this.f1050z = C0889ac.f3695a;
        this.f1020A = C0889ac.f3695a;
        this.f1030e = new AnimatorListenerAdapter() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                ActionBarOverlayLayout.this.f1029d = null;
                ActionBarOverlayLayout.this.f1028c = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ActionBarOverlayLayout.this.f1029d = null;
                ActionBarOverlayLayout.this.f1028c = false;
            }
        };
        this.f1023D = new Runnable() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.2
            @Override // java.lang.Runnable
            public final void run() {
                ActionBarOverlayLayout.this.m46027a();
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.f1029d = actionBarOverlayLayout.f1026a.animate().translationY(BitmapDescriptorFactory.HUE_RED).setListener(ActionBarOverlayLayout.this.f1030e);
            }
        };
        this.f1024E = new Runnable() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.3
            @Override // java.lang.Runnable
            public final void run() {
                ActionBarOverlayLayout.this.m46027a();
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.f1029d = actionBarOverlayLayout.f1026a.animate().translationY(-ActionBarOverlayLayout.this.f1026a.getHeight()).setListener(ActionBarOverlayLayout.this.f1030e);
            }
        };
        m46026a(context);
        this.f1025F = new C0921q(this);
    }

    /* renamed from: a */
    private static AbstractC0406o m46025a(View view) {
        if (view instanceof AbstractC0406o) {
            return (AbstractC0406o) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).m45833i();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    /* renamed from: a */
    private void m46026a(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f1019f);
        this.f1031g = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f1035k = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        boolean z = false;
        if (context.getApplicationInfo().targetSdkVersion < 19) {
            z = true;
        }
        this.f1036l = z;
        this.f1022C = new OverScroller(context);
    }

    /* renamed from: a */
    private static boolean m46024a(View view, Rect rect, boolean z) {
        boolean z2;
        boolean z3;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.leftMargin != rect.left) {
            layoutParams.leftMargin = rect.left;
            z2 = true;
        } else {
            z2 = false;
        }
        if (layoutParams.topMargin != rect.top) {
            layoutParams.topMargin = rect.top;
            z2 = true;
        }
        if (layoutParams.rightMargin != rect.right) {
            layoutParams.rightMargin = rect.right;
            z2 = true;
        }
        if (!z || layoutParams.bottomMargin == rect.bottom) {
            z3 = z2;
        } else {
            layoutParams.bottomMargin = rect.bottom;
            z3 = true;
        }
        return z3;
    }

    /* renamed from: h */
    private void m46023h() {
        if (this.f1033i == null) {
            this.f1033i = (ContentFrameLayout) findViewById(C0142a.C0148f.action_bar_activity_content);
            this.f1026a = (ActionBarContainer) findViewById(C0142a.C0148f.action_bar_container);
            this.f1034j = m46025a(findViewById(C0142a.C0148f.action_bar));
        }
    }

    /* renamed from: a */
    final void m46027a() {
        removeCallbacks(this.f1023D);
        removeCallbacks(this.f1024E);
        ViewPropertyAnimator viewPropertyAnimator = this.f1029d;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0405n
    /* renamed from: a */
    public final void mo45662a(int i) {
        m46023h();
        if (i != 109) {
            return;
        }
        setOverlayMode(true);
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: a */
    public final void mo44023a(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: a */
    public final void mo44021a(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // androidx.core.view.AbstractC0920p
    /* renamed from: a */
    public final void mo44020a(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        mo44021a(view, i, i2, i3, i4, i5);
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: a */
    public final void mo44019a(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: a */
    public final boolean mo44017a(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: b */
    public final void mo44010b(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0405n
    /* renamed from: b */
    public final boolean mo45661b() {
        m46023h();
        return this.f1034j.mo45633f();
    }

    @Override // androidx.appcompat.widget.AbstractC0405n
    /* renamed from: c */
    public final boolean mo45660c() {
        m46023h();
        return this.f1034j.mo45632g();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.appcompat.widget.AbstractC0405n
    /* renamed from: d */
    public final boolean mo45659d() {
        m46023h();
        return this.f1034j.mo45631h();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f1035k == null || this.f1036l) {
            return;
        }
        int bottom = this.f1026a.getVisibility() == 0 ? (int) (this.f1026a.getBottom() + this.f1026a.getTranslationY() + 0.5f) : 0;
        this.f1035k.setBounds(0, bottom, getWidth(), this.f1035k.getIntrinsicHeight() + bottom);
        this.f1035k.draw(canvas);
    }

    @Override // androidx.appcompat.widget.AbstractC0405n
    /* renamed from: e */
    public final boolean mo45658e() {
        m46023h();
        return this.f1034j.mo45630i();
    }

    @Override // androidx.appcompat.widget.AbstractC0405n
    /* renamed from: f */
    public final boolean mo45657f() {
        m46023h();
        return this.f1034j.mo45629j();
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            return super.fitSystemWindows(rect);
        }
        m46023h();
        boolean m46024a = m46024a(this.f1026a, rect, false);
        this.f1044t.set(rect);
        C0380ah.m45769a(this, this.f1044t, this.f1041q);
        if (!this.f1045u.equals(this.f1044t)) {
            this.f1045u.set(this.f1044t);
            m46024a = true;
        }
        if (!this.f1042r.equals(this.f1041q)) {
            this.f1042r.set(this.f1041q);
            m46024a = true;
        }
        if (!m46024a) {
            return true;
        }
        requestLayout();
        return true;
    }

    @Override // androidx.appcompat.widget.AbstractC0405n
    /* renamed from: g */
    public final void mo45656g() {
        m46023h();
        this.f1034j.mo45627l();
    }

    @Override // android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f1025F.m44164a();
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        m46023h();
        C0889ac m44229a = C0889ac.m44229a(windowInsets);
        boolean m46024a = m46024a(this.f1026a, new Rect(m44229a.f3696b.mo44216g().f3563b, m44229a.f3696b.mo44216g().f3564c, m44229a.f3696b.mo44216g().f3565d, m44229a.f3696b.mo44216g().f3566e), false);
        C0926v.m44121a(this, m44229a, this.f1041q);
        C0889ac m44226b = m44229a.m44226b(this.f1041q.left, this.f1041q.top, this.f1041q.right, this.f1041q.bottom);
        this.f1048x = m44226b;
        if (!this.f1049y.equals(m44226b)) {
            this.f1049y = this.f1048x;
            m46024a = true;
        }
        if (!this.f1042r.equals(this.f1041q)) {
            this.f1042r.set(this.f1041q);
            m46024a = true;
        }
        if (m46024a) {
            requestLayout();
        }
        return m44229a.f3696b.mo44210f().f3696b.mo44214c().f3696b.mo44213d().m44223e();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m46026a(getContext());
        C0926v.m44081r(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m46027a();
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
                int i6 = layoutParams.leftMargin + paddingLeft;
                int i7 = layoutParams.topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        m46023h();
        measureChildWithMargins(this.f1026a, i, 0, i2, 0);
        LayoutParams layoutParams = (LayoutParams) this.f1026a.getLayoutParams();
        int max = Math.max(0, this.f1026a.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin);
        int max2 = Math.max(0, this.f1026a.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f1026a.getMeasuredState());
        boolean z = (C0926v.m44082q(this) & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0;
        if (z) {
            int i4 = this.f1031g;
            i3 = i4;
            if (this.f1037m) {
                i3 = i4;
                if (this.f1026a.f996a != null) {
                    i3 = i4 + this.f1031g;
                }
            }
        } else {
            i3 = this.f1026a.getVisibility() != 8 ? this.f1026a.getMeasuredHeight() : 0;
        }
        this.f1043s.set(this.f1041q);
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1050z = this.f1048x;
        } else {
            this.f1046v.set(this.f1044t);
        }
        if (!this.f1027b && !z) {
            this.f1043s.top += i3;
            this.f1043s.bottom += 0;
            if (Build.VERSION.SDK_INT >= 21) {
                this.f1050z = this.f1050z.m44226b(0, i3, 0, 0);
            }
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.f1050z = new C0889ac.C0890a(this.f1050z).m44222a(C0835b.m44393a(this.f1050z.f3696b.mo44216g().f3563b, this.f1050z.f3696b.mo44216g().f3564c + i3, this.f1050z.f3696b.mo44216g().f3565d, this.f1050z.f3696b.mo44216g().f3566e + 0)).f3697a.mo44220a();
        } else {
            this.f1046v.top += i3;
            this.f1046v.bottom += 0;
        }
        m46024a(this.f1033i, this.f1043s, true);
        if (Build.VERSION.SDK_INT >= 21 && !this.f1020A.equals(this.f1050z)) {
            C0889ac c0889ac = this.f1050z;
            this.f1020A = c0889ac;
            C0926v.m44107b(this.f1033i, c0889ac);
        } else if (Build.VERSION.SDK_INT < 21 && !this.f1047w.equals(this.f1046v)) {
            this.f1047w.set(this.f1046v);
            this.f1033i.m45957a(this.f1046v);
        }
        measureChildWithMargins(this.f1033i, i, 0, i2, 0);
        LayoutParams layoutParams2 = (LayoutParams) this.f1033i.getLayoutParams();
        int max3 = Math.max(max, this.f1033i.getMeasuredWidth() + layoutParams2.leftMargin + layoutParams2.rightMargin);
        int max4 = Math.max(max2, this.f1033i.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f1033i.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        boolean z2 = false;
        if (!this.f1038n || !z) {
            return false;
        }
        this.f1022C.fling(0, 0, 0, (int) f2, 0, 0, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Integer.MAX_VALUE);
        if (this.f1022C.getFinalY() > this.f1026a.getHeight()) {
            z2 = true;
        }
        if (z2) {
            m46027a();
            this.f1024E.run();
        } else {
            m46027a();
            this.f1023D.run();
        }
        this.f1028c = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.f1039o + i2;
        this.f1039o = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f1025F.m44162a(i, 0);
        ActionBarContainer actionBarContainer = this.f1026a;
        int i2 = 0;
        if (actionBarContainer != null) {
            i2 = -((int) actionBarContainer.getTranslationY());
        }
        this.f1039o = i2;
        m46027a();
        AbstractC0298a abstractC0298a = this.f1021B;
        if (abstractC0298a != null) {
            abstractC0298a.mo46018p();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.f1026a.getVisibility() != 0) {
            return false;
        }
        return this.f1038n;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public void onStopNestedScroll(View view) {
        if (!this.f1038n || this.f1028c) {
            return;
        }
        if (this.f1039o <= this.f1026a.getHeight()) {
            m46027a();
            postDelayed(this.f1023D, 600L);
            return;
        }
        m46027a();
        postDelayed(this.f1024E, 600L);
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i);
        }
        m46023h();
        int i2 = this.f1040p;
        this.f1040p = i;
        boolean z = false;
        boolean z2 = (i & 4) == 0;
        if ((i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0) {
            z = true;
        }
        AbstractC0298a abstractC0298a = this.f1021B;
        if (abstractC0298a != null) {
            abstractC0298a.mo46021e(!z);
            if (z2 || !z) {
                this.f1021B.mo46020n();
            } else {
                this.f1021B.mo46019o();
            }
        }
        if (((i2 ^ i) & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 0 || this.f1021B == null) {
            return;
        }
        C0926v.m44081r(this);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f1032h = i;
        AbstractC0298a abstractC0298a = this.f1021B;
        if (abstractC0298a != null) {
            abstractC0298a.mo46022c(i);
        }
    }

    public void setActionBarHideOffset(int i) {
        m46027a();
        this.f1026a.setTranslationY(-Math.max(0, Math.min(i, this.f1026a.getHeight())));
    }

    public void setActionBarVisibilityCallback(AbstractC0298a abstractC0298a) {
        this.f1021B = abstractC0298a;
        if (getWindowToken() != null) {
            this.f1021B.mo46022c(this.f1032h);
            int i = this.f1040p;
            if (i == 0) {
                return;
            }
            onWindowSystemUiVisibilityChanged(i);
            C0926v.m44081r(this);
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.f1037m = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.f1038n) {
            this.f1038n = z;
            if (z) {
                return;
            }
            m46027a();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i) {
        m46023h();
        this.f1034j.mo45654a(i);
    }

    public void setIcon(Drawable drawable) {
        m46023h();
        this.f1034j.mo45652a(drawable);
    }

    public void setLogo(int i) {
        m46023h();
        this.f1034j.mo45643b(i);
    }

    @Override // androidx.appcompat.widget.AbstractC0405n
    public void setMenu(Menu menu, AbstractC0283m.AbstractC0284a abstractC0284a) {
        m46023h();
        this.f1034j.mo45651a(menu, abstractC0284a);
    }

    @Override // androidx.appcompat.widget.AbstractC0405n
    public void setMenuPrepared() {
        m46023h();
        this.f1034j.mo45628k();
    }

    public void setOverlayMode(boolean z) {
        this.f1027b = z;
        this.f1036l = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // androidx.appcompat.widget.AbstractC0405n
    public void setWindowCallback(Window.Callback callback) {
        m46023h();
        this.f1034j.mo45649a(callback);
    }

    @Override // androidx.appcompat.widget.AbstractC0405n
    public void setWindowTitle(CharSequence charSequence) {
        m46023h();
        this.f1034j.mo45646a(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
