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
import androidx.appcompat.a;
import androidx.appcompat.view.menu.m;
import androidx.core.graphics.b;
import androidx.core.view.ac;
import androidx.core.view.n;
import androidx.core.view.o;
import androidx.core.view.p;
import androidx.core.view.q;
import androidx.core.view.v;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout.class */
public class ActionBarOverlayLayout extends ViewGroup implements n, n, o, p {
    static final int[] f = {a.C0018a.actionBarSize, 16842841};
    private ac A;
    private a B;
    private OverScroller C;
    private final Runnable D;
    private final Runnable E;
    private final q F;

    /* renamed from: a  reason: collision with root package name */
    ActionBarContainer f850a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f851b;

    /* renamed from: c  reason: collision with root package name */
    boolean f852c;

    /* renamed from: d  reason: collision with root package name */
    ViewPropertyAnimator f853d;
    final AnimatorListenerAdapter e;
    private int g;
    private int h;
    private ContentFrameLayout i;
    private o j;
    private Drawable k;
    private boolean l;
    private boolean m;
    private boolean n;
    private int o;
    private int p;
    private final Rect q;
    private final Rect r;
    private final Rect s;
    private final Rect t;
    private final Rect u;
    private final Rect v;
    private final Rect w;
    private ac x;
    private ac y;
    private ac z;

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

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$a.class */
    public interface a {
        void c(int i);

        void e(boolean z);

        void n();

        void o();

        void p();
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.h = 0;
        this.q = new Rect();
        this.r = new Rect();
        this.s = new Rect();
        this.t = new Rect();
        this.u = new Rect();
        this.v = new Rect();
        this.w = new Rect();
        this.x = ac.f1973a;
        this.y = ac.f1973a;
        this.z = ac.f1973a;
        this.A = ac.f1973a;
        this.e = new AnimatorListenerAdapter() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                ActionBarOverlayLayout.this.f853d = null;
                ActionBarOverlayLayout.this.f852c = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ActionBarOverlayLayout.this.f853d = null;
                ActionBarOverlayLayout.this.f852c = false;
            }
        };
        this.D = new Runnable() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.2
            @Override // java.lang.Runnable
            public final void run() {
                ActionBarOverlayLayout.this.a();
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.f853d = actionBarOverlayLayout.f850a.animate().translationY(BitmapDescriptorFactory.HUE_RED).setListener(ActionBarOverlayLayout.this.e);
            }
        };
        this.E = new Runnable() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.3
            @Override // java.lang.Runnable
            public final void run() {
                ActionBarOverlayLayout.this.a();
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.f853d = actionBarOverlayLayout.f850a.animate().translationY(-ActionBarOverlayLayout.this.f850a.getHeight()).setListener(ActionBarOverlayLayout.this.e);
            }
        };
        a(context);
        this.F = new q(this);
    }

    private static o a(View view) {
        if (view instanceof o) {
            return (o) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).i();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    private void a(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f);
        boolean z = false;
        this.g = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.k = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        if (context.getApplicationInfo().targetSdkVersion < 19) {
            z = true;
        }
        this.l = z;
        this.C = new OverScroller(context);
    }

    private static boolean a(View view, Rect rect, boolean z) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        boolean z2 = true;
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
        if (z && layoutParams.bottomMargin != rect.bottom) {
            layoutParams.bottomMargin = rect.bottom;
        }
        return z2;
    }

    private void h() {
        if (this.i == null) {
            this.i = (ContentFrameLayout) findViewById(a.f.action_bar_activity_content);
            this.f850a = (ActionBarContainer) findViewById(a.f.action_bar_container);
            this.j = a(findViewById(a.f.action_bar));
        }
    }

    final void a() {
        removeCallbacks(this.D);
        removeCallbacks(this.E);
        ViewPropertyAnimator viewPropertyAnimator = this.f853d;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // androidx.appcompat.widget.n
    public final void a(int i) {
        h();
        if (i == 109) {
            setOverlayMode(true);
        }
    }

    @Override // androidx.core.view.o
    public final void a(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // androidx.core.view.o
    public final void a(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // androidx.core.view.p
    public final void a(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        a(view, i, i2, i3, i4, i5);
    }

    @Override // androidx.core.view.o
    public final void a(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // androidx.core.view.o
    public final boolean a(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // androidx.core.view.o
    public final void b(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // androidx.appcompat.widget.n
    public final boolean b() {
        h();
        return this.j.f();
    }

    @Override // androidx.appcompat.widget.n
    public final boolean c() {
        h();
        return this.j.g();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.appcompat.widget.n
    public final boolean d() {
        h();
        return this.j.h();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.k != null && !this.l) {
            int bottom = this.f850a.getVisibility() == 0 ? (int) (this.f850a.getBottom() + this.f850a.getTranslationY() + 0.5f) : 0;
            this.k.setBounds(0, bottom, getWidth(), this.k.getIntrinsicHeight() + bottom);
            this.k.draw(canvas);
        }
    }

    @Override // androidx.appcompat.widget.n
    public final boolean e() {
        h();
        return this.j.i();
    }

    @Override // androidx.appcompat.widget.n
    public final boolean f() {
        h();
        return this.j.j();
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            return super.fitSystemWindows(rect);
        }
        h();
        boolean a2 = a(this.f850a, rect, false);
        this.t.set(rect);
        ah.a(this, this.t, this.q);
        if (!this.u.equals(this.t)) {
            this.u.set(this.t);
            a2 = true;
        }
        if (!this.r.equals(this.q)) {
            this.r.set(this.q);
            a2 = true;
        }
        if (!a2) {
            return true;
        }
        requestLayout();
        return true;
    }

    @Override // androidx.appcompat.widget.n
    public final void g() {
        h();
        this.j.l();
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
        return this.F.a();
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        h();
        ac a2 = ac.a(windowInsets);
        boolean a3 = a(this.f850a, new Rect(a2.f1974b.g().f1896b, a2.f1974b.g().f1897c, a2.f1974b.g().f1898d, a2.f1974b.g().e), false);
        v.a(this, a2, this.q);
        ac b2 = a2.b(this.q.left, this.q.top, this.q.right, this.q.bottom);
        this.x = b2;
        a3 = true;
        if (!this.y.equals(b2)) {
            this.y = this.x;
            a3 = true;
        }
        if (!this.r.equals(this.q)) {
            this.r.set(this.q);
        }
        if (a3) {
            requestLayout();
        }
        return a2.f1974b.f().f1974b.c().f1974b.d().e();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        a(getContext());
        v.r(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
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
        h();
        measureChildWithMargins(this.f850a, i, 0, i2, 0);
        LayoutParams layoutParams = (LayoutParams) this.f850a.getLayoutParams();
        int max = Math.max(0, this.f850a.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin);
        int max2 = Math.max(0, this.f850a.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f850a.getMeasuredState());
        boolean z = (v.q(this) & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0;
        if (z) {
            int i4 = this.g;
            i3 = i4;
            if (this.m) {
                i3 = i4;
                if (this.f850a.f844a != null) {
                    i3 = i4 + this.g;
                }
            }
        } else {
            i3 = this.f850a.getVisibility() != 8 ? this.f850a.getMeasuredHeight() : 0;
        }
        this.s.set(this.q);
        if (Build.VERSION.SDK_INT >= 21) {
            this.z = this.x;
        } else {
            this.v.set(this.t);
        }
        if (!this.f851b && !z) {
            this.s.top += i3;
            this.s.bottom += 0;
            if (Build.VERSION.SDK_INT >= 21) {
                this.z = this.z.b(0, i3, 0, 0);
            }
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.z = new ac.a(this.z).a(b.a(this.z.f1974b.g().f1896b, this.z.f1974b.g().f1897c + i3, this.z.f1974b.g().f1898d, this.z.f1974b.g().e + 0)).f1975a.a();
        } else {
            this.v.top += i3;
            this.v.bottom += 0;
        }
        a(this.i, this.s, true);
        if (Build.VERSION.SDK_INT >= 21 && !this.A.equals(this.z)) {
            ac acVar = this.z;
            this.A = acVar;
            v.b(this.i, acVar);
        } else if (Build.VERSION.SDK_INT < 21 && !this.w.equals(this.v)) {
            this.w.set(this.v);
            this.i.a(this.v);
        }
        measureChildWithMargins(this.i, i, 0, i2, 0);
        LayoutParams layoutParams2 = (LayoutParams) this.i.getLayoutParams();
        int max3 = Math.max(max, this.i.getMeasuredWidth() + layoutParams2.leftMargin + layoutParams2.rightMargin);
        int max4 = Math.max(max2, this.i.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.i.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        boolean z2 = false;
        if (!this.n || !z) {
            return false;
        }
        this.C.fling(0, 0, 0, (int) f3, 0, 0, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Integer.MAX_VALUE);
        if (this.C.getFinalY() > this.f850a.getHeight()) {
            z2 = true;
        }
        if (z2) {
            a();
            this.E.run();
        } else {
            a();
            this.D.run();
        }
        this.f852c = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.o + i2;
        this.o = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public void onNestedScrollAccepted(View view, View view2, int i) {
        int i2 = 0;
        this.F.a(i, 0);
        ActionBarContainer actionBarContainer = this.f850a;
        if (actionBarContainer != null) {
            i2 = -((int) actionBarContainer.getTranslationY());
        }
        this.o = i2;
        a();
        a aVar = this.B;
        if (aVar != null) {
            aVar.p();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.f850a.getVisibility() != 0) {
            return false;
        }
        return this.n;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public void onStopNestedScroll(View view) {
        if (this.n && !this.f852c) {
            if (this.o <= this.f850a.getHeight()) {
                a();
                postDelayed(this.D, 600L);
                return;
            }
            a();
            postDelayed(this.E, 600L);
        }
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i);
        }
        h();
        int i2 = this.p;
        this.p = i;
        boolean z = false;
        boolean z2 = (i & 4) == 0;
        if ((i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0) {
            z = true;
        }
        a aVar = this.B;
        if (aVar != null) {
            aVar.e(!z);
            if (z2 || !z) {
                this.B.n();
            } else {
                this.B.o();
            }
        }
        if (((i2 ^ i) & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0 && this.B != null) {
            v.r(this);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.h = i;
        a aVar = this.B;
        if (aVar != null) {
            aVar.c(i);
        }
    }

    public void setActionBarHideOffset(int i) {
        a();
        this.f850a.setTranslationY(-Math.max(0, Math.min(i, this.f850a.getHeight())));
    }

    public void setActionBarVisibilityCallback(a aVar) {
        this.B = aVar;
        if (getWindowToken() != null) {
            this.B.c(this.h);
            int i = this.p;
            if (i != 0) {
                onWindowSystemUiVisibilityChanged(i);
                v.r(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.m = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.n) {
            this.n = z;
            if (!z) {
                a();
                setActionBarHideOffset(0);
            }
        }
    }

    public void setIcon(int i) {
        h();
        this.j.a(i);
    }

    public void setIcon(Drawable drawable) {
        h();
        this.j.a(drawable);
    }

    public void setLogo(int i) {
        h();
        this.j.b(i);
    }

    @Override // androidx.appcompat.widget.n
    public void setMenu(Menu menu, m.a aVar) {
        h();
        this.j.a(menu, aVar);
    }

    @Override // androidx.appcompat.widget.n
    public void setMenuPrepared() {
        h();
        this.j.k();
    }

    public void setOverlayMode(boolean z) {
        this.f851b = z;
        this.l = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // androidx.appcompat.widget.n
    public void setWindowCallback(Window.Callback callback) {
        h();
        this.j.a(callback);
    }

    @Override // androidx.appcompat.widget.n
    public void setWindowTitle(CharSequence charSequence) {
        h();
        this.j.a(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
