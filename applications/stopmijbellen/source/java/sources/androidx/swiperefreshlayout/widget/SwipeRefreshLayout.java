package androidx.swiperefreshlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.ListView;
import com.mglab.scm.visual.FragmentStat;
import java.util.Objects;
import java.util.WeakHashMap;
import p066d0.C2134a;
import p131j1.C3163a;
import p131j1.C3166d;
import p131j1.C3168e;
import p163m0.AbstractC3575h;
import p163m0.C3576i;
import p163m0.C3579l;
import p163m0.C3589v;
import p163m0.C3611y;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout.class */
public class SwipeRefreshLayout extends ViewGroup implements AbstractC3575h {

    /* renamed from: J */
    public static final int[] f2566J = {16842766};

    /* renamed from: A */
    public Animation f2567A;

    /* renamed from: B */
    public Animation f2568B;

    /* renamed from: C */
    public Animation f2569C;

    /* renamed from: D */
    public boolean f2570D;

    /* renamed from: E */
    public int f2571E;

    /* renamed from: F */
    public AbstractC0668g f2572F;

    /* renamed from: a */
    public View f2576a;

    /* renamed from: b */
    public AbstractC0669h f2577b;

    /* renamed from: d */
    public int f2579d;

    /* renamed from: e */
    public float f2580e;

    /* renamed from: f */
    public float f2581f;

    /* renamed from: k */
    public boolean f2586k;

    /* renamed from: m */
    public int f2588m;

    /* renamed from: n */
    public float f2589n;

    /* renamed from: o */
    public float f2590o;

    /* renamed from: p */
    public boolean f2591p;

    /* renamed from: u */
    public int f2596u;

    /* renamed from: v */
    public int f2597v;

    /* renamed from: w */
    public int f2598w;

    /* renamed from: x */
    public int f2599x;

    /* renamed from: y */
    public C3166d f2600y;

    /* renamed from: z */
    public Animation f2601z;

    /* renamed from: c */
    public boolean f2578c = false;

    /* renamed from: i */
    public final int[] f2584i = new int[2];

    /* renamed from: j */
    public final int[] f2585j = new int[2];

    /* renamed from: q */
    public int f2592q = -1;

    /* renamed from: t */
    public int f2595t = -1;

    /* renamed from: G */
    public Animation.AnimationListener f2573G = new animationAnimation$AnimationListenerC0662a();

    /* renamed from: H */
    public final Animation f2574H = new C0666e();

    /* renamed from: I */
    public final Animation f2575I = new C0667f();

    /* renamed from: l */
    public int f2587l = getResources().getInteger(17694721);

    /* renamed from: r */
    public final DecelerateInterpolator f2593r = new DecelerateInterpolator(2.0f);

    /* renamed from: s */
    public C3163a f2594s = new C3163a(getContext(), -328966);

    /* renamed from: g */
    public final C3579l f2582g = new C3579l();

    /* renamed from: h */
    public final C3576i f2583h = new C3576i(this);

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$a.class */
    public class animationAnimation$AnimationListenerC0662a implements Animation.AnimationListener {
        public animationAnimation$AnimationListenerC0662a() {
            SwipeRefreshLayout.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            AbstractC0669h abstractC0669h;
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            if (!swipeRefreshLayout.f2578c) {
                swipeRefreshLayout.m7502h();
                return;
            }
            swipeRefreshLayout.f2600y.setAlpha(255);
            SwipeRefreshLayout.this.f2600y.start();
            SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
            if (swipeRefreshLayout2.f2570D && (abstractC0669h = swipeRefreshLayout2.f2577b) != null) {
                FragmentStat fragmentStat = (FragmentStat) abstractC0669h;
                fragmentStat.swipeRefreshLayout.setRefreshing(true);
                new FragmentStat.AsyncTaskC2093a().execute(1);
                fragmentStat.swipeRefreshLayout.setRefreshing(false);
            }
            SwipeRefreshLayout swipeRefreshLayout3 = SwipeRefreshLayout.this;
            swipeRefreshLayout3.f2588m = swipeRefreshLayout3.f2594s.getTop();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$b.class */
    public class C0663b extends Animation {
        public C0663b() {
            SwipeRefreshLayout.this = r4;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout.this.setAnimationProgress(1.0f - f);
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$c.class */
    public class C0664c extends Animation {

        /* renamed from: a */
        public final /* synthetic */ int f2604a;

        /* renamed from: b */
        public final /* synthetic */ int f2605b;

        public C0664c(int i, int i2) {
            SwipeRefreshLayout.this = r4;
            this.f2604a = i;
            this.f2605b = i2;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            C3166d c3166d = SwipeRefreshLayout.this.f2600y;
            int i = this.f2604a;
            c3166d.setAlpha((int) (((this.f2605b - i) * f) + i));
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$d.class */
    public class animationAnimation$AnimationListenerC0665d implements Animation.AnimationListener {
        public animationAnimation$AnimationListenerC0665d() {
            SwipeRefreshLayout.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            Objects.requireNonNull(SwipeRefreshLayout.this);
            SwipeRefreshLayout.this.m7498l(null);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$e */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$e.class */
    public class C0666e extends Animation {
        public C0666e() {
            SwipeRefreshLayout.this = r4;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            Objects.requireNonNull(SwipeRefreshLayout.this);
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            int i = swipeRefreshLayout.f2598w;
            int abs = Math.abs(swipeRefreshLayout.f2597v);
            SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
            int i2 = swipeRefreshLayout2.f2596u;
            int i3 = (int) (((i - abs) - i2) * f);
            SwipeRefreshLayout.this.setTargetOffsetTopAndBottom((i2 + i3) - swipeRefreshLayout2.f2594s.getTop());
            C3166d c3166d = SwipeRefreshLayout.this.f2600y;
            float f2 = 1.0f - f;
            C3166d.C3167a c3167a = c3166d.f10643a;
            if (f2 != c3167a.f10664p) {
                c3167a.f10664p = f2;
            }
            c3166d.invalidateSelf();
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$f */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$f.class */
    public class C0667f extends Animation {
        public C0667f() {
            SwipeRefreshLayout.this = r4;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout.this.m7504f(f);
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$g */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$g.class */
    public interface AbstractC0668g {
        /* renamed from: a */
        boolean m7497a(SwipeRefreshLayout swipeRefreshLayout, View view);
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$h */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$h.class */
    public interface AbstractC0669h {
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2580e = -1.0f;
        this.f2579d = ViewConfiguration.get(context).getScaledTouchSlop();
        setWillNotDraw(false);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f2571E = (int) (displayMetrics.density * 40.0f);
        C3166d c3166d = new C3166d(getContext());
        this.f2600y = c3166d;
        c3166d.m2582c(1);
        this.f2594s.setImageDrawable(this.f2600y);
        this.f2594s.setVisibility(8);
        addView(this.f2594s);
        setChildrenDrawingOrderEnabled(true);
        int i = (int) (displayMetrics.density * 64.0f);
        this.f2598w = i;
        this.f2580e = i;
        setNestedScrollingEnabled(true);
        int i2 = -this.f2571E;
        this.f2588m = i2;
        this.f2597v = i2;
        m7504f(1.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f2566J);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
    }

    private void setColorViewAlpha(int i) {
        this.f2594s.getBackground().setAlpha(i);
        C3166d c3166d = this.f2600y;
        c3166d.f10643a.f10668t = i;
        c3166d.invalidateSelf();
    }

    /* renamed from: a */
    public boolean m7509a() {
        AbstractC0668g abstractC0668g = this.f2572F;
        if (abstractC0668g != null) {
            return abstractC0668g.m7497a(this, this.f2576a);
        }
        View view = this.f2576a;
        return view instanceof ListView ? ((ListView) view).canScrollList(-1) : view.canScrollVertically(-1);
    }

    /* renamed from: b */
    public final void m7508b() {
        if (this.f2576a == null) {
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (!childAt.equals(this.f2594s)) {
                    this.f2576a = childAt;
                    return;
                }
            }
        }
    }

    /* renamed from: c */
    public final void m7507c(float f) {
        if (f > this.f2580e) {
            m7501i(true, true);
            return;
        }
        this.f2578c = false;
        C3166d c3166d = this.f2600y;
        C3166d.C3167a c3167a = c3166d.f10643a;
        c3167a.f10653e = 0.0f;
        c3167a.f10654f = 0.0f;
        c3166d.invalidateSelf();
        animationAnimation$AnimationListenerC0665d animationanimation_animationlistenerc0665d = new animationAnimation$AnimationListenerC0665d();
        this.f2596u = this.f2588m;
        this.f2575I.reset();
        this.f2575I.setDuration(200L);
        this.f2575I.setInterpolator(this.f2593r);
        C3163a c3163a = this.f2594s;
        c3163a.f10634a = animationanimation_animationlistenerc0665d;
        c3163a.clearAnimation();
        this.f2594s.startAnimation(this.f2575I);
        C3166d c3166d2 = this.f2600y;
        C3166d.C3167a c3167a2 = c3166d2.f10643a;
        if (c3167a2.f10662n) {
            c3167a2.f10662n = false;
        }
        c3166d2.invalidateSelf();
    }

    /* renamed from: d */
    public final boolean m7506d(Animation animation) {
        return animation != null && animation.hasStarted() && !animation.hasEnded();
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f2583h.m2138a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f2583h.m2137b(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.f2583h.m2136c(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f2583h.m2134e(i, i2, i3, i4, iArr);
    }

    /* renamed from: e */
    public final void m7505e(float f) {
        C3166d c3166d = this.f2600y;
        C3166d.C3167a c3167a = c3166d.f10643a;
        if (!c3167a.f10662n) {
            c3167a.f10662n = true;
        }
        c3166d.invalidateSelf();
        float min = Math.min(1.0f, Math.abs(f / this.f2580e));
        float max = (((float) Math.max(min - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float abs = Math.abs(f);
        float f2 = this.f2580e;
        int i = this.f2599x;
        if (i <= 0) {
            i = this.f2598w;
        }
        float f3 = i;
        double max2 = Math.max(0.0f, Math.min(abs - f2, f3 * 2.0f) / f3) / 4.0f;
        float pow = ((float) (max2 - Math.pow(max2, 2.0d))) * 2.0f;
        int i2 = this.f2597v;
        int i3 = (int) ((f3 * min) + (f3 * pow * 2.0f));
        if (this.f2594s.getVisibility() != 0) {
            this.f2594s.setVisibility(0);
        }
        this.f2594s.setScaleX(1.0f);
        this.f2594s.setScaleY(1.0f);
        if (f < this.f2580e) {
            if (this.f2600y.f10643a.f10668t > 76 && !m7506d(this.f2568B)) {
                this.f2568B = m7500j(this.f2600y.f10643a.f10668t, 76);
            }
        } else if (this.f2600y.f10643a.f10668t < 255 && !m7506d(this.f2569C)) {
            this.f2569C = m7500j(this.f2600y.f10643a.f10668t, 255);
        }
        C3166d c3166d2 = this.f2600y;
        float min2 = Math.min(0.8f, max * 0.8f);
        C3166d.C3167a c3167a2 = c3166d2.f10643a;
        c3167a2.f10653e = 0.0f;
        c3167a2.f10654f = min2;
        c3166d2.invalidateSelf();
        C3166d c3166d3 = this.f2600y;
        float min3 = Math.min(1.0f, max);
        C3166d.C3167a c3167a3 = c3166d3.f10643a;
        if (min3 != c3167a3.f10664p) {
            c3167a3.f10664p = min3;
        }
        c3166d3.invalidateSelf();
        C3166d c3166d4 = this.f2600y;
        c3166d4.f10643a.f10655g = ((pow * 2.0f) + ((max * 0.4f) - 0.25f)) * 0.5f;
        c3166d4.invalidateSelf();
        setTargetOffsetTopAndBottom((i2 + i3) - this.f2588m);
    }

    /* renamed from: f */
    public void m7504f(float f) {
        int i = this.f2596u;
        setTargetOffsetTopAndBottom((i + ((int) ((this.f2597v - i) * f))) - this.f2594s.getTop());
    }

    /* renamed from: g */
    public final void m7503g(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f2592q) {
            this.f2592q = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        int i3 = this.f2595t;
        if (i3 < 0) {
            return i2;
        }
        if (i2 == i - 1) {
            return i3;
        }
        int i4 = i2;
        if (i2 >= i3) {
            i4 = i2 + 1;
        }
        return i4;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f2582g.m2128a();
    }

    public int getProgressCircleDiameter() {
        return this.f2571E;
    }

    public int getProgressViewEndOffset() {
        return this.f2598w;
    }

    public int getProgressViewStartOffset() {
        return this.f2597v;
    }

    /* renamed from: h */
    public void m7502h() {
        this.f2594s.clearAnimation();
        this.f2600y.stop();
        this.f2594s.setVisibility(8);
        setColorViewAlpha(255);
        setTargetOffsetTopAndBottom(this.f2597v - this.f2588m);
        this.f2588m = this.f2594s.getTop();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.f2583h.m2131h(0);
    }

    /* renamed from: i */
    public final void m7501i(boolean z, boolean z2) {
        if (this.f2578c != z) {
            this.f2570D = z2;
            m7508b();
            this.f2578c = z;
            if (!z) {
                m7498l(this.f2573G);
                return;
            }
            int i = this.f2588m;
            Animation.AnimationListener animationListener = this.f2573G;
            this.f2596u = i;
            this.f2574H.reset();
            this.f2574H.setDuration(200L);
            this.f2574H.setInterpolator(this.f2593r);
            if (animationListener != null) {
                this.f2594s.f10634a = animationListener;
            }
            this.f2594s.clearAnimation();
            this.f2594s.startAnimation(this.f2574H);
        }
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.f2583h.f11772d;
    }

    /* renamed from: j */
    public final Animation m7500j(int i, int i2) {
        C0664c c0664c = new C0664c(i, i2);
        c0664c.setDuration(300L);
        C3163a c3163a = this.f2594s;
        c3163a.f10634a = null;
        c3163a.clearAnimation();
        this.f2594s.startAnimation(c0664c);
        return c0664c;
    }

    /* renamed from: k */
    public final void m7499k(float f) {
        float f2 = this.f2590o;
        int i = this.f2579d;
        if (f - f2 <= i || this.f2591p) {
            return;
        }
        this.f2589n = f2 + i;
        this.f2591p = true;
        this.f2600y.setAlpha(76);
    }

    /* renamed from: l */
    public void m7498l(Animation.AnimationListener animationListener) {
        C0663b c0663b = new C0663b();
        this.f2567A = c0663b;
        c0663b.setDuration(150L);
        C3163a c3163a = this.f2594s;
        c3163a.f10634a = animationListener;
        c3163a.clearAnimation();
        this.f2594s.startAnimation(this.f2567A);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m7502h();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int findPointerIndex;
        m7508b();
        int actionMasked = motionEvent.getActionMasked();
        if (!isEnabled() || m7509a() || this.f2578c || this.f2586k) {
            return false;
        }
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int i = this.f2592q;
                    if (i == -1 || (findPointerIndex = motionEvent.findPointerIndex(i)) < 0) {
                        return false;
                    }
                    m7499k(motionEvent.getY(findPointerIndex));
                } else if (actionMasked != 3) {
                    if (actionMasked == 6) {
                        m7503g(motionEvent);
                    }
                }
            }
            this.f2591p = false;
            this.f2592q = -1;
        } else {
            setTargetOffsetTopAndBottom(this.f2597v - this.f2594s.getTop());
            int pointerId = motionEvent.getPointerId(0);
            this.f2592q = pointerId;
            this.f2591p = false;
            int findPointerIndex2 = motionEvent.findPointerIndex(pointerId);
            if (findPointerIndex2 < 0) {
                return false;
            }
            this.f2590o = motionEvent.getY(findPointerIndex2);
        }
        return this.f2591p;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.f2576a == null) {
            m7508b();
        }
        View view = this.f2576a;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.f2594s.getMeasuredWidth();
        int measuredHeight2 = this.f2594s.getMeasuredHeight();
        C3163a c3163a = this.f2594s;
        int i5 = measuredWidth / 2;
        int i6 = measuredWidth2 / 2;
        int i7 = this.f2588m;
        c3163a.layout(i5 - i6, i7, i5 + i6, measuredHeight2 + i7);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f2576a == null) {
            m7508b();
        }
        View view = this.f2576a;
        if (view == null) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.f2594s.measure(View.MeasureSpec.makeMeasureSpec(this.f2571E, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f2571E, 1073741824));
        this.f2595t = -1;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            if (getChildAt(i3) == this.f2594s) {
                this.f2595t = i3;
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (i2 > 0) {
            float f = this.f2581f;
            if (f > 0.0f) {
                float f2 = i2;
                if (f2 > f) {
                    iArr[1] = i2 - ((int) f);
                    this.f2581f = 0.0f;
                } else {
                    this.f2581f = f - f2;
                    iArr[1] = i2;
                }
                m7505e(this.f2581f);
            }
        }
        int[] iArr2 = this.f2584i;
        if (dispatchNestedPreScroll(i - iArr[0], i2 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        dispatchNestedScroll(i, i2, i3, i4, this.f2585j);
        int i5 = i4 + this.f2585j[1];
        if (i5 >= 0 || m7509a()) {
            return;
        }
        float abs = this.f2581f + Math.abs(i5);
        this.f2581f = abs;
        m7505e(abs);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f2582g.f11774a = i;
        startNestedScroll(i & 2);
        this.f2581f = 0.0f;
        this.f2586k = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return isEnabled() && !this.f2578c && (i & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        this.f2582g.m2127b(0);
        this.f2586k = false;
        float f = this.f2581f;
        if (f > 0.0f) {
            m7507c(f);
            this.f2581f = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (!isEnabled() || m7509a() || this.f2578c || this.f2586k) {
            return false;
        }
        if (actionMasked == 0) {
            this.f2592q = motionEvent.getPointerId(0);
            this.f2591p = false;
            return true;
        } else if (actionMasked == 1) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f2592q);
            if (findPointerIndex < 0) {
                return false;
            }
            if (this.f2591p) {
                float y = motionEvent.getY(findPointerIndex);
                float f = this.f2589n;
                this.f2591p = false;
                m7507c((y - f) * 0.5f);
            }
            this.f2592q = -1;
            return false;
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                return false;
            }
            if (actionMasked != 5) {
                if (actionMasked != 6) {
                    return true;
                }
                m7503g(motionEvent);
                return true;
            }
            int actionIndex = motionEvent.getActionIndex();
            if (actionIndex < 0) {
                return false;
            }
            this.f2592q = motionEvent.getPointerId(actionIndex);
            return true;
        } else {
            int findPointerIndex2 = motionEvent.findPointerIndex(this.f2592q);
            if (findPointerIndex2 < 0) {
                return false;
            }
            float y2 = motionEvent.getY(findPointerIndex2);
            m7499k(y2);
            if (!this.f2591p) {
                return true;
            }
            float f2 = (y2 - this.f2589n) * 0.5f;
            if (f2 <= 0.0f) {
                return false;
            }
            m7505e(f2);
            return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        View view = this.f2576a;
        if (view != null) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            if (!C3589v.C3598i.m2035p(view)) {
                return;
            }
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    public void setAnimationProgress(float f) {
        this.f2594s.setScaleX(f);
        this.f2594s.setScaleY(f);
    }

    @Deprecated
    public void setColorScheme(int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(int... iArr) {
        m7508b();
        C3166d c3166d = this.f2600y;
        C3166d.C3167a c3167a = c3166d.f10643a;
        c3167a.f10657i = iArr;
        c3167a.m2580a(0);
        c3166d.f10643a.m2580a(0);
        c3166d.invalidateSelf();
    }

    public void setColorSchemeResources(int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = C2134a.m3845b(context, iArr[i]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i) {
        this.f2580e = i;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z) {
            m7502h();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        C3576i c3576i = this.f2583h;
        if (c3576i.f11772d) {
            View view = c3576i.f11771c;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3598i.m2025z(view);
        }
        c3576i.f11772d = z;
    }

    public void setOnChildScrollUpCallback(AbstractC0668g abstractC0668g) {
        this.f2572F = abstractC0668g;
    }

    public void setOnRefreshListener(AbstractC0669h abstractC0669h) {
        this.f2577b = abstractC0669h;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i) {
        setProgressBackgroundColorSchemeResource(i);
    }

    public void setProgressBackgroundColorSchemeColor(int i) {
        this.f2594s.setBackgroundColor(i);
    }

    public void setProgressBackgroundColorSchemeResource(int i) {
        setProgressBackgroundColorSchemeColor(C2134a.m3845b(getContext(), i));
    }

    public void setRefreshing(boolean z) {
        if (!z || this.f2578c == z) {
            m7501i(z, false);
            return;
        }
        this.f2578c = z;
        setTargetOffsetTopAndBottom((this.f2598w + this.f2597v) - this.f2588m);
        this.f2570D = false;
        Animation.AnimationListener animationListener = this.f2573G;
        this.f2594s.setVisibility(0);
        this.f2600y.setAlpha(255);
        C3168e c3168e = new C3168e(this);
        this.f2601z = c3168e;
        c3168e.setDuration(this.f2587l);
        if (animationListener != null) {
            this.f2594s.f10634a = animationListener;
        }
        this.f2594s.clearAnimation();
        this.f2594s.startAnimation(this.f2601z);
    }

    public void setSize(int i) {
        if (i == 0 || i == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i == 0) {
                this.f2571E = (int) (displayMetrics.density * 56.0f);
            } else {
                this.f2571E = (int) (displayMetrics.density * 40.0f);
            }
            this.f2594s.setImageDrawable(null);
            this.f2600y.m2582c(i);
            this.f2594s.setImageDrawable(this.f2600y);
        }
    }

    public void setSlingshotDistance(int i) {
        this.f2599x = i;
    }

    public void setTargetOffsetTopAndBottom(int i) {
        this.f2594s.bringToFront();
        C3589v.m2109o(this.f2594s, i);
        this.f2588m = this.f2594s.getTop();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.f2583h.m2130i(i, 0);
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        this.f2583h.m2129j(0);
    }
}
