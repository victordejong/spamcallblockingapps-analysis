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
import androidx.core.content.C0586a;
import androidx.core.widget.C0647i;
import p020b.p041h.p050l.AbstractC1667k;
import p020b.p041h.p050l.AbstractC1671o;
import p020b.p041h.p050l.C1668l;
import p020b.p041h.p050l.C1672p;
import p020b.p041h.p050l.C1679w;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout.class */
public class SwipeRefreshLayout extends ViewGroup implements AbstractC1671o, AbstractC1667k {

    /* renamed from: d */
    private static final String f4615d = SwipeRefreshLayout.class.getSimpleName();

    /* renamed from: e */
    private static final int[] f4616e = {16842766};

    /* renamed from: A */
    private int f4617A;

    /* renamed from: B */
    protected int f4618B;

    /* renamed from: C */
    float f4619C;

    /* renamed from: D */
    protected int f4620D;

    /* renamed from: E */
    int f4621E;

    /* renamed from: F */
    int f4622F;

    /* renamed from: G */
    C1069b f4623G;

    /* renamed from: H */
    private Animation f4624H;

    /* renamed from: I */
    private Animation f4625I;

    /* renamed from: J */
    private Animation f4626J;

    /* renamed from: K */
    private Animation f4627K;

    /* renamed from: L */
    private Animation f4628L;

    /* renamed from: M */
    boolean f4629M;

    /* renamed from: N */
    private int f4630N;

    /* renamed from: O */
    boolean f4631O;

    /* renamed from: P */
    private AbstractC1065i f4632P;

    /* renamed from: Q */
    private Animation.AnimationListener f4633Q;

    /* renamed from: R */
    private final Animation f4634R;

    /* renamed from: S */
    private final Animation f4635S;

    /* renamed from: f */
    private View f4636f;

    /* renamed from: g */
    AbstractC1066j f4637g;

    /* renamed from: h */
    boolean f4638h;

    /* renamed from: i */
    private int f4639i;

    /* renamed from: j */
    private float f4640j;

    /* renamed from: k */
    private float f4641k;

    /* renamed from: l */
    private final C1672p f4642l;

    /* renamed from: m */
    private final C1668l f4643m;

    /* renamed from: n */
    private final int[] f4644n;

    /* renamed from: o */
    private final int[] f4645o;

    /* renamed from: p */
    private boolean f4646p;

    /* renamed from: q */
    private int f4647q;

    /* renamed from: r */
    int f4648r;

    /* renamed from: s */
    private float f4649s;

    /* renamed from: t */
    private float f4650t;

    /* renamed from: u */
    private boolean f4651u;

    /* renamed from: v */
    private int f4652v;

    /* renamed from: w */
    boolean f4653w;

    /* renamed from: x */
    private boolean f4654x;

    /* renamed from: y */
    private final DecelerateInterpolator f4655y;

    /* renamed from: z */
    C1067a f4656z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$a.class */
    public class animationAnimation$AnimationListenerC1057a implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC1057a() {
            SwipeRefreshLayout.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            AbstractC1066j abstractC1066j;
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            if (!swipeRefreshLayout.f4638h) {
                swipeRefreshLayout.m31138q();
                return;
            }
            swipeRefreshLayout.f4623G.setAlpha(255);
            SwipeRefreshLayout.this.f4623G.start();
            SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
            if (swipeRefreshLayout2.f4629M && (abstractC1066j = swipeRefreshLayout2.f4637g) != null) {
                abstractC1066j.m31128a();
            }
            SwipeRefreshLayout swipeRefreshLayout3 = SwipeRefreshLayout.this;
            swipeRefreshLayout3.f4648r = swipeRefreshLayout3.f4656z.getTop();
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
    public class C1058b extends Animation {
        C1058b() {
            SwipeRefreshLayout.this = r4;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout.this.setAnimationProgress(f);
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$c.class */
    public class C1059c extends Animation {
        C1059c() {
            SwipeRefreshLayout.this = r4;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout.this.setAnimationProgress(1.0f - f);
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$d.class */
    public class C1060d extends Animation {

        /* renamed from: d */
        final /* synthetic */ int f4660d;

        /* renamed from: e */
        final /* synthetic */ int f4661e;

        C1060d(int i, int i2) {
            SwipeRefreshLayout.this = r4;
            this.f4660d = i;
            this.f4661e = i2;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            C1069b c1069b = SwipeRefreshLayout.this.f4623G;
            int i = this.f4660d;
            c1069b.setAlpha((int) (i + ((this.f4661e - i) * f)));
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$e */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$e.class */
    public class animationAnimation$AnimationListenerC1061e implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC1061e() {
            SwipeRefreshLayout.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            if (!swipeRefreshLayout.f4653w) {
                swipeRefreshLayout.m31132w(null);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$f */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$f.class */
    public class C1062f extends Animation {
        C1062f() {
            SwipeRefreshLayout.this = r4;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            int abs = !swipeRefreshLayout.f4631O ? swipeRefreshLayout.f4621E - Math.abs(swipeRefreshLayout.f4620D) : swipeRefreshLayout.f4621E;
            SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
            int i = swipeRefreshLayout2.f4618B;
            SwipeRefreshLayout.this.setTargetOffsetTopAndBottom((i + ((int) ((abs - i) * f))) - swipeRefreshLayout2.f4656z.getTop());
            SwipeRefreshLayout.this.f4623G.m31120e(1.0f - f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$g */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$g.class */
    public class C1063g extends Animation {
        C1063g() {
            SwipeRefreshLayout.this = r4;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout.this.m31140o(f);
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$h */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$h.class */
    public class C1064h extends Animation {
        C1064h() {
            SwipeRefreshLayout.this = r4;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            float f2 = swipeRefreshLayout.f4619C;
            swipeRefreshLayout.setAnimationProgress(f2 + ((-f2) * f));
            SwipeRefreshLayout.this.m31140o(f);
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$i */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$i.class */
    public interface AbstractC1065i {
        /* renamed from: a */
        boolean m31129a(SwipeRefreshLayout swipeRefreshLayout, View view);
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$j */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$j.class */
    public interface AbstractC1066j {
        /* renamed from: a */
        void m31128a();
    }

    public SwipeRefreshLayout(Context context) {
        this(context, null);
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4638h = false;
        this.f4640j = -1.0f;
        this.f4644n = new int[2];
        this.f4645o = new int[2];
        this.f4652v = -1;
        this.f4617A = -1;
        this.f4633Q = new animationAnimation$AnimationListenerC1057a();
        this.f4634R = new C1062f();
        this.f4635S = new C1063g();
        this.f4639i = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f4647q = getResources().getInteger(17694721);
        setWillNotDraw(false);
        this.f4655y = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f4630N = (int) (displayMetrics.density * 40.0f);
        m31145d();
        setChildrenDrawingOrderEnabled(true);
        int i = (int) (displayMetrics.density * 64.0f);
        this.f4621E = i;
        this.f4640j = i;
        this.f4642l = new C1672p(this);
        this.f4643m = new C1668l(this);
        setNestedScrollingEnabled(true);
        int i2 = -this.f4630N;
        this.f4648r = i2;
        this.f4620D = i2;
        m31140o(1.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f4616e);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private void m31148a(int i, Animation.AnimationListener animationListener) {
        this.f4618B = i;
        this.f4634R.reset();
        this.f4634R.setDuration(200L);
        this.f4634R.setInterpolator(this.f4655y);
        if (animationListener != null) {
            this.f4656z.m31126b(animationListener);
        }
        this.f4656z.clearAnimation();
        this.f4656z.startAnimation(this.f4634R);
    }

    /* renamed from: b */
    private void m31147b(int i, Animation.AnimationListener animationListener) {
        if (this.f4653w) {
            m31131x(i, animationListener);
            return;
        }
        this.f4618B = i;
        this.f4635S.reset();
        this.f4635S.setDuration(200L);
        this.f4635S.setInterpolator(this.f4655y);
        if (animationListener != null) {
            this.f4656z.m31126b(animationListener);
        }
        this.f4656z.clearAnimation();
        this.f4656z.startAnimation(this.f4635S);
    }

    /* renamed from: d */
    private void m31145d() {
        this.f4656z = new C1067a(getContext(), -328966);
        C1069b c1069b = new C1069b(getContext());
        this.f4623G = c1069b;
        c1069b.m31113l(1);
        this.f4656z.setImageDrawable(this.f4623G);
        this.f4656z.setVisibility(8);
        addView(this.f4656z);
    }

    /* renamed from: e */
    private void m31144e() {
        if (this.f4636f == null) {
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (!childAt.equals(this.f4656z)) {
                    this.f4636f = childAt;
                    return;
                }
            }
        }
    }

    /* renamed from: f */
    private void m31143f(float f) {
        if (f > this.f4640j) {
            m31137r(true, true);
            return;
        }
        this.f4638h = false;
        this.f4623G.m31115j(0.0f, 0.0f);
        animationAnimation$AnimationListenerC1061e animationanimation_animationlistenerc1061e = null;
        if (!this.f4653w) {
            animationanimation_animationlistenerc1061e = new animationAnimation$AnimationListenerC1061e();
        }
        m31147b(this.f4648r, animationanimation_animationlistenerc1061e);
        this.f4623G.m31121d(false);
    }

    /* renamed from: g */
    private boolean m31142g(Animation animation) {
        return animation != null && animation.hasStarted() && !animation.hasEnded();
    }

    /* renamed from: n */
    private void m31141n(float f) {
        this.f4623G.m31121d(true);
        float min = Math.min(1.0f, Math.abs(f / this.f4640j));
        float max = (((float) Math.max(min - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float abs = Math.abs(f);
        float f2 = this.f4640j;
        int i = this.f4622F;
        if (i <= 0) {
            i = this.f4631O ? this.f4621E - this.f4620D : this.f4621E;
        }
        float f3 = i;
        double max2 = Math.max(0.0f, Math.min(abs - f2, f3 * 2.0f) / f3) / 4.0f;
        float pow = ((float) (max2 - Math.pow(max2, 2.0d))) * 2.0f;
        int i2 = this.f4620D;
        int i3 = (int) ((f3 * min) + (f3 * pow * 2.0f));
        if (this.f4656z.getVisibility() != 0) {
            this.f4656z.setVisibility(0);
        }
        if (!this.f4653w) {
            this.f4656z.setScaleX(1.0f);
            this.f4656z.setScaleY(1.0f);
        }
        if (this.f4653w) {
            setAnimationProgress(Math.min(1.0f, f / this.f4640j));
        }
        if (f < this.f4640j) {
            if (this.f4623G.getAlpha() > 76 && !m31142g(this.f4626J)) {
                m31133v();
            }
        } else if (this.f4623G.getAlpha() < 255 && !m31142g(this.f4627K)) {
            m31134u();
        }
        this.f4623G.m31115j(0.0f, Math.min(0.8f, max * 0.8f));
        this.f4623G.m31120e(Math.min(1.0f, max));
        this.f4623G.m31118g((((max * 0.4f) - 0.25f) + (pow * 2.0f)) * 0.5f);
        setTargetOffsetTopAndBottom((i2 + i3) - this.f4648r);
    }

    /* renamed from: p */
    private void m31139p(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f4652v) {
            this.f4652v = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }

    /* renamed from: r */
    private void m31137r(boolean z, boolean z2) {
        if (this.f4638h != z) {
            this.f4629M = z2;
            m31144e();
            this.f4638h = z;
            if (z) {
                m31148a(this.f4648r, this.f4633Q);
            } else {
                m31132w(this.f4633Q);
            }
        }
    }

    /* renamed from: s */
    private Animation m31136s(int i, int i2) {
        C1060d c1060d = new C1060d(i, i2);
        c1060d.setDuration(300L);
        this.f4656z.m31126b(null);
        this.f4656z.clearAnimation();
        this.f4656z.startAnimation(c1060d);
        return c1060d;
    }

    private void setColorViewAlpha(int i) {
        this.f4656z.getBackground().setAlpha(i);
        this.f4623G.setAlpha(i);
    }

    /* renamed from: t */
    private void m31135t(float f) {
        float f2 = this.f4650t;
        int i = this.f4639i;
        if (f - f2 <= i || this.f4651u) {
            return;
        }
        this.f4649s = f2 + i;
        this.f4651u = true;
        this.f4623G.setAlpha(76);
    }

    /* renamed from: u */
    private void m31134u() {
        this.f4627K = m31136s(this.f4623G.getAlpha(), 255);
    }

    /* renamed from: v */
    private void m31133v() {
        this.f4626J = m31136s(this.f4623G.getAlpha(), 76);
    }

    /* renamed from: x */
    private void m31131x(int i, Animation.AnimationListener animationListener) {
        this.f4618B = i;
        this.f4619C = this.f4656z.getScaleX();
        C1064h c1064h = new C1064h();
        this.f4628L = c1064h;
        c1064h.setDuration(150L);
        if (animationListener != null) {
            this.f4656z.m31126b(animationListener);
        }
        this.f4656z.clearAnimation();
        this.f4656z.startAnimation(this.f4628L);
    }

    /* renamed from: y */
    private void m31130y(Animation.AnimationListener animationListener) {
        this.f4656z.setVisibility(0);
        this.f4623G.setAlpha(255);
        C1058b c1058b = new C1058b();
        this.f4624H = c1058b;
        c1058b.setDuration(this.f4647q);
        if (animationListener != null) {
            this.f4656z.m31126b(animationListener);
        }
        this.f4656z.clearAnimation();
        this.f4656z.startAnimation(this.f4624H);
    }

    /* renamed from: c */
    public boolean m31146c() {
        AbstractC1065i abstractC1065i = this.f4632P;
        if (abstractC1065i != null) {
            return abstractC1065i.m31129a(this, this.f4636f);
        }
        View view = this.f4636f;
        return view instanceof ListView ? C0647i.m33095a((ListView) view, -1) : view.canScrollVertically(-1);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f4643m.m29384a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f4643m.m29383b(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.f4643m.m29382c(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f4643m.m29379f(i, i2, i3, i4, iArr);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        int i3 = this.f4617A;
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
        return this.f4642l.m29360a();
    }

    public int getProgressCircleDiameter() {
        return this.f4630N;
    }

    public int getProgressViewEndOffset() {
        return this.f4621E;
    }

    public int getProgressViewStartOffset() {
        return this.f4620D;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.f4643m.m29375j();
    }

    @Override // android.view.View, p020b.p041h.p050l.AbstractC1667k
    public boolean isNestedScrollingEnabled() {
        return this.f4643m.m29373l();
    }

    /* renamed from: o */
    void m31140o(float f) {
        int i = this.f4618B;
        setTargetOffsetTopAndBottom((i + ((int) ((this.f4620D - i) * f))) - this.f4656z.getTop());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m31138q();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        m31144e();
        int actionMasked = motionEvent.getActionMasked();
        if (this.f4654x && actionMasked == 0) {
            this.f4654x = false;
        }
        if (!isEnabled() || this.f4654x || m31146c() || this.f4638h || this.f4646p) {
            return false;
        }
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int i = this.f4652v;
                    if (i == -1) {
                        Log.e(f4615d, "Got ACTION_MOVE event but don't have an active pointer id.");
                        return false;
                    }
                    int findPointerIndex = motionEvent.findPointerIndex(i);
                    if (findPointerIndex < 0) {
                        return false;
                    }
                    m31135t(motionEvent.getY(findPointerIndex));
                } else if (actionMasked != 3) {
                    if (actionMasked == 6) {
                        m31139p(motionEvent);
                    }
                }
            }
            this.f4651u = false;
            this.f4652v = -1;
        } else {
            setTargetOffsetTopAndBottom(this.f4620D - this.f4656z.getTop());
            int pointerId = motionEvent.getPointerId(0);
            this.f4652v = pointerId;
            this.f4651u = false;
            int findPointerIndex2 = motionEvent.findPointerIndex(pointerId);
            if (findPointerIndex2 < 0) {
                return false;
            }
            this.f4650t = motionEvent.getY(findPointerIndex2);
        }
        return this.f4651u;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.f4636f == null) {
            m31144e();
        }
        View view = this.f4636f;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.f4656z.getMeasuredWidth();
        int measuredHeight2 = this.f4656z.getMeasuredHeight();
        C1067a c1067a = this.f4656z;
        int i5 = measuredWidth / 2;
        int i6 = measuredWidth2 / 2;
        int i7 = this.f4648r;
        c1067a.layout(i5 - i6, i7, i5 + i6, measuredHeight2 + i7);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f4636f == null) {
            m31144e();
        }
        View view = this.f4636f;
        if (view == null) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.f4656z.measure(View.MeasureSpec.makeMeasureSpec(this.f4630N, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f4630N, 1073741824));
        this.f4617A = -1;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            if (getChildAt(i3) == this.f4656z) {
                this.f4617A = i3;
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (i2 > 0) {
            float f = this.f4641k;
            if (f > 0.0f) {
                float f2 = i2;
                if (f2 > f) {
                    iArr[1] = i2 - ((int) f);
                    this.f4641k = 0.0f;
                } else {
                    this.f4641k = f - f2;
                    iArr[1] = i2;
                }
                m31141n(this.f4641k);
            }
        }
        if (this.f4631O && i2 > 0 && this.f4641k == 0.0f && Math.abs(i2 - iArr[1]) > 0) {
            this.f4656z.setVisibility(8);
        }
        int[] iArr2 = this.f4644n;
        if (dispatchNestedPreScroll(i - iArr[0], i2 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        dispatchNestedScroll(i, i2, i3, i4, this.f4645o);
        int i5 = i4 + this.f4645o[1];
        if (i5 >= 0 || m31146c()) {
            return;
        }
        float abs = this.f4641k + Math.abs(i5);
        this.f4641k = abs;
        m31141n(abs);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f4642l.m29359b(view, view2, i);
        startNestedScroll(i & 2);
        this.f4641k = 0.0f;
        this.f4646p = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return isEnabled() && !this.f4654x && !this.f4638h && (i & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public void onStopNestedScroll(View view) {
        this.f4642l.m29357d(view);
        this.f4646p = false;
        float f = this.f4641k;
        if (f > 0.0f) {
            m31143f(f);
            this.f4641k = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.f4654x && actionMasked == 0) {
            this.f4654x = false;
        }
        if (!isEnabled() || this.f4654x || m31146c() || this.f4638h || this.f4646p) {
            return false;
        }
        if (actionMasked == 0) {
            this.f4652v = motionEvent.getPointerId(0);
            this.f4651u = false;
            return true;
        } else if (actionMasked == 1) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f4652v);
            if (findPointerIndex < 0) {
                Log.e(f4615d, "Got ACTION_UP event but don't have an active pointer id.");
                return false;
            }
            if (this.f4651u) {
                float y = motionEvent.getY(findPointerIndex);
                float f = this.f4649s;
                this.f4651u = false;
                m31143f((y - f) * 0.5f);
            }
            this.f4652v = -1;
            return false;
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                return false;
            }
            if (actionMasked != 5) {
                if (actionMasked != 6) {
                    return true;
                }
                m31139p(motionEvent);
                return true;
            }
            int actionIndex = motionEvent.getActionIndex();
            if (actionIndex < 0) {
                Log.e(f4615d, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                return false;
            }
            this.f4652v = motionEvent.getPointerId(actionIndex);
            return true;
        } else {
            int findPointerIndex2 = motionEvent.findPointerIndex(this.f4652v);
            if (findPointerIndex2 < 0) {
                Log.e(f4615d, "Got ACTION_MOVE event but have an invalid active pointer id.");
                return false;
            }
            float y2 = motionEvent.getY(findPointerIndex2);
            m31135t(y2);
            if (!this.f4651u) {
                return true;
            }
            float f2 = (y2 - this.f4649s) * 0.5f;
            if (f2 <= 0.0f) {
                return false;
            }
            m31141n(f2);
            return true;
        }
    }

    /* renamed from: q */
    void m31138q() {
        this.f4656z.clearAnimation();
        this.f4623G.stop();
        this.f4656z.setVisibility(8);
        setColorViewAlpha(255);
        if (this.f4653w) {
            setAnimationProgress(0.0f);
        } else {
            setTargetOffsetTopAndBottom(this.f4620D - this.f4648r);
        }
        this.f4648r = this.f4656z.getTop();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (Build.VERSION.SDK_INT >= 21 || !(this.f4636f instanceof AbsListView)) {
            View view = this.f4636f;
            if (view != null && !C1679w.m29312W(view)) {
                return;
            }
            super.requestDisallowInterceptTouchEvent(z);
        }
    }

    void setAnimationProgress(float f) {
        this.f4656z.setScaleX(f);
        this.f4656z.setScaleY(f);
    }

    @Deprecated
    public void setColorScheme(int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(int... iArr) {
        m31144e();
        this.f4623G.m31119f(iArr);
    }

    public void setColorSchemeResources(int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = C0586a.m33350d(context, iArr[i]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i) {
        this.f4640j = i;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z) {
            m31138q();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.f4643m.m29372m(z);
    }

    public void setOnChildScrollUpCallback(AbstractC1065i abstractC1065i) {
        this.f4632P = abstractC1065i;
    }

    public void setOnRefreshListener(AbstractC1066j abstractC1066j) {
        this.f4637g = abstractC1066j;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i) {
        setProgressBackgroundColorSchemeResource(i);
    }

    public void setProgressBackgroundColorSchemeColor(int i) {
        this.f4656z.setBackgroundColor(i);
    }

    public void setProgressBackgroundColorSchemeResource(int i) {
        setProgressBackgroundColorSchemeColor(C0586a.m33350d(getContext(), i));
    }

    public void setProgressViewEndTarget(boolean z, int i) {
        this.f4621E = i;
        this.f4653w = z;
        this.f4656z.invalidate();
    }

    public void setProgressViewOffset(boolean z, int i, int i2) {
        this.f4653w = z;
        this.f4620D = i;
        this.f4621E = i2;
        this.f4631O = true;
        m31138q();
        this.f4638h = false;
    }

    public void setRefreshing(boolean z) {
        if (!z || this.f4638h == z) {
            m31137r(z, false);
            return;
        }
        this.f4638h = z;
        setTargetOffsetTopAndBottom((!this.f4631O ? this.f4621E + this.f4620D : this.f4621E) - this.f4648r);
        this.f4629M = false;
        m31130y(this.f4633Q);
    }

    public void setSize(int i) {
        if (i == 0 || i == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i == 0) {
                this.f4630N = (int) (displayMetrics.density * 56.0f);
            } else {
                this.f4630N = (int) (displayMetrics.density * 40.0f);
            }
            this.f4656z.setImageDrawable(null);
            this.f4623G.m31113l(i);
            this.f4656z.setImageDrawable(this.f4623G);
        }
    }

    public void setSlingshotDistance(int i) {
        this.f4622F = i;
    }

    void setTargetOffsetTopAndBottom(int i) {
        this.f4656z.bringToFront();
        C1679w.m29305b0(this.f4656z, i);
        this.f4648r = this.f4656z.getTop();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.f4643m.m29370o(i);
    }

    @Override // android.view.View, p020b.p041h.p050l.AbstractC1667k
    public void stopNestedScroll() {
        this.f4643m.m29368q();
    }

    /* renamed from: w */
    void m31132w(Animation.AnimationListener animationListener) {
        C1059c c1059c = new C1059c();
        this.f4625I = c1059c;
        c1059c.setDuration(150L);
        this.f4656z.m31126b(animationListener);
        this.f4656z.clearAnimation();
        this.f4656z.startAnimation(this.f4625I);
    }
}
