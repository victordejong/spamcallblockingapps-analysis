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
import com.mopub.nativeads.MoPubNativeAdPositioning;
import p012b.p016b.C0574a;
import p012b.p016b.C0579f;
import p012b.p016b.p024p.p025j.AbstractC0662m;
import p012b.p016b.p026q.AbstractC0714n;
import p012b.p016b.p026q.AbstractC0715o;
import p012b.p016b.p026q.C0708l0;
import p012b.p042i.p046j.C0892c;
import p012b.p042i.p054p.AbstractC0995n;
import p012b.p042i.p054p.AbstractC0996o;
import p012b.p042i.p054p.AbstractC0997p;
import p012b.p042i.p054p.C0957c0;
import p012b.p042i.p054p.C0998q;
import p012b.p042i.p054p.C1002u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout.class */
public class ActionBarOverlayLayout extends ViewGroup implements AbstractC0714n, AbstractC0997p, AbstractC0995n, AbstractC0996o {

    /* renamed from: F */
    public static final int[] f425F = {C0574a.actionBarSize, 16842841};

    /* renamed from: A */
    public ViewPropertyAnimator f426A;

    /* renamed from: B */
    public final AnimatorListenerAdapter f427B;

    /* renamed from: C */
    public final Runnable f428C;

    /* renamed from: D */
    public final Runnable f429D;

    /* renamed from: E */
    public final C0998q f430E;

    /* renamed from: a */
    public int f431a;

    /* renamed from: b */
    public int f432b;

    /* renamed from: c */
    public ContentFrameLayout f433c;

    /* renamed from: d */
    public ActionBarContainer f434d;

    /* renamed from: e */
    public AbstractC0715o f435e;

    /* renamed from: f */
    public Drawable f436f;

    /* renamed from: g */
    public boolean f437g;

    /* renamed from: h */
    public boolean f438h;

    /* renamed from: i */
    public boolean f439i;

    /* renamed from: j */
    public boolean f440j;

    /* renamed from: k */
    public boolean f441k;

    /* renamed from: l */
    public int f442l;

    /* renamed from: m */
    public int f443m;

    /* renamed from: n */
    public final Rect f444n;

    /* renamed from: o */
    public final Rect f445o;

    /* renamed from: p */
    public final Rect f446p;

    /* renamed from: q */
    public final Rect f447q;

    /* renamed from: r */
    public final Rect f448r;

    /* renamed from: s */
    public final Rect f449s;

    /* renamed from: t */
    public final Rect f450t;

    /* renamed from: u */
    public C0957c0 f451u;

    /* renamed from: v */
    public C0957c0 f452v;

    /* renamed from: w */
    public C0957c0 f453w;

    /* renamed from: x */
    public C0957c0 f454x;

    /* renamed from: y */
    public AbstractC0113d f455y;

    /* renamed from: z */
    public OverScroller f456z;

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

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$a.class */
    public class C0110a extends AnimatorListenerAdapter {
        public C0110a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f426A = null;
            actionBarOverlayLayout.f441k = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f426A = null;
            actionBarOverlayLayout.f441k = false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$b.class */
    public class RunnableC0111b implements Runnable {
        public RunnableC0111b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.m39072i();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f426A = actionBarOverlayLayout.f434d.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.f427B);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$c.class */
    public class RunnableC0112c implements Runnable {
        public RunnableC0112c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.m39072i();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f426A = actionBarOverlayLayout.f434d.animate().translationY(-ActionBarOverlayLayout.this.f434d.getHeight()).setListener(ActionBarOverlayLayout.this.f427B);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$d.class */
    public interface AbstractC0113d {
        /* renamed from: a */
        void mo36815a();

        /* renamed from: a */
        void mo36807a(boolean z);

        /* renamed from: b */
        void mo36805b();

        /* renamed from: c */
        void mo36802c();

        /* renamed from: d */
        void mo36800d();

        void onWindowVisibilityChanged(int i);
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f432b = 0;
        this.f444n = new Rect();
        this.f445o = new Rect();
        this.f446p = new Rect();
        this.f447q = new Rect();
        this.f448r = new Rect();
        this.f449s = new Rect();
        this.f450t = new Rect();
        C0957c0 c0Var = C0957c0.f4203b;
        this.f451u = c0Var;
        this.f452v = c0Var;
        this.f453w = c0Var;
        this.f454x = c0Var;
        this.f427B = new C0110a();
        this.f428C = new RunnableC0111b();
        this.f429D = new RunnableC0112c();
        m39076a(context);
        this.f430E = new C0998q(this);
    }

    /* renamed from: a */
    public final AbstractC0715o m39075a(View view) {
        if (view instanceof AbstractC0715o) {
            return (AbstractC0715o) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    @Override // p012b.p016b.p026q.AbstractC0714n
    /* renamed from: a */
    public void mo36281a(int i) {
        m39068m();
        if (i == 2) {
            this.f435e.mo36254l();
        } else if (i == 5) {
            this.f435e.mo36253m();
        } else if (i == 109) {
            setOverlayMode(true);
        }
    }

    /* renamed from: a */
    public final void m39076a(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f425F);
        boolean z = false;
        this.f431a = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f436f = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        if (context.getApplicationInfo().targetSdkVersion < 19) {
            z = true;
        }
        this.f437g = z;
        this.f456z = new OverScroller(context);
    }

    @Override // p012b.p016b.p026q.AbstractC0714n
    /* renamed from: a */
    public void mo36280a(Menu menu, AbstractC0662m.AbstractC0663a aVar) {
        m39068m();
        this.f435e.mo36270a(menu, aVar);
    }

    @Override // p012b.p042i.p054p.AbstractC0995n
    /* renamed from: a */
    public void mo35270a(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // p012b.p042i.p054p.AbstractC0995n
    /* renamed from: a */
    public void mo35269a(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // p012b.p042i.p054p.AbstractC0996o
    /* renamed from: a */
    public void mo35265a(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        mo35269a(view, i, i2, i3, i4, i5);
    }

    @Override // p012b.p042i.p054p.AbstractC0995n
    /* renamed from: a */
    public void mo35268a(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // p012b.p016b.p026q.AbstractC0714n
    /* renamed from: a */
    public boolean mo36282a() {
        m39068m();
        return this.f435e.mo36273a();
    }

    /* renamed from: a */
    public final boolean m39077a(float f) {
        this.f456z.fling(0, 0, 0, (int) f, 0, 0, Integer.MIN_VALUE, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT);
        return this.f456z.getFinalY() > this.f434d.getHeight();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0083  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m39074a(android.view.View r4, android.graphics.Rect r5, boolean r6, boolean r7, boolean r8, boolean r9) {
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
            r11 = r0
            r0 = r5
            int r0 = r0.top
            r12 = r0
            r0 = r13
            r6 = r0
            r0 = r11
            r1 = r12
            if (r0 == r1) goto L_0x0057
            r0 = r4
            r1 = r12
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
            r12 = r0
            r0 = r5
            int r0 = r0.right
            r11 = r0
            r0 = r6
            r7 = r0
            r0 = r12
            r1 = r11
            if (r0 == r1) goto L_0x007e
            r0 = r4
            r1 = r11
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.m39074a(android.view.View, android.graphics.Rect, boolean, boolean, boolean, boolean):boolean");
    }

    @Override // p012b.p042i.p054p.AbstractC0995n
    /* renamed from: a */
    public boolean mo35267a(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // p012b.p016b.p026q.AbstractC0714n
    /* renamed from: b */
    public void mo36279b() {
        m39068m();
        this.f435e.mo36267b();
    }

    @Override // p012b.p042i.p054p.AbstractC0995n
    /* renamed from: b */
    public void mo35266b(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // p012b.p016b.p026q.AbstractC0714n
    /* renamed from: c */
    public boolean mo36278c() {
        m39068m();
        return this.f435e.mo36264c();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // p012b.p016b.p026q.AbstractC0714n
    /* renamed from: d */
    public boolean mo36277d() {
        m39068m();
        return this.f435e.mo36262d();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f436f != null && !this.f437g) {
            int bottom = this.f434d.getVisibility() == 0 ? (int) (this.f434d.getBottom() + this.f434d.getTranslationY() + 0.5f) : 0;
            this.f436f.setBounds(0, bottom, getWidth(), this.f436f.getIntrinsicHeight() + bottom);
            this.f436f.draw(canvas);
        }
    }

    @Override // p012b.p016b.p026q.AbstractC0714n
    /* renamed from: e */
    public boolean mo36276e() {
        m39068m();
        return this.f435e.mo36261e();
    }

    @Override // p012b.p016b.p026q.AbstractC0714n
    /* renamed from: f */
    public boolean mo36275f() {
        m39068m();
        return this.f435e.mo36260f();
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            return super.fitSystemWindows(rect);
        }
        m39068m();
        boolean a = m39074a((View) this.f434d, rect, true, true, false, true);
        this.f447q.set(rect);
        C0708l0.m36318a(this, this.f447q, this.f444n);
        if (!this.f448r.equals(this.f447q)) {
            this.f448r.set(this.f447q);
            a = true;
        }
        if (!this.f445o.equals(this.f444n)) {
            this.f445o.set(this.f444n);
            a = true;
        }
        if (!a) {
            return true;
        }
        requestLayout();
        return true;
    }

    @Override // p012b.p016b.p026q.AbstractC0714n
    /* renamed from: g */
    public void mo36274g() {
        m39068m();
        this.f435e.mo36259g();
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f434d;
        return actionBarContainer != null ? -((int) actionBarContainer.getTranslationY()) : 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f430E.m35264a();
    }

    public CharSequence getTitle() {
        m39068m();
        return this.f435e.getTitle();
    }

    /* renamed from: h */
    public final void m39073h() {
        m39072i();
        this.f429D.run();
    }

    /* renamed from: i */
    public void m39072i() {
        removeCallbacks(this.f428C);
        removeCallbacks(this.f429D);
        ViewPropertyAnimator viewPropertyAnimator = this.f426A;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    /* renamed from: j */
    public boolean m39071j() {
        return this.f438h;
    }

    /* renamed from: k */
    public final void m39070k() {
        m39072i();
        postDelayed(this.f429D, 600L);
    }

    /* renamed from: l */
    public final void m39069l() {
        m39072i();
        postDelayed(this.f428C, 600L);
    }

    /* renamed from: m */
    public void m39068m() {
        if (this.f433c == null) {
            this.f433c = (ContentFrameLayout) findViewById(C0579f.action_bar_activity_content);
            this.f434d = (ActionBarContainer) findViewById(C0579f.action_bar_container);
            this.f435e = m39075a(findViewById(C0579f.action_bar));
        }
    }

    /* renamed from: n */
    public final void m39067n() {
        m39072i();
        this.f428C.run();
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        m39068m();
        C0957c0 a = C0957c0.m35416a(windowInsets);
        boolean a2 = m39074a((View) this.f434d, new Rect(a.m35410e(), a.m35408g(), a.m35409f(), a.m35411d()), true, true, false, true);
        C1002u.m35236a(this, a, this.f444n);
        Rect rect = this.f444n;
        C0957c0 a3 = a.m35417a(rect.left, rect.top, rect.right, rect.bottom);
        this.f451u = a3;
        a2 = true;
        if (!this.f452v.equals(a3)) {
            this.f452v = this.f451u;
            a2 = true;
        }
        if (!this.f445o.equals(this.f444n)) {
            this.f445o.set(this.f444n);
        }
        if (a2) {
            requestLayout();
        }
        return a.m35418a().m35412c().m35414b().m35405j();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m39076a(getContext());
        C1002u.m35253D(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m39072i();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
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
    public void onMeasure(int i, int i2) {
        int i3;
        m39068m();
        measureChildWithMargins(this.f434d, i, 0, i2, 0);
        LayoutParams layoutParams = (LayoutParams) this.f434d.getLayoutParams();
        int max = Math.max(0, this.f434d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
        int max2 = Math.max(0, this.f434d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f434d.getMeasuredState());
        boolean z = (C1002u.m35202t(this) & 256) != 0;
        if (z) {
            int i4 = this.f431a;
            i3 = i4;
            if (this.f439i) {
                i3 = i4;
                if (this.f434d.getTabContainer() != null) {
                    i3 = i4 + this.f431a;
                }
            }
        } else {
            i3 = this.f434d.getVisibility() != 8 ? this.f434d.getMeasuredHeight() : 0;
        }
        this.f446p.set(this.f444n);
        if (Build.VERSION.SDK_INT >= 21) {
            this.f453w = this.f451u;
        } else {
            this.f449s.set(this.f447q);
        }
        if (!this.f438h && !z) {
            Rect rect = this.f446p;
            rect.top += i3;
            rect.bottom += 0;
            if (Build.VERSION.SDK_INT >= 21) {
                this.f453w = this.f453w.m35417a(0, i3, 0, 0);
            }
        } else if (Build.VERSION.SDK_INT >= 21) {
            C0892c a = C0892c.m35599a(this.f453w.m35410e(), this.f453w.m35408g() + i3, this.f453w.m35409f(), this.f453w.m35411d() + 0);
            C0957c0.C0958a aVar = new C0957c0.C0958a(this.f453w);
            aVar.m35402b(a);
            this.f453w = aVar.m35404a();
        } else {
            Rect rect2 = this.f449s;
            rect2.top += i3;
            rect2.bottom += 0;
        }
        m39074a((View) this.f433c, this.f446p, true, true, true, true);
        if (Build.VERSION.SDK_INT >= 21 && !this.f454x.equals(this.f453w)) {
            C0957c0 c0Var = this.f453w;
            this.f454x = c0Var;
            C1002u.m35237a(this.f433c, c0Var);
        } else if (Build.VERSION.SDK_INT < 21 && !this.f450t.equals(this.f449s)) {
            this.f450t.set(this.f449s);
            this.f433c.m38988a(this.f449s);
        }
        measureChildWithMargins(this.f433c, i, 0, i2, 0);
        LayoutParams layoutParams2 = (LayoutParams) this.f433c.getLayoutParams();
        int max3 = Math.max(max, this.f433c.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
        int max4 = Math.max(max2, this.f433c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f433c.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.f440j || !z) {
            return false;
        }
        if (m39077a(f2)) {
            m39073h();
        } else {
            m39067n();
        }
        this.f441k = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.f442l + i2;
        this.f442l = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f430E.m35261a(view, view2, i);
        this.f442l = getActionBarHideOffset();
        m39072i();
        AbstractC0113d dVar = this.f455y;
        if (dVar != null) {
            dVar.mo36800d();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.f434d.getVisibility() != 0) {
            return false;
        }
        return this.f440j;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public void onStopNestedScroll(View view) {
        if (this.f440j && !this.f441k) {
            if (this.f442l <= this.f434d.getHeight()) {
                m39069l();
            } else {
                m39070k();
            }
        }
        AbstractC0113d dVar = this.f455y;
        if (dVar != null) {
            dVar.mo36805b();
        }
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i);
        }
        m39068m();
        int i2 = this.f443m;
        this.f443m = i;
        boolean z = false;
        boolean z2 = (i & 4) == 0;
        if ((i & 256) != 0) {
            z = true;
        }
        AbstractC0113d dVar = this.f455y;
        if (dVar != null) {
            dVar.mo36807a(!z);
            if (z2 || !z) {
                this.f455y.mo36815a();
            } else {
                this.f455y.mo36802c();
            }
        }
        if (((i2 ^ i) & 256) != 0 && this.f455y != null) {
            C1002u.m35253D(this);
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f432b = i;
        AbstractC0113d dVar = this.f455y;
        if (dVar != null) {
            dVar.onWindowVisibilityChanged(i);
        }
    }

    public void setActionBarHideOffset(int i) {
        m39072i();
        this.f434d.setTranslationY(-Math.max(0, Math.min(i, this.f434d.getHeight())));
    }

    public void setActionBarVisibilityCallback(AbstractC0113d dVar) {
        this.f455y = dVar;
        if (getWindowToken() != null) {
            this.f455y.onWindowVisibilityChanged(this.f432b);
            int i = this.f443m;
            if (i != 0) {
                onWindowSystemUiVisibilityChanged(i);
                C1002u.m35253D(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.f439i = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.f440j) {
            this.f440j = z;
            if (!z) {
                m39072i();
                setActionBarHideOffset(0);
            }
        }
    }

    public void setIcon(int i) {
        m39068m();
        this.f435e.setIcon(i);
    }

    public void setIcon(Drawable drawable) {
        m39068m();
        this.f435e.setIcon(drawable);
    }

    public void setLogo(int i) {
        m39068m();
        this.f435e.mo36266b(i);
    }

    public void setOverlayMode(boolean z) {
        this.f438h = z;
        this.f437g = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // p012b.p016b.p026q.AbstractC0714n
    public void setWindowCallback(Window.Callback callback) {
        m39068m();
        this.f435e.setWindowCallback(callback);
    }

    @Override // p012b.p016b.p026q.AbstractC0714n
    public void setWindowTitle(CharSequence charSequence) {
        m39068m();
        this.f435e.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
