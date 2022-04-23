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
import androidx.core.view.j;
import androidx.core.view.m;
import androidx.core.view.n;
import androidx.core.view.q;
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout.class */
public class SwipeRefreshLayout extends ViewGroup implements j, n {
    private static final int[] E = {16842766};
    private static final String n = "SwipeRefreshLayout";
    private boolean A;
    private int B;
    private boolean C;
    private final DecelerateInterpolator D;
    private int F;
    private Animation G;
    private Animation H;
    private Animation I;
    private Animation J;
    private Animation K;
    private int L;
    private a M;
    private Animation.AnimationListener N;
    private final Animation O;
    private final Animation P;

    /* renamed from: a  reason: collision with root package name */
    b f5646a;

    /* renamed from: b  reason: collision with root package name */
    boolean f5647b;

    /* renamed from: c  reason: collision with root package name */
    int f5648c;

    /* renamed from: d  reason: collision with root package name */
    boolean f5649d;
    androidx.swiperefreshlayout.widget.a e;
    protected int f;
    float g;
    protected int h;
    int i;
    int j;
    androidx.swiperefreshlayout.widget.b k;
    boolean l;
    boolean m;
    private View o;
    private int p;
    private float q;
    private float r;
    private final q s;
    private final m t;
    private final int[] u;
    private final int[] v;
    private boolean w;
    private int x;
    private float y;
    private float z;

    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$a.class */
    public interface a {
        boolean a();
    }

    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$b.class */
    public interface b {
    }

    public SwipeRefreshLayout(Context context) {
        this(context, null);
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5647b = false;
        this.q = -1.0f;
        this.u = new int[2];
        this.v = new int[2];
        this.B = -1;
        this.F = -1;
        this.N = new Animation.AnimationListener() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.1
            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationEnd(Animation animation) {
                if (SwipeRefreshLayout.this.f5647b) {
                    SwipeRefreshLayout.this.k.setAlpha(255);
                    SwipeRefreshLayout.this.k.start();
                    SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
                    swipeRefreshLayout.f5648c = swipeRefreshLayout.e.getTop();
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
        this.O = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.6
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                int abs = !SwipeRefreshLayout.this.m ? SwipeRefreshLayout.this.i - Math.abs(SwipeRefreshLayout.this.h) : SwipeRefreshLayout.this.i;
                SwipeRefreshLayout.this.a((SwipeRefreshLayout.this.f + ((int) ((abs - SwipeRefreshLayout.this.f) * f))) - SwipeRefreshLayout.this.e.getTop());
                SwipeRefreshLayout.this.k.b(1.0f - f);
            }
        };
        this.P = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.7
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.b(f);
            }
        };
        this.p = ViewConfiguration.get(context).getScaledTouchSlop();
        this.x = getResources().getInteger(17694721);
        setWillNotDraw(false);
        this.D = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.L = (int) (displayMetrics.density * 40.0f);
        this.e = new androidx.swiperefreshlayout.widget.a(getContext(), -328966);
        androidx.swiperefreshlayout.widget.b bVar = new androidx.swiperefreshlayout.widget.b(getContext());
        this.k = bVar;
        bVar.a(1);
        this.e.setImageDrawable(this.k);
        this.e.setVisibility(8);
        addView(this.e);
        setChildrenDrawingOrderEnabled(true);
        int i = (int) (displayMetrics.density * 64.0f);
        this.i = i;
        this.q = i;
        this.s = new q(this);
        this.t = new m(this);
        setNestedScrollingEnabled(true);
        int i2 = -this.L;
        this.f5648c = i2;
        this.h = i2;
        b(1.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, E);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
    }

    private Animation a(final int i, final int i2) {
        Animation animation = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.4
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                androidx.swiperefreshlayout.widget.b bVar = SwipeRefreshLayout.this.k;
                int i3 = i;
                bVar.setAlpha((int) (i3 + ((i2 - i3) * f)));
            }
        };
        animation.setDuration(300L);
        this.e.f5660a = null;
        this.e.clearAnimation();
        this.e.startAnimation(animation);
        return animation;
    }

    private void a(int i, Animation.AnimationListener animationListener) {
        this.f = i;
        this.O.reset();
        this.O.setDuration(200L);
        this.O.setInterpolator(this.D);
        if (animationListener != null) {
            this.e.f5660a = animationListener;
        }
        this.e.clearAnimation();
        this.e.startAnimation(this.O);
    }

    private void a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.B) {
            this.B = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }

    private void a(boolean z, boolean z2) {
        if (this.f5647b != z) {
            this.l = z2;
            d();
            this.f5647b = z;
            if (z) {
                a(this.f5648c, this.N);
            } else {
                a(this.N);
            }
        }
    }

    private static boolean a(Animation animation) {
        return animation != null && animation.hasStarted() && !animation.hasEnded();
    }

    private void b() {
        this.I = a(this.k.getAlpha(), 76);
    }

    private void b(int i, Animation.AnimationListener animationListener) {
        if (this.f5649d) {
            c(i, animationListener);
            return;
        }
        this.f = i;
        this.P.reset();
        this.P.setDuration(200L);
        this.P.setInterpolator(this.D);
        if (animationListener != null) {
            this.e.f5660a = animationListener;
        }
        this.e.clearAnimation();
        this.e.startAnimation(this.P);
    }

    private void c() {
        this.J = a(this.k.getAlpha(), 255);
    }

    private void c(float f) {
        this.k.a(true);
        float min = Math.min(1.0f, Math.abs(f / this.q));
        float max = (Math.max((float) (min - 0.4d), (float) BitmapDescriptorFactory.HUE_RED) * 5.0f) / 3.0f;
        float abs = Math.abs(f);
        float f2 = this.q;
        int i = this.j;
        if (i <= 0) {
            i = this.m ? this.i - this.h : this.i;
        }
        float f3 = i;
        double max2 = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(abs - f2, f3 * 2.0f) / f3) / 4.0f;
        float pow = ((float) (max2 - Math.pow(max2, 2.0d))) * 2.0f;
        int i2 = this.h;
        int i3 = (int) ((f3 * min) + (f3 * pow * 2.0f));
        if (this.e.getVisibility() != 0) {
            this.e.setVisibility(0);
        }
        if (!this.f5649d) {
            this.e.setScaleX(1.0f);
            this.e.setScaleY(1.0f);
        }
        if (this.f5649d) {
            a(Math.min(1.0f, f / this.q));
        }
        if (f < this.q) {
            if (this.k.getAlpha() > 76 && !a(this.I)) {
                b();
            }
        } else if (this.k.getAlpha() < 255 && !a(this.J)) {
            c();
        }
        this.k.c(Math.min(0.8f, max * 0.8f));
        this.k.b(Math.min(1.0f, max));
        this.k.d((((max * 0.4f) - 0.25f) + (pow * 2.0f)) * 0.5f);
        a((i2 + i3) - this.f5648c);
    }

    private void c(int i, Animation.AnimationListener animationListener) {
        this.f = i;
        this.g = this.e.getScaleX();
        Animation animation = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.8
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.a(SwipeRefreshLayout.this.g + ((-SwipeRefreshLayout.this.g) * f));
                SwipeRefreshLayout.this.b(f);
            }
        };
        this.K = animation;
        animation.setDuration(150L);
        if (animationListener != null) {
            this.e.f5660a = animationListener;
        }
        this.e.clearAnimation();
        this.e.startAnimation(this.K);
    }

    private void d() {
        if (this.o == null) {
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (!childAt.equals(this.e)) {
                    this.o = childAt;
                    return;
                }
            }
        }
    }

    private void d(float f) {
        if (f > this.q) {
            a(true, true);
            return;
        }
        this.f5647b = false;
        this.k.c(BitmapDescriptorFactory.HUE_RED);
        Animation.AnimationListener animationListener = null;
        if (!this.f5649d) {
            animationListener = new Animation.AnimationListener() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.5
                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationEnd(Animation animation) {
                    if (!SwipeRefreshLayout.this.f5649d) {
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
        b(this.f5648c, animationListener);
        this.k.a(false);
    }

    private void e(float f) {
        float f2 = this.z;
        int i = this.p;
        if (f - f2 > i && !this.A) {
            this.y = f2 + i;
            this.A = true;
            this.k.setAlpha(76);
        }
    }

    private boolean e() {
        a aVar = this.M;
        if (aVar != null) {
            return aVar.a();
        }
        View view = this.o;
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

    final void a() {
        this.e.clearAnimation();
        this.k.stop();
        this.e.setVisibility(8);
        this.e.getBackground().setAlpha(255);
        this.k.setAlpha(255);
        if (this.f5649d) {
            a(BitmapDescriptorFactory.HUE_RED);
        } else {
            a(this.h - this.f5648c);
        }
        this.f5648c = this.e.getTop();
    }

    final void a(float f) {
        this.e.setScaleX(f);
        this.e.setScaleY(f);
    }

    final void a(int i) {
        this.e.bringToFront();
        v.e(this.e, i);
        this.f5648c = this.e.getTop();
    }

    final void a(Animation.AnimationListener animationListener) {
        Animation animation = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.3
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.a(1.0f - f);
            }
        };
        this.H = animation;
        animation.setDuration(150L);
        this.e.f5660a = animationListener;
        this.e.clearAnimation();
        this.e.startAnimation(this.H);
    }

    final void b(float f) {
        int i = this.f;
        a((i + ((int) ((this.h - i) * f))) - this.e.getTop());
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.t.a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.t.a(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.t.a(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.t.a(i, i2, i3, i4, iArr);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        int i3 = this.F;
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
        return this.s.a();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.t.a(0);
    }

    @Override // android.view.View, androidx.core.view.j
    public boolean isNestedScrollingEnabled() {
        return this.t.f2004a;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        d();
        int actionMasked = motionEvent.getActionMasked();
        if (this.C && actionMasked == 0) {
            this.C = false;
        }
        if (!isEnabled() || this.C || e() || this.f5647b || this.w) {
            return false;
        }
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int i = this.B;
                    if (i == -1) {
                        Log.e(n, "Got ACTION_MOVE event but don't have an active pointer id.");
                        return false;
                    }
                    int findPointerIndex = motionEvent.findPointerIndex(i);
                    if (findPointerIndex < 0) {
                        return false;
                    }
                    e(motionEvent.getY(findPointerIndex));
                } else if (actionMasked != 3) {
                    if (actionMasked == 6) {
                        a(motionEvent);
                    }
                }
            }
            this.A = false;
            this.B = -1;
        } else {
            a(this.h - this.e.getTop());
            int pointerId = motionEvent.getPointerId(0);
            this.B = pointerId;
            this.A = false;
            int findPointerIndex2 = motionEvent.findPointerIndex(pointerId);
            if (findPointerIndex2 < 0) {
                return false;
            }
            this.z = motionEvent.getY(findPointerIndex2);
        }
        return this.A;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() != 0) {
            if (this.o == null) {
                d();
            }
            View view = this.o;
            if (view != null) {
                int paddingLeft = getPaddingLeft();
                int paddingTop = getPaddingTop();
                view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
                int measuredWidth2 = this.e.getMeasuredWidth();
                int measuredHeight2 = this.e.getMeasuredHeight();
                androidx.swiperefreshlayout.widget.a aVar = this.e;
                int i5 = measuredWidth / 2;
                int i6 = measuredWidth2 / 2;
                int i7 = this.f5648c;
                aVar.layout(i5 - i6, i7, i5 + i6, measuredHeight2 + i7);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.o == null) {
            d();
        }
        View view = this.o;
        if (view != null) {
            view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
            this.e.measure(View.MeasureSpec.makeMeasureSpec(this.L, 1073741824), View.MeasureSpec.makeMeasureSpec(this.L, 1073741824));
            this.F = -1;
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                if (getChildAt(i3) == this.e) {
                    this.F = i3;
                    return;
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (i2 > 0) {
            float f = this.r;
            if (f > BitmapDescriptorFactory.HUE_RED) {
                float f2 = i2;
                if (f2 > f) {
                    iArr[1] = i2 - ((int) f);
                    this.r = BitmapDescriptorFactory.HUE_RED;
                } else {
                    this.r = f - f2;
                    iArr[1] = i2;
                }
                c(this.r);
            }
        }
        if (this.m && i2 > 0 && this.r == BitmapDescriptorFactory.HUE_RED && Math.abs(i2 - iArr[1]) > 0) {
            this.e.setVisibility(8);
        }
        int[] iArr2 = this.u;
        if (dispatchNestedPreScroll(i - iArr[0], i2 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        dispatchNestedScroll(i, i2, i3, i4, this.v);
        int i5 = i4 + this.v[1];
        if (i5 < 0 && !e()) {
            float abs = this.r + Math.abs(i5);
            this.r = abs;
            c(abs);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.s.a(i, 0);
        startNestedScroll(i & 2);
        this.r = BitmapDescriptorFactory.HUE_RED;
        this.w = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return isEnabled() && !this.C && !this.f5647b && (i & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public void onStopNestedScroll(View view) {
        this.s.a(0);
        this.w = false;
        float f = this.r;
        if (f > BitmapDescriptorFactory.HUE_RED) {
            d(f);
            this.r = BitmapDescriptorFactory.HUE_RED;
        }
        stopNestedScroll();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.C && actionMasked == 0) {
            this.C = false;
        }
        if (!isEnabled() || this.C || e() || this.f5647b || this.w) {
            return false;
        }
        if (actionMasked == 0) {
            this.B = motionEvent.getPointerId(0);
            this.A = false;
            return true;
        } else if (actionMasked == 1) {
            int findPointerIndex = motionEvent.findPointerIndex(this.B);
            if (findPointerIndex < 0) {
                Log.e(n, "Got ACTION_UP event but don't have an active pointer id.");
                return false;
            }
            if (this.A) {
                float y = motionEvent.getY(findPointerIndex);
                float f = this.y;
                this.A = false;
                d((y - f) * 0.5f);
            }
            this.B = -1;
            return false;
        } else if (actionMasked == 2) {
            int findPointerIndex2 = motionEvent.findPointerIndex(this.B);
            if (findPointerIndex2 < 0) {
                Log.e(n, "Got ACTION_MOVE event but have an invalid active pointer id.");
                return false;
            }
            float y2 = motionEvent.getY(findPointerIndex2);
            e(y2);
            if (!this.A) {
                return true;
            }
            float f2 = (y2 - this.y) * 0.5f;
            if (f2 <= BitmapDescriptorFactory.HUE_RED) {
                return false;
            }
            c(f2);
            return true;
        } else if (actionMasked == 3) {
            return false;
        } else {
            if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                if (actionIndex < 0) {
                    Log.e(n, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                    return false;
                }
                this.B = motionEvent.getPointerId(actionIndex);
                return true;
            } else if (actionMasked != 6) {
                return true;
            } else {
                a(motionEvent);
                return true;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (Build.VERSION.SDK_INT >= 21 || !(this.o instanceof AbsListView)) {
            View view = this.o;
            if (view == null || v.y(view)) {
                super.requestDisallowInterceptTouchEvent(z);
            }
        }
    }

    @Deprecated
    public void setColorScheme(int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(int... iArr) {
        d();
        androidx.swiperefreshlayout.widget.b bVar = this.k;
        bVar.f5666a.a(iArr);
        bVar.f5666a.a(0);
        bVar.invalidateSelf();
    }

    public void setColorSchemeResources(int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = androidx.core.content.b.c(context, iArr[i]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i) {
        this.q = i;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z) {
            a();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.t.a(z);
    }

    public void setOnChildScrollUpCallback(a aVar) {
        this.M = aVar;
    }

    public void setOnRefreshListener(b bVar) {
        this.f5646a = bVar;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i) {
        setProgressBackgroundColorSchemeResource(i);
    }

    public void setProgressBackgroundColorSchemeColor(int i) {
        this.e.setBackgroundColor(i);
    }

    public void setProgressBackgroundColorSchemeResource(int i) {
        setProgressBackgroundColorSchemeColor(androidx.core.content.b.c(getContext(), i));
    }

    public void setProgressViewEndTarget(boolean z, int i) {
        this.i = i;
        this.f5649d = z;
        this.e.invalidate();
    }

    public void setProgressViewOffset(boolean z, int i, int i2) {
        this.f5649d = z;
        this.h = i;
        this.i = i2;
        this.m = true;
        a();
        this.f5647b = false;
    }

    public void setRefreshing(boolean z) {
        if (!z || this.f5647b == z) {
            a(z, false);
            return;
        }
        this.f5647b = z;
        a((!this.m ? this.i + this.h : this.i) - this.f5648c);
        this.l = false;
        Animation.AnimationListener animationListener = this.N;
        this.e.setVisibility(0);
        this.k.setAlpha(255);
        Animation animation = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.2
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.a(f);
            }
        };
        this.G = animation;
        animation.setDuration(this.x);
        if (animationListener != null) {
            this.e.f5660a = animationListener;
        }
        this.e.clearAnimation();
        this.e.startAnimation(this.G);
    }

    public void setSize(int i) {
        if (i == 0 || i == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i == 0) {
                this.L = (int) (displayMetrics.density * 56.0f);
            } else {
                this.L = (int) (displayMetrics.density * 40.0f);
            }
            this.e.setImageDrawable(null);
            this.k.a(i);
            this.e.setImageDrawable(this.k);
        }
    }

    public void setSlingshotDistance(int i) {
        this.j = i;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.t.a(i, 0);
    }

    @Override // android.view.View, androidx.core.view.j
    public void stopNestedScroll() {
        this.t.b(0);
    }
}
