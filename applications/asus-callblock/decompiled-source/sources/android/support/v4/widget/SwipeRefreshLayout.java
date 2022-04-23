package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.v4.view.j;
import android.support.v4.view.k;
import android.support.v4.view.l;
import android.support.v4.view.m;
import android.support.v4.view.n;
import android.support.v4.view.t;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.AbsListView;
/* loaded from: classes-dex2jar.jar:android/support/v4/widget/SwipeRefreshLayout.class */
public class SwipeRefreshLayout extends ViewGroup implements k, m {
    private static final String c = SwipeRefreshLayout.class.getSimpleName();
    private static final int[] y = {16842766};
    private int A;
    private float B;
    private f C;
    private Animation D;
    private Animation E;
    private Animation F;
    private Animation G;
    private Animation H;
    private float I;
    private boolean J;
    private int K;
    private int L;
    private boolean M;
    private Animation.AnimationListener N;
    private final Animation O;
    private final Animation P;

    /* renamed from: a  reason: collision with root package name */
    protected int f278a;

    /* renamed from: b  reason: collision with root package name */
    protected int f279b;
    private View d;
    private a e;
    private boolean f;
    private int g;
    private float h;
    private float i;
    private final n j;
    private final l k;
    private final int[] l;
    private final int[] m;
    private boolean n;
    private int o;
    private int p;
    private boolean q;
    private float r;
    private float s;
    private boolean t;
    private int u;
    private boolean v;
    private boolean w;
    private final DecelerateInterpolator x;
    private android.support.v4.widget.a z;

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/SwipeRefreshLayout$a.class */
    public interface a {
    }

    public SwipeRefreshLayout(Context context) {
        this(context, null);
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = false;
        this.h = -1.0f;
        this.l = new int[2];
        this.m = new int[2];
        this.q = false;
        this.u = -1;
        this.A = -1;
        this.N = new Animation.AnimationListener() { // from class: android.support.v4.widget.SwipeRefreshLayout.1
            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationEnd(Animation animation) {
                if (SwipeRefreshLayout.this.f) {
                    SwipeRefreshLayout.this.C.setAlpha(255);
                    SwipeRefreshLayout.this.C.start();
                    if (SwipeRefreshLayout.this.J && SwipeRefreshLayout.this.e != null) {
                        a unused = SwipeRefreshLayout.this.e;
                    }
                    SwipeRefreshLayout.this.p = SwipeRefreshLayout.this.z.getTop();
                    return;
                }
                SwipeRefreshLayout.this.a();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationStart(Animation animation) {
            }
        };
        this.O = new Animation() { // from class: android.support.v4.widget.SwipeRefreshLayout.6
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                int abs = !SwipeRefreshLayout.this.M ? (int) (SwipeRefreshLayout.this.I - Math.abs(SwipeRefreshLayout.this.f279b)) : (int) SwipeRefreshLayout.this.I;
                int i = SwipeRefreshLayout.this.f278a;
                SwipeRefreshLayout.this.a((((int) ((abs - SwipeRefreshLayout.this.f278a) * f)) + i) - SwipeRefreshLayout.this.z.getTop(), false);
                SwipeRefreshLayout.this.C.a(1.0f - f);
            }
        };
        this.P = new Animation() { // from class: android.support.v4.widget.SwipeRefreshLayout.7
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.b(SwipeRefreshLayout.this, f);
            }
        };
        this.g = ViewConfiguration.get(context).getScaledTouchSlop();
        this.o = getResources().getInteger(17694721);
        setWillNotDraw(false);
        this.x = new DecelerateInterpolator(2.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, y);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.K = (int) (displayMetrics.density * 40.0f);
        this.L = (int) (displayMetrics.density * 40.0f);
        this.z = new android.support.v4.widget.a(getContext());
        this.C = new f(getContext(), this);
        this.C.b(-328966);
        this.z.setImageDrawable(this.C);
        this.z.setVisibility(8);
        addView(this.z);
        t.a((ViewGroup) this);
        this.I = displayMetrics.density * 64.0f;
        this.h = this.I;
        this.j = new n(this);
        this.k = new l(this);
        setNestedScrollingEnabled(true);
    }

    private static float a(MotionEvent motionEvent, int i) {
        int a2 = j.a(motionEvent, i);
        return a2 < 0 ? -1.0f : j.d(motionEvent, a2);
    }

    private Animation a(final int i, final int i2) {
        Animation animation = null;
        if (!this.v || !b()) {
            animation = new Animation() { // from class: android.support.v4.widget.SwipeRefreshLayout.4
                @Override // android.view.animation.Animation
                public final void applyTransformation(float f, Transformation transformation) {
                    SwipeRefreshLayout.this.C.setAlpha((int) (i + ((i2 - i) * f)));
                }
            };
            animation.setDuration(300L);
            this.z.f289a = null;
            this.z.clearAnimation();
            this.z.startAnimation(animation);
        }
        return animation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.z.clearAnimation();
        this.C.stop();
        this.z.setVisibility(8);
        a(255);
        if (this.v) {
            a(0.0f);
        } else {
            a(this.f279b - this.p, true);
        }
        this.p = this.z.getTop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(float f) {
        if (b()) {
            a((int) (255.0f * f));
            return;
        }
        t.a(this.z, f);
        t.b(this.z, f);
    }

    private void a(int i) {
        this.z.getBackground().setAlpha(i);
        this.C.setAlpha(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, boolean z) {
        this.z.bringToFront();
        this.z.offsetTopAndBottom(i);
        this.p = this.z.getTop();
        if (z && Build.VERSION.SDK_INT < 11) {
            invalidate();
        }
    }

    private void a(MotionEvent motionEvent) {
        int b2 = j.b(motionEvent);
        if (j.b(motionEvent, b2) == this.u) {
            this.u = j.b(motionEvent, b2 == 0 ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Animation.AnimationListener animationListener) {
        this.E = new Animation() { // from class: android.support.v4.widget.SwipeRefreshLayout.3
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.a(1.0f - f);
            }
        };
        this.E.setDuration(150L);
        this.z.f289a = animationListener;
        this.z.clearAnimation();
        this.z.startAnimation(this.E);
    }

    private void a(boolean z, boolean z2) {
        if (this.f != z) {
            this.J = z2;
            c();
            this.f = z;
            if (this.f) {
                int i = this.p;
                Animation.AnimationListener animationListener = this.N;
                this.f278a = i;
                this.O.reset();
                this.O.setDuration(200L);
                this.O.setInterpolator(this.x);
                if (animationListener != null) {
                    this.z.f289a = animationListener;
                }
                this.z.clearAnimation();
                this.z.startAnimation(this.O);
                return;
            }
            a(this.N);
        }
    }

    private static boolean a(Animation animation) {
        return animation != null && animation.hasStarted() && !animation.hasEnded();
    }

    private void b(float f) {
        this.C.a(true);
        float min = Math.min(1.0f, Math.abs(f / this.h));
        float max = (((float) Math.max(min - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float abs = Math.abs(f);
        float f2 = this.h;
        float f3 = this.M ? this.I - this.f279b : this.I;
        float max2 = Math.max(0.0f, Math.min(abs - f2, f3 * 2.0f) / f3);
        float pow = ((float) ((max2 / 4.0f) - Math.pow(max2 / 4.0f, 2.0d))) * 2.0f;
        int i = this.f279b;
        int i2 = (int) ((f3 * min) + (f3 * pow * 2.0f));
        if (this.z.getVisibility() != 0) {
            this.z.setVisibility(0);
        }
        if (!this.v) {
            t.a((View) this.z, 1.0f);
            t.b((View) this.z, 1.0f);
        }
        if (this.v) {
            a(Math.min(1.0f, f / this.h));
        }
        if (f < this.h) {
            if (this.C.getAlpha() > 76 && !a(this.F)) {
                this.F = a(this.C.getAlpha(), 76);
            }
        } else if (this.C.getAlpha() < 255 && !a(this.G)) {
            this.G = a(this.C.getAlpha(), 255);
        }
        this.C.b(Math.min(0.8f, max * 0.8f));
        this.C.a(Math.min(1.0f, max));
        this.C.f296a.c(((-0.25f) + (max * 0.4f) + (pow * 2.0f)) * 0.5f);
        a((i2 + i) - this.p, true);
    }

    static /* synthetic */ void b(SwipeRefreshLayout swipeRefreshLayout, float f) {
        swipeRefreshLayout.a((swipeRefreshLayout.f278a + ((int) ((swipeRefreshLayout.f279b - swipeRefreshLayout.f278a) * f))) - swipeRefreshLayout.z.getTop(), false);
    }

    private static boolean b() {
        return Build.VERSION.SDK_INT < 11;
    }

    private void c() {
        if (this.d == null) {
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (!childAt.equals(this.z)) {
                    this.d = childAt;
                    return;
                }
            }
        }
    }

    private void c(float f) {
        if (f > this.h) {
            a(true, true);
            return;
        }
        this.f = false;
        this.C.b(0.0f);
        Animation.AnimationListener animationListener = null;
        if (!this.v) {
            animationListener = new Animation.AnimationListener() { // from class: android.support.v4.widget.SwipeRefreshLayout.5
                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationEnd(Animation animation) {
                    if (!SwipeRefreshLayout.this.v) {
                        SwipeRefreshLayout.this.a((Animation.AnimationListener) null);
                    }
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationStart(Animation animation) {
                }
            };
        }
        int i = this.p;
        if (this.v) {
            this.f278a = i;
            if (b()) {
                this.B = this.C.getAlpha();
            } else {
                this.B = t.j(this.z);
            }
            this.H = new Animation() { // from class: android.support.v4.widget.SwipeRefreshLayout.8
                @Override // android.view.animation.Animation
                public final void applyTransformation(float f2, Transformation transformation) {
                    SwipeRefreshLayout.this.a(SwipeRefreshLayout.this.B + ((-SwipeRefreshLayout.this.B) * f2));
                    SwipeRefreshLayout.b(SwipeRefreshLayout.this, f2);
                }
            };
            this.H.setDuration(150L);
            if (animationListener != null) {
                this.z.f289a = animationListener;
            }
            this.z.clearAnimation();
            this.z.startAnimation(this.H);
        } else {
            this.f278a = i;
            this.P.reset();
            this.P.setDuration(200L);
            this.P.setInterpolator(this.x);
            if (animationListener != null) {
                this.z.f289a = animationListener;
            }
            this.z.clearAnimation();
            this.z.startAnimation(this.P);
        }
        this.C.a(false);
    }

    private boolean d() {
        boolean a2;
        if (Build.VERSION.SDK_INT >= 14) {
            a2 = t.a(this.d);
        } else if (this.d instanceof AbsListView) {
            AbsListView absListView = (AbsListView) this.d;
            a2 = absListView.getChildCount() > 0 && (absListView.getFirstVisiblePosition() > 0 || absListView.getChildAt(0).getTop() < absListView.getPaddingTop());
        } else {
            a2 = t.a(this.d) || this.d.getScrollY() > 0;
        }
        return a2;
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.k.a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.k.a(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.k.a(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.k.a(i, i2, i3, i4, iArr);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        int i3;
        if (this.A < 0) {
            i3 = i2;
        } else if (i2 == i - 1) {
            i3 = this.A;
        } else {
            i3 = i2;
            if (i2 >= this.A) {
                i3 = i2 + 1;
            }
        }
        return i3;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.j.f236a;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.k.a();
    }

    @Override // android.view.View, android.support.v4.view.k
    public boolean isNestedScrollingEnabled() {
        return this.k.f234a;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        c();
        int a2 = j.a(motionEvent);
        if (this.w && a2 == 0) {
            this.w = false;
        }
        boolean z = false;
        if (isEnabled()) {
            z = false;
            if (!this.w) {
                z = false;
                if (!d()) {
                    z = false;
                    if (!this.f) {
                        if (!this.n) {
                            switch (a2) {
                                case 0:
                                    a(this.f279b - this.z.getTop(), true);
                                    this.u = j.b(motionEvent, 0);
                                    this.t = false;
                                    float a3 = a(motionEvent, this.u);
                                    z = false;
                                    if (a3 != -1.0f) {
                                        this.s = a3;
                                        z = this.t;
                                        break;
                                    }
                                    break;
                                case 1:
                                case 3:
                                    this.t = false;
                                    this.u = -1;
                                    z = this.t;
                                    break;
                                case 2:
                                    if (this.u != -1) {
                                        float a4 = a(motionEvent, this.u);
                                        z = false;
                                        if (a4 != -1.0f) {
                                            if (a4 - this.s > this.g && !this.t) {
                                                this.r = this.s + this.g;
                                                this.t = true;
                                                this.C.setAlpha(76);
                                            }
                                            z = this.t;
                                            break;
                                        }
                                    } else {
                                        Log.e(c, "Got ACTION_MOVE event but don't have an active pointer id.");
                                        z = false;
                                        break;
                                    }
                                    break;
                                case 4:
                                case 5:
                                default:
                                    z = this.t;
                                    break;
                                case 6:
                                    a(motionEvent);
                                    z = this.t;
                                    break;
                            }
                        } else {
                            z = false;
                        }
                    }
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() != 0) {
            if (this.d == null) {
                c();
            }
            if (this.d != null) {
                View view = this.d;
                int paddingLeft = getPaddingLeft();
                int paddingTop = getPaddingTop();
                view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
                int measuredWidth2 = this.z.getMeasuredWidth();
                this.z.layout((measuredWidth / 2) - (measuredWidth2 / 2), this.p, (measuredWidth / 2) + (measuredWidth2 / 2), this.p + this.z.getMeasuredHeight());
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.d == null) {
            c();
        }
        if (this.d != null) {
            this.d.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
            this.z.measure(View.MeasureSpec.makeMeasureSpec(this.K, 1073741824), View.MeasureSpec.makeMeasureSpec(this.L, 1073741824));
            if (!this.M && !this.q) {
                this.q = true;
                int i3 = -this.z.getMeasuredHeight();
                this.f279b = i3;
                this.p = i3;
            }
            this.A = -1;
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                if (getChildAt(i4) == this.z) {
                    this.A = i4;
                    return;
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.m
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.m
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.m
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (i2 > 0 && this.i > 0.0f) {
            if (i2 > this.i) {
                iArr[1] = i2 - ((int) this.i);
                this.i = 0.0f;
            } else {
                this.i -= i2;
                iArr[1] = i2;
            }
            b(this.i);
        }
        if (this.M && i2 > 0 && this.i == 0.0f && Math.abs(i2 - iArr[1]) > 0) {
            this.z.setVisibility(8);
        }
        int[] iArr2 = this.l;
        if (dispatchNestedPreScroll(i - iArr[0], i2 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr2[1] + iArr[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.m
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        dispatchNestedScroll(i, i2, i3, i4, this.m);
        int i5 = this.m[1] + i4;
        if (i5 < 0 && !d()) {
            this.i = Math.abs(i5) + this.i;
            b(this.i);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.m
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.j.f236a = i;
        startNestedScroll(i & 2);
        this.i = 0.0f;
        this.n = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.m
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return isEnabled() && !this.w && !this.f && (i & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.m
    public void onStopNestedScroll(View view) {
        this.j.f236a = 0;
        this.n = false;
        if (this.i > 0.0f) {
            c(this.i);
            this.i = 0.0f;
        }
        stopNestedScroll();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int a2 = j.a(motionEvent);
        if (this.w && a2 == 0) {
            this.w = false;
        }
        boolean z = false;
        if (isEnabled()) {
            z = false;
            if (!this.w) {
                z = false;
                if (!d()) {
                    if (!this.n) {
                        z = false;
                        switch (a2) {
                            case 0:
                                this.u = j.b(motionEvent, 0);
                                this.t = false;
                                z = true;
                                break;
                            case 1:
                                int a3 = j.a(motionEvent, this.u);
                                if (a3 >= 0) {
                                    float d = j.d(motionEvent, a3);
                                    float f = this.r;
                                    this.t = false;
                                    c((d - f) * 0.5f);
                                    this.u = -1;
                                    z = false;
                                    break;
                                } else {
                                    Log.e(c, "Got ACTION_UP event but don't have an active pointer id.");
                                    z = false;
                                    break;
                                }
                            case 2:
                                int a4 = j.a(motionEvent, this.u);
                                if (a4 >= 0) {
                                    float d2 = (j.d(motionEvent, a4) - this.r) * 0.5f;
                                    if (this.t) {
                                        z = false;
                                        if (d2 > 0.0f) {
                                            b(d2);
                                        }
                                    }
                                    z = true;
                                    break;
                                } else {
                                    Log.e(c, "Got ACTION_MOVE event but have an invalid active pointer id.");
                                    z = false;
                                    break;
                                }
                                break;
                            case 3:
                                break;
                            case 4:
                            default:
                                z = true;
                                break;
                            case 5:
                                int b2 = j.b(motionEvent);
                                if (b2 >= 0) {
                                    this.u = j.b(motionEvent, b2);
                                    z = true;
                                    break;
                                } else {
                                    Log.e(c, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                                    z = false;
                                    break;
                                }
                            case 6:
                                a(motionEvent);
                                z = true;
                                break;
                        }
                    } else {
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (Build.VERSION.SDK_INT < 21 && (this.d instanceof AbsListView)) {
            return;
        }
        if (this.d == null || t.o(this.d)) {
            super.requestDisallowInterceptTouchEvent(z);
        }
    }

    @Deprecated
    public void setColorScheme(int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(int... iArr) {
        c();
        f fVar = this.C;
        fVar.f296a.a(iArr);
        fVar.f296a.a(0);
    }

    public void setColorSchemeResources(int... iArr) {
        Resources resources = getResources();
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = resources.getColor(iArr[i]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i) {
        this.h = i;
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.k.a(z);
    }

    public void setOnRefreshListener(a aVar) {
        this.e = aVar;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i) {
        setProgressBackgroundColorSchemeResource(i);
    }

    public void setProgressBackgroundColorSchemeColor(int i) {
        this.z.setBackgroundColor(i);
        this.C.b(i);
    }

    public void setProgressBackgroundColorSchemeResource(int i) {
        setProgressBackgroundColorSchemeColor(getResources().getColor(i));
    }

    public void setProgressViewEndTarget(boolean z, int i) {
        this.I = i;
        this.v = z;
        this.z.invalidate();
    }

    public void setProgressViewOffset(boolean z, int i, int i2) {
        this.v = z;
        this.z.setVisibility(8);
        this.p = i;
        this.f279b = i;
        this.I = i2;
        this.M = true;
        this.z.invalidate();
    }

    public void setRefreshing(boolean z) {
        if (!z || this.f == z) {
            a(z, false);
            return;
        }
        this.f = z;
        a((!this.M ? (int) (this.I + this.f279b) : (int) this.I) - this.p, true);
        this.J = false;
        Animation.AnimationListener animationListener = this.N;
        this.z.setVisibility(0);
        if (Build.VERSION.SDK_INT >= 11) {
            this.C.setAlpha(255);
        }
        this.D = new Animation() { // from class: android.support.v4.widget.SwipeRefreshLayout.2
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.a(f);
            }
        };
        this.D.setDuration(this.o);
        if (animationListener != null) {
            this.z.f289a = animationListener;
        }
        this.z.clearAnimation();
        this.z.startAnimation(this.D);
    }

    public void setSize(int i) {
        if (i == 0 || i == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i == 0) {
                int i2 = (int) (displayMetrics.density * 56.0f);
                this.K = i2;
                this.L = i2;
            } else {
                int i3 = (int) (displayMetrics.density * 40.0f);
                this.K = i3;
                this.L = i3;
            }
            this.z.setImageDrawable(null);
            this.C.a(i);
            this.z.setImageDrawable(this.C);
        }
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.k.a(i);
    }

    @Override // android.view.View, android.support.v4.view.k
    public void stopNestedScroll() {
        this.k.b();
    }
}
