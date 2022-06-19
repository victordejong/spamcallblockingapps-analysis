package androidx.recyclerview.widget;

import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.core.p008os.C0632i;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.widget.C0945a;
import androidx.recyclerview.widget.C0948b;
import androidx.recyclerview.widget.C0980k;
import androidx.recyclerview.widget.C0986o;
import androidx.recyclerview.widget.C0989p;
import androidx.recyclerview.widget.RunnableC0967e;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p020b.p041h.p049k.C1597h;
import p020b.p041h.p050l.AbstractC1667k;
import p020b.p041h.p050l.C1599a;
import p020b.p041h.p050l.C1666j;
import p020b.p041h.p050l.C1668l;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.C1693x;
import p020b.p041h.p050l.p051f0.C1633b;
import p020b.p041h.p050l.p051f0.C1634c;
import p020b.p069q.C1768a;
import p020b.p069q.C1769b;
import p020b.p069q.C1770c;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView.class */
public class RecyclerView extends ViewGroup implements AbstractC1667k {

    /* renamed from: d */
    private static final int[] f3962d = {16843830};

    /* renamed from: e */
    static final boolean f3963e;

    /* renamed from: f */
    static final boolean f3964f;

    /* renamed from: g */
    static final boolean f3965g;

    /* renamed from: h */
    static final boolean f3966h;

    /* renamed from: i */
    private static final boolean f3967i;

    /* renamed from: j */
    private static final boolean f3968j;

    /* renamed from: k */
    private static final Class<?>[] f3969k;

    /* renamed from: l */
    static final Interpolator f3970l;

    /* renamed from: A */
    final List<AbstractC0933v> f3971A;

    /* renamed from: A0 */
    boolean f3972A0;

    /* renamed from: B */
    final ArrayList<AbstractC0920n> f3973B;

    /* renamed from: B0 */
    C0980k f3974B0;

    /* renamed from: C */
    private final ArrayList<AbstractC0928r> f3975C;

    /* renamed from: C0 */
    private AbstractC0913j f3976C0;

    /* renamed from: D */
    private AbstractC0928r f3977D;

    /* renamed from: D0 */
    private final int[] f3978D0;

    /* renamed from: E */
    boolean f3979E;

    /* renamed from: E0 */
    private C1668l f3980E0;

    /* renamed from: F */
    boolean f3981F;

    /* renamed from: F0 */
    private final int[] f3982F0;

    /* renamed from: G */
    boolean f3983G;

    /* renamed from: G0 */
    private final int[] f3984G0;

    /* renamed from: H */
    boolean f3985H;

    /* renamed from: H0 */
    final int[] f3986H0;

    /* renamed from: I */
    private int f3987I;

    /* renamed from: I0 */
    final List<AbstractC0905b0> f3988I0;

    /* renamed from: J */
    boolean f3989J;

    /* renamed from: J0 */
    private Runnable f3990J0;

    /* renamed from: K */
    boolean f3991K;

    /* renamed from: K0 */
    private boolean f3992K0;

    /* renamed from: L */
    private boolean f3993L;

    /* renamed from: L0 */
    private int f3994L0;

    /* renamed from: M */
    private int f3995M;

    /* renamed from: M0 */
    private int f3996M0;

    /* renamed from: N */
    boolean f3997N;

    /* renamed from: N0 */
    private final C0989p.AbstractC0991b f3998N0;

    /* renamed from: O */
    private final AccessibilityManager f3999O;

    /* renamed from: P */
    private List<AbstractC0926p> f4000P;

    /* renamed from: Q */
    boolean f4001Q;

    /* renamed from: R */
    boolean f4002R;

    /* renamed from: S */
    private int f4003S;

    /* renamed from: T */
    private int f4004T;

    /* renamed from: U */
    private C0914k f4005U;

    /* renamed from: V */
    private EdgeEffect f4006V;

    /* renamed from: W */
    private EdgeEffect f4007W;

    /* renamed from: a0 */
    private EdgeEffect f4008a0;

    /* renamed from: b0 */
    private EdgeEffect f4009b0;

    /* renamed from: c0 */
    AbstractC0915l f4010c0;

    /* renamed from: d0 */
    private int f4011d0;

    /* renamed from: e0 */
    private int f4012e0;

    /* renamed from: f0 */
    private VelocityTracker f4013f0;

    /* renamed from: g0 */
    private int f4014g0;

    /* renamed from: h0 */
    private int f4015h0;

    /* renamed from: i0 */
    private int f4016i0;

    /* renamed from: j0 */
    private int f4017j0;

    /* renamed from: k0 */
    private int f4018k0;

    /* renamed from: l0 */
    private AbstractC0927q f4019l0;

    /* renamed from: m */
    private final C0934w f4020m;

    /* renamed from: m0 */
    private final int f4021m0;

    /* renamed from: n */
    final C0932u f4022n;

    /* renamed from: n0 */
    private final int f4023n0;

    /* renamed from: o */
    SavedState f4024o;

    /* renamed from: o0 */
    private float f4025o0;

    /* renamed from: p */
    C0945a f4026p;

    /* renamed from: p0 */
    private float f4027p0;

    /* renamed from: q */
    C0948b f4028q;

    /* renamed from: q0 */
    private boolean f4029q0;

    /* renamed from: r */
    final C0989p f4030r;

    /* renamed from: r0 */
    final RunnableC0903a0 f4031r0;

    /* renamed from: s */
    boolean f4032s;

    /* renamed from: s0 */
    RunnableC0967e f4033s0;

    /* renamed from: t */
    final Runnable f4034t;

    /* renamed from: t0 */
    RunnableC0967e.C0969b f4035t0;

    /* renamed from: u */
    final Rect f4036u;

    /* renamed from: u0 */
    final C0938y f4037u0;

    /* renamed from: v */
    private final Rect f4038v;

    /* renamed from: v0 */
    private AbstractC0929s f4039v0;

    /* renamed from: w */
    final RectF f4040w;

    /* renamed from: w0 */
    private List<AbstractC0929s> f4041w0;

    /* renamed from: x */
    Adapter f4042x;

    /* renamed from: x0 */
    boolean f4043x0;

    /* renamed from: y */
    AbstractC0921o f4044y;

    /* renamed from: y0 */
    boolean f4045y0;

    /* renamed from: z */
    AbstractC0933v f4046z;

    /* renamed from: z0 */
    private AbstractC0915l.AbstractC0917b f4047z0;

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$Adapter.class */
    public static abstract class Adapter<VH extends AbstractC0905b0> {

        /* renamed from: a */
        private final C0911h f4048a = new C0911h();

        /* renamed from: b */
        private boolean f4049b = false;

        /* renamed from: c */
        private StateRestorationPolicy f4050c = StateRestorationPolicy.ALLOW;

        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy.class */
        public enum StateRestorationPolicy {
            ALLOW,
            PREVENT_WHEN_EMPTY,
            PREVENT
        }

        /* renamed from: a */
        public final void m31972a(VH vh, int i) {
            boolean z = vh.f4088t == null;
            if (z) {
                vh.f4072d = i;
                if (m31968h()) {
                    vh.f4074f = mo4500e(i);
                }
                vh.m31938F(1, 519);
                C0632i.m33186a("RV OnBindView");
            }
            vh.f4088t = this;
            mo22213q(vh, i, vh.m31917o());
            if (z) {
                vh.m31928d();
                ViewGroup.LayoutParams layoutParams = vh.f4070b.getLayoutParams();
                if (layoutParams instanceof LayoutParams) {
                    ((LayoutParams) layoutParams).f4057c = true;
                }
                C0632i.m33185b();
            }
        }

        /* renamed from: b */
        boolean m31971b() {
            int i = C0910g.f4092a[this.f4050c.ordinal()];
            boolean z = false;
            if (i != 1) {
                if (i != 2) {
                    return true;
                }
                z = false;
                if (mo4501d() > 0) {
                    z = true;
                }
            }
            return z;
        }

        /* renamed from: c */
        public final VH m31970c(ViewGroup viewGroup, int i) {
            try {
                C0632i.m33186a("RV CreateView");
                VH mo4497r = mo4497r(viewGroup, i);
                if (mo4497r.f4070b.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                mo4497r.f4075g = i;
                C0632i.m33185b();
                return mo4497r;
            } catch (Throwable th) {
                C0632i.m33185b();
                throw th;
            }
        }

        /* renamed from: d */
        public abstract int mo4501d();

        /* renamed from: e */
        public long mo4500e(int i) {
            return -1L;
        }

        /* renamed from: f */
        public int mo4499f(int i) {
            return 0;
        }

        /* renamed from: g */
        public final boolean m31969g() {
            return this.f4048a.m31904a();
        }

        /* renamed from: h */
        public final boolean m31968h() {
            return this.f4049b;
        }

        /* renamed from: i */
        public final void m31967i() {
            this.f4048a.m31903b();
        }

        /* renamed from: j */
        public final void m31966j(int i) {
            this.f4048a.m31900e(i, 1);
        }

        /* renamed from: k */
        public final void m31965k(int i, int i2) {
            this.f4048a.m31902c(i, i2);
        }

        /* renamed from: l */
        public final void m31964l(int i, int i2) {
            this.f4048a.m31900e(i, i2);
        }

        /* renamed from: m */
        public final void m31963m(int i, int i2) {
            this.f4048a.m31899f(i, i2);
        }

        /* renamed from: n */
        public final void m31962n(int i) {
            this.f4048a.m31899f(i, 1);
        }

        /* renamed from: o */
        public void mo22214o(RecyclerView recyclerView) {
        }

        /* renamed from: p */
        public abstract void mo4498p(VH vh, int i);

        /* renamed from: q */
        public void mo22213q(VH vh, int i, List<Object> list) {
            mo4498p(vh, i);
        }

        /* renamed from: r */
        public abstract VH mo4497r(ViewGroup viewGroup, int i);

        /* renamed from: s */
        public void mo22212s(RecyclerView recyclerView) {
        }

        /* renamed from: t */
        public boolean m31961t(VH vh) {
            return false;
        }

        /* renamed from: u */
        public void mo22211u(VH vh) {
        }

        /* renamed from: v */
        public void mo22210v(VH vh) {
        }

        /* renamed from: w */
        public void mo4496w(VH vh) {
        }

        /* renamed from: x */
        public void m31960x(AbstractC0912i abstractC0912i) {
            this.f4048a.registerObserver(abstractC0912i);
        }

        /* renamed from: y */
        public void m31959y(boolean z) {
            if (!m31969g()) {
                this.f4049b = z;
                return;
            }
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }

        /* renamed from: z */
        public void m31958z(AbstractC0912i abstractC0912i) {
            this.f4048a.unregisterObserver(abstractC0912i);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        AbstractC0905b0 f4055a;

        /* renamed from: b */
        final Rect f4056b = new Rect();

        /* renamed from: c */
        boolean f4057c = true;

        /* renamed from: d */
        boolean f4058d = false;

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

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
        }

        /* renamed from: a */
        public int m31957a() {
            return this.f4055a.m31919m();
        }

        /* renamed from: b */
        public boolean m31956b() {
            return this.f4055a.m31907y();
        }

        /* renamed from: c */
        public boolean m31955c() {
            return this.f4055a.m31910v();
        }

        /* renamed from: d */
        public boolean m31954d() {
            return this.f4055a.m31912t();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0901a();

        /* renamed from: f */
        Parcelable f4059f;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$SavedState$a.class */
        class C0901a implements Parcelable.ClassLoaderCreator<SavedState> {
            C0901a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f4059f = parcel.readParcelable(classLoader == null ? AbstractC0921o.class.getClassLoader() : classLoader);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: b */
        void m31953b(SavedState savedState) {
            this.f4059f = savedState.f4059f;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.f4059f, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a.class */
    public class RunnableC0902a implements Runnable {
        RunnableC0902a() {
            RecyclerView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = RecyclerView.this;
            if (!recyclerView.f3985H || recyclerView.isLayoutRequested()) {
                return;
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            if (!recyclerView2.f3979E) {
                recyclerView2.requestLayout();
            } else if (recyclerView2.f3991K) {
                recyclerView2.f3989J = true;
            } else {
                recyclerView2.m31985v();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$a0 */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a0.class */
    public class RunnableC0903a0 implements Runnable {

        /* renamed from: d */
        private int f4061d;

        /* renamed from: e */
        private int f4062e;

        /* renamed from: f */
        OverScroller f4063f;

        /* renamed from: g */
        Interpolator f4064g;

        /* renamed from: h */
        private boolean f4065h = false;

        /* renamed from: i */
        private boolean f4066i = false;

        RunnableC0903a0() {
            RecyclerView.this = r7;
            Interpolator interpolator = RecyclerView.f3970l;
            this.f4064g = interpolator;
            this.f4063f = new OverScroller(r7.getContext(), interpolator);
        }

        /* renamed from: a */
        private int m31949a(int i, int i2) {
            int abs = Math.abs(i);
            int abs2 = Math.abs(i2);
            boolean z = abs > abs2;
            RecyclerView recyclerView = RecyclerView.this;
            return Math.min((int) ((((z ? abs : abs2) / (z ? recyclerView.getWidth() : recyclerView.getHeight())) + 1.0f) * 300.0f), 2000);
        }

        /* renamed from: c */
        private void m31947c() {
            RecyclerView.this.removeCallbacks(this);
            C1679w.m29289j0(RecyclerView.this, this);
        }

        /* renamed from: b */
        public void m31948b(int i, int i2) {
            RecyclerView.this.setScrollState(2);
            this.f4062e = 0;
            this.f4061d = 0;
            Interpolator interpolator = this.f4064g;
            Interpolator interpolator2 = RecyclerView.f3970l;
            if (interpolator != interpolator2) {
                this.f4064g = interpolator2;
                this.f4063f = new OverScroller(RecyclerView.this.getContext(), interpolator2);
            }
            this.f4063f.fling(0, 0, i, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            m31946d();
        }

        /* renamed from: d */
        void m31946d() {
            if (this.f4065h) {
                this.f4066i = true;
            } else {
                m31947c();
            }
        }

        /* renamed from: e */
        public void m31945e(int i, int i2, int i3, Interpolator interpolator) {
            int i4 = i3;
            if (i3 == Integer.MIN_VALUE) {
                i4 = m31949a(i, i2);
            }
            Interpolator interpolator2 = interpolator;
            if (interpolator == null) {
                interpolator2 = RecyclerView.f3970l;
            }
            if (this.f4064g != interpolator2) {
                this.f4064g = interpolator2;
                this.f4063f = new OverScroller(RecyclerView.this.getContext(), interpolator2);
            }
            this.f4062e = 0;
            this.f4061d = 0;
            RecyclerView.this.setScrollState(2);
            this.f4063f.startScroll(0, 0, i, i2, i4);
            if (Build.VERSION.SDK_INT < 23) {
                this.f4063f.computeScrollOffset();
            }
            m31946d();
        }

        /* renamed from: f */
        public void m31944f() {
            RecyclerView.this.removeCallbacks(this);
            this.f4063f.abortAnimation();
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            int i2;
            int i3;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f4044y == null) {
                m31944f();
                return;
            }
            this.f4066i = false;
            this.f4065h = true;
            recyclerView.m31985v();
            OverScroller overScroller = this.f4063f;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i4 = currX - this.f4061d;
                int i5 = currY - this.f4062e;
                this.f4061d = currX;
                this.f4062e = currY;
                RecyclerView recyclerView2 = RecyclerView.this;
                int[] iArr = recyclerView2.f3986H0;
                iArr[0] = 0;
                iArr[1] = 0;
                int i6 = i4;
                int i7 = i5;
                if (recyclerView2.m32085G(i4, i5, iArr, null, 1)) {
                    int[] iArr2 = RecyclerView.this.f3986H0;
                    i6 = i4 - iArr2[0];
                    i7 = i5 - iArr2[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.m31988u(i6, i7);
                }
                RecyclerView recyclerView3 = RecyclerView.this;
                if (recyclerView3.f4042x != null) {
                    int[] iArr3 = recyclerView3.f3986H0;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    recyclerView3.m32025h1(i6, i7, iArr3);
                    RecyclerView recyclerView4 = RecyclerView.this;
                    int[] iArr4 = recyclerView4.f3986H0;
                    int i8 = iArr4[0];
                    int i9 = iArr4[1];
                    int i10 = i6 - i8;
                    int i11 = i7 - i9;
                    AbstractC0935x abstractC0935x = recyclerView4.f4044y.f4110g;
                    i6 = i10;
                    i = i9;
                    i3 = i8;
                    i2 = i11;
                    if (abstractC0935x != null) {
                        i6 = i10;
                        i = i9;
                        i3 = i8;
                        i2 = i11;
                        if (!abstractC0935x.m31717g()) {
                            i6 = i10;
                            i = i9;
                            i3 = i8;
                            i2 = i11;
                            if (abstractC0935x.m31716h()) {
                                int m31703b = RecyclerView.this.f4037u0.m31703b();
                                if (m31703b == 0) {
                                    abstractC0935x.m31710r();
                                    i6 = i10;
                                    i = i9;
                                    i3 = i8;
                                    i2 = i11;
                                } else if (abstractC0935x.m31718f() >= m31703b) {
                                    abstractC0935x.m31712p(m31703b - 1);
                                    abstractC0935x.m31714j(i8, i9);
                                    i6 = i10;
                                    i = i9;
                                    i3 = i8;
                                    i2 = i11;
                                } else {
                                    abstractC0935x.m31714j(i8, i9);
                                    i6 = i10;
                                    i = i9;
                                    i3 = i8;
                                    i2 = i11;
                                }
                            }
                        }
                    }
                } else {
                    i = 0;
                    i2 = i7;
                    i3 = 0;
                }
                if (!RecyclerView.this.f3973B.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView recyclerView5 = RecyclerView.this;
                int[] iArr5 = recyclerView5.f3986H0;
                iArr5[0] = 0;
                iArr5[1] = 0;
                recyclerView5.m32083H(i3, i, i6, i2, null, 1, iArr5);
                RecyclerView recyclerView6 = RecyclerView.this;
                int[] iArr6 = recyclerView6.f3986H0;
                int i12 = i6 - iArr6[0];
                int i13 = i2 - iArr6[1];
                if (i3 != 0 || i != 0) {
                    recyclerView6.m32079J(i3, i);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i12 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i13 != 0));
                AbstractC0935x abstractC0935x2 = RecyclerView.this.f4044y.f4110g;
                if ((abstractC0935x2 != null && abstractC0935x2.m31717g()) || !z) {
                    m31946d();
                    RecyclerView recyclerView7 = RecyclerView.this;
                    RunnableC0967e runnableC0967e = recyclerView7.f4033s0;
                    if (runnableC0967e != null) {
                        runnableC0967e.m31435f(recyclerView7, i3, i);
                    }
                } else {
                    if (RecyclerView.this.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        int i14 = i12 < 0 ? -currVelocity : i12 > 0 ? currVelocity : 0;
                        if (i13 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i13 <= 0) {
                            currVelocity = 0;
                        }
                        RecyclerView.this.m32047a(i14, currVelocity);
                    }
                    if (RecyclerView.f3966h) {
                        RecyclerView.this.f4035t0.m31428b();
                    }
                }
            }
            AbstractC0935x abstractC0935x3 = RecyclerView.this.f4044y.f4110g;
            if (abstractC0935x3 != null && abstractC0935x3.m31717g()) {
                abstractC0935x3.m31714j(0, 0);
            }
            this.f4065h = false;
            if (this.f4066i) {
                m31947c();
                return;
            }
            RecyclerView.this.setScrollState(0);
            RecyclerView.this.m31986u1(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$b.class */
    public class RunnableC0904b implements Runnable {
        RunnableC0904b() {
            RecyclerView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC0915l abstractC0915l = RecyclerView.this.f4010c0;
            if (abstractC0915l != null) {
                abstractC0915l.mo31465u();
            }
            RecyclerView.this.f3972A0 = false;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$b0 */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$b0.class */
    public static abstract class AbstractC0905b0 {

        /* renamed from: a */
        private static final List<Object> f4069a = Collections.emptyList();

        /* renamed from: b */
        public final View f4070b;

        /* renamed from: c */
        WeakReference<RecyclerView> f4071c;

        /* renamed from: k */
        int f4079k;

        /* renamed from: s */
        RecyclerView f4087s;

        /* renamed from: t */
        Adapter<? extends AbstractC0905b0> f4088t;

        /* renamed from: d */
        int f4072d = -1;

        /* renamed from: e */
        int f4073e = -1;

        /* renamed from: f */
        long f4074f = -1;

        /* renamed from: g */
        int f4075g = -1;

        /* renamed from: h */
        int f4076h = -1;

        /* renamed from: i */
        AbstractC0905b0 f4077i = null;

        /* renamed from: j */
        AbstractC0905b0 f4078j = null;

        /* renamed from: l */
        List<Object> f4080l = null;

        /* renamed from: m */
        List<Object> f4081m = null;

        /* renamed from: n */
        private int f4082n = 0;

        /* renamed from: o */
        C0932u f4083o = null;

        /* renamed from: p */
        boolean f4084p = false;

        /* renamed from: q */
        private int f4085q = 0;

        /* renamed from: r */
        int f4086r = -1;

        public AbstractC0905b0(View view) {
            if (view != null) {
                this.f4070b = view;
                return;
            }
            throw new IllegalArgumentException("itemView may not be null");
        }

        /* renamed from: g */
        private void m31925g() {
            if (this.f4080l == null) {
                ArrayList arrayList = new ArrayList();
                this.f4080l = arrayList;
                this.f4081m = Collections.unmodifiableList(arrayList);
            }
        }

        /* renamed from: A */
        void m31943A(int i, boolean z) {
            if (this.f4073e == -1) {
                this.f4073e = this.f4072d;
            }
            if (this.f4076h == -1) {
                this.f4076h = this.f4072d;
            }
            if (z) {
                this.f4076h += i;
            }
            this.f4072d += i;
            if (this.f4070b.getLayoutParams() != null) {
                ((LayoutParams) this.f4070b.getLayoutParams()).f4057c = true;
            }
        }

        /* renamed from: B */
        void m31942B(RecyclerView recyclerView) {
            int i = this.f4086r;
            if (i != -1) {
                this.f4085q = i;
            } else {
                this.f4085q = C1679w.m29350A(this.f4070b);
            }
            recyclerView.m32016k1(this, 4);
        }

        /* renamed from: C */
        void m31941C(RecyclerView recyclerView) {
            recyclerView.m32016k1(this, this.f4085q);
            this.f4085q = 0;
        }

        /* renamed from: D */
        void m31940D() {
            this.f4079k = 0;
            this.f4072d = -1;
            this.f4073e = -1;
            this.f4074f = -1L;
            this.f4076h = -1;
            this.f4082n = 0;
            this.f4077i = null;
            this.f4078j = null;
            m31928d();
            this.f4085q = 0;
            this.f4086r = -1;
            RecyclerView.m31994s(this);
        }

        /* renamed from: E */
        void m31939E() {
            if (this.f4073e == -1) {
                this.f4073e = this.f4072d;
            }
        }

        /* renamed from: F */
        void m31938F(int i, int i2) {
            this.f4079k = (i & i2) | (this.f4079k & (i2 ^ (-1)));
        }

        /* renamed from: G */
        public final void m31937G(boolean z) {
            int i = this.f4082n;
            int i2 = z ? i - 1 : i + 1;
            this.f4082n = i2;
            if (i2 < 0) {
                this.f4082n = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            } else if (!z && i2 == 1) {
                this.f4079k |= 16;
            } else if (!z || i2 != 0) {
            } else {
                this.f4079k &= -17;
            }
        }

        /* renamed from: H */
        void m31936H(C0932u c0932u, boolean z) {
            this.f4083o = c0932u;
            this.f4084p = z;
        }

        /* renamed from: I */
        boolean m31935I() {
            return (this.f4079k & 16) != 0;
        }

        /* renamed from: J */
        public boolean m31934J() {
            return (this.f4079k & 128) != 0;
        }

        /* renamed from: K */
        void m31933K() {
            this.f4083o.m31755J(this);
        }

        /* renamed from: L */
        boolean m31932L() {
            return (this.f4079k & 32) != 0;
        }

        /* renamed from: a */
        void m31931a(Object obj) {
            if (obj == null) {
                m31930b(1024);
            } else if ((1024 & this.f4079k) != 0) {
            } else {
                m31925g();
                this.f4080l.add(obj);
            }
        }

        /* renamed from: b */
        void m31930b(int i) {
            this.f4079k = i | this.f4079k;
        }

        /* renamed from: c */
        void m31929c() {
            this.f4073e = -1;
            this.f4076h = -1;
        }

        /* renamed from: d */
        void m31928d() {
            List<Object> list = this.f4080l;
            if (list != null) {
                list.clear();
            }
            this.f4079k &= -1025;
        }

        /* renamed from: e */
        void m31927e() {
            this.f4079k &= -33;
        }

        /* renamed from: f */
        void m31926f() {
            this.f4079k &= -257;
        }

        /* renamed from: h */
        boolean m31924h() {
            return (this.f4079k & 16) == 0 && C1679w.m29316S(this.f4070b);
        }

        /* renamed from: i */
        void m31923i(int i, int i2, boolean z) {
            m31930b(8);
            m31943A(i2, z);
            this.f4072d = i;
        }

        /* renamed from: j */
        public final int m31922j() {
            RecyclerView recyclerView = this.f4087s;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.m32041c0(this);
        }

        /* renamed from: k */
        public final long m31921k() {
            return this.f4074f;
        }

        /* renamed from: l */
        public final int m31920l() {
            return this.f4075g;
        }

        /* renamed from: m */
        public final int m31919m() {
            int i = this.f4076h;
            int i2 = i;
            if (i == -1) {
                i2 = this.f4072d;
            }
            return i2;
        }

        /* renamed from: n */
        public final int m31918n() {
            return this.f4073e;
        }

        /* renamed from: o */
        List<Object> m31917o() {
            if ((this.f4079k & 1024) == 0) {
                List<Object> list = this.f4080l;
                return (list == null || list.size() == 0) ? f4069a : this.f4081m;
            }
            return f4069a;
        }

        /* renamed from: p */
        boolean m31916p(int i) {
            return (i & this.f4079k) != 0;
        }

        /* renamed from: q */
        boolean m31915q() {
            return (this.f4079k & 512) != 0 || m31912t();
        }

        /* renamed from: r */
        boolean m31914r() {
            return (this.f4070b.getParent() == null || this.f4070b.getParent() == this.f4087s) ? false : true;
        }

        /* renamed from: s */
        public boolean m31913s() {
            boolean z = true;
            if ((this.f4079k & 1) == 0) {
                z = false;
            }
            return z;
        }

        /* renamed from: t */
        public boolean m31912t() {
            return (this.f4079k & 4) != 0;
        }

        public String toString() {
            String simpleName = getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName();
            StringBuilder sb = new StringBuilder(simpleName + "{" + Integer.toHexString(hashCode()) + " position=" + this.f4072d + " id=" + this.f4074f + ", oldPos=" + this.f4073e + ", pLpos:" + this.f4076h);
            if (m31909w()) {
                sb.append(" scrap ");
                sb.append(this.f4084p ? "[changeScrap]" : "[attachedScrap]");
            }
            if (m31912t()) {
                sb.append(" invalid");
            }
            if (!m31913s()) {
                sb.append(" unbound");
            }
            if (m31906z()) {
                sb.append(" update");
            }
            if (m31910v()) {
                sb.append(" removed");
            }
            if (m31934J()) {
                sb.append(" ignored");
            }
            if (m31908x()) {
                sb.append(" tmpDetached");
            }
            if (!m31911u()) {
                sb.append(" not recyclable(" + this.f4082n + ")");
            }
            if (m31915q()) {
                sb.append(" undefined adapter position");
            }
            if (this.f4070b.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        /* renamed from: u */
        public final boolean m31911u() {
            return (this.f4079k & 16) == 0 && !C1679w.m29316S(this.f4070b);
        }

        /* renamed from: v */
        public boolean m31910v() {
            return (this.f4079k & 8) != 0;
        }

        /* renamed from: w */
        boolean m31909w() {
            return this.f4083o != null;
        }

        /* renamed from: x */
        boolean m31908x() {
            return (this.f4079k & 256) != 0;
        }

        /* renamed from: y */
        boolean m31907y() {
            return (this.f4079k & 2) != 0;
        }

        /* renamed from: z */
        boolean m31906z() {
            return (this.f4079k & 2) != 0;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$c.class */
    class animationInterpolatorC0906c implements Interpolator {
        animationInterpolatorC0906c() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$d.class */
    public class C0907d implements C0989p.AbstractC0991b {
        C0907d() {
            RecyclerView.this = r4;
        }

        @Override // androidx.recyclerview.widget.C0989p.AbstractC0991b
        /* renamed from: a */
        public void mo31300a(AbstractC0905b0 abstractC0905b0) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f4044y.m31804m1(abstractC0905b0.f4070b, recyclerView.f4022n);
        }

        @Override // androidx.recyclerview.widget.C0989p.AbstractC0991b
        /* renamed from: b */
        public void mo31299b(AbstractC0905b0 abstractC0905b0, AbstractC0915l.C0918c c0918c, AbstractC0915l.C0918c c0918c2) {
            RecyclerView.this.m32012m(abstractC0905b0, c0918c, c0918c2);
        }

        @Override // androidx.recyclerview.widget.C0989p.AbstractC0991b
        /* renamed from: c */
        public void mo31298c(AbstractC0905b0 abstractC0905b0, AbstractC0915l.C0918c c0918c, AbstractC0915l.C0918c c0918c2) {
            RecyclerView.this.f4022n.m31755J(abstractC0905b0);
            RecyclerView.this.m32006o(abstractC0905b0, c0918c, c0918c2);
        }

        @Override // androidx.recyclerview.widget.C0989p.AbstractC0991b
        /* renamed from: d */
        public void mo31297d(AbstractC0905b0 abstractC0905b0, AbstractC0915l.C0918c c0918c, AbstractC0915l.C0918c c0918c2) {
            abstractC0905b0.m31937G(false);
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f4001Q) {
                if (!recyclerView.f4010c0.mo31349b(abstractC0905b0, abstractC0905b0, c0918c, c0918c2)) {
                    return;
                }
                RecyclerView.this.m32072N0();
            } else if (!recyclerView.f4010c0.mo31347d(abstractC0905b0, c0918c, c0918c2)) {
            } else {
                RecyclerView.this.m32072N0();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$e */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$e.class */
    public class C0908e implements C0948b.AbstractC0950b {
        C0908e() {
            RecyclerView.this = r4;
        }

        @Override // androidx.recyclerview.widget.C0948b.AbstractC0950b
        /* renamed from: a */
        public View mo31490a(int i) {
            return RecyclerView.this.getChildAt(i);
        }

        @Override // androidx.recyclerview.widget.C0948b.AbstractC0950b
        /* renamed from: b */
        public void mo31489b(View view) {
            AbstractC0905b0 m32029g0 = RecyclerView.m32029g0(view);
            if (m32029g0 != null) {
                m32029g0.m31942B(RecyclerView.this);
            }
        }

        @Override // androidx.recyclerview.widget.C0948b.AbstractC0950b
        /* renamed from: c */
        public int mo31488c() {
            return RecyclerView.this.getChildCount();
        }

        @Override // androidx.recyclerview.widget.C0948b.AbstractC0950b
        /* renamed from: d */
        public void mo31487d() {
            int mo31488c = mo31488c();
            for (int i = 0; i < mo31488c; i++) {
                View mo31490a = mo31490a(i);
                RecyclerView.this.m32097A(mo31490a);
                mo31490a.clearAnimation();
            }
            RecyclerView.this.removeAllViews();
        }

        @Override // androidx.recyclerview.widget.C0948b.AbstractC0950b
        /* renamed from: e */
        public int mo31486e(View view) {
            return RecyclerView.this.indexOfChild(view);
        }

        @Override // androidx.recyclerview.widget.C0948b.AbstractC0950b
        /* renamed from: f */
        public AbstractC0905b0 mo31485f(View view) {
            return RecyclerView.m32029g0(view);
        }

        @Override // androidx.recyclerview.widget.C0948b.AbstractC0950b
        /* renamed from: g */
        public void mo31484g(int i) {
            AbstractC0905b0 m32029g0;
            View mo31490a = mo31490a(i);
            if (mo31490a != null && (m32029g0 = RecyclerView.m32029g0(mo31490a)) != null) {
                if (m32029g0.m31908x() && !m32029g0.m31934J()) {
                    throw new IllegalArgumentException("called detach on an already detached child " + m32029g0 + RecyclerView.this.m32067Q());
                }
                m32029g0.m31930b(256);
            }
            RecyclerView.this.detachViewFromParent(i);
        }

        @Override // androidx.recyclerview.widget.C0948b.AbstractC0950b
        /* renamed from: h */
        public void mo31483h(View view) {
            AbstractC0905b0 m32029g0 = RecyclerView.m32029g0(view);
            if (m32029g0 != null) {
                m32029g0.m31941C(RecyclerView.this);
            }
        }

        @Override // androidx.recyclerview.widget.C0948b.AbstractC0950b
        /* renamed from: i */
        public void mo31482i(View view, int i) {
            RecyclerView.this.addView(view, i);
            RecyclerView.this.m31974z(view);
        }

        @Override // androidx.recyclerview.widget.C0948b.AbstractC0950b
        /* renamed from: j */
        public void mo31481j(int i) {
            View childAt = RecyclerView.this.getChildAt(i);
            if (childAt != null) {
                RecyclerView.this.m32097A(childAt);
                childAt.clearAnimation();
            }
            RecyclerView.this.removeViewAt(i);
        }

        @Override // androidx.recyclerview.widget.C0948b.AbstractC0950b
        /* renamed from: k */
        public void mo31480k(View view, int i, ViewGroup.LayoutParams layoutParams) {
            AbstractC0905b0 m32029g0 = RecyclerView.m32029g0(view);
            if (m32029g0 != null) {
                if (!m32029g0.m31908x() && !m32029g0.m31934J()) {
                    throw new IllegalArgumentException("Called attach on a child which is not detached: " + m32029g0 + RecyclerView.this.m32067Q());
                }
                m32029g0.m31926f();
            }
            RecyclerView.this.attachViewToParent(view, i, layoutParams);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$f */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f.class */
    public class C0909f implements C0945a.AbstractC0946a {
        C0909f() {
            RecyclerView.this = r4;
        }

        @Override // androidx.recyclerview.widget.C0945a.AbstractC0946a
        /* renamed from: a */
        public void mo31527a(int i, int i2) {
            RecyclerView.this.m32090D0(i, i2);
            RecyclerView.this.f4043x0 = true;
        }

        @Override // androidx.recyclerview.widget.C0945a.AbstractC0946a
        /* renamed from: b */
        public void mo31526b(C0945a.C0947b c0947b) {
            m31905i(c0947b);
        }

        @Override // androidx.recyclerview.widget.C0945a.AbstractC0946a
        /* renamed from: c */
        public void mo31525c(int i, int i2, Object obj) {
            RecyclerView.this.m31977x1(i, i2, obj);
            RecyclerView.this.f4045y0 = true;
        }

        @Override // androidx.recyclerview.widget.C0945a.AbstractC0946a
        /* renamed from: d */
        public void mo31524d(C0945a.C0947b c0947b) {
            m31905i(c0947b);
        }

        @Override // androidx.recyclerview.widget.C0945a.AbstractC0946a
        /* renamed from: e */
        public AbstractC0905b0 mo31523e(int i) {
            AbstractC0905b0 m32046a0 = RecyclerView.this.m32046a0(i, true);
            if (m32046a0 != null && !RecyclerView.this.f4028q.m31505n(m32046a0.f4070b)) {
                return m32046a0;
            }
            return null;
        }

        @Override // androidx.recyclerview.widget.C0945a.AbstractC0946a
        /* renamed from: f */
        public void mo31522f(int i, int i2) {
            RecyclerView.this.m32088E0(i, i2, false);
            RecyclerView.this.f4043x0 = true;
        }

        @Override // androidx.recyclerview.widget.C0945a.AbstractC0946a
        /* renamed from: g */
        public void mo31521g(int i, int i2) {
            RecyclerView.this.m32092C0(i, i2);
            RecyclerView.this.f4043x0 = true;
        }

        @Override // androidx.recyclerview.widget.C0945a.AbstractC0946a
        /* renamed from: h */
        public void mo31520h(int i, int i2) {
            RecyclerView.this.m32088E0(i, i2, true);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f4043x0 = true;
            recyclerView.f4037u0.f4162d += i2;
        }

        /* renamed from: i */
        void m31905i(C0945a.C0947b c0947b) {
            int i = c0947b.f4240a;
            if (i == 1) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.f4044y.mo31666R0(recyclerView, c0947b.f4241b, c0947b.f4243d);
            } else if (i == 2) {
                RecyclerView recyclerView2 = RecyclerView.this;
                recyclerView2.f4044y.mo31657U0(recyclerView2, c0947b.f4241b, c0947b.f4243d);
            } else if (i == 4) {
                RecyclerView recyclerView3 = RecyclerView.this;
                recyclerView3.f4044y.mo31652W0(recyclerView3, c0947b.f4241b, c0947b.f4243d, c0947b.f4242c);
            } else if (i != 8) {
            } else {
                RecyclerView recyclerView4 = RecyclerView.this;
                recyclerView4.f4044y.mo31660T0(recyclerView4, c0947b.f4241b, c0947b.f4243d, 1);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$g */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$g.class */
    public static /* synthetic */ class C0910g {

        /* renamed from: a */
        static final /* synthetic */ int[] f4092a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Adapter.StateRestorationPolicy.values().length];
            f4092a = iArr;
            try {
                iArr[Adapter.StateRestorationPolicy.PREVENT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4092a[Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$h */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$h.class */
    public static class C0911h extends Observable<AbstractC0912i> {
        C0911h() {
        }

        /* renamed from: a */
        public boolean m31904a() {
            return !((Observable) this).mObservers.isEmpty();
        }

        /* renamed from: b */
        public void m31903b() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0912i) ((Observable) this).mObservers.get(size)).mo22252a();
            }
        }

        /* renamed from: c */
        public void m31902c(int i, int i2) {
            m31901d(i, i2, null);
        }

        /* renamed from: d */
        public void m31901d(int i, int i2, Object obj) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0912i) ((Observable) this).mObservers.get(size)).mo30675c(i, i2, obj);
            }
        }

        /* renamed from: e */
        public void m31900e(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0912i) ((Observable) this).mObservers.get(size)).mo22250d(i, i2);
            }
        }

        /* renamed from: f */
        public void m31899f(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0912i) ((Observable) this).mObservers.get(size)).mo22249e(i, i2);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$i */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$i.class */
    public static abstract class AbstractC0912i {
        /* renamed from: a */
        public void mo22252a() {
        }

        /* renamed from: b */
        public void mo22251b(int i, int i2) {
        }

        /* renamed from: c */
        public void mo30675c(int i, int i2, Object obj) {
            mo22251b(i, i2);
        }

        /* renamed from: d */
        public void mo22250d(int i, int i2) {
        }

        /* renamed from: e */
        public void mo22249e(int i, int i2) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$j */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$j.class */
    public interface AbstractC0913j {
        /* renamed from: a */
        int m31898a(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$k */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$k.class */
    public static class C0914k {
        /* renamed from: a */
        protected EdgeEffect m31897a(RecyclerView recyclerView, int i) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$l */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l.class */
    public static abstract class AbstractC0915l {

        /* renamed from: a */
        private AbstractC0917b f4093a = null;

        /* renamed from: b */
        private ArrayList<AbstractC0916a> f4094b = new ArrayList<>();

        /* renamed from: c */
        private long f4095c = 120;

        /* renamed from: d */
        private long f4096d = 120;

        /* renamed from: e */
        private long f4097e = 250;

        /* renamed from: f */
        private long f4098f = 250;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$l$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l$a.class */
        public interface AbstractC0916a {
            /* renamed from: a */
            void m31884a();
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$l$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l$b.class */
        public interface AbstractC0917b {
            /* renamed from: a */
            void mo31881a(AbstractC0905b0 abstractC0905b0);
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$l$c */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l$c.class */
        public static class C0918c {

            /* renamed from: a */
            public int f4099a;

            /* renamed from: b */
            public int f4100b;

            /* renamed from: c */
            public int f4101c;

            /* renamed from: d */
            public int f4102d;

            /* renamed from: a */
            public C0918c m31883a(AbstractC0905b0 abstractC0905b0) {
                return m31882b(abstractC0905b0, 0);
            }

            /* renamed from: b */
            public C0918c m31882b(AbstractC0905b0 abstractC0905b0, int i) {
                View view = abstractC0905b0.f4070b;
                this.f4099a = view.getLeft();
                this.f4100b = view.getTop();
                this.f4101c = view.getRight();
                this.f4102d = view.getBottom();
                return this;
            }
        }

        /* renamed from: e */
        static int m31896e(AbstractC0905b0 abstractC0905b0) {
            int i = abstractC0905b0.f4079k & 14;
            if (abstractC0905b0.m31912t()) {
                return 4;
            }
            int i2 = i;
            if ((i & 4) == 0) {
                int m31918n = abstractC0905b0.m31918n();
                int m31922j = abstractC0905b0.m31922j();
                i2 = i;
                if (m31918n != -1) {
                    i2 = i;
                    if (m31922j != -1) {
                        i2 = i;
                        if (m31918n != m31922j) {
                            i2 = i | 2048;
                        }
                    }
                }
            }
            return i2;
        }

        /* renamed from: a */
        public abstract boolean mo31350a(AbstractC0905b0 abstractC0905b0, C0918c c0918c, C0918c c0918c2);

        /* renamed from: b */
        public abstract boolean mo31349b(AbstractC0905b0 abstractC0905b0, AbstractC0905b0 abstractC0905b02, C0918c c0918c, C0918c c0918c2);

        /* renamed from: c */
        public abstract boolean mo31348c(AbstractC0905b0 abstractC0905b0, C0918c c0918c, C0918c c0918c2);

        /* renamed from: d */
        public abstract boolean mo31347d(AbstractC0905b0 abstractC0905b0, C0918c c0918c, C0918c c0918c2);

        /* renamed from: f */
        public abstract boolean mo31346f(AbstractC0905b0 abstractC0905b0);

        /* renamed from: g */
        public boolean mo31469g(AbstractC0905b0 abstractC0905b0, List<Object> list) {
            return mo31346f(abstractC0905b0);
        }

        /* renamed from: h */
        public final void m31895h(AbstractC0905b0 abstractC0905b0) {
            m31888r(abstractC0905b0);
            AbstractC0917b abstractC0917b = this.f4093a;
            if (abstractC0917b != null) {
                abstractC0917b.mo31881a(abstractC0905b0);
            }
        }

        /* renamed from: i */
        public final void m31894i() {
            int size = this.f4094b.size();
            for (int i = 0; i < size; i++) {
                this.f4094b.get(i).m31884a();
            }
            this.f4094b.clear();
        }

        /* renamed from: j */
        public abstract void mo31468j(AbstractC0905b0 abstractC0905b0);

        /* renamed from: k */
        public abstract void mo31467k();

        /* renamed from: l */
        public long m31893l() {
            return this.f4095c;
        }

        /* renamed from: m */
        public long m31892m() {
            return this.f4098f;
        }

        /* renamed from: n */
        public long m31891n() {
            return this.f4097e;
        }

        /* renamed from: o */
        public long m31890o() {
            return this.f4096d;
        }

        /* renamed from: p */
        public abstract boolean mo31466p();

        /* renamed from: q */
        public C0918c m31889q() {
            return new C0918c();
        }

        /* renamed from: r */
        public void m31888r(AbstractC0905b0 abstractC0905b0) {
        }

        /* renamed from: s */
        public C0918c m31887s(C0938y c0938y, AbstractC0905b0 abstractC0905b0) {
            return m31889q().m31883a(abstractC0905b0);
        }

        /* renamed from: t */
        public C0918c m31886t(C0938y c0938y, AbstractC0905b0 abstractC0905b0, int i, List<Object> list) {
            return m31889q().m31883a(abstractC0905b0);
        }

        /* renamed from: u */
        public abstract void mo31465u();

        /* renamed from: v */
        void m31885v(AbstractC0917b abstractC0917b) {
            this.f4093a = abstractC0917b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$m */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$m.class */
    public class C0919m implements AbstractC0915l.AbstractC0917b {
        C0919m() {
            RecyclerView.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0915l.AbstractC0917b
        /* renamed from: a */
        public void mo31881a(AbstractC0905b0 abstractC0905b0) {
            abstractC0905b0.m31937G(true);
            if (abstractC0905b0.f4077i != null && abstractC0905b0.f4078j == null) {
                abstractC0905b0.f4077i = null;
            }
            abstractC0905b0.f4078j = null;
            if (abstractC0905b0.m31935I() || RecyclerView.this.m32054W0(abstractC0905b0.f4070b) || !abstractC0905b0.m31908x()) {
                return;
            }
            RecyclerView.this.removeDetachedView(abstractC0905b0.f4070b, false);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$n */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$n.class */
    public static abstract class AbstractC0920n {
        @Deprecated
        /* renamed from: d */
        public void m31880d(Rect rect, int i, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        /* renamed from: e */
        public void m31879e(Rect rect, View view, RecyclerView recyclerView, C0938y c0938y) {
            m31880d(rect, ((LayoutParams) view.getLayoutParams()).m31957a(), recyclerView);
        }

        @Deprecated
        /* renamed from: f */
        public void m31878f(Canvas canvas, RecyclerView recyclerView) {
        }

        /* renamed from: g */
        public void mo4986g(Canvas canvas, RecyclerView recyclerView, C0938y c0938y) {
            m31878f(canvas, recyclerView);
        }

        @Deprecated
        /* renamed from: h */
        public void m31877h(Canvas canvas, RecyclerView recyclerView) {
        }

        /* renamed from: i */
        public void mo31458i(Canvas canvas, RecyclerView recyclerView, C0938y c0938y) {
            m31877h(canvas, recyclerView);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$o */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o.class */
    public static abstract class AbstractC0921o {

        /* renamed from: a */
        C0948b f4104a;

        /* renamed from: b */
        RecyclerView f4105b;

        /* renamed from: c */
        private final C0986o.AbstractC0988b f4106c;

        /* renamed from: d */
        private final C0986o.AbstractC0988b f4107d;

        /* renamed from: e */
        C0986o f4108e;

        /* renamed from: f */
        C0986o f4109f;

        /* renamed from: g */
        AbstractC0935x f4110g;

        /* renamed from: h */
        boolean f4111h = false;

        /* renamed from: i */
        boolean f4112i = false;

        /* renamed from: j */
        boolean f4113j = false;

        /* renamed from: k */
        private boolean f4114k = true;

        /* renamed from: l */
        private boolean f4115l = true;

        /* renamed from: m */
        int f4116m;

        /* renamed from: n */
        boolean f4117n;

        /* renamed from: o */
        private int f4118o;

        /* renamed from: p */
        private int f4119p;

        /* renamed from: q */
        private int f4120q;

        /* renamed from: r */
        private int f4121r;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.recyclerview.widget.RecyclerView$o$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o$a.class */
        public class C0922a implements C0986o.AbstractC0988b {
            C0922a() {
                AbstractC0921o.this = r4;
            }

            @Override // androidx.recyclerview.widget.C0986o.AbstractC0988b
            /* renamed from: a */
            public View mo31325a(int i) {
                return AbstractC0921o.this.m31860I(i);
            }

            @Override // androidx.recyclerview.widget.C0986o.AbstractC0988b
            /* renamed from: b */
            public int mo31324b(View view) {
                return AbstractC0921o.this.m31845Q(view) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).leftMargin;
            }

            @Override // androidx.recyclerview.widget.C0986o.AbstractC0988b
            /* renamed from: c */
            public int mo31323c() {
                return AbstractC0921o.this.m31823e0();
            }

            @Override // androidx.recyclerview.widget.C0986o.AbstractC0988b
            /* renamed from: d */
            public int mo31322d() {
                return AbstractC0921o.this.m31800o0() - AbstractC0921o.this.m31821f0();
            }

            @Override // androidx.recyclerview.widget.C0986o.AbstractC0988b
            /* renamed from: e */
            public int mo31321e(View view) {
                return AbstractC0921o.this.m31841T(view) + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).rightMargin;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.recyclerview.widget.RecyclerView$o$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o$b.class */
        public class C0923b implements C0986o.AbstractC0988b {
            C0923b() {
                AbstractC0921o.this = r4;
            }

            @Override // androidx.recyclerview.widget.C0986o.AbstractC0988b
            /* renamed from: a */
            public View mo31325a(int i) {
                return AbstractC0921o.this.m31860I(i);
            }

            @Override // androidx.recyclerview.widget.C0986o.AbstractC0988b
            /* renamed from: b */
            public int mo31324b(View view) {
                return AbstractC0921o.this.m31840U(view) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).topMargin;
            }

            @Override // androidx.recyclerview.widget.C0986o.AbstractC0988b
            /* renamed from: c */
            public int mo31323c() {
                return AbstractC0921o.this.m31819g0();
            }

            @Override // androidx.recyclerview.widget.C0986o.AbstractC0988b
            /* renamed from: d */
            public int mo31322d() {
                return AbstractC0921o.this.m31837W() - AbstractC0921o.this.m31825d0();
            }

            @Override // androidx.recyclerview.widget.C0986o.AbstractC0988b
            /* renamed from: e */
            public int mo31321e(View view) {
                return AbstractC0921o.this.m31849O(view) + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).bottomMargin;
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$o$c */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o$c.class */
        public interface AbstractC0924c {
            /* renamed from: a */
            void mo31429a(int i, int i2);
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$o$d */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o$d.class */
        public static class C0925d {

            /* renamed from: a */
            public int f4124a;

            /* renamed from: b */
            public int f4125b;

            /* renamed from: c */
            public boolean f4126c;

            /* renamed from: d */
            public boolean f4127d;
        }

        public AbstractC0921o() {
            C0922a c0922a = new C0922a();
            this.f4106c = c0922a;
            C0923b c0923b = new C0923b();
            this.f4107d = c0923b;
            this.f4108e = new C0986o(c0922a);
            this.f4109f = new C0986o(c0923b);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
            if (r5 != 1073741824) goto L29;
         */
        /* renamed from: K */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int m31857K(int r4, int r5, int r6, int r7, boolean r8) {
            /*
                r0 = 0
                r1 = r4
                r2 = r6
                int r1 = r1 - r2
                int r0 = java.lang.Math.max(r0, r1)
                r6 = r0
                r0 = r8
                if (r0 == 0) goto L30
                r0 = r7
                if (r0 < 0) goto L14
                goto L34
            L14:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L66
                r0 = r5
                r4 = r0
                r0 = r5
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r0 == r1) goto L41
                r0 = r5
                if (r0 == 0) goto L66
                r0 = r5
                r4 = r0
                r0 = r5
                r1 = 1073741824(0x40000000, float:2.0)
                if (r0 == r1) goto L41
                goto L66
            L30:
                r0 = r7
                if (r0 < 0) goto L3a
            L34:
                r0 = 1073741824(0x40000000, float:2.0)
                r4 = r0
                goto L6a
            L3a:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L46
                r0 = r5
                r4 = r0
            L41:
                r0 = r6
                r7 = r0
                goto L6a
            L46:
                r0 = r7
                r1 = -2
                if (r0 != r1) goto L66
                r0 = r5
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r0 == r1) goto L60
                r0 = r5
                r1 = 1073741824(0x40000000, float:2.0)
                if (r0 != r1) goto L5b
                goto L60
            L5b:
                r0 = 0
                r4 = r0
                goto L41
            L60:
                r0 = -2147483648(0xffffffff80000000, float:-0.0)
                r4 = r0
                goto L41
            L66:
                r0 = 0
                r4 = r0
                r0 = 0
                r7 = r0
            L6a:
                r0 = r7
                r1 = r4
                int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.AbstractC0921o.m31857K(int, int, int, int, boolean):int");
        }

        /* renamed from: L */
        private int[] m31855L(View view, Rect rect) {
            int m31823e0 = m31823e0();
            int m31819g0 = m31819g0();
            int m31800o0 = m31800o0();
            int m31821f0 = m31821f0();
            int m31837W = m31837W();
            int m31825d0 = m31825d0();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int width = rect.width();
            int height = rect.height();
            int i = left - m31823e0;
            int min = Math.min(0, i);
            int i2 = top - m31819g0;
            int min2 = Math.min(0, i2);
            int i3 = (width + left) - (m31800o0 - m31821f0);
            int max = Math.max(0, i3);
            int max2 = Math.max(0, (height + top) - (m31837W - m31825d0));
            if (m31834Z() == 1) {
                min = max != 0 ? max : Math.max(min, i3);
            } else if (min == 0) {
                min = Math.min(i, max);
            }
            if (min2 == 0) {
                min2 = Math.min(i2, max2);
            }
            return new int[]{min, min2};
        }

        /* renamed from: f */
        private void m31822f(View view, int i, boolean z) {
            AbstractC0905b0 m32029g0 = RecyclerView.m32029g0(view);
            if (z || m32029g0.m31910v()) {
                this.f4105b.f4030r.m31319b(m32029g0);
            } else {
                this.f4105b.f4030r.m31305p(m32029g0);
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (m32029g0.m31932L() || m32029g0.m31909w()) {
                if (m32029g0.m31909w()) {
                    m32029g0.m31933K();
                } else {
                    m32029g0.m31927e();
                }
                this.f4104a.m31516c(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.f4105b) {
                int m31506m = this.f4104a.m31506m(view);
                int i2 = i;
                if (i == -1) {
                    i2 = this.f4104a.m31512g();
                }
                if (m31506m == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.f4105b.indexOfChild(view) + this.f4105b.m32067Q());
                } else if (m31506m != i2) {
                    this.f4105b.f4044y.m31872B0(m31506m, i2);
                }
            } else {
                this.f4104a.m31518a(view, i, false);
                layoutParams.f4057c = true;
                AbstractC0935x abstractC0935x = this.f4110g;
                if (abstractC0935x != null && abstractC0935x.m31716h()) {
                    this.f4110g.m31713k(view);
                }
            }
            if (layoutParams.f4058d) {
                m32029g0.f4070b.invalidate();
                layoutParams.f4058d = false;
            }
        }

        /* renamed from: i0 */
        public static C0925d m31814i0(Context context, AttributeSet attributeSet, int i, int i2) {
            C0925d c0925d = new C0925d();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1770c.RecyclerView, i, i2);
            c0925d.f4124a = obtainStyledAttributes.getInt(C1770c.RecyclerView_android_orientation, 1);
            c0925d.f4125b = obtainStyledAttributes.getInt(C1770c.RecyclerView_spanCount, 1);
            c0925d.f4126c = obtainStyledAttributes.getBoolean(C1770c.RecyclerView_reverseLayout, false);
            c0925d.f4127d = obtainStyledAttributes.getBoolean(C1770c.RecyclerView_stackFromEnd, false);
            obtainStyledAttributes.recycle();
            return c0925d;
        }

        /* renamed from: n */
        public static int m31803n(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            if (mode != Integer.MIN_VALUE) {
                if (mode != 1073741824) {
                    size = Math.max(i2, i3);
                }
                return size;
            }
            return Math.min(size, Math.max(i2, i3));
        }

        /* renamed from: t0 */
        private boolean m31791t0(RecyclerView recyclerView, int i, int i2) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int m31823e0 = m31823e0();
            int m31819g0 = m31819g0();
            int m31800o0 = m31800o0();
            int m31821f0 = m31821f0();
            int m31837W = m31837W();
            int m31825d0 = m31825d0();
            Rect rect = this.f4105b.f4036u;
            m31847P(focusedChild, rect);
            return rect.left - i < m31800o0 - m31821f0 && rect.right - i > m31823e0 && rect.top - i2 < m31837W - m31825d0 && rect.bottom - i2 > m31819g0;
        }

        /* renamed from: v1 */
        private void m31786v1(C0932u c0932u, int i, View view) {
            AbstractC0905b0 m32029g0 = RecyclerView.m32029g0(view);
            if (m32029g0.m31934J()) {
                return;
            }
            if (m32029g0.m31912t() && !m32029g0.m31910v() && !this.f4105b.f4042x.m31968h()) {
                m31794q1(i);
                c0932u.m31762C(m32029g0);
                return;
            }
            m31783x(i);
            c0932u.m31761D(view);
            this.f4105b.f4030r.m31310k(m32029g0);
        }

        /* renamed from: w0 */
        private static boolean m31784w0(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            boolean z = false;
            if (i3 <= 0 || i == i3) {
                if (mode == Integer.MIN_VALUE) {
                    boolean z2 = false;
                    if (size >= i) {
                        z2 = true;
                    }
                    return z2;
                } else if (mode == 0) {
                    return true;
                } else {
                    if (mode != 1073741824) {
                        return false;
                    }
                    if (size == i) {
                        z = true;
                    }
                    return z;
                }
            }
            return false;
        }

        /* renamed from: y */
        private void m31781y(int i, View view) {
            this.f4104a.m31515d(i);
        }

        /* renamed from: A */
        void m31876A(RecyclerView recyclerView, C0932u c0932u) {
            this.f4112i = false;
            mo31683I0(recyclerView, c0932u);
        }

        /* renamed from: A0 */
        public void m31875A0(View view, int i, int i2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect m32017k0 = this.f4105b.m32017k0(view);
            int i3 = m32017k0.left;
            int i4 = m32017k0.right;
            int i5 = m32017k0.top;
            int i6 = m32017k0.bottom;
            int m31857K = m31857K(m31800o0(), m31797p0(), m31823e0() + m31821f0() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + i + i3 + i4, ((ViewGroup.MarginLayoutParams) layoutParams).width, mo31631k());
            int m31857K2 = m31857K(m31837W(), m31836X(), m31819g0() + m31825d0() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + i2 + i5 + i6, ((ViewGroup.MarginLayoutParams) layoutParams).height, mo27381l());
            if (m31864G1(view, m31857K, m31857K2, layoutParams)) {
                view.measure(m31857K, m31857K2);
            }
        }

        /* renamed from: A1 */
        void m31874A1(RecyclerView recyclerView) {
            m31871B1(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        /* renamed from: B */
        public View m31873B(View view) {
            View m32063S;
            RecyclerView recyclerView = this.f4105b;
            if (recyclerView == null || (m32063S = recyclerView.m32063S(view)) == null || this.f4104a.m31505n(m32063S)) {
                return null;
            }
            return m32063S;
        }

        /* renamed from: B0 */
        public void m31872B0(int i, int i2) {
            View m31860I = m31860I(i);
            if (m31860I != null) {
                m31783x(i);
                m31817h(m31860I, i2);
                return;
            }
            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.f4105b.toString());
        }

        /* renamed from: B1 */
        void m31871B1(int i, int i2) {
            this.f4120q = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            this.f4118o = mode;
            if (mode == 0 && !RecyclerView.f3964f) {
                this.f4120q = 0;
            }
            this.f4121r = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f4119p = mode2;
            if (mode2 != 0 || RecyclerView.f3964f) {
                return;
            }
            this.f4121r = 0;
        }

        /* renamed from: C */
        public View mo31870C(int i) {
            int m31858J = m31858J();
            for (int i2 = 0; i2 < m31858J; i2++) {
                View m31860I = m31860I(i2);
                AbstractC0905b0 m32029g0 = RecyclerView.m32029g0(m31860I);
                if (m32029g0 != null && m32029g0.m31919m() == i && !m32029g0.m31934J() && (this.f4105b.f4037u0.m31700e() || !m32029g0.m31910v())) {
                    return m31860I;
                }
            }
            return null;
        }

        /* renamed from: C0 */
        public void mo31695C0(int i) {
            RecyclerView recyclerView = this.f4105b;
            if (recyclerView != null) {
                recyclerView.m32096A0(i);
            }
        }

        /* renamed from: C1 */
        public void m31869C1(int i, int i2) {
            this.f4105b.setMeasuredDimension(i, i2);
        }

        /* renamed from: D */
        public abstract LayoutParams mo27390D();

        /* renamed from: D0 */
        public void mo31693D0(int i) {
            RecyclerView recyclerView = this.f4105b;
            if (recyclerView != null) {
                recyclerView.m32094B0(i);
            }
        }

        /* renamed from: D1 */
        public void mo31692D1(Rect rect, int i, int i2) {
            int width = rect.width();
            int m31823e0 = m31823e0();
            int m31821f0 = m31821f0();
            int height = rect.height();
            int m31819g0 = m31819g0();
            m31869C1(m31803n(i, width + m31823e0 + m31821f0, m31827c0()), m31803n(i2, height + m31819g0 + m31825d0(), m31830b0()));
        }

        /* renamed from: E */
        public LayoutParams mo31690E(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        /* renamed from: E0 */
        public void mo31689E0(Adapter adapter, Adapter adapter2) {
        }

        /* renamed from: E1 */
        void m31868E1(int i, int i2) {
            int m31858J = m31858J();
            if (m31858J == 0) {
                this.f4105b.m31979x(i, i2);
                return;
            }
            int i3 = 0;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MIN_VALUE;
            int i6 = Integer.MAX_VALUE;
            int i7 = Integer.MAX_VALUE;
            while (true) {
                int i8 = i7;
                if (i3 >= m31858J) {
                    this.f4105b.f4036u.set(i6, i8, i4, i5);
                    mo31692D1(this.f4105b.f4036u, i, i2);
                    return;
                }
                View m31860I = m31860I(i3);
                Rect rect = this.f4105b.f4036u;
                m31847P(m31860I, rect);
                int i9 = rect.left;
                int i10 = i6;
                if (i9 < i6) {
                    i10 = i9;
                }
                int i11 = rect.right;
                int i12 = i4;
                if (i11 > i4) {
                    i12 = i11;
                }
                int i13 = rect.top;
                int i14 = i8;
                if (i13 < i8) {
                    i14 = i13;
                }
                int i15 = rect.bottom;
                int i16 = i5;
                if (i15 > i5) {
                    i16 = i15;
                }
                i3++;
                i4 = i12;
                i5 = i16;
                i6 = i10;
                i7 = i14;
            }
        }

        /* renamed from: F */
        public LayoutParams mo31687F(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
        }

        /* renamed from: F0 */
        public boolean m31867F0(RecyclerView recyclerView, ArrayList<View> arrayList, int i, int i2) {
            return false;
        }

        /* renamed from: F1 */
        void m31866F1(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f4105b = null;
                this.f4104a = null;
                this.f4120q = 0;
                this.f4121r = 0;
            } else {
                this.f4105b = recyclerView;
                this.f4104a = recyclerView.f4028q;
                this.f4120q = recyclerView.getWidth();
                this.f4121r = recyclerView.getHeight();
            }
            this.f4118o = 1073741824;
            this.f4119p = 1073741824;
        }

        /* renamed from: G */
        public int m31865G() {
            return -1;
        }

        /* renamed from: G0 */
        public void mo22278G0(RecyclerView recyclerView) {
        }

        /* renamed from: G1 */
        public boolean m31864G1(View view, int i, int i2, LayoutParams layoutParams) {
            return view.isLayoutRequested() || !this.f4114k || !m31784w0(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) || !m31784w0(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height);
        }

        /* renamed from: H */
        public int m31863H(View view) {
            return ((LayoutParams) view.getLayoutParams()).f4056b.bottom;
        }

        @Deprecated
        /* renamed from: H0 */
        public void m31862H0(RecyclerView recyclerView) {
        }

        /* renamed from: H1 */
        boolean mo31861H1() {
            return false;
        }

        /* renamed from: I */
        public View m31860I(int i) {
            C0948b c0948b = this.f4104a;
            return c0948b != null ? c0948b.m31513f(i) : null;
        }

        /* renamed from: I0 */
        public void mo31683I0(RecyclerView recyclerView, C0932u c0932u) {
            m31862H0(recyclerView);
        }

        /* renamed from: I1 */
        public boolean m31859I1(View view, int i, int i2, LayoutParams layoutParams) {
            return !this.f4114k || !m31784w0(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) || !m31784w0(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height);
        }

        /* renamed from: J */
        public int m31858J() {
            C0948b c0948b = this.f4104a;
            return c0948b != null ? c0948b.m31512g() : 0;
        }

        /* renamed from: J0 */
        public View mo31681J0(View view, int i, C0932u c0932u, C0938y c0938y) {
            return null;
        }

        /* renamed from: J1 */
        public void mo4860J1(RecyclerView recyclerView, C0938y c0938y, int i) {
            Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
        }

        /* renamed from: K0 */
        public void mo31679K0(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f4105b;
            m31854L0(recyclerView.f4022n, recyclerView.f4037u0, accessibilityEvent);
        }

        /* renamed from: K1 */
        public void m31856K1(AbstractC0935x abstractC0935x) {
            AbstractC0935x abstractC0935x2 = this.f4110g;
            if (abstractC0935x2 != null && abstractC0935x != abstractC0935x2 && abstractC0935x2.m31716h()) {
                this.f4110g.m31710r();
            }
            this.f4110g = abstractC0935x;
            abstractC0935x.m31711q(this.f4105b, this);
        }

        /* renamed from: L0 */
        public void m31854L0(C0932u c0932u, C0938y c0938y, AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f4105b;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z = true;
            if (!recyclerView.canScrollVertically(1)) {
                z = true;
                if (!this.f4105b.canScrollVertically(-1)) {
                    z = true;
                    if (!this.f4105b.canScrollHorizontally(-1)) {
                        z = this.f4105b.canScrollHorizontally(1);
                    }
                }
            }
            accessibilityEvent.setScrollable(z);
            Adapter adapter = this.f4105b.f4042x;
            if (adapter == null) {
                return;
            }
            accessibilityEvent.setItemCount(adapter.mo4501d());
        }

        /* renamed from: L1 */
        void m31853L1() {
            AbstractC0935x abstractC0935x = this.f4110g;
            if (abstractC0935x != null) {
                abstractC0935x.m31710r();
            }
        }

        /* renamed from: M */
        public boolean m31852M() {
            RecyclerView recyclerView = this.f4105b;
            return recyclerView != null && recyclerView.f4032s;
        }

        /* renamed from: M0 */
        public void m31851M0(C1634c c1634c) {
            RecyclerView recyclerView = this.f4105b;
            mo30674N0(recyclerView.f4022n, recyclerView.f4037u0, c1634c);
        }

        /* renamed from: M1 */
        public boolean mo31676M1() {
            return false;
        }

        /* renamed from: N */
        public int mo31850N(C0932u c0932u, C0938y c0938y) {
            return -1;
        }

        /* renamed from: N0 */
        public void mo30674N0(C0932u c0932u, C0938y c0938y, C1634c c1634c) {
            if (this.f4105b.canScrollVertically(-1) || this.f4105b.canScrollHorizontally(-1)) {
                c1634c.m29494a(8192);
                c1634c.m29447x0(true);
            }
            if (this.f4105b.canScrollVertically(1) || this.f4105b.canScrollHorizontally(1)) {
                c1634c.m29494a(4096);
                c1634c.m29447x0(true);
            }
            c1634c.m29485e0(C1634c.C1636b.m29437b(mo31809k0(c0932u, c0938y), mo31850N(c0932u, c0938y), m31787v0(c0932u, c0938y), m31807l0(c0932u, c0938y)));
        }

        /* renamed from: O */
        public int m31849O(View view) {
            return view.getBottom() + m31863H(view);
        }

        /* renamed from: O0 */
        public void m31848O0(View view, C1634c c1634c) {
            AbstractC0905b0 m32029g0 = RecyclerView.m32029g0(view);
            if (m32029g0 == null || m32029g0.m31910v() || this.f4104a.m31505n(m32029g0.f4070b)) {
                return;
            }
            RecyclerView recyclerView = this.f4105b;
            mo31846P0(recyclerView.f4022n, recyclerView.f4037u0, view, c1634c);
        }

        /* renamed from: P */
        public void m31847P(View view, Rect rect) {
            RecyclerView.m32026h0(view, rect);
        }

        /* renamed from: P0 */
        public void mo31846P0(C0932u c0932u, C0938y c0938y, View view, C1634c c1634c) {
        }

        /* renamed from: Q */
        public int m31845Q(View view) {
            return view.getLeft() - m31833a0(view);
        }

        /* renamed from: Q0 */
        public View m31844Q0(View view, int i) {
            return null;
        }

        /* renamed from: R */
        public int m31843R(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f4056b;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        /* renamed from: R0 */
        public void mo31666R0(RecyclerView recyclerView, int i, int i2) {
        }

        /* renamed from: S */
        public int m31842S(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f4056b;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        /* renamed from: S0 */
        public void mo31663S0(RecyclerView recyclerView) {
        }

        /* renamed from: T */
        public int m31841T(View view) {
            return view.getRight() + m31811j0(view);
        }

        /* renamed from: T0 */
        public void mo31660T0(RecyclerView recyclerView, int i, int i2, int i3) {
        }

        /* renamed from: U */
        public int m31840U(View view) {
            return view.getTop() - m31805m0(view);
        }

        /* renamed from: U0 */
        public void mo31657U0(RecyclerView recyclerView, int i, int i2) {
        }

        /* renamed from: V */
        public View m31839V() {
            View focusedChild;
            RecyclerView recyclerView = this.f4105b;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.f4104a.m31505n(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        /* renamed from: V0 */
        public void m31838V0(RecyclerView recyclerView, int i, int i2) {
        }

        /* renamed from: W */
        public int m31837W() {
            return this.f4121r;
        }

        /* renamed from: W0 */
        public void mo31652W0(RecyclerView recyclerView, int i, int i2, Object obj) {
            m31838V0(recyclerView, i, i2);
        }

        /* renamed from: X */
        public int m31836X() {
            return this.f4119p;
        }

        /* renamed from: X0 */
        public void mo27380X0(C0932u c0932u, C0938y c0938y) {
            Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        /* renamed from: Y */
        public int m31835Y() {
            RecyclerView recyclerView = this.f4105b;
            Adapter adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            return adapter != null ? adapter.mo4501d() : 0;
        }

        /* renamed from: Y0 */
        public void mo31649Y0(C0938y c0938y) {
        }

        /* renamed from: Z */
        public int m31834Z() {
            return C1679w.m29346C(this.f4105b);
        }

        /* renamed from: Z0 */
        public void mo22277Z0(C0932u c0932u, C0938y c0938y, int i, int i2) {
            this.f4105b.m31979x(i, i2);
        }

        /* renamed from: a0 */
        public int m31833a0(View view) {
            return ((LayoutParams) view.getLayoutParams()).f4056b.left;
        }

        @Deprecated
        /* renamed from: a1 */
        public boolean m31832a1(RecyclerView recyclerView, View view, View view2) {
            return m31782x0() || recyclerView.m31987u0();
        }

        /* renamed from: b */
        public void m31831b(View view) {
            m31828c(view, -1);
        }

        /* renamed from: b0 */
        public int m31830b0() {
            return C1679w.m29344D(this.f4105b);
        }

        /* renamed from: b1 */
        public boolean m31829b1(RecyclerView recyclerView, C0938y c0938y, View view, View view2) {
            return m31832a1(recyclerView, view, view2);
        }

        /* renamed from: c */
        public void m31828c(View view, int i) {
            m31822f(view, i, true);
        }

        /* renamed from: c0 */
        public int m31827c0() {
            return C1679w.m29342E(this.f4105b);
        }

        /* renamed from: c1 */
        public void mo31643c1(Parcelable parcelable) {
        }

        /* renamed from: d */
        public void m31826d(View view) {
            m31824e(view, -1);
        }

        /* renamed from: d0 */
        public int m31825d0() {
            RecyclerView recyclerView = this.f4105b;
            return recyclerView != null ? recyclerView.getPaddingBottom() : 0;
        }

        /* renamed from: d1 */
        public Parcelable mo31641d1() {
            return null;
        }

        /* renamed from: e */
        public void m31824e(View view, int i) {
            m31822f(view, i, false);
        }

        /* renamed from: e0 */
        public int m31823e0() {
            RecyclerView recyclerView = this.f4105b;
            return recyclerView != null ? recyclerView.getPaddingLeft() : 0;
        }

        /* renamed from: e1 */
        public void mo31639e1(int i) {
        }

        /* renamed from: f0 */
        public int m31821f0() {
            RecyclerView recyclerView = this.f4105b;
            return recyclerView != null ? recyclerView.getPaddingRight() : 0;
        }

        /* renamed from: f1 */
        void m31820f1(AbstractC0935x abstractC0935x) {
            if (this.f4110g == abstractC0935x) {
                this.f4110g = null;
            }
        }

        /* renamed from: g */
        public void mo31636g(String str) {
            RecyclerView recyclerView = this.f4105b;
            if (recyclerView != null) {
                recyclerView.m32003p(str);
            }
        }

        /* renamed from: g0 */
        public int m31819g0() {
            RecyclerView recyclerView = this.f4105b;
            return recyclerView != null ? recyclerView.getPaddingTop() : 0;
        }

        /* renamed from: g1 */
        public boolean m31818g1(int i, Bundle bundle) {
            RecyclerView recyclerView = this.f4105b;
            return mo30673h1(recyclerView.f4022n, recyclerView.f4037u0, i, bundle);
        }

        /* renamed from: h */
        public void m31817h(View view, int i) {
            m31815i(view, i, (LayoutParams) view.getLayoutParams());
        }

        /* renamed from: h0 */
        public int m31816h0(View view) {
            return ((LayoutParams) view.getLayoutParams()).m31957a();
        }

        /* renamed from: h1 */
        public boolean mo30673h1(C0932u c0932u, C0938y c0938y, int i, Bundle bundle) {
            int i2;
            int i3;
            int i4;
            int i5;
            RecyclerView recyclerView = this.f4105b;
            if (recyclerView == null) {
                return false;
            }
            if (i == 4096) {
                i5 = recyclerView.canScrollVertically(1) ? (m31837W() - m31819g0()) - m31825d0() : 0;
                i2 = i5;
                if (this.f4105b.canScrollHorizontally(1)) {
                    i4 = (m31800o0() - m31823e0()) - m31821f0();
                    int i6 = i5;
                    i3 = i4;
                    i2 = i6;
                }
                i3 = 0;
            } else if (i != 8192) {
                i3 = 0;
                i2 = 0;
            } else {
                i5 = recyclerView.canScrollVertically(-1) ? -((m31837W() - m31819g0()) - m31825d0()) : 0;
                i2 = i5;
                if (this.f4105b.canScrollHorizontally(-1)) {
                    i4 = -((m31800o0() - m31823e0()) - m31821f0());
                    int i62 = i5;
                    i3 = i4;
                    i2 = i62;
                }
                i3 = 0;
            }
            if (i2 == 0 && i3 == 0) {
                return false;
            }
            this.f4105b.m32001p1(i3, i2, null, Integer.MIN_VALUE, true);
            return true;
        }

        /* renamed from: i */
        public void m31815i(View view, int i, LayoutParams layoutParams) {
            AbstractC0905b0 m32029g0 = RecyclerView.m32029g0(view);
            if (m32029g0.m31910v()) {
                this.f4105b.f4030r.m31319b(m32029g0);
            } else {
                this.f4105b.f4030r.m31305p(m32029g0);
            }
            this.f4104a.m31516c(view, i, layoutParams, m32029g0.m31910v());
        }

        /* renamed from: i1 */
        public boolean m31813i1(View view, int i, Bundle bundle) {
            RecyclerView recyclerView = this.f4105b;
            return m31810j1(recyclerView.f4022n, recyclerView.f4037u0, view, i, bundle);
        }

        /* renamed from: j */
        public void m31812j(View view, Rect rect) {
            RecyclerView recyclerView = this.f4105b;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.m32017k0(view));
            }
        }

        /* renamed from: j0 */
        public int m31811j0(View view) {
            return ((LayoutParams) view.getLayoutParams()).f4056b.right;
        }

        /* renamed from: j1 */
        public boolean m31810j1(C0932u c0932u, C0938y c0938y, View view, int i, Bundle bundle) {
            return false;
        }

        /* renamed from: k */
        public boolean mo31631k() {
            return false;
        }

        /* renamed from: k0 */
        public int mo31809k0(C0932u c0932u, C0938y c0938y) {
            return -1;
        }

        /* renamed from: k1 */
        public void m31808k1(C0932u c0932u) {
            for (int m31858J = m31858J() - 1; m31858J >= 0; m31858J--) {
                if (!RecyclerView.m32029g0(m31860I(m31858J)).m31934J()) {
                    m31801n1(m31858J, c0932u);
                }
            }
        }

        /* renamed from: l */
        public boolean mo27381l() {
            return false;
        }

        /* renamed from: l0 */
        public int m31807l0(C0932u c0932u, C0938y c0938y) {
            return 0;
        }

        /* renamed from: l1 */
        void m31806l1(C0932u c0932u) {
            int m31742j = c0932u.m31742j();
            for (int i = m31742j - 1; i >= 0; i--) {
                View m31738n = c0932u.m31738n(i);
                AbstractC0905b0 m32029g0 = RecyclerView.m32029g0(m31738n);
                if (!m32029g0.m31934J()) {
                    m32029g0.m31937G(false);
                    if (m32029g0.m31908x()) {
                        this.f4105b.removeDetachedView(m31738n, false);
                    }
                    AbstractC0915l abstractC0915l = this.f4105b.f4010c0;
                    if (abstractC0915l != null) {
                        abstractC0915l.mo31468j(m32029g0);
                    }
                    m32029g0.m31937G(true);
                    c0932u.m31727y(m31738n);
                }
            }
            c0932u.m31747e();
            if (m31742j > 0) {
                this.f4105b.invalidate();
            }
        }

        /* renamed from: m */
        public boolean mo31628m(LayoutParams layoutParams) {
            return layoutParams != null;
        }

        /* renamed from: m0 */
        public int m31805m0(View view) {
            return ((LayoutParams) view.getLayoutParams()).f4056b.top;
        }

        /* renamed from: m1 */
        public void m31804m1(View view, C0932u c0932u) {
            m31796p1(view);
            c0932u.m31763B(view);
        }

        /* renamed from: n0 */
        public void m31802n0(View view, boolean z, Rect rect) {
            Matrix matrix;
            if (z) {
                Rect rect2 = ((LayoutParams) view.getLayoutParams()).f4056b;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.f4105b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.f4105b.f4040w;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        /* renamed from: n1 */
        public void m31801n1(int i, C0932u c0932u) {
            View m31860I = m31860I(i);
            m31794q1(i);
            c0932u.m31763B(m31860I);
        }

        /* renamed from: o */
        public void mo31625o(int i, int i2, C0938y c0938y, AbstractC0924c abstractC0924c) {
        }

        /* renamed from: o0 */
        public int m31800o0() {
            return this.f4120q;
        }

        /* renamed from: o1 */
        public boolean m31799o1(Runnable runnable) {
            RecyclerView recyclerView = this.f4105b;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        /* renamed from: p */
        public void mo31798p(int i, AbstractC0924c abstractC0924c) {
        }

        /* renamed from: p0 */
        public int m31797p0() {
            return this.f4118o;
        }

        /* renamed from: p1 */
        public void m31796p1(View view) {
            this.f4104a.m31503p(view);
        }

        /* renamed from: q */
        public int mo31622q(C0938y c0938y) {
            return 0;
        }

        /* renamed from: q0 */
        public boolean m31795q0() {
            int m31858J = m31858J();
            for (int i = 0; i < m31858J; i++) {
                ViewGroup.LayoutParams layoutParams = m31860I(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: q1 */
        public void m31794q1(int i) {
            if (m31860I(i) != null) {
                this.f4104a.m31502q(i);
            }
        }

        /* renamed from: r */
        public int mo31620r(C0938y c0938y) {
            return 0;
        }

        /* renamed from: r0 */
        public boolean m31793r0() {
            return this.f4112i;
        }

        /* renamed from: r1 */
        public boolean m31792r1(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            return mo30672s1(recyclerView, view, rect, z, false);
        }

        /* renamed from: s */
        public int mo31618s(C0938y c0938y) {
            return 0;
        }

        /* renamed from: s0 */
        public boolean mo31617s0() {
            return this.f4113j;
        }

        /* renamed from: s1 */
        public boolean mo30672s1(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            int[] m31855L = m31855L(view, rect);
            int i = m31855L[0];
            int i2 = m31855L[1];
            if (!z2 || m31791t0(recyclerView, i, i2)) {
                if (i == 0 && i2 == 0) {
                    return false;
                }
                if (z) {
                    recyclerView.scrollBy(i, i2);
                    return true;
                }
                recyclerView.m32010m1(i, i2);
                return true;
            }
            return false;
        }

        /* renamed from: t */
        public int mo31615t(C0938y c0938y) {
            return 0;
        }

        /* renamed from: t1 */
        public void m31790t1() {
            RecyclerView recyclerView = this.f4105b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        /* renamed from: u */
        public int mo31613u(C0938y c0938y) {
            return 0;
        }

        /* renamed from: u0 */
        public final boolean m31789u0() {
            return this.f4115l;
        }

        /* renamed from: u1 */
        public void m31788u1() {
            this.f4111h = true;
        }

        /* renamed from: v */
        public int mo31611v(C0938y c0938y) {
            return 0;
        }

        /* renamed from: v0 */
        public boolean m31787v0(C0932u c0932u, C0938y c0938y) {
            return false;
        }

        /* renamed from: w */
        public void m31785w(C0932u c0932u) {
            for (int m31858J = m31858J() - 1; m31858J >= 0; m31858J--) {
                m31786v1(c0932u, m31858J, m31860I(m31858J));
            }
        }

        /* renamed from: w1 */
        public int mo31609w1(int i, C0932u c0932u, C0938y c0938y) {
            return 0;
        }

        /* renamed from: x */
        public void m31783x(int i) {
            m31781y(i, m31860I(i));
        }

        /* renamed from: x0 */
        public boolean m31782x0() {
            AbstractC0935x abstractC0935x = this.f4110g;
            return abstractC0935x != null && abstractC0935x.m31716h();
        }

        /* renamed from: x1 */
        public void mo31607x1(int i) {
        }

        /* renamed from: y0 */
        public boolean m31780y0(View view, boolean z, boolean z2) {
            boolean z3 = this.f4108e.m31331b(view, 24579) && this.f4109f.m31331b(view, 24579);
            return z ? z3 : !z3;
        }

        /* renamed from: y1 */
        public int mo27387y1(int i, C0932u c0932u, C0938y c0938y) {
            return 0;
        }

        /* renamed from: z */
        void m31779z(RecyclerView recyclerView) {
            this.f4112i = true;
            mo22278G0(recyclerView);
        }

        /* renamed from: z0 */
        public void m31778z0(View view, int i, int i2, int i3, int i4) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect = layoutParams.f4056b;
            view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        }

        @Deprecated
        /* renamed from: z1 */
        public void m31777z1(boolean z) {
            this.f4113j = z;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$p */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$p.class */
    public interface AbstractC0926p {
        /* renamed from: a */
        void mo30682a(View view);

        /* renamed from: b */
        void mo30681b(View view);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$q */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$q.class */
    public static abstract class AbstractC0927q {
        /* renamed from: a */
        public abstract boolean mo31341a(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$r */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$r.class */
    public interface AbstractC0928r {
        /* renamed from: a */
        void mo31461a(RecyclerView recyclerView, MotionEvent motionEvent);

        /* renamed from: b */
        boolean mo31460b(RecyclerView recyclerView, MotionEvent motionEvent);

        /* renamed from: c */
        void mo31459c(boolean z);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$s */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$s.class */
    public static abstract class AbstractC0929s {
        /* renamed from: a */
        public void mo4985a(RecyclerView recyclerView, int i) {
        }

        /* renamed from: b */
        public void mo4984b(RecyclerView recyclerView, int i, int i2) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$t */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$t.class */
    public static class C0930t {

        /* renamed from: a */
        SparseArray<C0931a> f4128a = new SparseArray<>();

        /* renamed from: b */
        private int f4129b = 0;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$t$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$t$a.class */
        public static class C0931a {

            /* renamed from: a */
            final ArrayList<AbstractC0905b0> f4130a = new ArrayList<>();

            /* renamed from: b */
            int f4131b = 5;

            /* renamed from: c */
            long f4132c = 0;

            /* renamed from: d */
            long f4133d = 0;

            C0931a() {
            }
        }

        /* renamed from: g */
        private C0931a m31770g(int i) {
            C0931a c0931a = this.f4128a.get(i);
            C0931a c0931a2 = c0931a;
            if (c0931a == null) {
                c0931a2 = new C0931a();
                this.f4128a.put(i, c0931a2);
            }
            return c0931a2;
        }

        /* renamed from: a */
        void m31776a() {
            this.f4129b++;
        }

        /* renamed from: b */
        public void m31775b() {
            for (int i = 0; i < this.f4128a.size(); i++) {
                this.f4128a.valueAt(i).f4130a.clear();
            }
        }

        /* renamed from: c */
        void m31774c() {
            this.f4129b--;
        }

        /* renamed from: d */
        void m31773d(int i, long j) {
            C0931a m31770g = m31770g(i);
            m31770g.f4133d = m31767j(m31770g.f4133d, j);
        }

        /* renamed from: e */
        void m31772e(int i, long j) {
            C0931a m31770g = m31770g(i);
            m31770g.f4132c = m31767j(m31770g.f4132c, j);
        }

        /* renamed from: f */
        public AbstractC0905b0 m31771f(int i) {
            C0931a c0931a = this.f4128a.get(i);
            if (c0931a == null || c0931a.f4130a.isEmpty()) {
                return null;
            }
            ArrayList<AbstractC0905b0> arrayList = c0931a.f4130a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (!arrayList.get(size).m31914r()) {
                    return arrayList.remove(size);
                }
            }
            return null;
        }

        /* renamed from: h */
        void m31769h(Adapter adapter, Adapter adapter2, boolean z) {
            if (adapter != null) {
                m31774c();
            }
            if (!z && this.f4129b == 0) {
                m31775b();
            }
            if (adapter2 != null) {
                m31776a();
            }
        }

        /* renamed from: i */
        public void m31768i(AbstractC0905b0 abstractC0905b0) {
            int m31920l = abstractC0905b0.m31920l();
            ArrayList<AbstractC0905b0> arrayList = m31770g(m31920l).f4130a;
            if (this.f4128a.get(m31920l).f4131b <= arrayList.size()) {
                return;
            }
            abstractC0905b0.m31940D();
            arrayList.add(abstractC0905b0);
        }

        /* renamed from: j */
        long m31767j(long j, long j2) {
            return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
        }

        /* renamed from: k */
        boolean m31766k(int i, long j, long j2) {
            long j3 = m31770g(i).f4133d;
            return j3 == 0 || j + j3 < j2;
        }

        /* renamed from: l */
        boolean m31765l(int i, long j, long j2) {
            long j3 = m31770g(i).f4132c;
            return j3 == 0 || j + j3 < j2;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$u */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$u.class */
    public final class C0932u {

        /* renamed from: a */
        final ArrayList<AbstractC0905b0> f4134a;

        /* renamed from: d */
        private final List<AbstractC0905b0> f4137d;

        /* renamed from: g */
        C0930t f4140g;

        /* renamed from: h */
        private AbstractC0939z f4141h;

        /* renamed from: b */
        ArrayList<AbstractC0905b0> f4135b = null;

        /* renamed from: c */
        final ArrayList<AbstractC0905b0> f4136c = new ArrayList<>();

        /* renamed from: e */
        private int f4138e = 2;

        /* renamed from: f */
        int f4139f = 2;

        public C0932u() {
            RecyclerView.this = r5;
            ArrayList<AbstractC0905b0> arrayList = new ArrayList<>();
            this.f4134a = arrayList;
            this.f4137d = Collections.unmodifiableList(arrayList);
        }

        /* renamed from: H */
        private boolean m31757H(AbstractC0905b0 abstractC0905b0, int i, int i2, long j) {
            abstractC0905b0.f4088t = null;
            abstractC0905b0.f4087s = RecyclerView.this;
            int m31920l = abstractC0905b0.m31920l();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j == Long.MAX_VALUE || this.f4140g.m31766k(m31920l, nanoTime, j)) {
                RecyclerView.this.f4042x.m31972a(abstractC0905b0, i);
                this.f4140g.m31773d(abstractC0905b0.m31920l(), RecyclerView.this.getNanoTime() - nanoTime);
                m31750b(abstractC0905b0);
                if (!RecyclerView.this.f4037u0.m31700e()) {
                    return true;
                }
                abstractC0905b0.f4076h = i2;
                return true;
            }
            return false;
        }

        /* renamed from: b */
        private void m31750b(AbstractC0905b0 abstractC0905b0) {
            if (RecyclerView.this.m31990t0()) {
                View view = abstractC0905b0.f4070b;
                if (C1679w.m29350A(view) == 0) {
                    C1679w.m29347B0(view, 1);
                }
                C0980k c0980k = RecyclerView.this.f3974B0;
                if (c0980k == null) {
                    return;
                }
                C1599a m31373n = c0980k.m31373n();
                if (m31373n instanceof C0980k.C0981a) {
                    ((C0980k.C0981a) m31373n).m31370o(view);
                }
                C1679w.m29273r0(view, m31373n);
            }
        }

        /* renamed from: q */
        private void m31735q(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    m31735q((ViewGroup) childAt, true);
                }
            }
            if (!z) {
                return;
            }
            if (viewGroup.getVisibility() == 4) {
                viewGroup.setVisibility(0);
                viewGroup.setVisibility(4);
                return;
            }
            int visibility = viewGroup.getVisibility();
            viewGroup.setVisibility(4);
            viewGroup.setVisibility(visibility);
        }

        /* renamed from: r */
        private void m31734r(AbstractC0905b0 abstractC0905b0) {
            View view = abstractC0905b0.f4070b;
            if (view instanceof ViewGroup) {
                m31735q((ViewGroup) view, false);
            }
        }

        /* renamed from: A */
        void m31764A(int i) {
            m31751a(this.f4136c.get(i), true);
            this.f4136c.remove(i);
        }

        /* renamed from: B */
        public void m31763B(View view) {
            AbstractC0905b0 m32029g0 = RecyclerView.m32029g0(view);
            if (m32029g0.m31908x()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (m32029g0.m31909w()) {
                m32029g0.m31933K();
            } else if (m32029g0.m31932L()) {
                m32029g0.m31927e();
            }
            m31762C(m32029g0);
            if (RecyclerView.this.f4010c0 == null || m32029g0.m31911u()) {
                return;
            }
            RecyclerView.this.f4010c0.mo31468j(m32029g0);
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x0062, code lost:
            if (r5.m31911u() != false) goto L23;
         */
        /* renamed from: C */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m31762C(androidx.recyclerview.widget.RecyclerView.AbstractC0905b0 r5) {
            /*
                Method dump skipped, instructions count: 513
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.C0932u.m31762C(androidx.recyclerview.widget.RecyclerView$b0):void");
        }

        /* renamed from: D */
        void m31761D(View view) {
            AbstractC0905b0 m32029g0 = RecyclerView.m32029g0(view);
            if (!m32029g0.m31916p(12) && m32029g0.m31907y() && !RecyclerView.this.m32000q(m32029g0)) {
                if (this.f4135b == null) {
                    this.f4135b = new ArrayList<>();
                }
                m32029g0.m31936H(this, true);
                this.f4135b.add(m32029g0);
            } else if (!m32029g0.m31912t() || m32029g0.m31910v() || RecyclerView.this.f4042x.m31968h()) {
                m32029g0.m31936H(this, false);
                this.f4134a.add(m32029g0);
            } else {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.m32067Q());
            }
        }

        /* renamed from: E */
        void m31760E(C0930t c0930t) {
            C0930t c0930t2 = this.f4140g;
            if (c0930t2 != null) {
                c0930t2.m31774c();
            }
            this.f4140g = c0930t;
            if (c0930t == null || RecyclerView.this.getAdapter() == null) {
                return;
            }
            this.f4140g.m31776a();
        }

        /* renamed from: F */
        void m31759F(AbstractC0939z abstractC0939z) {
        }

        /* renamed from: G */
        public void m31758G(int i) {
            this.f4138e = i;
            m31754K();
        }

        /* JADX WARN: Removed duplicated region for block: B:101:0x0374  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00c9  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x025e  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x028c  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x02cd  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x02e6  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x0321  */
        /* JADX WARN: Removed duplicated region for block: B:95:0x033a  */
        /* renamed from: I */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public androidx.recyclerview.widget.RecyclerView.AbstractC0905b0 m31756I(int r8, boolean r9, long r10) {
            /*
                Method dump skipped, instructions count: 997
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.C0932u.m31756I(int, boolean, long):androidx.recyclerview.widget.RecyclerView$b0");
        }

        /* renamed from: J */
        void m31755J(AbstractC0905b0 abstractC0905b0) {
            if (abstractC0905b0.f4084p) {
                this.f4135b.remove(abstractC0905b0);
            } else {
                this.f4134a.remove(abstractC0905b0);
            }
            abstractC0905b0.f4083o = null;
            abstractC0905b0.f4084p = false;
            abstractC0905b0.m31927e();
        }

        /* renamed from: K */
        public void m31754K() {
            AbstractC0921o abstractC0921o = RecyclerView.this.f4044y;
            this.f4139f = this.f4138e + (abstractC0921o != null ? abstractC0921o.f4116m : 0);
            for (int size = this.f4136c.size() - 1; size >= 0 && this.f4136c.size() > this.f4139f; size--) {
                m31764A(size);
            }
        }

        /* renamed from: L */
        boolean m31753L(AbstractC0905b0 abstractC0905b0) {
            if (abstractC0905b0.m31910v()) {
                return RecyclerView.this.f4037u0.m31700e();
            }
            int i = abstractC0905b0.f4072d;
            if (i < 0 || i >= RecyclerView.this.f4042x.mo4501d()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + abstractC0905b0 + RecyclerView.this.m32067Q());
            }
            boolean z = false;
            if (!RecyclerView.this.f4037u0.m31700e() && RecyclerView.this.f4042x.mo4499f(abstractC0905b0.f4072d) != abstractC0905b0.m31920l()) {
                return false;
            }
            if (!RecyclerView.this.f4042x.m31968h()) {
                return true;
            }
            if (abstractC0905b0.m31921k() == RecyclerView.this.f4042x.mo4500e(abstractC0905b0.f4072d)) {
                z = true;
            }
            return z;
        }

        /* renamed from: M */
        void m31752M(int i, int i2) {
            int i3;
            for (int size = this.f4136c.size() - 1; size >= 0; size--) {
                AbstractC0905b0 abstractC0905b0 = this.f4136c.get(size);
                if (abstractC0905b0 != null && (i3 = abstractC0905b0.f4072d) >= i && i3 < i2 + i) {
                    abstractC0905b0.m31930b(2);
                    m31764A(size);
                }
            }
        }

        /* renamed from: a */
        public void m31751a(AbstractC0905b0 abstractC0905b0, boolean z) {
            RecyclerView.m31994s(abstractC0905b0);
            View view = abstractC0905b0.f4070b;
            C0980k c0980k = RecyclerView.this.f3974B0;
            if (c0980k != null) {
                C1599a m31373n = c0980k.m31373n();
                C1679w.m29273r0(view, m31373n instanceof C0980k.C0981a ? ((C0980k.C0981a) m31373n).m31371n(view) : null);
            }
            if (z) {
                m31745g(abstractC0905b0);
            }
            abstractC0905b0.f4088t = null;
            abstractC0905b0.f4087s = null;
            m31743i().m31768i(abstractC0905b0);
        }

        /* renamed from: c */
        public void m31749c() {
            this.f4134a.clear();
            m31726z();
        }

        /* renamed from: d */
        void m31748d() {
            int size = this.f4136c.size();
            for (int i = 0; i < size; i++) {
                this.f4136c.get(i).m31929c();
            }
            int size2 = this.f4134a.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f4134a.get(i2).m31929c();
            }
            ArrayList<AbstractC0905b0> arrayList = this.f4135b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    this.f4135b.get(i3).m31929c();
                }
            }
        }

        /* renamed from: e */
        void m31747e() {
            this.f4134a.clear();
            ArrayList<AbstractC0905b0> arrayList = this.f4135b;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        /* renamed from: f */
        public int m31746f(int i) {
            if (i >= 0 && i < RecyclerView.this.f4037u0.m31703b()) {
                return !RecyclerView.this.f4037u0.m31700e() ? i : RecyclerView.this.f4026p.m31540m(i);
            }
            throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + RecyclerView.this.f4037u0.m31703b() + RecyclerView.this.m32067Q());
        }

        /* renamed from: g */
        void m31745g(AbstractC0905b0 abstractC0905b0) {
            AbstractC0933v abstractC0933v = RecyclerView.this.f4046z;
            if (abstractC0933v != null) {
                abstractC0933v.m31725a(abstractC0905b0);
            }
            int size = RecyclerView.this.f3971A.size();
            for (int i = 0; i < size; i++) {
                RecyclerView.this.f3971A.get(i).m31725a(abstractC0905b0);
            }
            Adapter adapter = RecyclerView.this.f4042x;
            if (adapter != null) {
                adapter.mo4496w(abstractC0905b0);
            }
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f4037u0 != null) {
                recyclerView.f4030r.m31304q(abstractC0905b0);
            }
        }

        /* renamed from: h */
        AbstractC0905b0 m31744h(int i) {
            int size;
            int m31540m;
            ArrayList<AbstractC0905b0> arrayList = this.f4135b;
            if (arrayList == null || (size = arrayList.size()) == 0) {
                return null;
            }
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0905b0 abstractC0905b0 = this.f4135b.get(i2);
                if (!abstractC0905b0.m31932L() && abstractC0905b0.m31919m() == i) {
                    abstractC0905b0.m31930b(32);
                    return abstractC0905b0;
                }
            }
            if (!RecyclerView.this.f4042x.m31968h() || (m31540m = RecyclerView.this.f4026p.m31540m(i)) <= 0 || m31540m >= RecyclerView.this.f4042x.mo4501d()) {
                return null;
            }
            long mo4500e = RecyclerView.this.f4042x.mo4500e(m31540m);
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC0905b0 abstractC0905b02 = this.f4135b.get(i3);
                if (!abstractC0905b02.m31932L() && abstractC0905b02.m31921k() == mo4500e) {
                    abstractC0905b02.m31930b(32);
                    return abstractC0905b02;
                }
            }
            return null;
        }

        /* renamed from: i */
        C0930t m31743i() {
            if (this.f4140g == null) {
                this.f4140g = new C0930t();
            }
            return this.f4140g;
        }

        /* renamed from: j */
        int m31742j() {
            return this.f4134a.size();
        }

        /* renamed from: k */
        public List<AbstractC0905b0> m31741k() {
            return this.f4137d;
        }

        /* renamed from: l */
        AbstractC0905b0 m31740l(long j, int i, boolean z) {
            for (int size = this.f4134a.size() - 1; size >= 0; size--) {
                AbstractC0905b0 abstractC0905b0 = this.f4134a.get(size);
                if (abstractC0905b0.m31921k() == j && !abstractC0905b0.m31932L()) {
                    if (i == abstractC0905b0.m31920l()) {
                        abstractC0905b0.m31930b(32);
                        if (abstractC0905b0.m31910v() && !RecyclerView.this.f4037u0.m31700e()) {
                            abstractC0905b0.m31938F(2, 14);
                        }
                        return abstractC0905b0;
                    } else if (!z) {
                        this.f4134a.remove(size);
                        RecyclerView.this.removeDetachedView(abstractC0905b0.f4070b, false);
                        m31727y(abstractC0905b0.f4070b);
                    }
                }
            }
            for (int size2 = this.f4136c.size() - 1; size2 >= 0; size2--) {
                AbstractC0905b0 abstractC0905b02 = this.f4136c.get(size2);
                if (abstractC0905b02.m31921k() == j && !abstractC0905b02.m31914r()) {
                    if (i == abstractC0905b02.m31920l()) {
                        if (!z) {
                            this.f4136c.remove(size2);
                        }
                        return abstractC0905b02;
                    } else if (!z) {
                        m31764A(size2);
                        return null;
                    }
                }
            }
            return null;
        }

        /* renamed from: m */
        AbstractC0905b0 m31739m(int i, boolean z) {
            View m31514e;
            int size = this.f4134a.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0905b0 abstractC0905b0 = this.f4134a.get(i2);
                if (!abstractC0905b0.m31932L() && abstractC0905b0.m31919m() == i && !abstractC0905b0.m31912t() && (RecyclerView.this.f4037u0.f4166h || !abstractC0905b0.m31910v())) {
                    abstractC0905b0.m31930b(32);
                    return abstractC0905b0;
                }
            }
            if (z || (m31514e = RecyclerView.this.f4028q.m31514e(i)) == null) {
                int size2 = this.f4136c.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    AbstractC0905b0 abstractC0905b02 = this.f4136c.get(i3);
                    if (!abstractC0905b02.m31912t() && abstractC0905b02.m31919m() == i && !abstractC0905b02.m31914r()) {
                        if (!z) {
                            this.f4136c.remove(i3);
                        }
                        return abstractC0905b02;
                    }
                }
                return null;
            }
            AbstractC0905b0 m32029g0 = RecyclerView.m32029g0(m31514e);
            RecyclerView.this.f4028q.m31500s(m31514e);
            int m31506m = RecyclerView.this.f4028q.m31506m(m31514e);
            if (m31506m != -1) {
                RecyclerView.this.f4028q.m31515d(m31506m);
                m31761D(m31514e);
                m32029g0.m31930b(8224);
                return m32029g0;
            }
            throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + m32029g0 + RecyclerView.this.m32067Q());
        }

        /* renamed from: n */
        View m31738n(int i) {
            return this.f4134a.get(i).f4070b;
        }

        /* renamed from: o */
        public View m31737o(int i) {
            return m31736p(i, false);
        }

        /* renamed from: p */
        View m31736p(int i, boolean z) {
            return m31756I(i, z, Long.MAX_VALUE).f4070b;
        }

        /* renamed from: s */
        void m31733s() {
            int size = this.f4136c.size();
            for (int i = 0; i < size; i++) {
                LayoutParams layoutParams = (LayoutParams) this.f4136c.get(i).f4070b.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.f4057c = true;
                }
            }
        }

        /* renamed from: t */
        void m31732t() {
            int size = this.f4136c.size();
            for (int i = 0; i < size; i++) {
                AbstractC0905b0 abstractC0905b0 = this.f4136c.get(i);
                if (abstractC0905b0 != null) {
                    abstractC0905b0.m31930b(6);
                    abstractC0905b0.m31931a(null);
                }
            }
            Adapter adapter = RecyclerView.this.f4042x;
            if (adapter == null || !adapter.m31968h()) {
                m31726z();
            }
        }

        /* renamed from: u */
        void m31731u(int i, int i2) {
            int size = this.f4136c.size();
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC0905b0 abstractC0905b0 = this.f4136c.get(i3);
                if (abstractC0905b0 != null && abstractC0905b0.f4072d >= i) {
                    abstractC0905b0.m31943A(i2, false);
                }
            }
        }

        /* renamed from: v */
        void m31730v(int i, int i2) {
            int i3;
            int i4;
            int i5;
            int i6;
            if (i < i2) {
                i5 = -1;
                i4 = i;
                i3 = i2;
            } else {
                i5 = 1;
                i3 = i;
                i4 = i2;
            }
            int size = this.f4136c.size();
            for (int i7 = 0; i7 < size; i7++) {
                AbstractC0905b0 abstractC0905b0 = this.f4136c.get(i7);
                if (abstractC0905b0 != null && (i6 = abstractC0905b0.f4072d) >= i4 && i6 <= i3) {
                    if (i6 == i) {
                        abstractC0905b0.m31943A(i2 - i, false);
                    } else {
                        abstractC0905b0.m31943A(i5, false);
                    }
                }
            }
        }

        /* renamed from: w */
        void m31729w(int i, int i2, boolean z) {
            for (int size = this.f4136c.size() - 1; size >= 0; size--) {
                AbstractC0905b0 abstractC0905b0 = this.f4136c.get(size);
                if (abstractC0905b0 != null) {
                    int i3 = abstractC0905b0.f4072d;
                    if (i3 >= i + i2) {
                        abstractC0905b0.m31943A(-i2, z);
                    } else if (i3 >= i) {
                        abstractC0905b0.m31930b(8);
                        m31764A(size);
                    }
                }
            }
        }

        /* renamed from: x */
        void m31728x(Adapter adapter, Adapter adapter2, boolean z) {
            m31749c();
            m31743i().m31769h(adapter, adapter2, z);
        }

        /* renamed from: y */
        void m31727y(View view) {
            AbstractC0905b0 m32029g0 = RecyclerView.m32029g0(view);
            m32029g0.f4083o = null;
            m32029g0.f4084p = false;
            m32029g0.m31927e();
            m31762C(m32029g0);
        }

        /* renamed from: z */
        void m31726z() {
            for (int size = this.f4136c.size() - 1; size >= 0; size--) {
                m31764A(size);
            }
            this.f4136c.clear();
            if (RecyclerView.f3966h) {
                RecyclerView.this.f4035t0.m31428b();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$v */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$v.class */
    public interface AbstractC0933v {
        /* renamed from: a */
        void m31725a(AbstractC0905b0 abstractC0905b0);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$w */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$w.class */
    public class C0934w extends AbstractC0912i {
        C0934w() {
            RecyclerView.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0912i
        /* renamed from: a */
        public void mo22252a() {
            RecyclerView.this.m32003p(null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f4037u0.f4165g = true;
            recyclerView.m32066Q0(true);
            if (!RecyclerView.this.f4026p.m31537p()) {
                RecyclerView.this.requestLayout();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0912i
        /* renamed from: c */
        public void mo30675c(int i, int i2, Object obj) {
            RecyclerView.this.m32003p(null);
            if (RecyclerView.this.f4026p.m31535r(i, i2, obj)) {
                m31724f();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0912i
        /* renamed from: d */
        public void mo22250d(int i, int i2) {
            RecyclerView.this.m32003p(null);
            if (RecyclerView.this.f4026p.m31534s(i, i2)) {
                m31724f();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0912i
        /* renamed from: e */
        public void mo22249e(int i, int i2) {
            RecyclerView.this.m32003p(null);
            if (RecyclerView.this.f4026p.m31533t(i, i2)) {
                m31724f();
            }
        }

        /* renamed from: f */
        void m31724f() {
            if (RecyclerView.f3965g) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.f3981F && recyclerView.f3979E) {
                    C1679w.m29289j0(recyclerView, recyclerView.f4034t);
                    return;
                }
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            recyclerView2.f3997N = true;
            recyclerView2.requestLayout();
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$x */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$x.class */
    public static abstract class AbstractC0935x {

        /* renamed from: b */
        private RecyclerView f4145b;

        /* renamed from: c */
        private AbstractC0921o f4146c;

        /* renamed from: d */
        private boolean f4147d;

        /* renamed from: e */
        private boolean f4148e;

        /* renamed from: f */
        private View f4149f;

        /* renamed from: h */
        private boolean f4151h;

        /* renamed from: a */
        private int f4144a = -1;

        /* renamed from: g */
        private final C0936a f4150g = new C0936a(0, 0);

        /* renamed from: androidx.recyclerview.widget.RecyclerView$x$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$x$a.class */
        public static class C0936a {

            /* renamed from: a */
            private int f4152a;

            /* renamed from: b */
            private int f4153b;

            /* renamed from: c */
            private int f4154c;

            /* renamed from: d */
            private int f4155d;

            /* renamed from: e */
            private Interpolator f4156e;

            /* renamed from: f */
            private boolean f4157f;

            /* renamed from: g */
            private int f4158g;

            public C0936a(int i, int i2) {
                this(i, i2, Integer.MIN_VALUE, null);
            }

            public C0936a(int i, int i2, int i3, Interpolator interpolator) {
                this.f4155d = -1;
                this.f4157f = false;
                this.f4158g = 0;
                this.f4152a = i;
                this.f4153b = i2;
                this.f4154c = i3;
                this.f4156e = interpolator;
            }

            /* renamed from: e */
            private void m31705e() {
                if (this.f4156e == null || this.f4154c >= 1) {
                    if (this.f4154c < 1) {
                        throw new IllegalStateException("Scroll duration must be a positive number");
                    }
                    return;
                }
                throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
            }

            /* renamed from: a */
            boolean m31709a() {
                return this.f4155d >= 0;
            }

            /* renamed from: b */
            public void m31708b(int i) {
                this.f4155d = i;
            }

            /* renamed from: c */
            void m31707c(RecyclerView recyclerView) {
                int i = this.f4155d;
                if (i >= 0) {
                    this.f4155d = -1;
                    recyclerView.m31981w0(i);
                    this.f4157f = false;
                } else if (!this.f4157f) {
                    this.f4158g = 0;
                } else {
                    m31705e();
                    recyclerView.f4031r0.m31945e(this.f4152a, this.f4153b, this.f4154c, this.f4156e);
                    int i2 = this.f4158g + 1;
                    this.f4158g = i2;
                    if (i2 > 10) {
                        Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                    }
                    this.f4157f = false;
                }
            }

            /* renamed from: d */
            public void m31706d(int i, int i2, int i3, Interpolator interpolator) {
                this.f4152a = i;
                this.f4153b = i2;
                this.f4154c = i3;
                this.f4156e = interpolator;
                this.f4157f = true;
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$x$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$x$b.class */
        public interface AbstractC0937b {
            /* renamed from: a */
            PointF mo31646a(int i);
        }

        /* renamed from: a */
        public PointF m31723a(int i) {
            AbstractC0921o m31719e = m31719e();
            if (m31719e instanceof AbstractC0937b) {
                return ((AbstractC0937b) m31719e).mo31646a(i);
            }
            Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + AbstractC0937b.class.getCanonicalName());
            return null;
        }

        /* renamed from: b */
        public View m31722b(int i) {
            return this.f4145b.f4044y.mo31870C(i);
        }

        /* renamed from: c */
        public int m31721c() {
            return this.f4145b.f4044y.m31858J();
        }

        /* renamed from: d */
        public int m31720d(View view) {
            return this.f4145b.m32035e0(view);
        }

        /* renamed from: e */
        public AbstractC0921o m31719e() {
            return this.f4146c;
        }

        /* renamed from: f */
        public int m31718f() {
            return this.f4144a;
        }

        /* renamed from: g */
        public boolean m31717g() {
            return this.f4147d;
        }

        /* renamed from: h */
        public boolean m31716h() {
            return this.f4148e;
        }

        /* renamed from: i */
        public void m31715i(PointF pointF) {
            float f = pointF.x;
            float f2 = pointF.y;
            float sqrt = (float) Math.sqrt((f * f) + (f2 * f2));
            pointF.x /= sqrt;
            pointF.y /= sqrt;
        }

        /* renamed from: j */
        void m31714j(int i, int i2) {
            PointF m31723a;
            RecyclerView recyclerView = this.f4145b;
            if (this.f4144a == -1 || recyclerView == null) {
                m31710r();
            }
            if (this.f4147d && this.f4149f == null && this.f4146c != null && (m31723a = m31723a(this.f4144a)) != null) {
                float f = m31723a.x;
                if (f != 0.0f || m31723a.y != 0.0f) {
                    recyclerView.m32025h1((int) Math.signum(f), (int) Math.signum(m31723a.y), null);
                }
            }
            this.f4147d = false;
            View view = this.f4149f;
            if (view != null) {
                if (m31720d(view) == this.f4144a) {
                    mo31375o(this.f4149f, recyclerView.f4037u0, this.f4150g);
                    this.f4150g.m31707c(recyclerView);
                    m31710r();
                } else {
                    Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                    this.f4149f = null;
                }
            }
            if (this.f4148e) {
                mo31418l(i, i2, recyclerView.f4037u0, this.f4150g);
                boolean m31709a = this.f4150g.m31709a();
                this.f4150g.m31707c(recyclerView);
                if (!m31709a || !this.f4148e) {
                    return;
                }
                this.f4147d = true;
                recyclerView.f4031r0.m31946d();
            }
        }

        /* renamed from: k */
        protected void m31713k(View view) {
            if (m31720d(view) == m31718f()) {
                this.f4149f = view;
            }
        }

        /* renamed from: l */
        protected abstract void mo31418l(int i, int i2, C0938y c0938y, C0936a c0936a);

        /* renamed from: m */
        protected abstract void mo31417m();

        /* renamed from: n */
        protected abstract void mo31416n();

        /* renamed from: o */
        protected abstract void mo31375o(View view, C0938y c0938y, C0936a c0936a);

        /* renamed from: p */
        public void m31712p(int i) {
            this.f4144a = i;
        }

        /* renamed from: q */
        void m31711q(RecyclerView recyclerView, AbstractC0921o abstractC0921o) {
            recyclerView.f4031r0.m31944f();
            if (this.f4151h) {
                Log.w("RecyclerView", "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
            }
            this.f4145b = recyclerView;
            this.f4146c = abstractC0921o;
            int i = this.f4144a;
            if (i != -1) {
                recyclerView.f4037u0.f4159a = i;
                this.f4148e = true;
                this.f4147d = true;
                this.f4149f = m31722b(m31718f());
                mo31417m();
                this.f4145b.f4031r0.m31946d();
                this.f4151h = true;
                return;
            }
            throw new IllegalArgumentException("Invalid target position");
        }

        /* renamed from: r */
        public final void m31710r() {
            if (!this.f4148e) {
                return;
            }
            this.f4148e = false;
            mo31416n();
            this.f4145b.f4037u0.f4159a = -1;
            this.f4149f = null;
            this.f4144a = -1;
            this.f4147d = false;
            this.f4146c.m31820f1(this);
            this.f4146c = null;
            this.f4145b = null;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$y */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$y.class */
    public static class C0938y {

        /* renamed from: b */
        private SparseArray<Object> f4160b;

        /* renamed from: m */
        int f4171m;

        /* renamed from: n */
        long f4172n;

        /* renamed from: o */
        int f4173o;

        /* renamed from: p */
        int f4174p;

        /* renamed from: q */
        int f4175q;

        /* renamed from: a */
        int f4159a = -1;

        /* renamed from: c */
        int f4161c = 0;

        /* renamed from: d */
        int f4162d = 0;

        /* renamed from: e */
        int f4163e = 1;

        /* renamed from: f */
        int f4164f = 0;

        /* renamed from: g */
        boolean f4165g = false;

        /* renamed from: h */
        boolean f4166h = false;

        /* renamed from: i */
        boolean f4167i = false;

        /* renamed from: j */
        boolean f4168j = false;

        /* renamed from: k */
        boolean f4169k = false;

        /* renamed from: l */
        boolean f4170l = false;

        /* renamed from: a */
        void m31704a(int i) {
            if ((this.f4163e & i) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.f4163e));
        }

        /* renamed from: b */
        public int m31703b() {
            return this.f4166h ? this.f4161c - this.f4162d : this.f4164f;
        }

        /* renamed from: c */
        public int m31702c() {
            return this.f4159a;
        }

        /* renamed from: d */
        public boolean m31701d() {
            return this.f4159a != -1;
        }

        /* renamed from: e */
        public boolean m31700e() {
            return this.f4166h;
        }

        /* renamed from: f */
        public void m31699f(Adapter adapter) {
            this.f4163e = 1;
            this.f4164f = adapter.mo4501d();
            this.f4166h = false;
            this.f4167i = false;
            this.f4168j = false;
        }

        /* renamed from: g */
        public boolean m31698g() {
            return this.f4170l;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f4159a + ", mData=" + this.f4160b + ", mItemCount=" + this.f4164f + ", mIsMeasuring=" + this.f4168j + ", mPreviousLayoutItemCount=" + this.f4161c + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f4162d + ", mStructureChanged=" + this.f4165g + ", mInPreLayout=" + this.f4166h + ", mRunSimpleAnimations=" + this.f4169k + ", mRunPredictiveAnimations=" + this.f4170l + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$z */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$z.class */
    public static abstract class AbstractC0939z {
    }

    static {
        int i = Build.VERSION.SDK_INT;
        f3963e = i == 18 || i == 19 || i == 20;
        f3964f = i >= 23;
        f3965g = i >= 16;
        f3966h = i >= 21;
        f3967i = i <= 15;
        f3968j = i <= 15;
        Class<?> cls = Integer.TYPE;
        f3969k = new Class[]{Context.class, AttributeSet.class, cls, cls};
        f3970l = new animationInterpolatorC0906c();
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1768a.recyclerViewStyle);
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f4020m = new C0934w();
        this.f4022n = new C0932u();
        this.f4030r = new C0989p();
        this.f4034t = new RunnableC0902a();
        this.f4036u = new Rect();
        this.f4038v = new Rect();
        this.f4040w = new RectF();
        this.f3971A = new ArrayList();
        this.f3973B = new ArrayList<>();
        this.f3975C = new ArrayList<>();
        this.f3987I = 0;
        this.f4001Q = false;
        this.f4002R = false;
        this.f4003S = 0;
        this.f4004T = 0;
        this.f4005U = new C0914k();
        this.f4010c0 = new C0951c();
        this.f4011d0 = 0;
        this.f4012e0 = -1;
        this.f4025o0 = Float.MIN_VALUE;
        this.f4027p0 = Float.MIN_VALUE;
        this.f4029q0 = true;
        this.f4031r0 = new RunnableC0903a0();
        this.f4035t0 = f3966h ? new RunnableC0967e.C0969b() : null;
        this.f4037u0 = new C0938y();
        this.f4043x0 = false;
        this.f4045y0 = false;
        this.f4047z0 = new C0919m();
        this.f3972A0 = false;
        this.f3978D0 = new int[2];
        this.f3982F0 = new int[2];
        this.f3984G0 = new int[2];
        this.f3986H0 = new int[2];
        this.f3988I0 = new ArrayList();
        this.f3990J0 = new RunnableC0904b();
        this.f3994L0 = 0;
        this.f3996M0 = 0;
        this.f3998N0 = new C0907d();
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f4018k0 = viewConfiguration.getScaledTouchSlop();
        this.f4025o0 = C1693x.m29218b(viewConfiguration, context);
        this.f4027p0 = C1693x.m29215e(viewConfiguration, context);
        this.f4021m0 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f4023n0 = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.f4010c0.m31885v(this.f4047z0);
        m32005o0();
        m31999q0();
        m32002p0();
        if (C1679w.m29350A(this) == 0) {
            C1679w.m29347B0(this, 1);
        }
        this.f3999O = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new C0980k(this));
        int[] iArr = C1770c.RecyclerView;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        C1679w.m29277p0(this, context, iArr, attributeSet, obtainStyledAttributes, i, 0);
        String string = obtainStyledAttributes.getString(C1770c.RecyclerView_layoutManager);
        if (obtainStyledAttributes.getInt(C1770c.RecyclerView_android_descendantFocusability, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.f4032s = obtainStyledAttributes.getBoolean(C1770c.RecyclerView_android_clipToPadding, true);
        boolean z = obtainStyledAttributes.getBoolean(C1770c.RecyclerView_fastScrollEnabled, false);
        this.f3983G = z;
        if (z) {
            m31996r0((StateListDrawable) obtainStyledAttributes.getDrawable(C1770c.RecyclerView_fastScrollVerticalThumbDrawable), obtainStyledAttributes.getDrawable(C1770c.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) obtainStyledAttributes.getDrawable(C1770c.RecyclerView_fastScrollHorizontalThumbDrawable), obtainStyledAttributes.getDrawable(C1770c.RecyclerView_fastScrollHorizontalTrackDrawable));
        }
        obtainStyledAttributes.recycle();
        m31982w(context, string, attributeSet, i, 0);
        boolean z2 = true;
        if (Build.VERSION.SDK_INT >= 21) {
            int[] iArr2 = f3962d;
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i, 0);
            C1679w.m29277p0(this, context, iArr2, attributeSet, obtainStyledAttributes2, i, 0);
            z2 = obtainStyledAttributes2.getBoolean(0, true);
            obtainStyledAttributes2.recycle();
        }
        setNestedScrollingEnabled(z2);
    }

    /* renamed from: B */
    private void m32095B() {
        int i = this.f3995M;
        this.f3995M = 0;
        if (i == 0 || !m31990t0()) {
            return;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain();
        obtain.setEventType(2048);
        C1633b.m29529b(obtain, i);
        sendAccessibilityEventUnchecked(obtain);
    }

    /* renamed from: D */
    private void m32091D() {
        boolean z = true;
        this.f4037u0.m31704a(1);
        m32065R(this.f4037u0);
        this.f4037u0.f4168j = false;
        m31995r1();
        this.f4030r.m31315f();
        m32082H0();
        m32068P0();
        m32034e1();
        C0938y c0938y = this.f4037u0;
        if (!c0938y.f4169k || !this.f4045y0) {
            z = false;
        }
        c0938y.f4167i = z;
        this.f4045y0 = false;
        this.f4043x0 = false;
        c0938y.f4166h = c0938y.f4170l;
        c0938y.f4164f = this.f4042x.mo4501d();
        m32057V(this.f3978D0);
        if (this.f4037u0.f4169k) {
            int m31512g = this.f4028q.m31512g();
            for (int i = 0; i < m31512g; i++) {
                AbstractC0905b0 m32029g0 = m32029g0(this.f4028q.m31513f(i));
                if (!m32029g0.m31934J() && (!m32029g0.m31912t() || this.f4042x.m31968h())) {
                    this.f4030r.m31316e(m32029g0, this.f4010c0.m31886t(this.f4037u0, m32029g0, AbstractC0915l.m31896e(m32029g0), m32029g0.m31917o()));
                    if (this.f4037u0.f4167i && m32029g0.m31907y() && !m32029g0.m31910v() && !m32029g0.m31934J() && !m32029g0.m31912t()) {
                        this.f4030r.m31318c(m32038d0(m32029g0), m32029g0);
                    }
                }
            }
        }
        if (this.f4037u0.f4170l) {
            m32031f1();
            C0938y c0938y2 = this.f4037u0;
            boolean z2 = c0938y2.f4165g;
            c0938y2.f4165g = false;
            this.f4044y.mo27380X0(this.f4022n, c0938y2);
            this.f4037u0.f4165g = z2;
            for (int i2 = 0; i2 < this.f4028q.m31512g(); i2++) {
                AbstractC0905b0 m32029g02 = m32029g0(this.f4028q.m31513f(i2));
                if (!m32029g02.m31934J() && !this.f4030r.m31312i(m32029g02)) {
                    int m31896e = AbstractC0915l.m31896e(m32029g02);
                    boolean m31916p = m32029g02.m31916p(8192);
                    int i3 = m31896e;
                    if (!m31916p) {
                        i3 = m31896e | 4096;
                    }
                    AbstractC0915l.C0918c m31886t = this.f4010c0.m31886t(this.f4037u0, m32029g02, i3, m32029g02.m31917o());
                    if (m31916p) {
                        m32062S0(m32029g02, m31886t);
                    } else {
                        this.f4030r.m31320a(m32029g02, m31886t);
                    }
                }
            }
            m31991t();
        } else {
            m31991t();
        }
        m32080I0();
        m31989t1(false);
        this.f4037u0.f4163e = 2;
    }

    /* renamed from: E */
    private void m32089E() {
        m31995r1();
        m32082H0();
        this.f4037u0.m31704a(6);
        this.f4026p.m31543j();
        this.f4037u0.f4164f = this.f4042x.mo4501d();
        this.f4037u0.f4162d = 0;
        if (this.f4024o != null && this.f4042x.m31971b()) {
            Parcelable parcelable = this.f4024o.f4059f;
            if (parcelable != null) {
                this.f4044y.mo31643c1(parcelable);
            }
            this.f4024o = null;
        }
        C0938y c0938y = this.f4037u0;
        c0938y.f4166h = false;
        this.f4044y.mo27380X0(this.f4022n, c0938y);
        C0938y c0938y2 = this.f4037u0;
        c0938y2.f4165g = false;
        c0938y2.f4169k = c0938y2.f4169k && this.f4010c0 != null;
        c0938y2.f4163e = 4;
        m32080I0();
        m31989t1(false);
    }

    /* renamed from: F */
    private void m32087F() {
        this.f4037u0.m31704a(4);
        m31995r1();
        m32082H0();
        C0938y c0938y = this.f4037u0;
        c0938y.f4163e = 1;
        if (c0938y.f4169k) {
            for (int m31512g = this.f4028q.m31512g() - 1; m31512g >= 0; m31512g--) {
                AbstractC0905b0 m32029g0 = m32029g0(this.f4028q.m31513f(m31512g));
                if (!m32029g0.m31934J()) {
                    long m32038d0 = m32038d0(m32029g0);
                    AbstractC0915l.C0918c m31887s = this.f4010c0.m31887s(this.f4037u0, m32029g0);
                    AbstractC0905b0 m31314g = this.f4030r.m31314g(m32038d0);
                    if (m31314g == null || m31314g.m31934J()) {
                        this.f4030r.m31317d(m32029g0, m31887s);
                    } else {
                        boolean m31313h = this.f4030r.m31313h(m31314g);
                        boolean m31313h2 = this.f4030r.m31313h(m32029g0);
                        if (!m31313h || m31314g != m32029g0) {
                            AbstractC0915l.C0918c m31307n = this.f4030r.m31307n(m31314g);
                            this.f4030r.m31317d(m32029g0, m31887s);
                            AbstractC0915l.C0918c m31308m = this.f4030r.m31308m(m32029g0);
                            if (m31307n == null) {
                                m32014l0(m32038d0, m32029g0, m31314g);
                            } else {
                                m32009n(m31314g, m32029g0, m31307n, m31308m, m31313h, m31313h2);
                            }
                        } else {
                            this.f4030r.m31317d(m32029g0, m31887s);
                        }
                    }
                }
            }
            this.f4030r.m31306o(this.f3998N0);
        }
        this.f4044y.m31806l1(this.f4022n);
        C0938y c0938y2 = this.f4037u0;
        c0938y2.f4161c = c0938y2.f4164f;
        this.f4001Q = false;
        this.f4002R = false;
        c0938y2.f4169k = false;
        c0938y2.f4170l = false;
        this.f4044y.f4111h = false;
        ArrayList<AbstractC0905b0> arrayList = this.f4022n.f4135b;
        if (arrayList != null) {
            arrayList.clear();
        }
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o.f4117n) {
            abstractC0921o.f4116m = 0;
            abstractC0921o.f4117n = false;
            this.f4022n.m31754K();
        }
        this.f4044y.mo31649Y0(this.f4037u0);
        m32080I0();
        m31989t1(false);
        this.f4030r.m31315f();
        int[] iArr = this.f3978D0;
        if (m31976y(iArr[0], iArr[1])) {
            m32079J(0, 0);
        }
        m32060T0();
        m32040c1();
    }

    /* renamed from: K0 */
    private void m32076K0(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f4012e0) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f4012e0 = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.f4016i0 = x;
            this.f4014g0 = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.f4017j0 = y;
            this.f4015h0 = y;
        }
    }

    /* renamed from: L */
    private boolean m32075L(MotionEvent motionEvent) {
        AbstractC0928r abstractC0928r = this.f3977D;
        if (abstractC0928r == null) {
            if (motionEvent.getAction() != 0) {
                return m32059U(motionEvent);
            }
            return false;
        }
        abstractC0928r.mo31461a(this, motionEvent);
        int action = motionEvent.getAction();
        if (action != 3 && action != 1) {
            return true;
        }
        this.f3977D = null;
        return true;
    }

    /* renamed from: O0 */
    private boolean m32070O0() {
        return this.f4010c0 != null && this.f4044y.mo31676M1();
    }

    /* renamed from: P0 */
    private void m32068P0() {
        boolean z;
        if (this.f4001Q) {
            this.f4026p.m31529x();
            if (this.f4002R) {
                this.f4044y.mo31663S0(this);
            }
        }
        if (m32070O0()) {
            this.f4026p.m31531v();
        } else {
            this.f4026p.m31543j();
        }
        boolean z2 = this.f4043x0 || this.f4045y0;
        this.f4037u0.f4169k = this.f3985H && this.f4010c0 != null && ((z = this.f4001Q) || z2 || this.f4044y.f4111h) && (!z || this.f4042x.m31968h());
        C0938y c0938y = this.f4037u0;
        boolean z3 = false;
        if (c0938y.f4169k) {
            z3 = false;
            if (z2) {
                z3 = false;
                if (!this.f4001Q) {
                    z3 = false;
                    if (m32070O0()) {
                        z3 = true;
                    }
                }
            }
        }
        c0938y.f4170l = z3;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0079  */
    /* renamed from: R0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m32064R0(float r7, float r8, float r9, float r10) {
        /*
            Method dump skipped, instructions count: 186
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m32064R0(float, float, float, float):void");
    }

    /* renamed from: T0 */
    private void m32060T0() {
        View view;
        if (!this.f4029q0 || this.f4042x == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            View focusedChild = getFocusedChild();
            if (!f3968j || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                if (!this.f4028q.m31505n(focusedChild)) {
                    return;
                }
            } else if (this.f4028q.m31512g() == 0) {
                requestFocus();
                return;
            }
        }
        AbstractC0905b0 m32049Z = (this.f4037u0.f4172n == -1 || !this.f4042x.m31968h()) ? null : m32049Z(this.f4037u0.f4172n);
        if (m32049Z == null || this.f4028q.m31505n(m32049Z.f4070b) || !m32049Z.f4070b.hasFocusable()) {
            view = null;
            if (this.f4028q.m31512g() > 0) {
                view = m32053X();
            }
        } else {
            view = m32049Z.f4070b;
        }
        if (view == null) {
            return;
        }
        int i = this.f4037u0.f4173o;
        View view2 = view;
        if (i != -1) {
            View findViewById = view.findViewById(i);
            view2 = view;
            if (findViewById != null) {
                view2 = view;
                if (findViewById.isFocusable()) {
                    view2 = findViewById;
                }
            }
        }
        view2.requestFocus();
    }

    /* renamed from: U */
    private boolean m32059U(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.f3975C.size();
        for (int i = 0; i < size; i++) {
            AbstractC0928r abstractC0928r = this.f3975C.get(i);
            if (abstractC0928r.mo31460b(this, motionEvent) && action != 3) {
                this.f3977D = abstractC0928r;
                return true;
            }
        }
        return false;
    }

    /* renamed from: U0 */
    private void m32058U0() {
        boolean z;
        EdgeEffect edgeEffect = this.f4006V;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.f4006V.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.f4007W;
        boolean z2 = z;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z2 = z | this.f4007W.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f4008a0;
        boolean z3 = z2;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z3 = z2 | this.f4008a0.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f4009b0;
        boolean z4 = z3;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z4 = z3 | this.f4009b0.isFinished();
        }
        if (z4) {
            C1679w.m29293h0(this);
        }
    }

    /* renamed from: V */
    private void m32057V(int[] iArr) {
        int i;
        int m31512g = this.f4028q.m31512g();
        if (m31512g == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MIN_VALUE;
        int i4 = 0;
        while (i4 < m31512g) {
            AbstractC0905b0 m32029g0 = m32029g0(this.f4028q.m31513f(i4));
            if (m32029g0.m31934J()) {
                i = i3;
            } else {
                int m31919m = m32029g0.m31919m();
                int i5 = i2;
                if (m31919m < i2) {
                    i5 = m31919m;
                }
                i2 = i5;
                i = i3;
                if (m31919m > i3) {
                    i = m31919m;
                    i2 = i5;
                }
            }
            i4++;
            i3 = i;
        }
        iArr[0] = i2;
        iArr[1] = i3;
    }

    /* renamed from: W */
    static RecyclerView m32055W(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView m32055W = m32055W(viewGroup.getChildAt(i));
            if (m32055W != null) {
                return m32055W;
            }
        }
        return null;
    }

    /* renamed from: X */
    private View m32053X() {
        AbstractC0905b0 m32051Y;
        AbstractC0905b0 m32051Y2;
        C0938y c0938y = this.f4037u0;
        int i = c0938y.f4171m;
        if (i == -1) {
            i = 0;
        }
        int m31703b = c0938y.m31703b();
        for (int i2 = i; i2 < m31703b && (m32051Y2 = m32051Y(i2)) != null; i2++) {
            if (m32051Y2.f4070b.hasFocusable()) {
                return m32051Y2.f4070b;
            }
        }
        for (int min = Math.min(m31703b, i) - 1; min >= 0 && (m32051Y = m32051Y(min)) != null; min--) {
            if (m32051Y.f4070b.hasFocusable()) {
                return m32051Y.f4070b;
            }
        }
        return null;
    }

    /* renamed from: b1 */
    private void m32043b1(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.f4036u.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (!layoutParams2.f4057c) {
                Rect rect = layoutParams2.f4056b;
                Rect rect2 = this.f4036u;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.f4036u);
            offsetRectIntoDescendantCoords(view, this.f4036u);
        }
        this.f4044y.mo30672s1(this, view, this.f4036u, !this.f3985H, view2 == null);
    }

    /* renamed from: c1 */
    private void m32040c1() {
        C0938y c0938y = this.f4037u0;
        c0938y.f4172n = -1L;
        c0938y.f4171m = -1;
        c0938y.f4173o = -1;
    }

    /* renamed from: d1 */
    private void m32037d1() {
        VelocityTracker velocityTracker = this.f4013f0;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        m31986u1(0);
        m32058U0();
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* renamed from: e1 */
    private void m32034e1() {
        View focusedChild = (!this.f4029q0 || !hasFocus() || this.f4042x == null) ? null : getFocusedChild();
        AbstractC0905b0 m32061T = focusedChild == null ? null : m32061T(focusedChild);
        if (m32061T == null) {
            m32040c1();
            return;
        }
        this.f4037u0.f4172n = this.f4042x.m31968h() ? m32061T.m31921k() : (char) 65535;
        this.f4037u0.f4171m = this.f4001Q ? -1 : m32061T.m31910v() ? m32061T.f4073e : m32061T.m31922j();
        this.f4037u0.f4173o = m32023i0(m32061T.f4070b);
    }

    /* renamed from: g */
    private void m32030g(AbstractC0905b0 abstractC0905b0) {
        View view = abstractC0905b0.f4070b;
        boolean z = view.getParent() == this;
        this.f4022n.m31755J(m32032f0(view));
        if (abstractC0905b0.m31908x()) {
            this.f4028q.m31516c(view, -1, view.getLayoutParams(), true);
        } else if (!z) {
            this.f4028q.m31517b(view, true);
        } else {
            this.f4028q.m31508k(view);
        }
    }

    /* renamed from: g0 */
    public static AbstractC0905b0 m32029g0(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).f4055a;
    }

    private C1668l getScrollingChildHelper() {
        if (this.f3980E0 == null) {
            this.f3980E0 = new C1668l(this);
        }
        return this.f3980E0;
    }

    /* renamed from: h0 */
    static void m32026h0(View view, Rect rect) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect2 = layoutParams.f4056b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
    }

    /* renamed from: i0 */
    private int m32023i0(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            View focusedChild = ((ViewGroup) view).getFocusedChild();
            view = focusedChild;
            if (focusedChild.getId() != -1) {
                id = focusedChild.getId();
                view = focusedChild;
            }
        }
        return id;
    }

    /* renamed from: j0 */
    private String m32020j0(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        } else if (str.contains(".")) {
            return str;
        } else {
            return RecyclerView.class.getPackage().getName() + '.' + str;
        }
    }

    /* renamed from: j1 */
    private void m32019j1(Adapter adapter, boolean z, boolean z2) {
        Adapter adapter2 = this.f4042x;
        if (adapter2 != null) {
            adapter2.m31958z(this.f4020m);
            this.f4042x.mo22212s(this);
        }
        if (!z || z2) {
            m32056V0();
        }
        this.f4026p.m31529x();
        Adapter adapter3 = this.f4042x;
        this.f4042x = adapter;
        if (adapter != null) {
            adapter.m31960x(this.f4020m);
            adapter.mo22214o(this);
        }
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o != null) {
            abstractC0921o.mo31689E0(adapter3, this.f4042x);
        }
        this.f4022n.m31728x(adapter3, this.f4042x, z);
        this.f4037u0.f4165g = true;
    }

    /* renamed from: l0 */
    private void m32014l0(long j, AbstractC0905b0 abstractC0905b0, AbstractC0905b0 abstractC0905b02) {
        int m31512g = this.f4028q.m31512g();
        for (int i = 0; i < m31512g; i++) {
            AbstractC0905b0 m32029g0 = m32029g0(this.f4028q.m31513f(i));
            if (m32029g0 != abstractC0905b0 && m32038d0(m32029g0) == j) {
                Adapter adapter = this.f4042x;
                if (adapter == null || !adapter.m31968h()) {
                    throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + m32029g0 + " \n View Holder 2:" + abstractC0905b0 + m32067Q());
                }
                throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + m32029g0 + " \n View Holder 2:" + abstractC0905b0 + m32067Q());
            }
        }
        Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + abstractC0905b02 + " cannot be found but it is necessary for " + abstractC0905b0 + m32067Q());
    }

    /* renamed from: n */
    private void m32009n(AbstractC0905b0 abstractC0905b0, AbstractC0905b0 abstractC0905b02, AbstractC0915l.C0918c c0918c, AbstractC0915l.C0918c c0918c2, boolean z, boolean z2) {
        abstractC0905b0.m31937G(false);
        if (z) {
            m32030g(abstractC0905b0);
        }
        if (abstractC0905b0 != abstractC0905b02) {
            if (z2) {
                m32030g(abstractC0905b02);
            }
            abstractC0905b0.f4077i = abstractC0905b02;
            m32030g(abstractC0905b0);
            this.f4022n.m31755J(abstractC0905b0);
            abstractC0905b02.m31937G(false);
            abstractC0905b02.f4078j = abstractC0905b0;
        }
        if (this.f4010c0.mo31349b(abstractC0905b0, abstractC0905b02, c0918c, c0918c2)) {
            m32072N0();
        }
    }

    /* renamed from: n0 */
    private boolean m32008n0() {
        int m31512g = this.f4028q.m31512g();
        for (int i = 0; i < m31512g; i++) {
            AbstractC0905b0 m32029g0 = m32029g0(this.f4028q.m31513f(i));
            if (m32029g0 != null && !m32029g0.m31934J() && m32029g0.m31907y()) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: p0 */
    private void m32002p0() {
        if (C1679w.m29348B(this) == 0) {
            C1679w.m29345C0(this, 8);
        }
    }

    /* renamed from: q0 */
    private void m31999q0() {
        this.f4028q = new C0948b(new C0908e());
    }

    /* renamed from: r */
    private void m31997r() {
        m32037d1();
        setScrollState(0);
    }

    /* renamed from: s */
    static void m31994s(AbstractC0905b0 abstractC0905b0) {
        WeakReference<RecyclerView> weakReference = abstractC0905b0.f4071c;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (true) {
                View view = recyclerView;
                if (view == null) {
                    abstractC0905b0.f4071c = null;
                    return;
                } else if (view == abstractC0905b0.f4070b) {
                    return;
                } else {
                    ViewParent parent = view.getParent();
                    recyclerView = parent instanceof View ? (View) parent : null;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:90:0x01ee, code lost:
        if ((r17 * r19) > 0) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x020e, code lost:
        if ((r17 * r19) < 0) goto L100;
     */
    /* renamed from: v0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m31984v0(android.view.View r7, android.view.View r8, int r9) {
        /*
            Method dump skipped, instructions count: 535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m31984v0(android.view.View, android.view.View, int):boolean");
    }

    /* renamed from: w */
    private void m31982w(Context context, String str, AttributeSet attributeSet, int i, int i2) {
        Constructor constructor;
        if (str != null) {
            String trim = str.trim();
            if (trim.isEmpty()) {
                return;
            }
            String m32020j0 = m32020j0(context, trim);
            try {
                Class<? extends U> asSubclass = Class.forName(m32020j0, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(AbstractC0921o.class);
                Object[] objArr = null;
                try {
                    Constructor constructor2 = asSubclass.getConstructor(f3969k);
                    objArr = new Object[]{context, attributeSet, Integer.valueOf(i), Integer.valueOf(i2)};
                    constructor = constructor2;
                } catch (NoSuchMethodException e) {
                    try {
                        constructor = asSubclass.getConstructor(new Class[0]);
                    } catch (NoSuchMethodException e2) {
                        e2.initCause(e);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + m32020j0, e2);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((AbstractC0921o) constructor.newInstance(objArr));
            } catch (ClassCastException e3) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + m32020j0, e3);
            } catch (ClassNotFoundException e4) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + m32020j0, e4);
            } catch (IllegalAccessException e5) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + m32020j0, e5);
            } catch (InstantiationException e6) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + m32020j0, e6);
            } catch (InvocationTargetException e7) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + m32020j0, e7);
            }
        }
    }

    /* renamed from: w1 */
    private void m31980w1() {
        this.f4031r0.m31944f();
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o != null) {
            abstractC0921o.m31853L1();
        }
    }

    /* renamed from: y */
    private boolean m31976y(int i, int i2) {
        m32057V(this.f3978D0);
        int[] iArr = this.f3978D0;
        boolean z = false;
        if (iArr[0] != i || iArr[1] != i2) {
            z = true;
        }
        return z;
    }

    /* renamed from: z0 */
    private void m31973z0(int i, int i2, MotionEvent motionEvent, int i3) {
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (this.f3991K) {
        } else {
            int[] iArr = this.f3986H0;
            iArr[0] = 0;
            iArr[1] = 0;
            boolean mo31631k = abstractC0921o.mo31631k();
            boolean mo27381l = this.f4044y.mo27381l();
            int i4 = mo31631k ? 1 : 0;
            int i5 = i4;
            if (mo27381l) {
                i5 = i4 | 2;
            }
            m31992s1(i5, i3);
            int i6 = i;
            int i7 = i2;
            if (m32085G(mo31631k ? i : 0, mo27381l ? i2 : 0, this.f3986H0, this.f3982F0, i3)) {
                int[] iArr2 = this.f3986H0;
                i6 = i - iArr2[0];
                i7 = i2 - iArr2[1];
            }
            int i8 = mo31631k ? i6 : 0;
            int i9 = 0;
            if (mo27381l) {
                i9 = i7;
            }
            m32028g1(i8, i9, motionEvent, i3);
            RunnableC0967e runnableC0967e = this.f4033s0;
            if (runnableC0967e != null && (i6 != 0 || i7 != 0)) {
                runnableC0967e.m31435f(this, i6, i7);
            }
            m31986u1(i3);
        }
    }

    /* renamed from: A */
    void m32097A(View view) {
        AbstractC0905b0 m32029g0 = m32029g0(view);
        m32084G0(view);
        Adapter adapter = this.f4042x;
        if (adapter != null && m32029g0 != null) {
            adapter.mo22210v(m32029g0);
        }
        List<AbstractC0926p> list = this.f4000P;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f4000P.get(size).mo30682a(view);
            }
        }
    }

    /* renamed from: A0 */
    public void m32096A0(int i) {
        int m31512g = this.f4028q.m31512g();
        for (int i2 = 0; i2 < m31512g; i2++) {
            this.f4028q.m31513f(i2).offsetLeftAndRight(i);
        }
    }

    /* renamed from: B0 */
    public void m32094B0(int i) {
        int m31512g = this.f4028q.m31512g();
        for (int i2 = 0; i2 < m31512g; i2++) {
            this.f4028q.m31513f(i2).offsetTopAndBottom(i);
        }
    }

    /* renamed from: C */
    void m32093C() {
        if (this.f4042x == null) {
            Log.w("RecyclerView", "No adapter attached; skipping layout");
        } else if (this.f4044y == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
        } else {
            this.f4037u0.f4168j = false;
            boolean z = this.f3992K0 && !(this.f3994L0 == getWidth() && this.f3996M0 == getHeight());
            this.f3994L0 = 0;
            this.f3996M0 = 0;
            this.f3992K0 = false;
            if (this.f4037u0.f4163e == 1) {
                m32091D();
                this.f4044y.m31874A1(this);
                m32089E();
            } else if (this.f4026p.m31536q() || z || this.f4044y.m31800o0() != getWidth() || this.f4044y.m31837W() != getHeight()) {
                this.f4044y.m31874A1(this);
                m32089E();
            } else {
                this.f4044y.m31874A1(this);
            }
            m32087F();
        }
    }

    /* renamed from: C0 */
    void m32092C0(int i, int i2) {
        int m31509j = this.f4028q.m31509j();
        for (int i3 = 0; i3 < m31509j; i3++) {
            AbstractC0905b0 m32029g0 = m32029g0(this.f4028q.m31510i(i3));
            if (m32029g0 != null && !m32029g0.m31934J() && m32029g0.f4072d >= i) {
                m32029g0.m31943A(i2, false);
                this.f4037u0.f4165g = true;
            }
        }
        this.f4022n.m31731u(i, i2);
        requestLayout();
    }

    /* renamed from: D0 */
    void m32090D0(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int m31509j = this.f4028q.m31509j();
        if (i < i2) {
            i5 = -1;
            i4 = i;
            i3 = i2;
        } else {
            i3 = i;
            i4 = i2;
            i5 = 1;
        }
        for (int i7 = 0; i7 < m31509j; i7++) {
            AbstractC0905b0 m32029g0 = m32029g0(this.f4028q.m31510i(i7));
            if (m32029g0 != null && (i6 = m32029g0.f4072d) >= i4 && i6 <= i3) {
                if (i6 == i) {
                    m32029g0.m31943A(i2 - i, false);
                } else {
                    m32029g0.m31943A(i5, false);
                }
                this.f4037u0.f4165g = true;
            }
        }
        this.f4022n.m31730v(i, i2);
        requestLayout();
    }

    /* renamed from: E0 */
    void m32088E0(int i, int i2, boolean z) {
        int m31509j = this.f4028q.m31509j();
        for (int i3 = 0; i3 < m31509j; i3++) {
            AbstractC0905b0 m32029g0 = m32029g0(this.f4028q.m31510i(i3));
            if (m32029g0 != null && !m32029g0.m31934J()) {
                int i4 = m32029g0.f4072d;
                if (i4 >= i + i2) {
                    m32029g0.m31943A(-i2, z);
                    this.f4037u0.f4165g = true;
                } else if (i4 >= i) {
                    m32029g0.m31923i(i - 1, -i2, z);
                    this.f4037u0.f4165g = true;
                }
            }
        }
        this.f4022n.m31729w(i, i2, z);
        requestLayout();
    }

    /* renamed from: F0 */
    public void m32086F0(View view) {
    }

    /* renamed from: G */
    public boolean m32085G(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().m29381d(i, i2, iArr, iArr2, i3);
    }

    /* renamed from: G0 */
    public void m32084G0(View view) {
    }

    /* renamed from: H */
    public final void m32083H(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        getScrollingChildHelper().m29380e(i, i2, i3, i4, iArr, i5, iArr2);
    }

    /* renamed from: H0 */
    public void m32082H0() {
        this.f4003S++;
    }

    /* renamed from: I */
    void m32081I(int i) {
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o != null) {
            abstractC0921o.mo31639e1(i);
        }
        mo22256L0(i);
        AbstractC0929s abstractC0929s = this.f4039v0;
        if (abstractC0929s != null) {
            abstractC0929s.mo4985a(this, i);
        }
        List<AbstractC0929s> list = this.f4041w0;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f4041w0.get(size).mo4985a(this, i);
            }
        }
    }

    /* renamed from: I0 */
    void m32080I0() {
        m32078J0(true);
    }

    /* renamed from: J */
    void m32079J(int i, int i2) {
        this.f4004T++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        mo22255M0(i, i2);
        AbstractC0929s abstractC0929s = this.f4039v0;
        if (abstractC0929s != null) {
            abstractC0929s.mo4984b(this, i, i2);
        }
        List<AbstractC0929s> list = this.f4041w0;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f4041w0.get(size).mo4984b(this, i, i2);
            }
        }
        this.f4004T--;
    }

    /* renamed from: J0 */
    public void m32078J0(boolean z) {
        int i = this.f4003S - 1;
        this.f4003S = i;
        if (i < 1) {
            this.f4003S = 0;
            if (!z) {
                return;
            }
            m32095B();
            m32077K();
        }
    }

    /* renamed from: K */
    void m32077K() {
        int i;
        for (int size = this.f3988I0.size() - 1; size >= 0; size--) {
            AbstractC0905b0 abstractC0905b0 = this.f3988I0.get(size);
            if (abstractC0905b0.f4070b.getParent() == this && !abstractC0905b0.m31934J() && (i = abstractC0905b0.f4086r) != -1) {
                C1679w.m29347B0(abstractC0905b0.f4070b, i);
                abstractC0905b0.f4086r = -1;
            }
        }
        this.f3988I0.clear();
    }

    /* renamed from: L0 */
    public void mo22256L0(int i) {
    }

    /* renamed from: M */
    void m32074M() {
        if (this.f4009b0 != null) {
            return;
        }
        EdgeEffect m31897a = this.f4005U.m31897a(this, 3);
        this.f4009b0 = m31897a;
        if (this.f4032s) {
            m31897a.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            m31897a.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    /* renamed from: M0 */
    public void mo22255M0(int i, int i2) {
    }

    /* renamed from: N */
    void m32073N() {
        if (this.f4006V != null) {
            return;
        }
        EdgeEffect m31897a = this.f4005U.m31897a(this, 0);
        this.f4006V = m31897a;
        if (this.f4032s) {
            m31897a.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            m31897a.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    /* renamed from: N0 */
    void m32072N0() {
        if (this.f3972A0 || !this.f3979E) {
            return;
        }
        C1679w.m29289j0(this, this.f3990J0);
        this.f3972A0 = true;
    }

    /* renamed from: O */
    void m32071O() {
        if (this.f4008a0 != null) {
            return;
        }
        EdgeEffect m31897a = this.f4005U.m31897a(this, 2);
        this.f4008a0 = m31897a;
        if (this.f4032s) {
            m31897a.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            m31897a.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    /* renamed from: P */
    void m32069P() {
        if (this.f4007W != null) {
            return;
        }
        EdgeEffect m31897a = this.f4005U.m31897a(this, 1);
        this.f4007W = m31897a;
        if (this.f4032s) {
            m31897a.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            m31897a.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    /* renamed from: Q */
    String m32067Q() {
        return " " + super.toString() + ", adapter:" + this.f4042x + ", layout:" + this.f4044y + ", context:" + getContext();
    }

    /* renamed from: Q0 */
    void m32066Q0(boolean z) {
        this.f4002R = z | this.f4002R;
        this.f4001Q = true;
        m31975y0();
    }

    /* renamed from: R */
    final void m32065R(C0938y c0938y) {
        if (getScrollState() != 2) {
            c0938y.f4174p = 0;
            c0938y.f4175q = 0;
            return;
        }
        OverScroller overScroller = this.f4031r0.f4063f;
        c0938y.f4174p = overScroller.getFinalX() - overScroller.getCurrX();
        c0938y.f4175q = overScroller.getFinalY() - overScroller.getCurrY();
    }

    /* renamed from: S */
    public View m32063S(View view) {
        ViewParent viewParent;
        ViewParent parent = view.getParent();
        while (true) {
            viewParent = parent;
            if (viewParent == null || viewParent == this || !(viewParent instanceof View)) {
                break;
            }
            view = (View) viewParent;
            parent = view.getParent();
        }
        if (viewParent != this) {
            view = null;
        }
        return view;
    }

    /* renamed from: S0 */
    void m32062S0(AbstractC0905b0 abstractC0905b0, AbstractC0915l.C0918c c0918c) {
        abstractC0905b0.m31938F(0, 8192);
        if (this.f4037u0.f4167i && abstractC0905b0.m31907y() && !abstractC0905b0.m31910v() && !abstractC0905b0.m31934J()) {
            this.f4030r.m31318c(m32038d0(abstractC0905b0), abstractC0905b0);
        }
        this.f4030r.m31316e(abstractC0905b0, c0918c);
    }

    /* renamed from: T */
    public AbstractC0905b0 m32061T(View view) {
        View m32063S = m32063S(view);
        return m32063S == null ? null : m32032f0(m32063S);
    }

    /* renamed from: V0 */
    public void m32056V0() {
        AbstractC0915l abstractC0915l = this.f4010c0;
        if (abstractC0915l != null) {
            abstractC0915l.mo31467k();
        }
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o != null) {
            abstractC0921o.m31808k1(this.f4022n);
            this.f4044y.m31806l1(this.f4022n);
        }
        this.f4022n.m31749c();
    }

    /* renamed from: W0 */
    boolean m32054W0(View view) {
        m31995r1();
        boolean m31501r = this.f4028q.m31501r(view);
        if (m31501r) {
            AbstractC0905b0 m32029g0 = m32029g0(view);
            this.f4022n.m31755J(m32029g0);
            this.f4022n.m31762C(m32029g0);
        }
        m31989t1(!m31501r);
        return m31501r;
    }

    /* renamed from: X0 */
    public void m32052X0(AbstractC0920n abstractC0920n) {
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o != null) {
            abstractC0921o.mo31636g("Cannot remove item decoration during a scroll  or layout");
        }
        this.f3973B.remove(abstractC0920n);
        if (this.f3973B.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        m31978x0();
        requestLayout();
    }

    /* renamed from: Y */
    public AbstractC0905b0 m32051Y(int i) {
        AbstractC0905b0 abstractC0905b0 = null;
        if (this.f4001Q) {
            return null;
        }
        int m31509j = this.f4028q.m31509j();
        int i2 = 0;
        while (i2 < m31509j) {
            AbstractC0905b0 m32029g0 = m32029g0(this.f4028q.m31510i(i2));
            AbstractC0905b0 abstractC0905b02 = abstractC0905b0;
            if (m32029g0 != null) {
                abstractC0905b02 = abstractC0905b0;
                if (!m32029g0.m31910v()) {
                    abstractC0905b02 = abstractC0905b0;
                    if (m32041c0(m32029g0) != i) {
                        continue;
                    } else if (!this.f4028q.m31505n(m32029g0.f4070b)) {
                        return m32029g0;
                    } else {
                        abstractC0905b02 = m32029g0;
                    }
                } else {
                    continue;
                }
            }
            i2++;
            abstractC0905b0 = abstractC0905b02;
        }
        return abstractC0905b0;
    }

    /* renamed from: Y0 */
    public void m32050Y0(AbstractC0928r abstractC0928r) {
        this.f3975C.remove(abstractC0928r);
        if (this.f3977D == abstractC0928r) {
            this.f3977D = null;
        }
    }

    /* renamed from: Z */
    public AbstractC0905b0 m32049Z(long j) {
        Adapter adapter = this.f4042x;
        AbstractC0905b0 abstractC0905b0 = null;
        AbstractC0905b0 abstractC0905b02 = null;
        if (adapter != null) {
            if (adapter.m31968h()) {
                int m31509j = this.f4028q.m31509j();
                int i = 0;
                while (true) {
                    abstractC0905b02 = abstractC0905b0;
                    if (i >= m31509j) {
                        break;
                    }
                    AbstractC0905b0 m32029g0 = m32029g0(this.f4028q.m31510i(i));
                    AbstractC0905b0 abstractC0905b03 = abstractC0905b0;
                    if (m32029g0 != null) {
                        abstractC0905b03 = abstractC0905b0;
                        if (!m32029g0.m31910v()) {
                            abstractC0905b03 = abstractC0905b0;
                            if (m32029g0.m31921k() != j) {
                                continue;
                            } else if (!this.f4028q.m31505n(m32029g0.f4070b)) {
                                return m32029g0;
                            } else {
                                abstractC0905b03 = m32029g0;
                            }
                        } else {
                            continue;
                        }
                    }
                    i++;
                    abstractC0905b0 = abstractC0905b03;
                }
            } else {
                abstractC0905b02 = null;
            }
        }
        return abstractC0905b02;
    }

    /* renamed from: Z0 */
    public void m32048Z0(AbstractC0929s abstractC0929s) {
        List<AbstractC0929s> list = this.f4041w0;
        if (list != null) {
            list.remove(abstractC0929s);
        }
    }

    /* renamed from: a */
    void m32047a(int i, int i2) {
        if (i < 0) {
            m32073N();
            if (this.f4006V.isFinished()) {
                this.f4006V.onAbsorb(-i);
            }
        } else if (i > 0) {
            m32071O();
            if (this.f4008a0.isFinished()) {
                this.f4008a0.onAbsorb(i);
            }
        }
        if (i2 < 0) {
            m32069P();
            if (this.f4007W.isFinished()) {
                this.f4007W.onAbsorb(-i2);
            }
        } else if (i2 > 0) {
            m32074M();
            if (this.f4009b0.isFinished()) {
                this.f4009b0.onAbsorb(i2);
            }
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        C1679w.m29293h0(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0071 A[SYNTHETIC] */
    /* renamed from: a0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    androidx.recyclerview.widget.RecyclerView.AbstractC0905b0 m32046a0(int r4, boolean r5) {
        /*
            r3 = this;
            r0 = r3
            androidx.recyclerview.widget.b r0 = r0.f4028q
            int r0 = r0.m31509j()
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
        Le:
            r0 = r8
            r1 = r6
            if (r0 >= r1) goto L7e
            r0 = r3
            androidx.recyclerview.widget.b r0 = r0.f4028q
            r1 = r8
            android.view.View r0 = r0.m31510i(r1)
            androidx.recyclerview.widget.RecyclerView$b0 r0 = m32029g0(r0)
            r9 = r0
            r0 = r7
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L74
            r0 = r7
            r10 = r0
            r0 = r9
            boolean r0 = r0.m31910v()
            if (r0 != 0) goto L74
            r0 = r5
            if (r0 == 0) goto L4b
            r0 = r9
            int r0 = r0.f4072d
            r1 = r4
            if (r0 == r1) goto L5b
            r0 = r7
            r10 = r0
            goto L74
        L4b:
            r0 = r9
            int r0 = r0.m31919m()
            r1 = r4
            if (r0 == r1) goto L5b
            r0 = r7
            r10 = r0
            goto L74
        L5b:
            r0 = r3
            androidx.recyclerview.widget.b r0 = r0.f4028q
            r1 = r9
            android.view.View r1 = r1.f4070b
            boolean r0 = r0.m31505n(r1)
            if (r0 == 0) goto L71
            r0 = r9
            r10 = r0
            goto L74
        L71:
            r0 = r9
            return r0
        L74:
            int r8 = r8 + 1
            r0 = r10
            r7 = r0
            goto Le
        L7e:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m32046a0(int, boolean):androidx.recyclerview.widget.RecyclerView$b0");
    }

    /* renamed from: a1 */
    void m32045a1() {
        AbstractC0905b0 abstractC0905b0;
        int m31512g = this.f4028q.m31512g();
        for (int i = 0; i < m31512g; i++) {
            View m31513f = this.f4028q.m31513f(i);
            AbstractC0905b0 m32032f0 = m32032f0(m31513f);
            if (m32032f0 != null && (abstractC0905b0 = m32032f0.f4078j) != null) {
                View view = abstractC0905b0.f4070b;
                int left = m31513f.getLeft();
                int top = m31513f.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o == null || !abstractC0921o.m31867F0(this, arrayList, i, i2)) {
            super.addFocusables(arrayList, i, i2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0040, code lost:
        if (java.lang.Math.abs(r6) < r5.f4021m0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0056, code lost:
        if (java.lang.Math.abs(r7) < r5.f4021m0) goto L18;
     */
    /* renamed from: b0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m32044b0(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m32044b0(int, int):boolean");
    }

    /* renamed from: c0 */
    int m32041c0(AbstractC0905b0 abstractC0905b0) {
        if (abstractC0905b0.m31916p(524) || !abstractC0905b0.m31913s()) {
            return -1;
        }
        return this.f4026p.m31548e(abstractC0905b0.f4072d);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && this.f4044y.mo31628m((LayoutParams) layoutParams);
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        AbstractC0921o abstractC0921o = this.f4044y;
        int i = 0;
        if (abstractC0921o == null) {
            return 0;
        }
        if (abstractC0921o.mo31631k()) {
            i = this.f4044y.mo31622q(this.f4037u0);
        }
        return i;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        AbstractC0921o abstractC0921o = this.f4044y;
        int i = 0;
        if (abstractC0921o == null) {
            return 0;
        }
        if (abstractC0921o.mo31631k()) {
            i = this.f4044y.mo31620r(this.f4037u0);
        }
        return i;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        AbstractC0921o abstractC0921o = this.f4044y;
        int i = 0;
        if (abstractC0921o == null) {
            return 0;
        }
        if (abstractC0921o.mo31631k()) {
            i = this.f4044y.mo31618s(this.f4037u0);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        AbstractC0921o abstractC0921o = this.f4044y;
        int i = 0;
        if (abstractC0921o == null) {
            return 0;
        }
        if (abstractC0921o.mo27381l()) {
            i = this.f4044y.mo31615t(this.f4037u0);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        AbstractC0921o abstractC0921o = this.f4044y;
        int i = 0;
        if (abstractC0921o == null) {
            return 0;
        }
        if (abstractC0921o.mo27381l()) {
            i = this.f4044y.mo31613u(this.f4037u0);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        AbstractC0921o abstractC0921o = this.f4044y;
        int i = 0;
        if (abstractC0921o == null) {
            return 0;
        }
        if (abstractC0921o.mo27381l()) {
            i = this.f4044y.mo31611v(this.f4037u0);
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: d0 */
    long m32038d0(AbstractC0905b0 abstractC0905b0) {
        return this.f4042x.m31968h() ? abstractC0905b0.m31921k() : abstractC0905b0.f4072d;
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().m29384a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().m29383b(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().m29382c(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().m29379f(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        super.draw(canvas);
        int size = this.f3973B.size();
        for (int i = 0; i < size; i++) {
            this.f3973B.get(i).mo31458i(canvas, this, this.f4037u0);
        }
        EdgeEffect edgeEffect = this.f4006V;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.f4032s ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.f4006V;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.f4007W;
        boolean z2 = z;
        if (edgeEffect3 != null) {
            z2 = z;
            if (!edgeEffect3.isFinished()) {
                int save2 = canvas.save();
                if (this.f4032s) {
                    canvas.translate(getPaddingLeft(), getPaddingTop());
                }
                EdgeEffect edgeEffect4 = this.f4007W;
                z2 = z | (edgeEffect4 != null && edgeEffect4.draw(canvas));
                canvas.restoreToCount(save2);
            }
        }
        EdgeEffect edgeEffect5 = this.f4008a0;
        boolean z3 = z2;
        if (edgeEffect5 != null) {
            z3 = z2;
            if (!edgeEffect5.isFinished()) {
                int save3 = canvas.save();
                int width = getWidth();
                int paddingTop = this.f4032s ? getPaddingTop() : 0;
                canvas.rotate(90.0f);
                canvas.translate(paddingTop, -width);
                EdgeEffect edgeEffect6 = this.f4008a0;
                z3 = z2 | (edgeEffect6 != null && edgeEffect6.draw(canvas));
                canvas.restoreToCount(save3);
            }
        }
        EdgeEffect edgeEffect7 = this.f4009b0;
        boolean z4 = z3;
        if (edgeEffect7 != null) {
            z4 = z3;
            if (!edgeEffect7.isFinished()) {
                int save4 = canvas.save();
                canvas.rotate(180.0f);
                if (this.f4032s) {
                    canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
                } else {
                    canvas.translate(-getWidth(), -getHeight());
                }
                EdgeEffect edgeEffect8 = this.f4009b0;
                boolean z5 = false;
                if (edgeEffect8 != null) {
                    z5 = false;
                    if (edgeEffect8.draw(canvas)) {
                        z5 = true;
                    }
                }
                z4 = z3 | z5;
                canvas.restoreToCount(save4);
            }
        }
        if (!z4 && this.f4010c0 != null && this.f3973B.size() > 0 && this.f4010c0.mo31466p()) {
            z4 = true;
        }
        if (z4) {
            C1679w.m29293h0(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    /* renamed from: e0 */
    public int m32035e0(View view) {
        AbstractC0905b0 m32029g0 = m32029g0(view);
        return m32029g0 != null ? m32029g0.m31919m() : -1;
    }

    /* renamed from: f0 */
    public AbstractC0905b0 m32032f0(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return m32029g0(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    /* renamed from: f1 */
    void m32031f1() {
        int m31509j = this.f4028q.m31509j();
        for (int i = 0; i < m31509j; i++) {
            AbstractC0905b0 m32029g0 = m32029g0(this.f4028q.m31510i(i));
            if (!m32029g0.m31934J()) {
                m32029g0.m31939E();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i) {
        View view2;
        boolean z;
        View m31844Q0 = this.f4044y.m31844Q0(view, i);
        if (m31844Q0 != null) {
            return m31844Q0;
        }
        boolean z2 = this.f4042x != null && this.f4044y != null && !m31987u0() && !this.f3991K;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (!z2 || !(i == 2 || i == 1)) {
            view2 = focusFinder.findNextFocus(this, view, i);
            if (view2 == null && z2) {
                m31985v();
                if (m32063S(view) == null) {
                    return null;
                }
                m31995r1();
                view2 = this.f4044y.mo31681J0(view, i, this.f4022n, this.f4037u0);
                m31989t1(false);
            }
        } else {
            if (this.f4044y.mo27381l()) {
                int i2 = i == 2 ? 130 : 33;
                boolean z3 = focusFinder.findNextFocus(this, view, i2) == null;
                z = z3;
                if (f3967i) {
                    i = i2;
                    z = z3;
                }
            } else {
                z = false;
            }
            boolean z4 = z;
            int i3 = i;
            if (!z) {
                z4 = z;
                i3 = i;
                if (this.f4044y.mo31631k()) {
                    int i4 = (this.f4044y.m31834Z() == 1) ^ (i == 2) ? 66 : 17;
                    boolean z5 = focusFinder.findNextFocus(this, view, i4) == null;
                    if (f3967i) {
                        i = i4;
                    }
                    z4 = z5;
                    i3 = i;
                }
            }
            if (z4) {
                m31985v();
                if (m32063S(view) == null) {
                    return null;
                }
                m31995r1();
                this.f4044y.mo31681J0(view, i3, this.f4022n, this.f4037u0);
                m31989t1(false);
            }
            view2 = focusFinder.findNextFocus(this, view, i3);
            i = i3;
        }
        if (view2 == null || view2.hasFocusable()) {
            if (!m31984v0(view, view2, i)) {
                view2 = super.focusSearch(view, i);
            }
            return view2;
        } else if (getFocusedChild() == null) {
            return super.focusSearch(view, i);
        } else {
            m32043b1(view2, null);
            return view;
        }
    }

    /* renamed from: g1 */
    boolean m32028g1(int i, int i2, MotionEvent motionEvent, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        m31985v();
        if (this.f4042x != null) {
            int[] iArr = this.f3986H0;
            iArr[0] = 0;
            iArr[1] = 0;
            m32025h1(i, i2, iArr);
            int[] iArr2 = this.f3986H0;
            int i8 = iArr2[0];
            int i9 = iArr2[1];
            i5 = i9;
            i4 = i8;
            i7 = i - i8;
            i6 = i2 - i9;
        } else {
            i5 = 0;
            i4 = 0;
            i7 = 0;
            i6 = 0;
        }
        if (!this.f3973B.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.f3986H0;
        iArr3[0] = 0;
        iArr3[1] = 0;
        m32083H(i4, i5, i7, i6, this.f3982F0, i3, iArr3);
        int[] iArr4 = this.f3986H0;
        int i10 = iArr4[0];
        int i11 = iArr4[1];
        boolean z = (iArr4[0] == 0 && iArr4[1] == 0) ? false : true;
        int i12 = this.f4016i0;
        int[] iArr5 = this.f3982F0;
        this.f4016i0 = i12 - iArr5[0];
        this.f4017j0 -= iArr5[1];
        int[] iArr6 = this.f3984G0;
        iArr6[0] = iArr6[0] + iArr5[0];
        iArr6[1] = iArr6[1] + iArr5[1];
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !C1666j.m29385g(motionEvent, 8194)) {
                m32064R0(motionEvent.getX(), i7 - i10, motionEvent.getY(), i6 - i11);
            }
            m31988u(i, i2);
        }
        if (i4 != 0 || i5 != 0) {
            m32079J(i4, i5);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        boolean z2 = true;
        if (!z) {
            z2 = true;
            if (i4 == 0) {
                z2 = i5 != 0;
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o != null) {
            return abstractC0921o.mo27390D();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m32067Q());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o != null) {
            return abstractC0921o.mo31690E(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m32067Q());
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o != null) {
            return abstractC0921o.mo31687F(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m32067Q());
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public Adapter getAdapter() {
        return this.f4042x;
    }

    @Override // android.view.View
    public int getBaseline() {
        AbstractC0921o abstractC0921o = this.f4044y;
        return abstractC0921o != null ? abstractC0921o.m31865G() : super.getBaseline();
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        AbstractC0913j abstractC0913j = this.f3976C0;
        return abstractC0913j == null ? super.getChildDrawingOrder(i, i2) : abstractC0913j.m31898a(i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f4032s;
    }

    public C0980k getCompatAccessibilityDelegate() {
        return this.f3974B0;
    }

    public C0914k getEdgeEffectFactory() {
        return this.f4005U;
    }

    public AbstractC0915l getItemAnimator() {
        return this.f4010c0;
    }

    public int getItemDecorationCount() {
        return this.f3973B.size();
    }

    public AbstractC0921o getLayoutManager() {
        return this.f4044y;
    }

    public int getMaxFlingVelocity() {
        return this.f4023n0;
    }

    public int getMinFlingVelocity() {
        return this.f4021m0;
    }

    public long getNanoTime() {
        if (f3966h) {
            return System.nanoTime();
        }
        return 0L;
    }

    public AbstractC0927q getOnFlingListener() {
        return this.f4019l0;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.f4029q0;
    }

    public C0930t getRecycledViewPool() {
        return this.f4022n.m31743i();
    }

    public int getScrollState() {
        return this.f4011d0;
    }

    /* renamed from: h */
    public void m32027h(AbstractC0920n abstractC0920n) {
        m32024i(abstractC0920n, -1);
    }

    /* renamed from: h1 */
    void m32025h1(int i, int i2, int[] iArr) {
        m31995r1();
        m32082H0();
        C0632i.m33186a("RV Scroll");
        m32065R(this.f4037u0);
        int mo31609w1 = i != 0 ? this.f4044y.mo31609w1(i, this.f4022n, this.f4037u0) : 0;
        int mo27387y1 = i2 != 0 ? this.f4044y.mo27387y1(i2, this.f4022n, this.f4037u0) : 0;
        C0632i.m33185b();
        m32045a1();
        m32080I0();
        m31989t1(false);
        if (iArr != null) {
            iArr[0] = mo31609w1;
            iArr[1] = mo27387y1;
        }
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().m29375j();
    }

    /* renamed from: i */
    public void m32024i(AbstractC0920n abstractC0920n, int i) {
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o != null) {
            abstractC0921o.mo31636g("Cannot add item decoration during a scroll  or layout");
        }
        if (this.f3973B.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i < 0) {
            this.f3973B.add(abstractC0920n);
        } else {
            this.f3973B.add(i, abstractC0920n);
        }
        m31978x0();
        requestLayout();
    }

    /* renamed from: i1 */
    public void m32022i1(int i) {
        if (this.f3991K) {
            return;
        }
        m31983v1();
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o == null) {
            Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        abstractC0921o.mo31607x1(i);
        awakenScrollBars();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.f3979E;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.f3991K;
    }

    @Override // android.view.View, p020b.p041h.p050l.AbstractC1667k
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().m29373l();
    }

    /* renamed from: j */
    public void m32021j(AbstractC0926p abstractC0926p) {
        if (this.f4000P == null) {
            this.f4000P = new ArrayList();
        }
        this.f4000P.add(abstractC0926p);
    }

    /* renamed from: k */
    public void m32018k(AbstractC0928r abstractC0928r) {
        this.f3975C.add(abstractC0928r);
    }

    /* renamed from: k0 */
    Rect m32017k0(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.f4057c) {
            return layoutParams.f4056b;
        }
        if (this.f4037u0.m31700e() && (layoutParams.m31956b() || layoutParams.m31954d())) {
            return layoutParams.f4056b;
        }
        Rect rect = layoutParams.f4056b;
        rect.set(0, 0, 0, 0);
        int size = this.f3973B.size();
        for (int i = 0; i < size; i++) {
            this.f4036u.set(0, 0, 0, 0);
            this.f3973B.get(i).m31879e(this.f4036u, view, this, this.f4037u0);
            int i2 = rect.left;
            Rect rect2 = this.f4036u;
            rect.left = i2 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        layoutParams.f4057c = false;
        return rect;
    }

    /* renamed from: k1 */
    boolean m32016k1(AbstractC0905b0 abstractC0905b0, int i) {
        if (!m31987u0()) {
            C1679w.m29347B0(abstractC0905b0.f4070b, i);
            return true;
        }
        abstractC0905b0.f4086r = i;
        this.f3988I0.add(abstractC0905b0);
        return false;
    }

    /* renamed from: l */
    public void m32015l(AbstractC0929s abstractC0929s) {
        if (this.f4041w0 == null) {
            this.f4041w0 = new ArrayList();
        }
        this.f4041w0.add(abstractC0929s);
    }

    /* renamed from: l1 */
    boolean m32013l1(AccessibilityEvent accessibilityEvent) {
        if (m31987u0()) {
            int m29530a = accessibilityEvent != null ? C1633b.m29530a(accessibilityEvent) : 0;
            if (m29530a == 0) {
                m29530a = 0;
            }
            this.f3995M |= m29530a;
            return true;
        }
        return false;
    }

    /* renamed from: m */
    void m32012m(AbstractC0905b0 abstractC0905b0, AbstractC0915l.C0918c c0918c, AbstractC0915l.C0918c c0918c2) {
        abstractC0905b0.m31937G(false);
        if (this.f4010c0.mo31350a(abstractC0905b0, c0918c, c0918c2)) {
            m32072N0();
        }
    }

    /* renamed from: m0 */
    public boolean m32011m0() {
        return !this.f3985H || this.f4001Q || this.f4026p.m31537p();
    }

    /* renamed from: m1 */
    public void m32010m1(int i, int i2) {
        m32007n1(i, i2, null);
    }

    /* renamed from: n1 */
    public void m32007n1(int i, int i2, Interpolator interpolator) {
        m32004o1(i, i2, interpolator, Integer.MIN_VALUE);
    }

    /* renamed from: o */
    void m32006o(AbstractC0905b0 abstractC0905b0, AbstractC0915l.C0918c c0918c, AbstractC0915l.C0918c c0918c2) {
        m32030g(abstractC0905b0);
        abstractC0905b0.m31937G(false);
        if (this.f4010c0.mo31348c(abstractC0905b0, c0918c, c0918c2)) {
            m32072N0();
        }
    }

    /* renamed from: o0 */
    void m32005o0() {
        this.f4026p = new C0945a(new C0909f());
    }

    /* renamed from: o1 */
    public void m32004o1(int i, int i2, Interpolator interpolator, int i3) {
        m32001p1(i, i2, interpolator, i3, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f4003S = 0;
        boolean z = true;
        this.f3979E = true;
        if (!this.f3985H || isLayoutRequested()) {
            z = false;
        }
        this.f3985H = z;
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o != null) {
            abstractC0921o.m31779z(this);
        }
        this.f3972A0 = false;
        if (f3966h) {
            ThreadLocal<RunnableC0967e> threadLocal = RunnableC0967e.f4336d;
            RunnableC0967e runnableC0967e = threadLocal.get();
            this.f4033s0 = runnableC0967e;
            if (runnableC0967e == null) {
                this.f4033s0 = new RunnableC0967e();
                Display m29266v = C1679w.m29266v(this);
                float f = 60.0f;
                if (!isInEditMode()) {
                    f = 60.0f;
                    if (m29266v != null) {
                        float refreshRate = m29266v.getRefreshRate();
                        f = 60.0f;
                        if (refreshRate >= 30.0f) {
                            f = refreshRate;
                        }
                    }
                }
                RunnableC0967e runnableC0967e2 = this.f4033s0;
                runnableC0967e2.f4340h = 1.0E9f / f;
                threadLocal.set(runnableC0967e2);
            }
            this.f4033s0.m31440a(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        RunnableC0967e runnableC0967e;
        super.onDetachedFromWindow();
        AbstractC0915l abstractC0915l = this.f4010c0;
        if (abstractC0915l != null) {
            abstractC0915l.mo31467k();
        }
        m31983v1();
        this.f3979E = false;
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o != null) {
            abstractC0921o.m31876A(this, this.f4022n);
        }
        this.f3988I0.clear();
        removeCallbacks(this.f3990J0);
        this.f4030r.m31311j();
        if (!f3966h || (runnableC0967e = this.f4033s0) == null) {
            return;
        }
        runnableC0967e.m31431j(this);
        this.f4033s0 = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.f3973B.size();
        for (int i = 0; i < size; i++) {
            this.f3973B.get(i).mo4986g(canvas, this, this.f4037u0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0092  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            r0 = r6
            androidx.recyclerview.widget.RecyclerView$o r0 = r0.f4044y
            if (r0 != 0) goto L9
            r0 = 0
            return r0
        L9:
            r0 = r6
            boolean r0 = r0.f3991K
            if (r0 == 0) goto L12
            r0 = 0
            return r0
        L12:
            r0 = r7
            int r0 = r0.getAction()
            r1 = 8
            if (r0 != r1) goto Lac
            r0 = r7
            int r0 = r0.getSource()
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L57
            r0 = r6
            androidx.recyclerview.widget.RecyclerView$o r0 = r0.f4044y
            boolean r0 = r0.mo27381l()
            if (r0 == 0) goto L39
            r0 = r7
            r1 = 9
            float r0 = r0.getAxisValue(r1)
            float r0 = -r0
            r8 = r0
            goto L3b
        L39:
            r0 = 0
            r8 = r0
        L3b:
            r0 = r8
            r9 = r0
            r0 = r6
            androidx.recyclerview.widget.RecyclerView$o r0 = r0.f4044y
            boolean r0 = r0.mo31631k()
            if (r0 == 0) goto L8a
            r0 = r7
            r1 = 10
            float r0 = r0.getAxisValue(r1)
            r10 = r0
            r0 = r8
            r9 = r0
            r0 = r10
            r8 = r0
            goto L8c
        L57:
            r0 = r7
            int r0 = r0.getSource()
            r1 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r1
            if (r0 == 0) goto L88
            r0 = r7
            r1 = 26
            float r0 = r0.getAxisValue(r1)
            r8 = r0
            r0 = r6
            androidx.recyclerview.widget.RecyclerView$o r0 = r0.f4044y
            boolean r0 = r0.mo27381l()
            if (r0 == 0) goto L79
            r0 = r8
            float r0 = -r0
            r9 = r0
            goto L8a
        L79:
            r0 = r6
            androidx.recyclerview.widget.RecyclerView$o r0 = r0.f4044y
            boolean r0 = r0.mo31631k()
            if (r0 == 0) goto L88
            r0 = 0
            r9 = r0
            goto L8c
        L88:
            r0 = 0
            r9 = r0
        L8a:
            r0 = 0
            r8 = r0
        L8c:
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L98
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto Lac
        L98:
            r0 = r6
            r1 = r8
            r2 = r6
            float r2 = r2.f4025o0
            float r1 = r1 * r2
            int r1 = (int) r1
            r2 = r9
            r3 = r6
            float r3 = r3.f4027p0
            float r2 = r2 * r3
            int r2 = (int) r2
            r3 = r7
            r4 = 1
            r0.m31973z0(r1, r2, r3, r4)
        Lac:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2 = false;
        if (this.f3991K) {
            return false;
        }
        this.f3977D = null;
        if (m32059U(motionEvent)) {
            m31997r();
            return true;
        }
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o == null) {
            return false;
        }
        boolean mo31631k = abstractC0921o.mo31631k();
        boolean mo27381l = this.f4044y.mo27381l();
        if (this.f4013f0 == null) {
            this.f4013f0 = VelocityTracker.obtain();
        }
        this.f4013f0.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.f3993L) {
                this.f3993L = false;
            }
            this.f4012e0 = motionEvent.getPointerId(0);
            int x = (int) (motionEvent.getX() + 0.5f);
            this.f4016i0 = x;
            this.f4014g0 = x;
            int y = (int) (motionEvent.getY() + 0.5f);
            this.f4017j0 = y;
            this.f4015h0 = y;
            if (this.f4011d0 == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                m31986u1(1);
            }
            int[] iArr = this.f3984G0;
            iArr[1] = 0;
            iArr[0] = 0;
            boolean z3 = mo31631k;
            if (mo27381l) {
                z3 = mo31631k | 2;
            }
            m31992s1(z3, 0);
        } else if (actionMasked == 1) {
            this.f4013f0.clear();
            m31986u1(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f4012e0);
            if (findPointerIndex < 0) {
                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.f4012e0 + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.f4011d0 != 1) {
                int i = this.f4014g0;
                int i2 = this.f4015h0;
                if (!mo31631k || Math.abs(x2 - i) <= this.f4018k0) {
                    z = false;
                } else {
                    this.f4016i0 = x2;
                    z = true;
                }
                boolean z4 = z;
                if (mo27381l) {
                    z4 = z;
                    if (Math.abs(y2 - i2) > this.f4018k0) {
                        this.f4017j0 = y2;
                        z4 = true;
                    }
                }
                if (z4) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            m31997r();
        } else if (actionMasked == 5) {
            this.f4012e0 = motionEvent.getPointerId(actionIndex);
            int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.f4016i0 = x3;
            this.f4014g0 = x3;
            int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.f4017j0 = y3;
            this.f4015h0 = y3;
        } else if (actionMasked == 6) {
            m32076K0(motionEvent);
        }
        if (this.f4011d0 == 1) {
            z2 = true;
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C0632i.m33186a("RV OnLayout");
        m32093C();
        C0632i.m33185b();
        this.f3985H = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o == null) {
            m31979x(i, i2);
        } else if (abstractC0921o.mo31617s0()) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f4044y.mo22277Z0(this.f4022n, this.f4037u0, i, i2);
            boolean z = false;
            if (mode == 1073741824) {
                z = false;
                if (mode2 == 1073741824) {
                    z = true;
                }
            }
            this.f3992K0 = z;
            if (z || this.f4042x == null) {
                return;
            }
            if (this.f4037u0.f4163e == 1) {
                m32091D();
            }
            this.f4044y.m31871B1(i, i2);
            this.f4037u0.f4168j = true;
            m32089E();
            this.f4044y.m31868E1(i, i2);
            if (this.f4044y.mo31861H1()) {
                this.f4044y.m31871B1(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.f4037u0.f4168j = true;
                m32089E();
                this.f4044y.m31868E1(i, i2);
            }
            this.f3994L0 = getMeasuredWidth();
            this.f3996M0 = getMeasuredHeight();
        } else if (this.f3981F) {
            this.f4044y.mo22277Z0(this.f4022n, this.f4037u0, i, i2);
        } else {
            if (this.f3997N) {
                m31995r1();
                m32082H0();
                m32068P0();
                m32080I0();
                C0938y c0938y = this.f4037u0;
                if (c0938y.f4170l) {
                    c0938y.f4166h = true;
                } else {
                    this.f4026p.m31543j();
                    this.f4037u0.f4166h = false;
                }
                this.f3997N = false;
                m31989t1(false);
            } else if (this.f4037u0.f4170l) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            Adapter adapter = this.f4042x;
            if (adapter != null) {
                this.f4037u0.f4164f = adapter.mo4501d();
            } else {
                this.f4037u0.f4164f = 0;
            }
            m31995r1();
            this.f4044y.mo22277Z0(this.f4022n, this.f4037u0, i, i2);
            m31989t1(false);
            this.f4037u0.f4166h = false;
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (m31987u0()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.f4024o = savedState;
        super.onRestoreInstanceState(savedState.m33061a());
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.f4024o;
        if (savedState2 != null) {
            savedState.m31953b(savedState2);
        } else {
            AbstractC0921o abstractC0921o = this.f4044y;
            if (abstractC0921o != null) {
                savedState.f4059f = abstractC0921o.mo31641d1();
            } else {
                savedState.f4059f = null;
            }
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        m31993s0();
    }

    /* JADX WARN: Code restructure failed: missing block: B:92:0x0328, code lost:
        if (r14 != 0) goto L93;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0213  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 1044
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    void m32003p(String str) {
        if (m31987u0()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + m32067Q());
        } else if (this.f4004T <= 0) {
        } else {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException("" + m32067Q()));
        }
    }

    /* renamed from: p1 */
    void m32001p1(int i, int i2, Interpolator interpolator, int i3, boolean z) {
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (this.f3991K) {
        } else {
            int i4 = i;
            if (!abstractC0921o.mo31631k()) {
                i4 = 0;
            }
            if (!this.f4044y.mo27381l()) {
                i2 = 0;
            }
            if (i4 == 0 && i2 == 0) {
                return;
            }
            if (!(i3 == Integer.MIN_VALUE || i3 > 0)) {
                scrollBy(i4, i2);
                return;
            }
            if (z) {
                int i5 = 0;
                if (i4 != 0) {
                    i5 = 1;
                }
                int i6 = i5;
                if (i2 != 0) {
                    i6 = i5 | 2;
                }
                m31992s1(i6, 1);
            }
            this.f4031r0.m31945e(i4, i2, i3, interpolator);
        }
    }

    /* renamed from: q */
    boolean m32000q(AbstractC0905b0 abstractC0905b0) {
        AbstractC0915l abstractC0915l = this.f4010c0;
        return abstractC0915l == null || abstractC0915l.mo31469g(abstractC0905b0, abstractC0905b0.m31917o());
    }

    /* renamed from: q1 */
    public void m31998q1(int i) {
        if (this.f3991K) {
            return;
        }
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            abstractC0921o.mo4860J1(this, this.f4037u0, i);
        }
    }

    /* renamed from: r0 */
    void m31996r0(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
            Resources resources = getContext().getResources();
            new C0962d(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(C1769b.fastscroll_default_thickness), resources.getDimensionPixelSize(C1769b.fastscroll_minimum_range), resources.getDimensionPixelOffset(C1769b.fastscroll_margin));
            return;
        }
        throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + m32067Q());
    }

    /* renamed from: r1 */
    void m31995r1() {
        int i = this.f3987I + 1;
        this.f3987I = i;
        if (i != 1 || this.f3991K) {
            return;
        }
        this.f3989J = false;
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z) {
        AbstractC0905b0 m32029g0 = m32029g0(view);
        if (m32029g0 != null) {
            if (m32029g0.m31908x()) {
                m32029g0.m31926f();
            } else if (!m32029g0.m31934J()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + m32029g0 + m32067Q());
            }
        }
        view.clearAnimation();
        m32097A(view);
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f4044y.m31829b1(this, this.f4037u0, view, view2) && view2 != null) {
            m32043b1(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.f4044y.m31792r1(this, view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.f3975C.size();
        for (int i = 0; i < size; i++) {
            this.f3975C.get(i).mo31459c(z);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f3987I != 0 || this.f3991K) {
            this.f3989J = true;
        } else {
            super.requestLayout();
        }
    }

    /* renamed from: s0 */
    void m31993s0() {
        this.f4009b0 = null;
        this.f4007W = null;
        this.f4008a0 = null;
        this.f4006V = null;
    }

    /* renamed from: s1 */
    public boolean m31992s1(int i, int i2) {
        return getScrollingChildHelper().m29369p(i, i2);
    }

    @Override // android.view.View
    public void scrollBy(int i, int i2) {
        AbstractC0921o abstractC0921o = this.f4044y;
        if (abstractC0921o == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (this.f3991K) {
        } else {
            boolean mo31631k = abstractC0921o.mo31631k();
            boolean mo27381l = this.f4044y.mo27381l();
            if (!mo31631k && !mo27381l) {
                return;
            }
            if (!mo31631k) {
                i = 0;
            }
            if (!mo27381l) {
                i2 = 0;
            }
            m32028g1(i, i2, null, 0);
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (m32013l1(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(C0980k c0980k) {
        this.f3974B0 = c0980k;
        C1679w.m29273r0(this, c0980k);
    }

    public void setAdapter(Adapter adapter) {
        setLayoutFrozen(false);
        m32019j1(adapter, false, true);
        m32066Q0(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(AbstractC0913j abstractC0913j) {
        if (abstractC0913j == this.f3976C0) {
            return;
        }
        this.f3976C0 = abstractC0913j;
        setChildrenDrawingOrderEnabled(abstractC0913j != null);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.f4032s) {
            m31993s0();
        }
        this.f4032s = z;
        super.setClipToPadding(z);
        if (this.f3985H) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(C0914k c0914k) {
        C1597h.m29659e(c0914k);
        this.f4005U = c0914k;
        m31993s0();
    }

    public void setHasFixedSize(boolean z) {
        this.f3981F = z;
    }

    public void setItemAnimator(AbstractC0915l abstractC0915l) {
        AbstractC0915l abstractC0915l2 = this.f4010c0;
        if (abstractC0915l2 != null) {
            abstractC0915l2.mo31467k();
            this.f4010c0.m31885v(null);
        }
        this.f4010c0 = abstractC0915l;
        if (abstractC0915l != null) {
            abstractC0915l.m31885v(this.f4047z0);
        }
    }

    public void setItemViewCacheSize(int i) {
        this.f4022n.m31758G(i);
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(AbstractC0921o abstractC0921o) {
        if (abstractC0921o == this.f4044y) {
            return;
        }
        m31983v1();
        if (this.f4044y != null) {
            AbstractC0915l abstractC0915l = this.f4010c0;
            if (abstractC0915l != null) {
                abstractC0915l.mo31467k();
            }
            this.f4044y.m31808k1(this.f4022n);
            this.f4044y.m31806l1(this.f4022n);
            this.f4022n.m31749c();
            if (this.f3979E) {
                this.f4044y.m31876A(this, this.f4022n);
            }
            this.f4044y.m31866F1(null);
            this.f4044y = null;
        } else {
            this.f4022n.m31749c();
        }
        this.f4028q.m31504o();
        this.f4044y = abstractC0921o;
        if (abstractC0921o != null) {
            if (abstractC0921o.f4105b != null) {
                throw new IllegalArgumentException("LayoutManager " + abstractC0921o + " is already attached to a RecyclerView:" + abstractC0921o.f4105b.m32067Q());
            }
            abstractC0921o.m31866F1(this);
            if (this.f3979E) {
                this.f4044y.m31779z(this);
            }
        }
        this.f4022n.m31754K();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT < 18) {
            if (layoutTransition == null) {
                suppressLayout(false);
                return;
            } else if (layoutTransition.getAnimator(0) == null && layoutTransition.getAnimator(1) == null && layoutTransition.getAnimator(2) == null && layoutTransition.getAnimator(3) == null && layoutTransition.getAnimator(4) == null) {
                suppressLayout(true);
                return;
            }
        }
        if (layoutTransition == null) {
            super.setLayoutTransition(null);
            return;
        }
        throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        getScrollingChildHelper().m29372m(z);
    }

    public void setOnFlingListener(AbstractC0927q abstractC0927q) {
        this.f4019l0 = abstractC0927q;
    }

    @Deprecated
    public void setOnScrollListener(AbstractC0929s abstractC0929s) {
        this.f4039v0 = abstractC0929s;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.f4029q0 = z;
    }

    public void setRecycledViewPool(C0930t c0930t) {
        this.f4022n.m31760E(c0930t);
    }

    @Deprecated
    public void setRecyclerListener(AbstractC0933v abstractC0933v) {
        this.f4046z = abstractC0933v;
    }

    void setScrollState(int i) {
        if (i == this.f4011d0) {
            return;
        }
        this.f4011d0 = i;
        if (i != 2) {
            m31980w1();
        }
        m32081I(i);
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 0) {
            if (i == 1) {
                this.f4018k0 = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
        }
        this.f4018k0 = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(AbstractC0939z abstractC0939z) {
        this.f4022n.m31759F(abstractC0939z);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return getScrollingChildHelper().m29370o(i);
    }

    @Override // android.view.View, p020b.p041h.p050l.AbstractC1667k
    public void stopNestedScroll() {
        getScrollingChildHelper().m29368q();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.f3991K) {
            m32003p("Do not suppressLayout in layout or scroll");
            if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
                this.f3991K = true;
                this.f3993L = true;
                m31983v1();
                return;
            }
            this.f3991K = false;
            if (this.f3989J && this.f4044y != null && this.f4042x != null) {
                requestLayout();
            }
            this.f3989J = false;
        }
    }

    /* renamed from: t */
    void m31991t() {
        int m31509j = this.f4028q.m31509j();
        for (int i = 0; i < m31509j; i++) {
            AbstractC0905b0 m32029g0 = m32029g0(this.f4028q.m31510i(i));
            if (!m32029g0.m31934J()) {
                m32029g0.m31929c();
            }
        }
        this.f4022n.m31748d();
    }

    /* renamed from: t0 */
    boolean m31990t0() {
        AccessibilityManager accessibilityManager = this.f3999O;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    /* renamed from: t1 */
    void m31989t1(boolean z) {
        if (this.f3987I < 1) {
            this.f3987I = 1;
        }
        if (!z && !this.f3991K) {
            this.f3989J = false;
        }
        if (this.f3987I == 1) {
            if (z && this.f3989J && !this.f3991K && this.f4044y != null && this.f4042x != null) {
                m32093C();
            }
            if (!this.f3991K) {
                this.f3989J = false;
            }
        }
        this.f3987I--;
    }

    /* renamed from: u */
    void m31988u(int i, int i2) {
        boolean z;
        EdgeEffect edgeEffect = this.f4006V;
        if (edgeEffect == null || edgeEffect.isFinished() || i <= 0) {
            z = false;
        } else {
            this.f4006V.onRelease();
            z = this.f4006V.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f4008a0;
        boolean z2 = z;
        if (edgeEffect2 != null) {
            z2 = z;
            if (!edgeEffect2.isFinished()) {
                z2 = z;
                if (i < 0) {
                    this.f4008a0.onRelease();
                    z2 = z | this.f4008a0.isFinished();
                }
            }
        }
        EdgeEffect edgeEffect3 = this.f4007W;
        boolean z3 = z2;
        if (edgeEffect3 != null) {
            z3 = z2;
            if (!edgeEffect3.isFinished()) {
                z3 = z2;
                if (i2 > 0) {
                    this.f4007W.onRelease();
                    z3 = z2 | this.f4007W.isFinished();
                }
            }
        }
        EdgeEffect edgeEffect4 = this.f4009b0;
        boolean z4 = z3;
        if (edgeEffect4 != null) {
            z4 = z3;
            if (!edgeEffect4.isFinished()) {
                z4 = z3;
                if (i2 < 0) {
                    this.f4009b0.onRelease();
                    z4 = z3 | this.f4009b0.isFinished();
                }
            }
        }
        if (z4) {
            C1679w.m29293h0(this);
        }
    }

    /* renamed from: u0 */
    public boolean m31987u0() {
        return this.f4003S > 0;
    }

    /* renamed from: u1 */
    public void m31986u1(int i) {
        getScrollingChildHelper().m29367r(i);
    }

    /* renamed from: v */
    void m31985v() {
        if (!this.f3985H || this.f4001Q) {
            C0632i.m33186a("RV FullInvalidate");
            m32093C();
            C0632i.m33185b();
        } else if (!this.f4026p.m31537p()) {
        } else {
            if (!this.f4026p.m31538o(4) || this.f4026p.m31538o(11)) {
                if (!this.f4026p.m31537p()) {
                    return;
                }
                C0632i.m33186a("RV FullInvalidate");
                m32093C();
                C0632i.m33185b();
                return;
            }
            C0632i.m33186a("RV PartialInvalidate");
            m31995r1();
            m32082H0();
            this.f4026p.m31531v();
            if (!this.f3989J) {
                if (m32008n0()) {
                    m32093C();
                } else {
                    this.f4026p.m31544i();
                }
            }
            m31989t1(true);
            m32080I0();
            C0632i.m33185b();
        }
    }

    /* renamed from: v1 */
    public void m31983v1() {
        setScrollState(0);
        m31980w1();
    }

    /* renamed from: w0 */
    void m31981w0(int i) {
        if (this.f4044y == null) {
            return;
        }
        setScrollState(2);
        this.f4044y.mo31607x1(i);
        awakenScrollBars();
    }

    /* renamed from: x */
    void m31979x(int i, int i2) {
        setMeasuredDimension(AbstractC0921o.m31803n(i, getPaddingLeft() + getPaddingRight(), C1679w.m29342E(this)), AbstractC0921o.m31803n(i2, getPaddingTop() + getPaddingBottom(), C1679w.m29344D(this)));
    }

    /* renamed from: x0 */
    void m31978x0() {
        int m31509j = this.f4028q.m31509j();
        for (int i = 0; i < m31509j; i++) {
            ((LayoutParams) this.f4028q.m31510i(i).getLayoutParams()).f4057c = true;
        }
        this.f4022n.m31733s();
    }

    /* renamed from: x1 */
    void m31977x1(int i, int i2, Object obj) {
        int i3;
        int m31509j = this.f4028q.m31509j();
        for (int i4 = 0; i4 < m31509j; i4++) {
            View m31510i = this.f4028q.m31510i(i4);
            AbstractC0905b0 m32029g0 = m32029g0(m31510i);
            if (m32029g0 != null && !m32029g0.m31934J() && (i3 = m32029g0.f4072d) >= i && i3 < i + i2) {
                m32029g0.m31930b(2);
                m32029g0.m31931a(obj);
                ((LayoutParams) m31510i.getLayoutParams()).f4057c = true;
            }
        }
        this.f4022n.m31752M(i, i2);
    }

    /* renamed from: y0 */
    void m31975y0() {
        int m31509j = this.f4028q.m31509j();
        for (int i = 0; i < m31509j; i++) {
            AbstractC0905b0 m32029g0 = m32029g0(this.f4028q.m31510i(i));
            if (m32029g0 != null && !m32029g0.m31934J()) {
                m32029g0.m31930b(6);
            }
        }
        m31978x0();
        this.f4022n.m31732t();
    }

    /* renamed from: z */
    void m31974z(View view) {
        AbstractC0905b0 m32029g0 = m32029g0(view);
        m32086F0(view);
        Adapter adapter = this.f4042x;
        if (adapter != null && m32029g0 != null) {
            adapter.mo22211u(m32029g0);
        }
        List<AbstractC0926p> list = this.f4000P;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f4000P.get(size).mo30681b(view);
            }
        }
    }
}
