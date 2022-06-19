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
import androidx.core.content.C0790b;
import androidx.core.view.AbstractC0914j;
import androidx.core.view.AbstractC0918n;
import androidx.core.view.C0917m;
import androidx.core.view.C0921q;
import androidx.core.view.C0926v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout.class */
public class SwipeRefreshLayout extends ViewGroup implements AbstractC0914j, AbstractC0918n {

    /* renamed from: E */
    private static final int[] f10553E = {16842766};

    /* renamed from: n */
    private static final String f10554n = "SwipeRefreshLayout";

    /* renamed from: A */
    private boolean f10555A;

    /* renamed from: B */
    private int f10556B;

    /* renamed from: C */
    private boolean f10557C;

    /* renamed from: D */
    private final DecelerateInterpolator f10558D;

    /* renamed from: F */
    private int f10559F;

    /* renamed from: G */
    private Animation f10560G;

    /* renamed from: H */
    private Animation f10561H;

    /* renamed from: I */
    private Animation f10562I;

    /* renamed from: J */
    private Animation f10563J;

    /* renamed from: K */
    private Animation f10564K;

    /* renamed from: L */
    private int f10565L;

    /* renamed from: M */
    private AbstractC2804a f10566M;

    /* renamed from: N */
    private Animation.AnimationListener f10567N;

    /* renamed from: O */
    private final Animation f10568O;

    /* renamed from: P */
    private final Animation f10569P;

    /* renamed from: a */
    AbstractC2805b f10570a;

    /* renamed from: b */
    boolean f10571b;

    /* renamed from: c */
    int f10572c;

    /* renamed from: d */
    boolean f10573d;

    /* renamed from: e */
    C2806a f10574e;

    /* renamed from: f */
    protected int f10575f;

    /* renamed from: g */
    float f10576g;

    /* renamed from: h */
    protected int f10577h;

    /* renamed from: i */
    int f10578i;

    /* renamed from: j */
    int f10579j;

    /* renamed from: k */
    C2808b f10580k;

    /* renamed from: l */
    boolean f10581l;

    /* renamed from: m */
    boolean f10582m;

    /* renamed from: o */
    private View f10583o;

    /* renamed from: p */
    private int f10584p;

    /* renamed from: q */
    private float f10585q;

    /* renamed from: r */
    private float f10586r;

    /* renamed from: s */
    private final C0921q f10587s;

    /* renamed from: t */
    private final C0917m f10588t;

    /* renamed from: u */
    private final int[] f10589u;

    /* renamed from: v */
    private final int[] f10590v;

    /* renamed from: w */
    private boolean f10591w;

    /* renamed from: x */
    private int f10592x;

    /* renamed from: y */
    private float f10593y;

    /* renamed from: z */
    private float f10594z;

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$a.class */
    public interface AbstractC2804a {
        /* renamed from: a */
        boolean m39861a();
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$b.class */
    public interface AbstractC2805b {
    }

    public SwipeRefreshLayout(Context context) {
        this(context, null);
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10571b = false;
        this.f10585q = -1.0f;
        this.f10589u = new int[2];
        this.f10590v = new int[2];
        this.f10556B = -1;
        this.f10559F = -1;
        this.f10567N = new Animation.AnimationListener() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.1
            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationEnd(Animation animation) {
                if (!SwipeRefreshLayout.this.f10571b) {
                    SwipeRefreshLayout.this.m39880a();
                    return;
                }
                SwipeRefreshLayout.this.f10580k.setAlpha(255);
                SwipeRefreshLayout.this.f10580k.start();
                SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
                swipeRefreshLayout.f10572c = swipeRefreshLayout.f10574e.getTop();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationStart(Animation animation) {
            }
        };
        this.f10568O = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.6
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                int abs = !SwipeRefreshLayout.this.f10582m ? SwipeRefreshLayout.this.f10578i - Math.abs(SwipeRefreshLayout.this.f10577h) : SwipeRefreshLayout.this.f10578i;
                SwipeRefreshLayout.this.m39878a((SwipeRefreshLayout.this.f10575f + ((int) ((abs - SwipeRefreshLayout.this.f10575f) * f))) - SwipeRefreshLayout.this.f10574e.getTop());
                SwipeRefreshLayout.this.f10580k.m39851b(1.0f - f);
            }
        };
        this.f10569P = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.7
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.m39870b(f);
            }
        };
        this.f10584p = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f10592x = getResources().getInteger(17694721);
        setWillNotDraw(false);
        this.f10558D = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f10565L = (int) (displayMetrics.density * 40.0f);
        this.f10574e = new C2806a(getContext(), -328966);
        C2808b c2808b = new C2808b(getContext());
        this.f10580k = c2808b;
        c2808b.m39853a(1);
        this.f10574e.setImageDrawable(this.f10580k);
        this.f10574e.setVisibility(8);
        addView(this.f10574e);
        setChildrenDrawingOrderEnabled(true);
        int i = (int) (displayMetrics.density * 64.0f);
        this.f10578i = i;
        this.f10585q = i;
        this.f10587s = new C0921q(this);
        this.f10588t = new C0917m(this);
        setNestedScrollingEnabled(true);
        int i2 = -this.f10565L;
        this.f10572c = i2;
        this.f10577h = i2;
        m39870b(1.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f10553E);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private Animation m39877a(final int i, final int i2) {
        Animation animation = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.4
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                C2808b c2808b = SwipeRefreshLayout.this.f10580k;
                int i3 = i;
                c2808b.setAlpha((int) (i3 + ((i2 - i3) * f)));
            }
        };
        animation.setDuration(300L);
        this.f10574e.f10605a = null;
        this.f10574e.clearAnimation();
        this.f10574e.startAnimation(animation);
        return animation;
    }

    /* renamed from: a */
    private void m39876a(int i, Animation.AnimationListener animationListener) {
        this.f10575f = i;
        this.f10568O.reset();
        this.f10568O.setDuration(200L);
        this.f10568O.setInterpolator(this.f10558D);
        if (animationListener != null) {
            this.f10574e.f10605a = animationListener;
        }
        this.f10574e.clearAnimation();
        this.f10574e.startAnimation(this.f10568O);
    }

    /* renamed from: a */
    private void m39875a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f10556B) {
            this.f10556B = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }

    /* renamed from: a */
    private void m39872a(boolean z, boolean z2) {
        if (this.f10571b != z) {
            this.f10581l = z2;
            m39865d();
            this.f10571b = z;
            if (z) {
                m39876a(this.f10572c, this.f10567N);
            } else {
                m39874a(this.f10567N);
            }
        }
    }

    /* renamed from: a */
    private static boolean m39873a(Animation animation) {
        return animation != null && animation.hasStarted() && !animation.hasEnded();
    }

    /* renamed from: b */
    private void m39871b() {
        this.f10562I = m39877a(this.f10580k.getAlpha(), 76);
    }

    /* renamed from: b */
    private void m39869b(int i, Animation.AnimationListener animationListener) {
        if (this.f10573d) {
            m39866c(i, animationListener);
            return;
        }
        this.f10575f = i;
        this.f10569P.reset();
        this.f10569P.setDuration(200L);
        this.f10569P.setInterpolator(this.f10558D);
        if (animationListener != null) {
            this.f10574e.f10605a = animationListener;
        }
        this.f10574e.clearAnimation();
        this.f10574e.startAnimation(this.f10569P);
    }

    /* renamed from: c */
    private void m39868c() {
        this.f10563J = m39877a(this.f10580k.getAlpha(), 255);
    }

    /* renamed from: c */
    private void m39867c(float f) {
        this.f10580k.m39852a(true);
        float min = Math.min(1.0f, Math.abs(f / this.f10585q));
        float max = (Math.max((float) (min - 0.4d), (float) BitmapDescriptorFactory.HUE_RED) * 5.0f) / 3.0f;
        float abs = Math.abs(f);
        float f2 = this.f10585q;
        int i = this.f10579j;
        if (i <= 0) {
            i = this.f10582m ? this.f10578i - this.f10577h : this.f10578i;
        }
        float f3 = i;
        double max2 = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(abs - f2, f3 * 2.0f) / f3) / 4.0f;
        float pow = ((float) (max2 - Math.pow(max2, 2.0d))) * 2.0f;
        int i2 = this.f10577h;
        int i3 = (int) ((f3 * min) + (f3 * pow * 2.0f));
        if (this.f10574e.getVisibility() != 0) {
            this.f10574e.setVisibility(0);
        }
        if (!this.f10573d) {
            this.f10574e.setScaleX(1.0f);
            this.f10574e.setScaleY(1.0f);
        }
        if (this.f10573d) {
            m39879a(Math.min(1.0f, f / this.f10585q));
        }
        if (f < this.f10585q) {
            if (this.f10580k.getAlpha() > 76 && !m39873a(this.f10562I)) {
                m39871b();
            }
        } else if (this.f10580k.getAlpha() < 255 && !m39873a(this.f10563J)) {
            m39868c();
        }
        this.f10580k.m39850c(Math.min(0.8f, max * 0.8f));
        this.f10580k.m39851b(Math.min(1.0f, max));
        this.f10580k.m39849d((((max * 0.4f) - 0.25f) + (pow * 2.0f)) * 0.5f);
        m39878a((i2 + i3) - this.f10572c);
    }

    /* renamed from: c */
    private void m39866c(int i, Animation.AnimationListener animationListener) {
        this.f10575f = i;
        this.f10576g = this.f10574e.getScaleX();
        Animation animation = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.8
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.m39879a(SwipeRefreshLayout.this.f10576g + ((-SwipeRefreshLayout.this.f10576g) * f));
                SwipeRefreshLayout.this.m39870b(f);
            }
        };
        this.f10564K = animation;
        animation.setDuration(150L);
        if (animationListener != null) {
            this.f10574e.f10605a = animationListener;
        }
        this.f10574e.clearAnimation();
        this.f10574e.startAnimation(this.f10564K);
    }

    /* renamed from: d */
    private void m39865d() {
        if (this.f10583o == null) {
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (!childAt.equals(this.f10574e)) {
                    this.f10583o = childAt;
                    return;
                }
            }
        }
    }

    /* renamed from: d */
    private void m39864d(float f) {
        if (f > this.f10585q) {
            m39872a(true, true);
            return;
        }
        this.f10571b = false;
        this.f10580k.m39850c(BitmapDescriptorFactory.HUE_RED);
        Animation.AnimationListener animationListener = null;
        if (!this.f10573d) {
            animationListener = new Animation.AnimationListener() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.5
                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationEnd(Animation animation) {
                    if (!SwipeRefreshLayout.this.f10573d) {
                        SwipeRefreshLayout.this.m39874a((Animation.AnimationListener) null);
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
        m39869b(this.f10572c, animationListener);
        this.f10580k.m39852a(false);
    }

    /* renamed from: e */
    private void m39862e(float f) {
        float f2 = this.f10594z;
        int i = this.f10584p;
        if (f - f2 <= i || this.f10555A) {
            return;
        }
        this.f10593y = f2 + i;
        this.f10555A = true;
        this.f10580k.setAlpha(76);
    }

    /* renamed from: e */
    private boolean m39863e() {
        AbstractC2804a abstractC2804a = this.f10566M;
        if (abstractC2804a != null) {
            return abstractC2804a.m39861a();
        }
        View view = this.f10583o;
        if (!(view instanceof ListView)) {
            return view.canScrollVertically(-1);
        }
        ListView listView = (ListView) view;
        if (Build.VERSION.SDK_INT >= 19) {
            return listView.canScrollList(-1);
        }
        if (listView.getChildCount() == 0) {
            return false;
        }
        return listView.getFirstVisiblePosition() > 0 || listView.getChildAt(0).getTop() < listView.getListPaddingTop();
    }

    /* renamed from: a */
    final void m39880a() {
        this.f10574e.clearAnimation();
        this.f10580k.stop();
        this.f10574e.setVisibility(8);
        this.f10574e.getBackground().setAlpha(255);
        this.f10580k.setAlpha(255);
        if (this.f10573d) {
            m39879a(BitmapDescriptorFactory.HUE_RED);
        } else {
            m39878a(this.f10577h - this.f10572c);
        }
        this.f10572c = this.f10574e.getTop();
    }

    /* renamed from: a */
    final void m39879a(float f) {
        this.f10574e.setScaleX(f);
        this.f10574e.setScaleY(f);
    }

    /* renamed from: a */
    final void m39878a(int i) {
        this.f10574e.bringToFront();
        C0926v.m44098e(this.f10574e, i);
        this.f10572c = this.f10574e.getTop();
    }

    /* renamed from: a */
    final void m39874a(Animation.AnimationListener animationListener) {
        Animation animation = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.3
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.m39879a(1.0f - f);
            }
        };
        this.f10561H = animation;
        animation.setDuration(150L);
        this.f10574e.f10605a = animationListener;
        this.f10574e.clearAnimation();
        this.f10574e.startAnimation(this.f10561H);
    }

    /* renamed from: b */
    final void m39870b(float f) {
        int i = this.f10575f;
        m39878a((i + ((int) ((this.f10577h - i) * f))) - this.f10574e.getTop());
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f10588t.m44176a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f10588t.m44177a(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.f10588t.m44171a(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f10588t.m44173a(i, i2, i3, i4, iArr);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        int i3 = this.f10559F;
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
        return this.f10587s.m44164a();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.f10588t.m44175a(0);
    }

    @Override // android.view.View, androidx.core.view.AbstractC0914j
    public boolean isNestedScrollingEnabled() {
        return this.f10588t.f3749a;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m39880a();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        m39865d();
        int actionMasked = motionEvent.getActionMasked();
        if (this.f10557C && actionMasked == 0) {
            this.f10557C = false;
        }
        if (!isEnabled() || this.f10557C || m39863e() || this.f10571b || this.f10591w) {
            return false;
        }
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int i = this.f10556B;
                    if (i == -1) {
                        Log.e(f10554n, "Got ACTION_MOVE event but don't have an active pointer id.");
                        return false;
                    }
                    int findPointerIndex = motionEvent.findPointerIndex(i);
                    if (findPointerIndex < 0) {
                        return false;
                    }
                    m39862e(motionEvent.getY(findPointerIndex));
                } else if (actionMasked != 3) {
                    if (actionMasked == 6) {
                        m39875a(motionEvent);
                    }
                }
            }
            this.f10555A = false;
            this.f10556B = -1;
        } else {
            m39878a(this.f10577h - this.f10574e.getTop());
            int pointerId = motionEvent.getPointerId(0);
            this.f10556B = pointerId;
            this.f10555A = false;
            int findPointerIndex2 = motionEvent.findPointerIndex(pointerId);
            if (findPointerIndex2 < 0) {
                return false;
            }
            this.f10594z = motionEvent.getY(findPointerIndex2);
        }
        return this.f10555A;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.f10583o == null) {
            m39865d();
        }
        View view = this.f10583o;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.f10574e.getMeasuredWidth();
        int measuredHeight2 = this.f10574e.getMeasuredHeight();
        C2806a c2806a = this.f10574e;
        int i5 = measuredWidth / 2;
        int i6 = measuredWidth2 / 2;
        int i7 = this.f10572c;
        c2806a.layout(i5 - i6, i7, i5 + i6, measuredHeight2 + i7);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f10583o == null) {
            m39865d();
        }
        View view = this.f10583o;
        if (view == null) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.f10574e.measure(View.MeasureSpec.makeMeasureSpec(this.f10565L, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f10565L, 1073741824));
        this.f10559F = -1;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            if (getChildAt(i3) == this.f10574e) {
                this.f10559F = i3;
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (i2 > 0) {
            float f = this.f10586r;
            if (f > BitmapDescriptorFactory.HUE_RED) {
                float f2 = i2;
                if (f2 > f) {
                    iArr[1] = i2 - ((int) f);
                    this.f10586r = BitmapDescriptorFactory.HUE_RED;
                } else {
                    this.f10586r = f - f2;
                    iArr[1] = i2;
                }
                m39867c(this.f10586r);
            }
        }
        if (this.f10582m && i2 > 0 && this.f10586r == BitmapDescriptorFactory.HUE_RED && Math.abs(i2 - iArr[1]) > 0) {
            this.f10574e.setVisibility(8);
        }
        int[] iArr2 = this.f10589u;
        if (dispatchNestedPreScroll(i - iArr[0], i2 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        dispatchNestedScroll(i, i2, i3, i4, this.f10590v);
        int i5 = i4 + this.f10590v[1];
        if (i5 >= 0 || m39863e()) {
            return;
        }
        float abs = this.f10586r + Math.abs(i5);
        this.f10586r = abs;
        m39867c(abs);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f10587s.m44162a(i, 0);
        startNestedScroll(i & 2);
        this.f10586r = BitmapDescriptorFactory.HUE_RED;
        this.f10591w = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return isEnabled() && !this.f10557C && !this.f10571b && (i & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public void onStopNestedScroll(View view) {
        this.f10587s.m44163a(0);
        this.f10591w = false;
        float f = this.f10586r;
        if (f > BitmapDescriptorFactory.HUE_RED) {
            m39864d(f);
            this.f10586r = BitmapDescriptorFactory.HUE_RED;
        }
        stopNestedScroll();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.f10557C && actionMasked == 0) {
            this.f10557C = false;
        }
        if (!isEnabled() || this.f10557C || m39863e() || this.f10571b || this.f10591w) {
            return false;
        }
        if (actionMasked == 0) {
            this.f10556B = motionEvent.getPointerId(0);
            this.f10555A = false;
            return true;
        } else if (actionMasked == 1) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f10556B);
            if (findPointerIndex < 0) {
                Log.e(f10554n, "Got ACTION_UP event but don't have an active pointer id.");
                return false;
            }
            if (this.f10555A) {
                float y = motionEvent.getY(findPointerIndex);
                float f = this.f10593y;
                this.f10555A = false;
                m39864d((y - f) * 0.5f);
            }
            this.f10556B = -1;
            return false;
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                return false;
            }
            if (actionMasked != 5) {
                if (actionMasked != 6) {
                    return true;
                }
                m39875a(motionEvent);
                return true;
            }
            int actionIndex = motionEvent.getActionIndex();
            if (actionIndex < 0) {
                Log.e(f10554n, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                return false;
            }
            this.f10556B = motionEvent.getPointerId(actionIndex);
            return true;
        } else {
            int findPointerIndex2 = motionEvent.findPointerIndex(this.f10556B);
            if (findPointerIndex2 < 0) {
                Log.e(f10554n, "Got ACTION_MOVE event but have an invalid active pointer id.");
                return false;
            }
            float y2 = motionEvent.getY(findPointerIndex2);
            m39862e(y2);
            if (!this.f10555A) {
                return true;
            }
            float f2 = (y2 - this.f10593y) * 0.5f;
            if (f2 <= BitmapDescriptorFactory.HUE_RED) {
                return false;
            }
            m39867c(f2);
            return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (Build.VERSION.SDK_INT >= 21 || !(this.f10583o instanceof AbsListView)) {
            View view = this.f10583o;
            if (view != null && !C0926v.m44074y(view)) {
                return;
            }
            super.requestDisallowInterceptTouchEvent(z);
        }
    }

    @Deprecated
    public void setColorScheme(int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(int... iArr) {
        m39865d();
        C2808b c2808b = this.f10580k;
        c2808b.f10613a.m39844a(iArr);
        c2808b.f10613a.m39846a(0);
        c2808b.invalidateSelf();
    }

    public void setColorSchemeResources(int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = C0790b.m44492c(context, iArr[i]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i) {
        this.f10585q = i;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z) {
            m39880a();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.f10588t.m44168a(z);
    }

    public void setOnChildScrollUpCallback(AbstractC2804a abstractC2804a) {
        this.f10566M = abstractC2804a;
    }

    public void setOnRefreshListener(AbstractC2805b abstractC2805b) {
        this.f10570a = abstractC2805b;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i) {
        setProgressBackgroundColorSchemeResource(i);
    }

    public void setProgressBackgroundColorSchemeColor(int i) {
        this.f10574e.setBackgroundColor(i);
    }

    public void setProgressBackgroundColorSchemeResource(int i) {
        setProgressBackgroundColorSchemeColor(C0790b.m44492c(getContext(), i));
    }

    public void setProgressViewEndTarget(boolean z, int i) {
        this.f10578i = i;
        this.f10573d = z;
        this.f10574e.invalidate();
    }

    public void setProgressViewOffset(boolean z, int i, int i2) {
        this.f10573d = z;
        this.f10577h = i;
        this.f10578i = i2;
        this.f10582m = true;
        m39880a();
        this.f10571b = false;
    }

    public void setRefreshing(boolean z) {
        if (!z || this.f10571b == z) {
            m39872a(z, false);
            return;
        }
        this.f10571b = z;
        m39878a((!this.f10582m ? this.f10578i + this.f10577h : this.f10578i) - this.f10572c);
        this.f10581l = false;
        Animation.AnimationListener animationListener = this.f10567N;
        this.f10574e.setVisibility(0);
        this.f10580k.setAlpha(255);
        Animation animation = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.2
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.m39879a(f);
            }
        };
        this.f10560G = animation;
        animation.setDuration(this.f10592x);
        if (animationListener != null) {
            this.f10574e.f10605a = animationListener;
        }
        this.f10574e.clearAnimation();
        this.f10574e.startAnimation(this.f10560G);
    }

    public void setSize(int i) {
        if (i == 0 || i == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i == 0) {
                this.f10565L = (int) (displayMetrics.density * 56.0f);
            } else {
                this.f10565L = (int) (displayMetrics.density * 40.0f);
            }
            this.f10574e.setImageDrawable(null);
            this.f10580k.m39853a(i);
            this.f10574e.setImageDrawable(this.f10580k);
        }
    }

    public void setSlingshotDistance(int i) {
        this.f10579j = i;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.f10588t.m44174a(i, 0);
    }

    @Override // android.view.View, androidx.core.view.AbstractC0914j
    public void stopNestedScroll() {
        this.f10588t.m44167b(0);
    }
}
