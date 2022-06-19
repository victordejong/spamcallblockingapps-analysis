package androidx.swiperefreshlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
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
import android.widget.ListView;
import androidx.core.p017a.C0438a;
import androidx.core.p026h.AbstractC0583i;
import androidx.core.p026h.AbstractC0587m;
import androidx.core.p026h.C0586l;
import androidx.core.p026h.C0590p;
import androidx.core.p026h.C0595u;
import androidx.core.widget.C0626g;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout.class */
public class SwipeRefreshLayout extends ViewGroup implements AbstractC0583i, AbstractC0587m {

    /* renamed from: A */
    private boolean f3608A;

    /* renamed from: B */
    private int f3609B;

    /* renamed from: C */
    private boolean f3610C;

    /* renamed from: D */
    private final DecelerateInterpolator f3611D;

    /* renamed from: F */
    private int f3612F;

    /* renamed from: G */
    private Animation f3613G;

    /* renamed from: H */
    private Animation f3614H;

    /* renamed from: I */
    private Animation f3615I;

    /* renamed from: J */
    private Animation f3616J;

    /* renamed from: K */
    private Animation f3617K;

    /* renamed from: L */
    private int f3618L;

    /* renamed from: M */
    private AbstractC1072a f3619M;

    /* renamed from: N */
    private Animation.AnimationListener f3620N;

    /* renamed from: O */
    private final Animation f3621O;

    /* renamed from: P */
    private final Animation f3622P;

    /* renamed from: a */
    AbstractC1073b f3623a;

    /* renamed from: b */
    boolean f3624b;

    /* renamed from: c */
    int f3625c;

    /* renamed from: d */
    boolean f3626d;

    /* renamed from: e */
    C1074a f3627e;

    /* renamed from: f */
    protected int f3628f;

    /* renamed from: g */
    float f3629g;

    /* renamed from: h */
    protected int f3630h;

    /* renamed from: i */
    int f3631i;

    /* renamed from: j */
    int f3632j;

    /* renamed from: k */
    C1076b f3633k;

    /* renamed from: l */
    boolean f3634l;

    /* renamed from: m */
    boolean f3635m;

    /* renamed from: o */
    private View f3636o;

    /* renamed from: p */
    private int f3637p;

    /* renamed from: q */
    private float f3638q;

    /* renamed from: r */
    private float f3639r;

    /* renamed from: s */
    private final C0590p f3640s;

    /* renamed from: t */
    private final C0586l f3641t;

    /* renamed from: u */
    private final int[] f3642u;

    /* renamed from: v */
    private final int[] f3643v;

    /* renamed from: w */
    private boolean f3644w;

    /* renamed from: x */
    private int f3645x;

    /* renamed from: y */
    private float f3646y;

    /* renamed from: z */
    private float f3647z;

    /* renamed from: n */
    private static final String f3607n = SwipeRefreshLayout.class.getSimpleName();

    /* renamed from: E */
    private static final int[] f3606E = {16842766};

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$a.class */
    public interface AbstractC1072a {
        /* renamed from: a */
        boolean m18205a(SwipeRefreshLayout swipeRefreshLayout, View view);
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$b.class */
    public interface AbstractC1073b {
        /* renamed from: a */
        void mo953a();
    }

    public SwipeRefreshLayout(Context context) {
        this(context, null);
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3624b = false;
        this.f3638q = -1.0f;
        this.f3642u = new int[2];
        this.f3643v = new int[2];
        this.f3609B = -1;
        this.f3612F = -1;
        this.f3620N = new Animation.AnimationListener() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (!SwipeRefreshLayout.this.f3624b) {
                    SwipeRefreshLayout.this.m18224a();
                    return;
                }
                SwipeRefreshLayout.this.f3633k.setAlpha(255);
                SwipeRefreshLayout.this.f3633k.start();
                if (SwipeRefreshLayout.this.f3634l && SwipeRefreshLayout.this.f3623a != null) {
                    SwipeRefreshLayout.this.f3623a.mo953a();
                }
                SwipeRefreshLayout.this.f3625c = SwipeRefreshLayout.this.f3627e.getTop();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        };
        this.f3621O = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.6
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                int abs = !SwipeRefreshLayout.this.f3635m ? SwipeRefreshLayout.this.f3631i - Math.abs(SwipeRefreshLayout.this.f3630h) : SwipeRefreshLayout.this.f3631i;
                int i = SwipeRefreshLayout.this.f3628f;
                SwipeRefreshLayout.this.setTargetOffsetTopAndBottom((((int) ((abs - SwipeRefreshLayout.this.f3628f) * f)) + i) - SwipeRefreshLayout.this.f3627e.getTop());
                SwipeRefreshLayout.this.f3633k.m18191b(1.0f - f);
            }
        };
        this.f3622P = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.7
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.m18223a(f);
            }
        };
        this.f3637p = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f3645x = getResources().getInteger(17694721);
        setWillNotDraw(false);
        this.f3611D = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f3618L = (int) (40.0f * displayMetrics.density);
        m18212c();
        setChildrenDrawingOrderEnabled(true);
        this.f3631i = (int) (displayMetrics.density * 64.0f);
        this.f3638q = this.f3631i;
        this.f3640s = new C0590p(this);
        this.f3641t = new C0586l(this);
        setNestedScrollingEnabled(true);
        int i = -this.f3618L;
        this.f3625c = i;
        this.f3630h = i;
        m18223a(1.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f3606E);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private Animation m18222a(final int i, final int i2) {
        Animation animation = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.4
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.f3633k.setAlpha((int) (i + ((i2 - i) * f)));
            }
        };
        animation.setDuration(300L);
        this.f3627e.m18203a(null);
        this.f3627e.clearAnimation();
        this.f3627e.startAnimation(animation);
        return animation;
    }

    /* renamed from: a */
    private void m18221a(int i, Animation.AnimationListener animationListener) {
        this.f3628f = i;
        this.f3621O.reset();
        this.f3621O.setDuration(200L);
        this.f3621O.setInterpolator(this.f3611D);
        if (animationListener != null) {
            this.f3627e.m18203a(animationListener);
        }
        this.f3627e.clearAnimation();
        this.f3627e.startAnimation(this.f3621O);
    }

    /* renamed from: a */
    private void m18220a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f3609B) {
            this.f3609B = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }

    /* renamed from: a */
    private void m18217a(boolean z, boolean z2) {
        if (this.f3624b != z) {
            this.f3634l = z2;
            m18206f();
            this.f3624b = z;
            if (this.f3624b) {
                m18221a(this.f3625c, this.f3620N);
            } else {
                m18219a(this.f3620N);
            }
        }
    }

    /* renamed from: a */
    private boolean m18218a(Animation animation) {
        return animation != null && animation.hasStarted() && !animation.hasEnded();
    }

    /* renamed from: b */
    private void m18215b(float f) {
        float f2;
        this.f3633k.m18193a(true);
        float min = Math.min(1.0f, Math.abs(f / this.f3638q));
        float max = (((float) Math.max(min - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float abs = Math.abs(f);
        float f3 = this.f3638q;
        if (this.f3632j > 0) {
            f2 = this.f3632j;
        } else {
            f2 = this.f3635m ? this.f3631i - this.f3630h : this.f3631i;
        }
        float max2 = Math.max(0.0f, Math.min(abs - f3, f2 * 2.0f) / f2);
        float pow = ((float) ((max2 / 4.0f) - Math.pow(max2 / 4.0f, 2.0d))) * 2.0f;
        int i = this.f3630h;
        int i2 = (int) ((f2 * min) + (f2 * pow * 2.0f));
        if (this.f3627e.getVisibility() != 0) {
            this.f3627e.setVisibility(0);
        }
        if (!this.f3626d) {
            this.f3627e.setScaleX(1.0f);
            this.f3627e.setScaleY(1.0f);
        }
        if (this.f3626d) {
            setAnimationProgress(Math.min(1.0f, f / this.f3638q));
        }
        if (f < this.f3638q) {
            if (this.f3633k.getAlpha() > 76 && !m18218a(this.f3615I)) {
                m18209d();
            }
        } else if (this.f3633k.getAlpha() < 255 && !m18218a(this.f3616J)) {
            m18207e();
        }
        this.f3633k.m18199a(0.0f, Math.min(0.8f, max * 0.8f));
        this.f3633k.m18191b(Math.min(1.0f, max));
        this.f3633k.m18189c(((-0.25f) + (max * 0.4f) + (pow * 2.0f)) * 0.5f);
        setTargetOffsetTopAndBottom((i2 + i) - this.f3625c);
    }

    /* renamed from: b */
    private void m18214b(int i, Animation.AnimationListener animationListener) {
        if (this.f3626d) {
            m18210c(i, animationListener);
            return;
        }
        this.f3628f = i;
        this.f3622P.reset();
        this.f3622P.setDuration(200L);
        this.f3622P.setInterpolator(this.f3611D);
        if (animationListener != null) {
            this.f3627e.m18203a(animationListener);
        }
        this.f3627e.clearAnimation();
        this.f3627e.startAnimation(this.f3622P);
    }

    /* renamed from: b */
    private void m18213b(Animation.AnimationListener animationListener) {
        this.f3627e.setVisibility(0);
        this.f3633k.setAlpha(255);
        this.f3613G = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.2
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.setAnimationProgress(f);
            }
        };
        this.f3613G.setDuration(this.f3645x);
        if (animationListener != null) {
            this.f3627e.m18203a(animationListener);
        }
        this.f3627e.clearAnimation();
        this.f3627e.startAnimation(this.f3613G);
    }

    /* renamed from: c */
    private void m18212c() {
        this.f3627e = new C1074a(getContext(), -328966);
        this.f3633k = new C1076b(getContext());
        this.f3633k.m18194a(1);
        this.f3627e.setImageDrawable(this.f3633k);
        this.f3627e.setVisibility(8);
        addView(this.f3627e);
    }

    /* renamed from: c */
    private void m18211c(float f) {
        if (f > this.f3638q) {
            m18217a(true, true);
            return;
        }
        this.f3624b = false;
        this.f3633k.m18199a(0.0f, 0.0f);
        Animation.AnimationListener animationListener = null;
        if (!this.f3626d) {
            animationListener = new Animation.AnimationListener() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.5
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    if (!SwipeRefreshLayout.this.f3626d) {
                        SwipeRefreshLayout.this.m18219a((Animation.AnimationListener) null);
                    }
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }
            };
        }
        m18214b(this.f3625c, animationListener);
        this.f3633k.m18193a(false);
    }

    /* renamed from: c */
    private void m18210c(int i, Animation.AnimationListener animationListener) {
        this.f3628f = i;
        this.f3629g = this.f3627e.getScaleX();
        this.f3617K = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.8
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.setAnimationProgress(SwipeRefreshLayout.this.f3629g + ((-SwipeRefreshLayout.this.f3629g) * f));
                SwipeRefreshLayout.this.m18223a(f);
            }
        };
        this.f3617K.setDuration(150L);
        if (animationListener != null) {
            this.f3627e.m18203a(animationListener);
        }
        this.f3627e.clearAnimation();
        this.f3627e.startAnimation(this.f3617K);
    }

    /* renamed from: d */
    private void m18209d() {
        this.f3615I = m18222a(this.f3633k.getAlpha(), 76);
    }

    /* renamed from: d */
    private void m18208d(float f) {
        if (f - this.f3647z <= this.f3637p || this.f3608A) {
            return;
        }
        this.f3646y = this.f3647z + this.f3637p;
        this.f3608A = true;
        this.f3633k.setAlpha(76);
    }

    /* renamed from: e */
    private void m18207e() {
        this.f3616J = m18222a(this.f3633k.getAlpha(), 255);
    }

    /* renamed from: f */
    private void m18206f() {
        if (this.f3636o == null) {
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (!childAt.equals(this.f3627e)) {
                    this.f3636o = childAt;
                    return;
                }
            }
        }
    }

    private void setColorViewAlpha(int i) {
        this.f3627e.getBackground().setAlpha(i);
        this.f3633k.setAlpha(i);
    }

    /* renamed from: a */
    void m18224a() {
        this.f3627e.clearAnimation();
        this.f3633k.stop();
        this.f3627e.setVisibility(8);
        setColorViewAlpha(255);
        if (this.f3626d) {
            setAnimationProgress(0.0f);
        } else {
            setTargetOffsetTopAndBottom(this.f3630h - this.f3625c);
        }
        this.f3625c = this.f3627e.getTop();
    }

    /* renamed from: a */
    void m18223a(float f) {
        setTargetOffsetTopAndBottom((this.f3628f + ((int) ((this.f3630h - this.f3628f) * f))) - this.f3627e.getTop());
    }

    /* renamed from: a */
    void m18219a(Animation.AnimationListener animationListener) {
        this.f3614H = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.3
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.setAnimationProgress(1.0f - f);
            }
        };
        this.f3614H.setDuration(150L);
        this.f3627e.m18203a(animationListener);
        this.f3627e.clearAnimation();
        this.f3627e.startAnimation(this.f3614H);
    }

    /* renamed from: b */
    public boolean m18216b() {
        return this.f3619M != null ? this.f3619M.m18205a(this, this.f3636o) : this.f3636o instanceof ListView ? C0626g.m20150b((ListView) this.f3636o, -1) : this.f3636o.canScrollVertically(-1);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f3641t.m20397a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f3641t.m20398a(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.f3641t.m20391a(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f3641t.m20394a(i, i2, i3, i4, iArr);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        int i3;
        if (this.f3612F < 0) {
            i3 = i2;
        } else if (i2 == i - 1) {
            i3 = this.f3612F;
        } else {
            i3 = i2;
            if (i2 >= this.f3612F) {
                i3 = i2 + 1;
            }
        }
        return i3;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f3640s.m20380a();
    }

    public int getProgressCircleDiameter() {
        return this.f3618L;
    }

    public int getProgressViewEndOffset() {
        return this.f3631i;
    }

    public int getProgressViewStartOffset() {
        return this.f3630h;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.f3641t.m20387b();
    }

    @Override // android.view.View, androidx.core.p026h.AbstractC0583i
    public boolean isNestedScrollingEnabled() {
        return this.f3641t.m20399a();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m18224a();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        m18206f();
        int actionMasked = motionEvent.getActionMasked();
        if (this.f3610C && actionMasked == 0) {
            this.f3610C = false;
        }
        boolean z = false;
        if (isEnabled()) {
            z = false;
            if (!this.f3610C) {
                z = false;
                if (!m18216b()) {
                    z = false;
                    if (!this.f3624b) {
                        if (!this.f3644w) {
                            switch (actionMasked) {
                                case 0:
                                    setTargetOffsetTopAndBottom(this.f3630h - this.f3627e.getTop());
                                    this.f3609B = motionEvent.getPointerId(0);
                                    this.f3608A = false;
                                    int findPointerIndex = motionEvent.findPointerIndex(this.f3609B);
                                    z = false;
                                    if (findPointerIndex >= 0) {
                                        this.f3647z = motionEvent.getY(findPointerIndex);
                                        z = this.f3608A;
                                        break;
                                    }
                                    break;
                                case 1:
                                case 3:
                                    this.f3608A = false;
                                    this.f3609B = -1;
                                    z = this.f3608A;
                                    break;
                                case 2:
                                    if (this.f3609B != -1) {
                                        int findPointerIndex2 = motionEvent.findPointerIndex(this.f3609B);
                                        z = false;
                                        if (findPointerIndex2 >= 0) {
                                            m18208d(motionEvent.getY(findPointerIndex2));
                                            z = this.f3608A;
                                            break;
                                        }
                                    } else {
                                        Log.e(f3607n, "Got ACTION_MOVE event but don't have an active pointer id.");
                                        z = false;
                                        break;
                                    }
                                    break;
                                case 4:
                                case 5:
                                default:
                                    z = this.f3608A;
                                    break;
                                case 6:
                                    m18220a(motionEvent);
                                    z = this.f3608A;
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
        if (getChildCount() == 0) {
            return;
        }
        if (this.f3636o == null) {
            m18206f();
        }
        if (this.f3636o == null) {
            return;
        }
        View view = this.f3636o;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.f3627e.getMeasuredWidth();
        this.f3627e.layout((measuredWidth / 2) - (measuredWidth2 / 2), this.f3625c, (measuredWidth / 2) + (measuredWidth2 / 2), this.f3625c + this.f3627e.getMeasuredHeight());
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f3636o == null) {
            m18206f();
        }
        if (this.f3636o == null) {
            return;
        }
        this.f3636o.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.f3627e.measure(View.MeasureSpec.makeMeasureSpec(this.f3618L, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f3618L, 1073741824));
        this.f3612F = -1;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            if (getChildAt(i3) == this.f3627e) {
                this.f3612F = i3;
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (i2 > 0 && this.f3639r > 0.0f) {
            if (i2 > this.f3639r) {
                iArr[1] = i2 - ((int) this.f3639r);
                this.f3639r = 0.0f;
            } else {
                this.f3639r -= i2;
                iArr[1] = i2;
            }
            m18215b(this.f3639r);
        }
        if (this.f3635m && i2 > 0 && this.f3639r == 0.0f && Math.abs(i2 - iArr[1]) > 0) {
            this.f3627e.setVisibility(8);
        }
        int[] iArr2 = this.f3642u;
        if (dispatchNestedPreScroll(i - iArr[0], i2 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr2[1] + iArr[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        dispatchNestedScroll(i, i2, i3, i4, this.f3643v);
        int i5 = this.f3643v[1] + i4;
        if (i5 >= 0 || m18216b()) {
            return;
        }
        this.f3639r = Math.abs(i5) + this.f3639r;
        m18215b(this.f3639r);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f3640s.m20377a(view, view2, i);
        startNestedScroll(i & 2);
        this.f3639r = 0.0f;
        this.f3644w = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return isEnabled() && !this.f3610C && !this.f3624b && (i & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public void onStopNestedScroll(View view) {
        this.f3640s.m20379a(view);
        this.f3644w = false;
        if (this.f3639r > 0.0f) {
            m18211c(this.f3639r);
            this.f3639r = 0.0f;
        }
        stopNestedScroll();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.f3610C && actionMasked == 0) {
            this.f3610C = false;
        }
        boolean z = false;
        if (isEnabled()) {
            z = false;
            if (!this.f3610C) {
                z = false;
                if (!m18216b()) {
                    z = false;
                    if (!this.f3624b) {
                        if (!this.f3644w) {
                            z = false;
                            switch (actionMasked) {
                                case 0:
                                    this.f3609B = motionEvent.getPointerId(0);
                                    this.f3608A = false;
                                    z = true;
                                    break;
                                case 1:
                                    int findPointerIndex = motionEvent.findPointerIndex(this.f3609B);
                                    if (findPointerIndex >= 0) {
                                        if (this.f3608A) {
                                            float y = motionEvent.getY(findPointerIndex);
                                            float f = this.f3646y;
                                            this.f3608A = false;
                                            m18211c((y - f) * 0.5f);
                                        }
                                        this.f3609B = -1;
                                        z = false;
                                        break;
                                    } else {
                                        Log.e(f3607n, "Got ACTION_UP event but don't have an active pointer id.");
                                        z = false;
                                        break;
                                    }
                                case 2:
                                    int findPointerIndex2 = motionEvent.findPointerIndex(this.f3609B);
                                    if (findPointerIndex2 >= 0) {
                                        float y2 = motionEvent.getY(findPointerIndex2);
                                        m18208d(y2);
                                        if (this.f3608A) {
                                            float f2 = (y2 - this.f3646y) * 0.5f;
                                            z = false;
                                            if (f2 > 0.0f) {
                                                m18215b(f2);
                                            }
                                        }
                                        z = true;
                                        break;
                                    } else {
                                        Log.e(f3607n, "Got ACTION_MOVE event but have an invalid active pointer id.");
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
                                    int actionIndex = motionEvent.getActionIndex();
                                    if (actionIndex >= 0) {
                                        this.f3609B = motionEvent.getPointerId(actionIndex);
                                        z = true;
                                        break;
                                    } else {
                                        Log.e(f3607n, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                                        z = false;
                                        break;
                                    }
                                case 6:
                                    m18220a(motionEvent);
                                    z = true;
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

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (Build.VERSION.SDK_INT >= 21 || !(this.f3636o instanceof AbsListView)) {
            if (this.f3636o != null && !C0595u.m20301w(this.f3636o)) {
                return;
            }
            super.requestDisallowInterceptTouchEvent(z);
        }
    }

    void setAnimationProgress(float f) {
        this.f3627e.setScaleX(f);
        this.f3627e.setScaleY(f);
    }

    @Deprecated
    public void setColorScheme(int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(int... iArr) {
        m18206f();
        this.f3633k.m18192a(iArr);
    }

    public void setColorSchemeResources(int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = C0438a.m20892c(context, iArr[i]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i) {
        this.f3638q = i;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z) {
            m18224a();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.f3641t.m20388a(z);
    }

    public void setOnChildScrollUpCallback(AbstractC1072a abstractC1072a) {
        this.f3619M = abstractC1072a;
    }

    public void setOnRefreshListener(AbstractC1073b abstractC1073b) {
        this.f3623a = abstractC1073b;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i) {
        setProgressBackgroundColorSchemeResource(i);
    }

    public void setProgressBackgroundColorSchemeColor(int i) {
        this.f3627e.setBackgroundColor(i);
    }

    public void setProgressBackgroundColorSchemeResource(int i) {
        setProgressBackgroundColorSchemeColor(C0438a.m20892c(getContext(), i));
    }

    public void setRefreshing(boolean z) {
        if (!z || this.f3624b == z) {
            m18217a(z, false);
            return;
        }
        this.f3624b = z;
        setTargetOffsetTopAndBottom((!this.f3635m ? this.f3631i + this.f3630h : this.f3631i) - this.f3625c);
        this.f3634l = false;
        m18213b(this.f3620N);
    }

    public void setSize(int i) {
        if (i == 0 || i == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i == 0) {
                this.f3618L = (int) (displayMetrics.density * 56.0f);
            } else {
                this.f3618L = (int) (displayMetrics.density * 40.0f);
            }
            this.f3627e.setImageDrawable(null);
            this.f3633k.m18194a(i);
            this.f3627e.setImageDrawable(this.f3633k);
        }
    }

    public void setSlingshotDistance(int i) {
        this.f3632j = i;
    }

    void setTargetOffsetTopAndBottom(int i) {
        this.f3627e.bringToFront();
        C0595u.m20323e(this.f3627e, i);
        this.f3625c = this.f3627e.getTop();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.f3641t.m20386b(i);
    }

    @Override // android.view.View, androidx.core.p026h.AbstractC0583i
    public void stopNestedScroll() {
        this.f3641t.m20384c();
    }
}
