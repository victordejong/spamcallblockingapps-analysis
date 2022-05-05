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
import androidx.annotation.AbstractC0040Px;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import androidx.core.widget.ListViewCompat;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout.class */
public class SwipeRefreshLayout extends ViewGroup implements NestedScrollingParent, NestedScrollingChild {

    /* renamed from: T */
    private static final String f5009T = SwipeRefreshLayout.class.getSimpleName();

    /* renamed from: U */
    private static final int[] f5010U = {16842766};

    /* renamed from: A */
    private int f5011A;

    /* renamed from: B */
    protected int f5012B;

    /* renamed from: C */
    float f5013C;

    /* renamed from: D */
    protected int f5014D;

    /* renamed from: E */
    int f5015E;

    /* renamed from: F */
    int f5016F;

    /* renamed from: G */
    CircularProgressDrawable f5017G;

    /* renamed from: H */
    private Animation f5018H;

    /* renamed from: I */
    private Animation f5019I;

    /* renamed from: J */
    private Animation f5020J;

    /* renamed from: K */
    private Animation f5021K;

    /* renamed from: L */
    private Animation f5022L;

    /* renamed from: M */
    boolean f5023M;

    /* renamed from: N */
    private int f5024N;

    /* renamed from: O */
    boolean f5025O;

    /* renamed from: P */
    private OnChildScrollUpCallback f5026P;

    /* renamed from: Q */
    private Animation.AnimationListener f5027Q;

    /* renamed from: R */
    private final Animation f5028R;

    /* renamed from: S */
    private final Animation f5029S;

    /* renamed from: f */
    private View f5030f;

    /* renamed from: g */
    OnRefreshListener f5031g;

    /* renamed from: h */
    boolean f5032h;

    /* renamed from: i */
    private int f5033i;

    /* renamed from: j */
    private float f5034j;

    /* renamed from: k */
    private float f5035k;

    /* renamed from: l */
    private final NestedScrollingParentHelper f5036l;

    /* renamed from: m */
    private final NestedScrollingChildHelper f5037m;

    /* renamed from: n */
    private final int[] f5038n;

    /* renamed from: o */
    private final int[] f5039o;

    /* renamed from: p */
    private boolean f5040p;

    /* renamed from: q */
    private int f5041q;

    /* renamed from: r */
    int f5042r;

    /* renamed from: s */
    private float f5043s;

    /* renamed from: t */
    private float f5044t;

    /* renamed from: u */
    private boolean f5045u;

    /* renamed from: v */
    private int f5046v;

    /* renamed from: w */
    boolean f5047w;

    /* renamed from: x */
    private boolean f5048x;

    /* renamed from: y */
    private final DecelerateInterpolator f5049y;

    /* renamed from: z */
    CircleImageView f5050z;

    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback.class */
    public interface OnChildScrollUpCallback {
        /* renamed from: a */
        boolean m16913a(@NonNull SwipeRefreshLayout swipeRefreshLayout, @Nullable View view);
    }

    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener.class */
    public interface OnRefreshListener {
        /* renamed from: a */
        void mo6900a();
    }

    public SwipeRefreshLayout(@NonNull Context context) {
        this(context, null);
    }

    public SwipeRefreshLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5032h = false;
        this.f5034j = -1.0f;
        this.f5038n = new int[2];
        this.f5039o = new int[2];
        this.f5046v = -1;
        this.f5011A = -1;
        this.f5027Q = new Animation.AnimationListener() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                OnRefreshListener onRefreshListener;
                SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
                if (swipeRefreshLayout.f5032h) {
                    swipeRefreshLayout.f5017G.setAlpha(255);
                    SwipeRefreshLayout.this.f5017G.start();
                    SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
                    if (swipeRefreshLayout2.f5023M && (onRefreshListener = swipeRefreshLayout2.f5031g) != null) {
                        onRefreshListener.mo6900a();
                    }
                    SwipeRefreshLayout swipeRefreshLayout3 = SwipeRefreshLayout.this;
                    swipeRefreshLayout3.f5042r = swipeRefreshLayout3.f5050z.getTop();
                    return;
                }
                swipeRefreshLayout.m16922q();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        };
        this.f5028R = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.6
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
                int abs = !swipeRefreshLayout.f5025O ? swipeRefreshLayout.f5015E - Math.abs(swipeRefreshLayout.f5014D) : swipeRefreshLayout.f5015E;
                SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
                int i = swipeRefreshLayout2.f5012B;
                SwipeRefreshLayout.this.setTargetOffsetTopAndBottom((i + ((int) ((abs - i) * f))) - swipeRefreshLayout2.f5050z.getTop());
                SwipeRefreshLayout.this.f5017G.m16969e(1.0f - f);
            }
        };
        this.f5029S = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.7
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.m16924o(f);
            }
        };
        this.f5033i = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f5041q = getResources().getInteger(17694721);
        setWillNotDraw(false);
        this.f5049y = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f5024N = (int) (displayMetrics.density * 40.0f);
        m16929d();
        setChildrenDrawingOrderEnabled(true);
        int i = (int) (displayMetrics.density * 64.0f);
        this.f5015E = i;
        this.f5034j = i;
        this.f5036l = new NestedScrollingParentHelper(this);
        this.f5037m = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        int i2 = -this.f5024N;
        this.f5042r = i2;
        this.f5014D = i2;
        m16924o(1.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f5010U);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private void m16932a(int i, Animation.AnimationListener animationListener) {
        this.f5012B = i;
        this.f5028R.reset();
        this.f5028R.setDuration(200L);
        this.f5028R.setInterpolator(this.f5049y);
        if (animationListener != null) {
            this.f5050z.m16975b(animationListener);
        }
        this.f5050z.clearAnimation();
        this.f5050z.startAnimation(this.f5028R);
    }

    /* renamed from: b */
    private void m16931b(int i, Animation.AnimationListener animationListener) {
        if (this.f5047w) {
            m16915x(i, animationListener);
            return;
        }
        this.f5012B = i;
        this.f5029S.reset();
        this.f5029S.setDuration(200L);
        this.f5029S.setInterpolator(this.f5049y);
        if (animationListener != null) {
            this.f5050z.m16975b(animationListener);
        }
        this.f5050z.clearAnimation();
        this.f5050z.startAnimation(this.f5029S);
    }

    /* renamed from: d */
    private void m16929d() {
        this.f5050z = new CircleImageView(getContext(), -328966);
        CircularProgressDrawable circularProgressDrawable = new CircularProgressDrawable(getContext());
        this.f5017G = circularProgressDrawable;
        circularProgressDrawable.m16962l(1);
        this.f5050z.setImageDrawable(this.f5017G);
        this.f5050z.setVisibility(8);
        addView(this.f5050z);
    }

    /* renamed from: e */
    private void m16928e() {
        if (this.f5030f == null) {
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (!childAt.equals(this.f5050z)) {
                    this.f5030f = childAt;
                    return;
                }
            }
        }
    }

    /* renamed from: f */
    private void m16927f(float f) {
        if (f > this.f5034j) {
            m16921r(true, true);
            return;
        }
        this.f5032h = false;
        this.f5017G.m16964j(0.0f, 0.0f);
        Animation.AnimationListener animationListener = null;
        if (!this.f5047w) {
            animationListener = new Animation.AnimationListener() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.5
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
                    if (!swipeRefreshLayout.f5047w) {
                        swipeRefreshLayout.m16916w(null);
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
        m16931b(this.f5042r, animationListener);
        this.f5017G.m16970d(false);
    }

    /* renamed from: g */
    private boolean m16926g(Animation animation) {
        return animation != null && animation.hasStarted() && !animation.hasEnded();
    }

    /* renamed from: h */
    private void m16925h(float f) {
        this.f5017G.m16970d(true);
        float min = Math.min(1.0f, Math.abs(f / this.f5034j));
        float max = (((float) Math.max(min - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float abs = Math.abs(f);
        float f2 = this.f5034j;
        int i = this.f5016F;
        if (i <= 0) {
            i = this.f5025O ? this.f5015E - this.f5014D : this.f5015E;
        }
        float f3 = i;
        double max2 = Math.max(0.0f, Math.min(abs - f2, f3 * 2.0f) / f3) / 4.0f;
        float pow = ((float) (max2 - Math.pow(max2, 2.0d))) * 2.0f;
        int i2 = this.f5014D;
        int i3 = (int) ((f3 * min) + (f3 * pow * 2.0f));
        if (this.f5050z.getVisibility() != 0) {
            this.f5050z.setVisibility(0);
        }
        if (!this.f5047w) {
            this.f5050z.setScaleX(1.0f);
            this.f5050z.setScaleY(1.0f);
        }
        if (this.f5047w) {
            setAnimationProgress(Math.min(1.0f, f / this.f5034j));
        }
        if (f < this.f5034j) {
            if (this.f5017G.getAlpha() > 76 && !m16926g(this.f5020J)) {
                m16917v();
            }
        } else if (this.f5017G.getAlpha() < 255 && !m16926g(this.f5021K)) {
            m16918u();
        }
        this.f5017G.m16964j(0.0f, Math.min(0.8f, max * 0.8f));
        this.f5017G.m16969e(Math.min(1.0f, max));
        this.f5017G.m16967g((((max * 0.4f) - 0.25f) + (pow * 2.0f)) * 0.5f);
        setTargetOffsetTopAndBottom((i2 + i3) - this.f5042r);
    }

    /* renamed from: p */
    private void m16923p(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f5046v) {
            this.f5046v = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }

    /* renamed from: r */
    private void m16921r(boolean z, boolean z2) {
        if (this.f5032h != z) {
            this.f5023M = z2;
            m16928e();
            this.f5032h = z;
            if (z) {
                m16932a(this.f5042r, this.f5027Q);
            } else {
                m16916w(this.f5027Q);
            }
        }
    }

    /* renamed from: s */
    private Animation m16920s(final int i, final int i2) {
        Animation animation = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.4
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                CircularProgressDrawable circularProgressDrawable = SwipeRefreshLayout.this.f5017G;
                int i3 = i;
                circularProgressDrawable.setAlpha((int) (i3 + ((i2 - i3) * f)));
            }
        };
        animation.setDuration(300L);
        this.f5050z.m16975b(null);
        this.f5050z.clearAnimation();
        this.f5050z.startAnimation(animation);
        return animation;
    }

    private void setColorViewAlpha(int i) {
        this.f5050z.getBackground().setAlpha(i);
        this.f5017G.setAlpha(i);
    }

    /* renamed from: t */
    private void m16919t(float f) {
        float f2 = this.f5044t;
        int i = this.f5033i;
        if (f - f2 > i && !this.f5045u) {
            this.f5043s = f2 + i;
            this.f5045u = true;
            this.f5017G.setAlpha(76);
        }
    }

    /* renamed from: u */
    private void m16918u() {
        this.f5021K = m16920s(this.f5017G.getAlpha(), 255);
    }

    /* renamed from: v */
    private void m16917v() {
        this.f5020J = m16920s(this.f5017G.getAlpha(), 76);
    }

    /* renamed from: x */
    private void m16915x(int i, Animation.AnimationListener animationListener) {
        this.f5012B = i;
        this.f5013C = this.f5050z.getScaleX();
        Animation animation = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.8
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
                float f2 = swipeRefreshLayout.f5013C;
                swipeRefreshLayout.setAnimationProgress(f2 + ((-f2) * f));
                SwipeRefreshLayout.this.m16924o(f);
            }
        };
        this.f5022L = animation;
        animation.setDuration(150L);
        if (animationListener != null) {
            this.f5050z.m16975b(animationListener);
        }
        this.f5050z.clearAnimation();
        this.f5050z.startAnimation(this.f5022L);
    }

    /* renamed from: y */
    private void m16914y(Animation.AnimationListener animationListener) {
        this.f5050z.setVisibility(0);
        this.f5017G.setAlpha(255);
        Animation animation = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.2
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.setAnimationProgress(f);
            }
        };
        this.f5018H = animation;
        animation.setDuration(this.f5041q);
        if (animationListener != null) {
            this.f5050z.m16975b(animationListener);
        }
        this.f5050z.clearAnimation();
        this.f5050z.startAnimation(this.f5018H);
    }

    /* renamed from: c */
    public boolean m16930c() {
        OnChildScrollUpCallback onChildScrollUpCallback = this.f5026P;
        if (onChildScrollUpCallback != null) {
            return onChildScrollUpCallback.m16913a(this, this.f5030f);
        }
        View view = this.f5030f;
        return view instanceof ListView ? ListViewCompat.m18894a((ListView) view, -1) : view.canScrollVertically(-1);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f5037m.m19272a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f5037m.m19271b(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.f5037m.m19270c(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f5037m.m19267f(i, i2, i3, i4, iArr);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        int i3 = this.f5011A;
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
        return this.f5036l.m19254a();
    }

    public int getProgressCircleDiameter() {
        return this.f5024N;
    }

    public int getProgressViewEndOffset() {
        return this.f5015E;
    }

    public int getProgressViewStartOffset() {
        return this.f5014D;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.f5037m.m19263j();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.f5037m.m19261l();
    }

    /* renamed from: o */
    void m16924o(float f) {
        int i = this.f5012B;
        setTargetOffsetTopAndBottom((i + ((int) ((this.f5014D - i) * f))) - this.f5050z.getTop());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m16922q();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        m16928e();
        int actionMasked = motionEvent.getActionMasked();
        if (this.f5048x && actionMasked == 0) {
            this.f5048x = false;
        }
        if (!isEnabled() || this.f5048x || m16930c() || this.f5032h || this.f5040p) {
            return false;
        }
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int i = this.f5046v;
                    if (i == -1) {
                        Log.e(f5009T, "Got ACTION_MOVE event but don't have an active pointer id.");
                        return false;
                    }
                    int findPointerIndex = motionEvent.findPointerIndex(i);
                    if (findPointerIndex < 0) {
                        return false;
                    }
                    m16919t(motionEvent.getY(findPointerIndex));
                } else if (actionMasked != 3) {
                    if (actionMasked == 6) {
                        m16923p(motionEvent);
                    }
                }
            }
            this.f5045u = false;
            this.f5046v = -1;
        } else {
            setTargetOffsetTopAndBottom(this.f5014D - this.f5050z.getTop());
            int pointerId = motionEvent.getPointerId(0);
            this.f5046v = pointerId;
            this.f5045u = false;
            int findPointerIndex2 = motionEvent.findPointerIndex(pointerId);
            if (findPointerIndex2 < 0) {
                return false;
            }
            this.f5044t = motionEvent.getY(findPointerIndex2);
        }
        return this.f5045u;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() != 0) {
            if (this.f5030f == null) {
                m16928e();
            }
            View view = this.f5030f;
            if (view != null) {
                int paddingLeft = getPaddingLeft();
                int paddingTop = getPaddingTop();
                view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
                int measuredWidth2 = this.f5050z.getMeasuredWidth();
                int measuredHeight2 = this.f5050z.getMeasuredHeight();
                CircleImageView circleImageView = this.f5050z;
                int i5 = measuredWidth / 2;
                int i6 = measuredWidth2 / 2;
                int i7 = this.f5042r;
                circleImageView.layout(i5 - i6, i7, i5 + i6, measuredHeight2 + i7);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f5030f == null) {
            m16928e();
        }
        View view = this.f5030f;
        if (view != null) {
            view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
            this.f5050z.measure(View.MeasureSpec.makeMeasureSpec(this.f5024N, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f5024N, 1073741824));
            this.f5011A = -1;
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                if (getChildAt(i3) == this.f5050z) {
                    this.f5011A = i3;
                    return;
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (i2 > 0) {
            float f = this.f5035k;
            if (f > 0.0f) {
                float f2 = i2;
                if (f2 > f) {
                    iArr[1] = i2 - ((int) f);
                    this.f5035k = 0.0f;
                } else {
                    this.f5035k = f - f2;
                    iArr[1] = i2;
                }
                m16925h(this.f5035k);
            }
        }
        if (this.f5025O && i2 > 0 && this.f5035k == 0.0f && Math.abs(i2 - iArr[1]) > 0) {
            this.f5050z.setVisibility(8);
        }
        int[] iArr2 = this.f5038n;
        if (dispatchNestedPreScroll(i - iArr[0], i2 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        dispatchNestedScroll(i, i2, i3, i4, this.f5039o);
        int i5 = i4 + this.f5039o[1];
        if (i5 < 0 && !m16930c()) {
            float abs = this.f5035k + Math.abs(i5);
            this.f5035k = abs;
            m16925h(abs);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f5036l.m19253b(view, view2, i);
        startNestedScroll(i & 2);
        this.f5035k = 0.0f;
        this.f5040p = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return isEnabled() && !this.f5048x && !this.f5032h && (i & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        this.f5036l.m19251d(view);
        this.f5040p = false;
        float f = this.f5035k;
        if (f > 0.0f) {
            m16927f(f);
            this.f5035k = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.f5048x && actionMasked == 0) {
            this.f5048x = false;
        }
        if (!isEnabled() || this.f5048x || m16930c() || this.f5032h || this.f5040p) {
            return false;
        }
        if (actionMasked == 0) {
            this.f5046v = motionEvent.getPointerId(0);
            this.f5045u = false;
            return true;
        } else if (actionMasked == 1) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f5046v);
            if (findPointerIndex < 0) {
                Log.e(f5009T, "Got ACTION_UP event but don't have an active pointer id.");
                return false;
            }
            if (this.f5045u) {
                float y = motionEvent.getY(findPointerIndex);
                float f = this.f5043s;
                this.f5045u = false;
                m16927f((y - f) * 0.5f);
            }
            this.f5046v = -1;
            return false;
        } else if (actionMasked == 2) {
            int findPointerIndex2 = motionEvent.findPointerIndex(this.f5046v);
            if (findPointerIndex2 < 0) {
                Log.e(f5009T, "Got ACTION_MOVE event but have an invalid active pointer id.");
                return false;
            }
            float y2 = motionEvent.getY(findPointerIndex2);
            m16919t(y2);
            if (!this.f5045u) {
                return true;
            }
            float f2 = (y2 - this.f5043s) * 0.5f;
            if (f2 <= 0.0f) {
                return false;
            }
            m16925h(f2);
            return true;
        } else if (actionMasked == 3) {
            return false;
        } else {
            if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                if (actionIndex < 0) {
                    Log.e(f5009T, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                    return false;
                }
                this.f5046v = motionEvent.getPointerId(actionIndex);
                return true;
            } else if (actionMasked != 6) {
                return true;
            } else {
                m16923p(motionEvent);
                return true;
            }
        }
    }

    /* renamed from: q */
    void m16922q() {
        this.f5050z.clearAnimation();
        this.f5017G.stop();
        this.f5050z.setVisibility(8);
        setColorViewAlpha(255);
        if (this.f5047w) {
            setAnimationProgress(0.0f);
        } else {
            setTargetOffsetTopAndBottom(this.f5014D - this.f5042r);
        }
        this.f5042r = this.f5050z.getTop();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (Build.VERSION.SDK_INT >= 21 || !(this.f5030f instanceof AbsListView)) {
            View view = this.f5030f;
            if (view == null || ViewCompat.m19217T(view)) {
                super.requestDisallowInterceptTouchEvent(z);
            }
        }
    }

    void setAnimationProgress(float f) {
        this.f5050z.setScaleX(f);
        this.f5050z.setScaleY(f);
    }

    @Deprecated
    public void setColorScheme(@ColorRes int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(@ColorInt int... iArr) {
        m16928e();
        this.f5017G.m16968f(iArr);
    }

    public void setColorSchemeResources(@ColorRes int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = ContextCompat.m19675d(context, iArr[i]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i) {
        this.f5034j = i;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z) {
            m16922q();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.f5037m.m19260m(z);
    }

    public void setOnChildScrollUpCallback(@Nullable OnChildScrollUpCallback onChildScrollUpCallback) {
        this.f5026P = onChildScrollUpCallback;
    }

    public void setOnRefreshListener(@Nullable OnRefreshListener onRefreshListener) {
        this.f5031g = onRefreshListener;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i) {
        setProgressBackgroundColorSchemeResource(i);
    }

    public void setProgressBackgroundColorSchemeColor(@ColorInt int i) {
        this.f5050z.setBackgroundColor(i);
    }

    public void setProgressBackgroundColorSchemeResource(@ColorRes int i) {
        setProgressBackgroundColorSchemeColor(ContextCompat.m19675d(getContext(), i));
    }

    public void setProgressViewEndTarget(boolean z, int i) {
        this.f5015E = i;
        this.f5047w = z;
        this.f5050z.invalidate();
    }

    public void setProgressViewOffset(boolean z, int i, int i2) {
        this.f5047w = z;
        this.f5014D = i;
        this.f5015E = i2;
        this.f5025O = true;
        m16922q();
        this.f5032h = false;
    }

    public void setRefreshing(boolean z) {
        if (!z || this.f5032h == z) {
            m16921r(z, false);
            return;
        }
        this.f5032h = z;
        setTargetOffsetTopAndBottom((!this.f5025O ? this.f5015E + this.f5014D : this.f5015E) - this.f5042r);
        this.f5023M = false;
        m16914y(this.f5027Q);
    }

    public void setSize(int i) {
        if (i == 0 || i == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i == 0) {
                this.f5024N = (int) (displayMetrics.density * 56.0f);
            } else {
                this.f5024N = (int) (displayMetrics.density * 40.0f);
            }
            this.f5050z.setImageDrawable(null);
            this.f5017G.m16962l(i);
            this.f5050z.setImageDrawable(this.f5017G);
        }
    }

    public void setSlingshotDistance(@AbstractC0040Px int i) {
        this.f5016F = i;
    }

    void setTargetOffsetTopAndBottom(int i) {
        this.f5050z.bringToFront();
        ViewCompat.m19212Y(this.f5050z, i);
        this.f5042r = this.f5050z.getTop();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.f5037m.m19258o(i);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.f5037m.m19256q();
    }

    /* renamed from: w */
    void m16916w(Animation.AnimationListener animationListener) {
        Animation animation = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.3
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.setAnimationProgress(1.0f - f);
            }
        };
        this.f5019I = animation;
        animation.setDuration(150L);
        this.f5050z.m16975b(animationListener);
        this.f5050z.clearAnimation();
        this.f5050z.startAnimation(this.f5019I);
    }
}
