package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.internal.C8209q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import p020b.p041h.p045g.C1542a;
import p020b.p041h.p050l.C1615e0;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.AbstractC1644f;
import p020b.p041h.p050l.p051f0.C1634c;
import p020b.p055j.p056a.C1710c;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1894j;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p105u.C1919c;
import p078c.p084c.p085a.p096b.p108x.C1938h;
import p078c.p084c.p085a.p096b.p108x.C1946m;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior.class */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a */
    private static final int f36267a = C1895k.Widget_Design_BottomSheet_Modal;

    /* renamed from: A */
    int f36268A;

    /* renamed from: B */
    C1710c f36269B;

    /* renamed from: C */
    private boolean f36270C;

    /* renamed from: D */
    private int f36271D;

    /* renamed from: E */
    private boolean f36272E;

    /* renamed from: F */
    private int f36273F;

    /* renamed from: G */
    int f36274G;

    /* renamed from: H */
    int f36275H;

    /* renamed from: I */
    WeakReference<V> f36276I;

    /* renamed from: J */
    WeakReference<View> f36277J;

    /* renamed from: K */
    private final ArrayList<AbstractC8039f> f36278K;

    /* renamed from: L */
    private VelocityTracker f36279L;

    /* renamed from: M */
    int f36280M;

    /* renamed from: N */
    private int f36281N;

    /* renamed from: O */
    boolean f36282O;

    /* renamed from: P */
    private Map<View, Integer> f36283P;

    /* renamed from: Q */
    private int f36284Q;

    /* renamed from: R */
    private final C1710c.AbstractC1713c f36285R;

    /* renamed from: b */
    private int f36286b;

    /* renamed from: c */
    private boolean f36287c;

    /* renamed from: d */
    private boolean f36288d;

    /* renamed from: e */
    private float f36289e;

    /* renamed from: f */
    private int f36290f;

    /* renamed from: g */
    private boolean f36291g;

    /* renamed from: h */
    private int f36292h;

    /* renamed from: i */
    private int f36293i;

    /* renamed from: j */
    private boolean f36294j;

    /* renamed from: k */
    private C1938h f36295k;

    /* renamed from: l */
    private int f36296l;

    /* renamed from: m */
    private boolean f36297m;

    /* renamed from: n */
    private C1946m f36298n;

    /* renamed from: o */
    private boolean f36299o;

    /* renamed from: p */
    private BottomSheetBehavior<V>.RunnableC8040g f36300p;

    /* renamed from: q */
    private ValueAnimator f36301q;

    /* renamed from: r */
    int f36302r;

    /* renamed from: s */
    int f36303s;

    /* renamed from: t */
    int f36304t;

    /* renamed from: u */
    float f36305u;

    /* renamed from: v */
    int f36306v;

    /* renamed from: w */
    float f36307w;

    /* renamed from: x */
    boolean f36308x;

    /* renamed from: y */
    private boolean f36309y;

    /* renamed from: z */
    private boolean f36310z;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C8033a();

        /* renamed from: f */
        final int f36311f;

        /* renamed from: g */
        int f36312g;

        /* renamed from: h */
        boolean f36313h;

        /* renamed from: i */
        boolean f36314i;

        /* renamed from: j */
        boolean f36315j;

        /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$SavedState$a.class */
        static final class C8033a implements Parcelable.ClassLoaderCreator<SavedState> {
            C8033a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
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

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f36311f = parcel.readInt();
            this.f36312g = parcel.readInt();
            this.f36313h = parcel.readInt() == 1;
            this.f36314i = parcel.readInt() == 1;
            this.f36315j = parcel.readInt() == 1;
        }

        public SavedState(Parcelable parcelable, BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.f36311f = bottomSheetBehavior.f36268A;
            this.f36312g = ((BottomSheetBehavior) bottomSheetBehavior).f36290f;
            this.f36313h = ((BottomSheetBehavior) bottomSheetBehavior).f36287c;
            this.f36314i = bottomSheetBehavior.f36308x;
            this.f36315j = ((BottomSheetBehavior) bottomSheetBehavior).f36309y;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f36311f);
            parcel.writeInt(this.f36312g);
            parcel.writeInt(this.f36313h ? 1 : 0);
            parcel.writeInt(this.f36314i ? 1 : 0);
            parcel.writeInt(this.f36315j ? 1 : 0);
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$a.class */
    public class RunnableC8034a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ View f36316d;

        /* renamed from: e */
        final /* synthetic */ int f36317e;

        RunnableC8034a(View view, int i) {
            BottomSheetBehavior.this = r4;
            this.f36316d = view;
            this.f36317e = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            BottomSheetBehavior.this.m5422o0(this.f36316d, this.f36317e);
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$b.class */
    public class C8035b implements ValueAnimator.AnimatorUpdateListener {
        C8035b() {
            BottomSheetBehavior.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (BottomSheetBehavior.this.f36295k != null) {
                BottomSheetBehavior.this.f36295k.m28623b0(floatValue);
            }
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$c.class */
    public class C8036c implements C8209q.AbstractC8214e {
        C8036c() {
            BottomSheetBehavior.this = r4;
        }

        @Override // com.google.android.material.internal.C8209q.AbstractC8214e
        /* renamed from: a */
        public C1615e0 mo4440a(View view, C1615e0 c1615e0, C8209q.C8215f c8215f) {
            BottomSheetBehavior.this.f36296l = c1615e0.m29593g().f6054e;
            BottomSheetBehavior.this.m5413v0(false);
            return c1615e0;
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$d.class */
    class C8037d extends C1710c.AbstractC1713c {
        C8037d() {
            BottomSheetBehavior.this = r4;
        }

        /* renamed from: n */
        private boolean m5400n(View view) {
            int top = view.getTop();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return top > (bottomSheetBehavior.f36275H + bottomSheetBehavior.m5443V()) / 2;
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: a */
        public int mo5407a(View view, int i, int i2) {
            return view.getLeft();
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: b */
        public int mo5406b(View view, int i, int i2) {
            int m5443V = BottomSheetBehavior.this.m5443V();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return C1542a.m29769b(i, m5443V, bottomSheetBehavior.f36308x ? bottomSheetBehavior.f36275H : bottomSheetBehavior.f36306v);
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: e */
        public int mo5405e(View view) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return bottomSheetBehavior.f36308x ? bottomSheetBehavior.f36275H : bottomSheetBehavior.f36306v;
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: j */
        public void mo5404j(int i) {
            if (i != 1 || !BottomSheetBehavior.this.f36310z) {
                return;
            }
            BottomSheetBehavior.this.m5425m0(1);
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: k */
        public void mo5403k(View view, int i, int i2, int i3, int i4) {
            BottomSheetBehavior.this.m5445T(i2);
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: l */
        public void mo5402l(View view, float f, float f2) {
            int i;
            int i2 = 4;
            if (f2 < 0.0f) {
                if (BottomSheetBehavior.this.f36287c) {
                    i = BottomSheetBehavior.this.f36303s;
                } else {
                    int top = view.getTop();
                    BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                    i = bottomSheetBehavior.f36304t;
                    if (top <= i) {
                        i = bottomSheetBehavior.f36302r;
                    }
                    i2 = 6;
                }
                i2 = 3;
            } else {
                BottomSheetBehavior bottomSheetBehavior2 = BottomSheetBehavior.this;
                if (!bottomSheetBehavior2.f36308x || !bottomSheetBehavior2.m5419q0(view, f2)) {
                    if (f2 == 0.0f || Math.abs(f) > Math.abs(f2)) {
                        int top2 = view.getTop();
                        if (!BottomSheetBehavior.this.f36287c) {
                            BottomSheetBehavior bottomSheetBehavior3 = BottomSheetBehavior.this;
                            int i3 = bottomSheetBehavior3.f36304t;
                            if (top2 < i3) {
                                if (top2 < Math.abs(top2 - bottomSheetBehavior3.f36306v)) {
                                    i = BottomSheetBehavior.this.f36302r;
                                    i2 = 3;
                                } else {
                                    i = BottomSheetBehavior.this.f36304t;
                                }
                            } else if (Math.abs(top2 - i3) < Math.abs(top2 - BottomSheetBehavior.this.f36306v)) {
                                i = BottomSheetBehavior.this.f36304t;
                            } else {
                                i = BottomSheetBehavior.this.f36306v;
                            }
                            i2 = 6;
                        } else if (Math.abs(top2 - BottomSheetBehavior.this.f36303s) < Math.abs(top2 - BottomSheetBehavior.this.f36306v)) {
                            i = BottomSheetBehavior.this.f36303s;
                            i2 = 3;
                        } else {
                            i = BottomSheetBehavior.this.f36306v;
                        }
                    } else if (BottomSheetBehavior.this.f36287c) {
                        i = BottomSheetBehavior.this.f36306v;
                    } else {
                        int top3 = view.getTop();
                        if (Math.abs(top3 - BottomSheetBehavior.this.f36304t) < Math.abs(top3 - BottomSheetBehavior.this.f36306v)) {
                            i = BottomSheetBehavior.this.f36304t;
                            i2 = 6;
                        } else {
                            i = BottomSheetBehavior.this.f36306v;
                        }
                    }
                } else if ((Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) && !m5400n(view)) {
                    if (BottomSheetBehavior.this.f36287c) {
                        i = BottomSheetBehavior.this.f36303s;
                    } else if (Math.abs(view.getTop() - BottomSheetBehavior.this.f36302r) < Math.abs(view.getTop() - BottomSheetBehavior.this.f36304t)) {
                        i = BottomSheetBehavior.this.f36302r;
                    } else {
                        i = BottomSheetBehavior.this.f36304t;
                        i2 = 6;
                    }
                    i2 = 3;
                } else {
                    i = BottomSheetBehavior.this.f36275H;
                    i2 = 5;
                }
            }
            BottomSheetBehavior.this.m5418r0(view, i2, i, true);
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: m */
        public boolean mo5401m(View view, int i) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i2 = bottomSheetBehavior.f36268A;
            boolean z = true;
            if (i2 != 1 && !bottomSheetBehavior.f36282O) {
                if (i2 == 3 && bottomSheetBehavior.f36280M == i) {
                    WeakReference<View> weakReference = bottomSheetBehavior.f36277J;
                    View view2 = weakReference != null ? weakReference.get() : null;
                    if (view2 != null && view2.canScrollVertically(-1)) {
                        return false;
                    }
                }
                WeakReference<V> weakReference2 = BottomSheetBehavior.this.f36276I;
                if (weakReference2 == null || weakReference2.get() != view) {
                    z = false;
                }
                return z;
            }
            return false;
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$e.class */
    public class C8038e implements AbstractC1644f {

        /* renamed from: a */
        final /* synthetic */ int f36322a;

        C8038e(int i) {
            BottomSheetBehavior.this = r4;
            this.f36322a = i;
        }

        @Override // p020b.p041h.p050l.p051f0.AbstractC1644f
        /* renamed from: a */
        public boolean mo5399a(View view, AbstractC1644f.AbstractC1645a abstractC1645a) {
            BottomSheetBehavior.this.m5426l0(this.f36322a);
            return true;
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$f */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$f.class */
    public static abstract class AbstractC8039f {
        /* renamed from: a */
        public abstract void m5398a(View view, float f);

        /* renamed from: b */
        public abstract void m5397b(View view, int i);
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$g */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$g.class */
    public class RunnableC8040g implements Runnable {

        /* renamed from: d */
        private final View f36324d;

        /* renamed from: e */
        private boolean f36325e;

        /* renamed from: f */
        int f36326f;

        RunnableC8040g(View view, int i) {
            BottomSheetBehavior.this = r4;
            this.f36324d = view;
            this.f36326f = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1710c c1710c = BottomSheetBehavior.this.f36269B;
            if (c1710c == null || !c1710c.m29108n(true)) {
                BottomSheetBehavior.this.m5425m0(this.f36326f);
            } else {
                C1679w.m29289j0(this.f36324d, this);
            }
            this.f36325e = false;
        }
    }

    public BottomSheetBehavior() {
        this.f36286b = 0;
        this.f36287c = true;
        this.f36288d = false;
        this.f36300p = null;
        this.f36305u = 0.5f;
        this.f36307w = -1.0f;
        this.f36310z = true;
        this.f36268A = 4;
        this.f36278K = new ArrayList<>();
        this.f36284Q = -1;
        this.f36285R = new C8037d();
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i;
        this.f36286b = 0;
        this.f36287c = true;
        this.f36288d = false;
        this.f36300p = null;
        this.f36305u = 0.5f;
        this.f36307w = -1.0f;
        this.f36310z = true;
        this.f36268A = 4;
        this.f36278K = new ArrayList<>();
        this.f36284Q = -1;
        this.f36285R = new C8037d();
        this.f36293i = context.getResources().getDimensionPixelSize(C1888d.mtrl_min_touch_target_size);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1896l.BottomSheetBehavior_Layout);
        this.f36294j = obtainStyledAttributes.hasValue(C1896l.BottomSheetBehavior_Layout_shapeAppearance);
        int i2 = C1896l.BottomSheetBehavior_Layout_backgroundTint;
        boolean hasValue = obtainStyledAttributes.hasValue(i2);
        if (hasValue) {
            m5447R(context, attributeSet, hasValue, C1919c.m28686a(context, obtainStyledAttributes, i2));
        } else {
            m5448Q(context, attributeSet, hasValue);
        }
        m5446S();
        if (Build.VERSION.SDK_INT >= 21) {
            this.f36307w = obtainStyledAttributes.getDimension(C1896l.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        }
        int i3 = C1896l.BottomSheetBehavior_Layout_behavior_peekHeight;
        TypedValue peekValue = obtainStyledAttributes.peekValue(i3);
        if (peekValue == null || (i = peekValue.data) != -1) {
            m5431h0(obtainStyledAttributes.getDimensionPixelSize(i3, -1));
        } else {
            m5431h0(i);
        }
        m5432g0(obtainStyledAttributes.getBoolean(C1896l.BottomSheetBehavior_Layout_behavior_hideable, false));
        m5434e0(obtainStyledAttributes.getBoolean(C1896l.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false));
        m5435d0(obtainStyledAttributes.getBoolean(C1896l.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        m5427k0(obtainStyledAttributes.getBoolean(C1896l.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        m5437b0(obtainStyledAttributes.getBoolean(C1896l.BottomSheetBehavior_Layout_behavior_draggable, true));
        m5428j0(obtainStyledAttributes.getInt(C1896l.BottomSheetBehavior_Layout_behavior_saveFlags, 0));
        m5433f0(obtainStyledAttributes.getFloat(C1896l.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f));
        int i4 = C1896l.BottomSheetBehavior_Layout_behavior_expandedOffset;
        TypedValue peekValue2 = obtainStyledAttributes.peekValue(i4);
        if (peekValue2 == null || peekValue2.type != 16) {
            m5436c0(obtainStyledAttributes.getDimensionPixelOffset(i4, 0));
        } else {
            m5436c0(peekValue2.data);
        }
        obtainStyledAttributes.recycle();
        this.f36289e = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    /* renamed from: L */
    private int m5453L(V v, int i, int i2) {
        return C1679w.m29306b(v, v.getResources().getString(i), m5449P(i2));
    }

    /* renamed from: M */
    private void m5452M() {
        int m5450O = m5450O();
        if (this.f36287c) {
            this.f36306v = Math.max(this.f36275H - m5450O, this.f36303s);
        } else {
            this.f36306v = this.f36275H - m5450O;
        }
    }

    /* renamed from: N */
    private void m5451N() {
        this.f36304t = (int) (this.f36275H * (1.0f - this.f36305u));
    }

    /* renamed from: O */
    private int m5450O() {
        int i;
        return this.f36291g ? Math.min(Math.max(this.f36292h, this.f36275H - ((this.f36274G * 9) / 16)), this.f36273F) : (this.f36297m || (i = this.f36296l) <= 0) ? this.f36290f : Math.max(this.f36290f, i + this.f36293i);
    }

    /* renamed from: P */
    private AbstractC1644f m5449P(int i) {
        return new C8038e(i);
    }

    /* renamed from: Q */
    private void m5448Q(Context context, AttributeSet attributeSet, boolean z) {
        m5447R(context, attributeSet, z, null);
    }

    /* renamed from: R */
    private void m5447R(Context context, AttributeSet attributeSet, boolean z, ColorStateList colorStateList) {
        if (this.f36294j) {
            this.f36298n = C1946m.m28571e(context, attributeSet, C1886b.bottomSheetStyle, f36267a).m28528m();
            C1938h c1938h = new C1938h(this.f36298n);
            this.f36295k = c1938h;
            c1938h.m28636P(context);
            if (z && colorStateList != null) {
                this.f36295k.m28625a0(colorStateList);
                return;
            }
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(16842801, typedValue, true);
            this.f36295k.setTint(typedValue.data);
        }
    }

    /* renamed from: S */
    private void m5446S() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f36301q = ofFloat;
        ofFloat.setDuration(500L);
        this.f36301q.addUpdateListener(new C8035b());
    }

    /* renamed from: W */
    private float m5442W() {
        VelocityTracker velocityTracker = this.f36279L;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.f36289e);
        return this.f36279L.getYVelocity(this.f36280M);
    }

    /* renamed from: Y */
    private void m5440Y(V v, C1634c.C1635a c1635a, int i) {
        C1679w.m29281n0(v, c1635a, null, m5449P(i));
    }

    /* renamed from: Z */
    private void m5439Z() {
        this.f36280M = -1;
        VelocityTracker velocityTracker = this.f36279L;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f36279L = null;
        }
    }

    /* renamed from: a0 */
    private void m5438a0(SavedState savedState) {
        int i = this.f36286b;
        if (i == 0) {
            return;
        }
        if (i == -1 || (i & 1) == 1) {
            this.f36290f = savedState.f36312g;
        }
        if (i == -1 || (i & 2) == 2) {
            this.f36287c = savedState.f36313h;
        }
        if (i == -1 || (i & 4) == 4) {
            this.f36308x = savedState.f36314i;
        }
        if (i != -1 && (i & 8) != 8) {
            return;
        }
        this.f36309y = savedState.f36315j;
    }

    /* renamed from: n0 */
    private void m5424n0(View view) {
        if (Build.VERSION.SDK_INT < 29 || m5441X() || this.f36291g) {
            return;
        }
        C8209q.m4451b(view, new C8036c());
    }

    /* renamed from: p0 */
    private void m5421p0(int i) {
        V v = this.f36276I.get();
        if (v == null) {
            return;
        }
        ViewParent parent = v.getParent();
        if (parent == null || !parent.isLayoutRequested() || !C1679w.m29314U(v)) {
            m5422o0(v, i);
        } else {
            v.post(new RunnableC8034a(v, i));
        }
    }

    /* renamed from: s0 */
    private void m5417s0() {
        V v;
        WeakReference<V> weakReference = this.f36276I;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        C1679w.m29285l0(v, 524288);
        C1679w.m29285l0(v, 262144);
        C1679w.m29285l0(v, 1048576);
        int i = this.f36284Q;
        if (i != -1) {
            C1679w.m29285l0(v, i);
        }
        int i2 = 6;
        if (this.f36268A != 6) {
            this.f36284Q = m5453L(v, C1894j.bottomsheet_action_expand_halfway, 6);
        }
        if (this.f36308x && this.f36268A != 5) {
            m5440Y(v, C1634c.C1635a.f6302u, 5);
        }
        int i3 = this.f36268A;
        if (i3 == 3) {
            if (this.f36287c) {
                i2 = 4;
            }
            m5440Y(v, C1634c.C1635a.f6301t, i2);
        } else if (i3 == 4) {
            if (this.f36287c) {
                i2 = 3;
            }
            m5440Y(v, C1634c.C1635a.f6300s, i2);
        } else if (i3 != 6) {
        } else {
            m5440Y(v, C1634c.C1635a.f6301t, 4);
            m5440Y(v, C1634c.C1635a.f6300s, 3);
        }
    }

    /* renamed from: t0 */
    private void m5415t0(int i) {
        ValueAnimator valueAnimator;
        if (i == 2) {
            return;
        }
        boolean z = i == 3;
        if (this.f36299o == z) {
            return;
        }
        this.f36299o = z;
        if (this.f36295k == null || (valueAnimator = this.f36301q) == null) {
            return;
        }
        if (valueAnimator.isRunning()) {
            this.f36301q.reverse();
            return;
        }
        float f = z ? 0.0f : 1.0f;
        this.f36301q.setFloatValues(1.0f - f, f);
        this.f36301q.start();
    }

    /* renamed from: u0 */
    private void m5414u0(boolean z) {
        Map<View, Integer> map;
        WeakReference<V> weakReference = this.f36276I;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (!(parent instanceof CoordinatorLayout)) {
            return;
        }
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
        int childCount = coordinatorLayout.getChildCount();
        if (Build.VERSION.SDK_INT >= 16 && z) {
            if (this.f36283P != null) {
                return;
            }
            this.f36283P = new HashMap(childCount);
        }
        for (int i = 0; i < childCount; i++) {
            View childAt = coordinatorLayout.getChildAt(i);
            if (childAt != this.f36276I.get()) {
                if (z) {
                    if (Build.VERSION.SDK_INT >= 16) {
                        this.f36283P.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                    }
                    if (this.f36288d) {
                        C1679w.m29347B0(childAt, 4);
                    }
                } else if (this.f36288d && (map = this.f36283P) != null && map.containsKey(childAt)) {
                    C1679w.m29347B0(childAt, this.f36283P.get(childAt).intValue());
                }
            }
        }
        if (!z) {
            this.f36283P = null;
        } else if (this.f36288d) {
            this.f36276I.get().sendAccessibilityEvent(8);
        }
    }

    /* renamed from: v0 */
    public void m5413v0(boolean z) {
        V v;
        if (this.f36276I != null) {
            m5452M();
            if (this.f36268A != 4 || (v = this.f36276I.get()) == null) {
                return;
            }
            if (z) {
                m5421p0(this.f36268A);
            } else {
                v.requestLayout();
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: A */
    public boolean mo5462A(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        boolean z = false;
        this.f36271D = 0;
        this.f36272E = false;
        if ((i & 2) != 0) {
            z = true;
        }
        return z;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: C */
    public void mo5461C(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
        int i2;
        int i3 = 3;
        if (v.getTop() == m5443V()) {
            m5425m0(3);
            return;
        }
        WeakReference<View> weakReference = this.f36277J;
        if (weakReference == null || view != weakReference.get() || !this.f36272E) {
            return;
        }
        if (this.f36271D > 0) {
            if (this.f36287c) {
                i2 = this.f36303s;
            } else {
                int top = v.getTop();
                i2 = this.f36304t;
                if (top <= i2) {
                    i2 = this.f36302r;
                }
                i3 = 6;
            }
            m5418r0(v, i3, i2, false);
            this.f36272E = false;
        }
        if (this.f36308x && m5419q0(v, m5442W())) {
            i2 = this.f36275H;
            i3 = 5;
        } else if (this.f36271D == 0) {
            int top2 = v.getTop();
            if (!this.f36287c) {
                int i4 = this.f36304t;
                if (top2 < i4) {
                    if (top2 < Math.abs(top2 - this.f36306v)) {
                        i2 = this.f36302r;
                    } else {
                        i2 = this.f36304t;
                    }
                } else if (Math.abs(top2 - i4) < Math.abs(top2 - this.f36306v)) {
                    i2 = this.f36304t;
                } else {
                    i2 = this.f36306v;
                    i3 = 4;
                }
                i3 = 6;
            } else if (Math.abs(top2 - this.f36303s) < Math.abs(top2 - this.f36306v)) {
                i2 = this.f36303s;
            } else {
                i2 = this.f36306v;
                i3 = 4;
            }
        } else {
            if (this.f36287c) {
                i2 = this.f36306v;
            } else {
                int top3 = v.getTop();
                if (Math.abs(top3 - this.f36304t) < Math.abs(top3 - this.f36306v)) {
                    i2 = this.f36304t;
                    i3 = 6;
                } else {
                    i2 = this.f36306v;
                }
            }
            i3 = 4;
        }
        m5418r0(v, i3, i2, false);
        this.f36272E = false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: D */
    public boolean mo3804D(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f36268A == 1 && actionMasked == 0) {
            return true;
        }
        C1710c c1710c = this.f36269B;
        if (c1710c != null) {
            c1710c.m29133F(motionEvent);
        }
        if (actionMasked == 0) {
            m5439Z();
        }
        if (this.f36279L == null) {
            this.f36279L = VelocityTracker.obtain();
        }
        this.f36279L.addMovement(motionEvent);
        if (this.f36269B != null && actionMasked == 2 && !this.f36270C && Math.abs(this.f36281N - motionEvent.getY()) > this.f36269B.m29096z()) {
            this.f36269B.m29119c(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f36270C;
    }

    /* renamed from: T */
    void m5445T(int i) {
        float f;
        float f2;
        V v = this.f36276I.get();
        if (v == null || this.f36278K.isEmpty()) {
            return;
        }
        int i2 = this.f36306v;
        if (i > i2 || i2 == m5443V()) {
            int i3 = this.f36306v;
            f2 = i3 - i;
            f = this.f36275H - i3;
        } else {
            int i4 = this.f36306v;
            f2 = i4 - i;
            f = i4 - m5443V();
        }
        float f3 = f2 / f;
        for (int i5 = 0; i5 < this.f36278K.size(); i5++) {
            this.f36278K.get(i5).m5398a(v, f3);
        }
    }

    /* renamed from: U */
    View m5444U(View view) {
        if (C1679w.m29312W(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View m5444U = m5444U(viewGroup.getChildAt(i));
            if (m5444U != null) {
                return m5444U;
            }
        }
        return null;
    }

    /* renamed from: V */
    public int m5443V() {
        return this.f36287c ? this.f36303s : this.f36302r;
    }

    /* renamed from: X */
    public boolean m5441X() {
        return this.f36297m;
    }

    /* renamed from: b0 */
    public void m5437b0(boolean z) {
        this.f36310z = z;
    }

    /* renamed from: c0 */
    public void m5436c0(int i) {
        if (i >= 0) {
            this.f36302r = i;
            return;
        }
        throw new IllegalArgumentException("offset must be greater than or equal to 0");
    }

    /* renamed from: d0 */
    public void m5435d0(boolean z) {
        if (this.f36287c == z) {
            return;
        }
        this.f36287c = z;
        if (this.f36276I != null) {
            m5452M();
        }
        m5425m0((!this.f36287c || this.f36268A != 6) ? this.f36268A : 3);
        m5417s0();
    }

    /* renamed from: e0 */
    public void m5434e0(boolean z) {
        this.f36297m = z;
    }

    /* renamed from: f0 */
    public void m5433f0(float f) {
        if (f <= 0.0f || f >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.f36305u = f;
        if (this.f36276I == null) {
            return;
        }
        m5451N();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: g */
    public void mo3805g(CoordinatorLayout.C0532e c0532e) {
        super.mo3805g(c0532e);
        this.f36276I = null;
        this.f36269B = null;
    }

    /* renamed from: g0 */
    public void m5432g0(boolean z) {
        if (this.f36308x != z) {
            this.f36308x = z;
            if (!z && this.f36268A == 5) {
                m5426l0(4);
            }
            m5417s0();
        }
    }

    /* renamed from: h0 */
    public void m5431h0(int i) {
        m5430i0(i, false);
    }

    /* renamed from: i0 */
    public final void m5430i0(int i, boolean z) {
        boolean z2;
        if (i == -1) {
            if (!this.f36291g) {
                this.f36291g = true;
                z2 = true;
            }
            z2 = false;
        } else {
            if (this.f36291g || this.f36290f != i) {
                this.f36291g = false;
                this.f36290f = Math.max(0, i);
                z2 = true;
            }
            z2 = false;
        }
        if (z2) {
            m5413v0(z);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: j */
    public void mo5429j() {
        super.mo5429j();
        this.f36276I = null;
        this.f36269B = null;
    }

    /* renamed from: j0 */
    public void m5428j0(int i) {
        this.f36286b = i;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: k */
    public boolean mo4206k(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        C1710c c1710c;
        if (!v.isShown() || !this.f36310z) {
            this.f36270C = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m5439Z();
        }
        if (this.f36279L == null) {
            this.f36279L = VelocityTracker.obtain();
        }
        this.f36279L.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.f36281N = (int) motionEvent.getY();
            if (this.f36268A != 2) {
                WeakReference<View> weakReference = this.f36277J;
                View view = weakReference != null ? weakReference.get() : null;
                if (view != null && coordinatorLayout.m33593F(view, x, this.f36281N)) {
                    this.f36280M = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f36282O = true;
                }
            }
            this.f36270C = this.f36280M == -1 && !coordinatorLayout.m33593F(v, x, this.f36281N);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f36282O = false;
            this.f36280M = -1;
            if (this.f36270C) {
                this.f36270C = false;
                return false;
            }
        }
        if (!this.f36270C && (c1710c = this.f36269B) != null && c1710c.m29124O(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.f36277J;
        View view2 = null;
        if (weakReference2 != null) {
            view2 = weakReference2.get();
        }
        boolean z = false;
        if (actionMasked == 2) {
            z = false;
            if (view2 != null) {
                z = false;
                if (!this.f36270C) {
                    z = false;
                    if (this.f36268A != 1) {
                        z = false;
                        if (!coordinatorLayout.m33593F(view2, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                            z = false;
                            if (this.f36269B != null) {
                                z = false;
                                if (Math.abs(this.f36281N - motionEvent.getY()) > this.f36269B.m29096z()) {
                                    z = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: k0 */
    public void m5427k0(boolean z) {
        this.f36309y = z;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: l */
    public boolean mo3828l(CoordinatorLayout coordinatorLayout, V v, int i) {
        C1938h c1938h;
        if (C1679w.m29258z(coordinatorLayout) && !C1679w.m29258z(v)) {
            v.setFitsSystemWindows(true);
        }
        if (this.f36276I == null) {
            this.f36292h = coordinatorLayout.getResources().getDimensionPixelSize(C1888d.design_bottom_sheet_peek_height_min);
            m5424n0(v);
            this.f36276I = new WeakReference<>(v);
            if (this.f36294j && (c1938h = this.f36295k) != null) {
                C1679w.m29267u0(v, c1938h);
            }
            C1938h c1938h2 = this.f36295k;
            if (c1938h2 != null) {
                float f = this.f36307w;
                float f2 = f;
                if (f == -1.0f) {
                    f2 = C1679w.m29264w(v);
                }
                c1938h2.m28626Z(f2);
                boolean z = this.f36268A == 3;
                this.f36299o = z;
                this.f36295k.m28623b0(z ? 0.0f : 1.0f);
            }
            m5417s0();
            if (C1679w.m29350A(v) == 0) {
                C1679w.m29347B0(v, 1);
            }
        }
        if (this.f36269B == null) {
            this.f36269B = C1710c.m29106p(coordinatorLayout, this.f36285R);
        }
        int top = v.getTop();
        coordinatorLayout.m33586M(v, i);
        this.f36274G = coordinatorLayout.getWidth();
        this.f36275H = coordinatorLayout.getHeight();
        int height = v.getHeight();
        this.f36273F = height;
        this.f36303s = Math.max(0, this.f36275H - height);
        m5451N();
        m5452M();
        int i2 = this.f36268A;
        if (i2 == 3) {
            C1679w.m29305b0(v, m5443V());
        } else if (i2 == 6) {
            C1679w.m29305b0(v, this.f36304t);
        } else if (this.f36308x && i2 == 5) {
            C1679w.m29305b0(v, this.f36275H);
        } else if (i2 == 4) {
            C1679w.m29305b0(v, this.f36306v);
        } else if (i2 == 1 || i2 == 2) {
            C1679w.m29305b0(v, top - v.getTop());
        }
        this.f36277J = new WeakReference<>(m5444U(v));
        return true;
    }

    /* renamed from: l0 */
    public void m5426l0(int i) {
        if (i == this.f36268A) {
            return;
        }
        if (this.f36276I != null) {
            m5421p0(i);
        } else if (i != 4 && i != 3 && i != 6 && (!this.f36308x || i != 5)) {
        } else {
            this.f36268A = i;
        }
    }

    /* renamed from: m0 */
    void m5425m0(int i) {
        V v;
        if (this.f36268A == i) {
            return;
        }
        this.f36268A = i;
        WeakReference<V> weakReference = this.f36276I;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        if (i == 3) {
            m5414u0(true);
        } else if (i == 6 || i == 5 || i == 4) {
            m5414u0(false);
        }
        m5415t0(i);
        for (int i2 = 0; i2 < this.f36278K.size(); i2++) {
            this.f36278K.get(i2).m5397b(v, i);
        }
        m5417s0();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0036, code lost:
        if (super.mo5423o(r8, r9, r10, r11, r12) != false) goto L10;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo5423o(androidx.coordinatorlayout.widget.CoordinatorLayout r8, V r9, android.view.View r10, float r11, float r12) {
        /*
            r7 = this;
            r0 = r7
            java.lang.ref.WeakReference<android.view.View> r0 = r0.f36277J
            r13 = r0
            r0 = 0
            r14 = r0
            r0 = r14
            r15 = r0
            r0 = r13
            if (r0 == 0) goto L3c
            r0 = r14
            r15 = r0
            r0 = r10
            r1 = r13
            java.lang.Object r1 = r1.get()
            if (r0 != r1) goto L3c
            r0 = r7
            int r0 = r0.f36268A
            r1 = 3
            if (r0 != r1) goto L39
            r0 = r14
            r15 = r0
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            boolean r0 = super.mo5423o(r1, r2, r3, r4, r5)
            if (r0 == 0) goto L3c
        L39:
            r0 = 1
            r15 = r0
        L3c:
            r0 = r15
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.mo5423o(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, float, float):boolean");
    }

    /* renamed from: o0 */
    void m5422o0(View view, int i) {
        int i2;
        if (i == 4) {
            i2 = this.f36306v;
        } else if (i == 6) {
            int i3 = this.f36304t;
            if (this.f36287c) {
                i2 = this.f36303s;
                if (i3 <= i2) {
                    i = 3;
                }
            }
            i2 = i3;
        } else if (i == 3) {
            i2 = m5443V();
        } else if (!this.f36308x || i != 5) {
            throw new IllegalArgumentException("Illegal state argument: " + i);
        } else {
            i2 = this.f36275H;
        }
        m5418r0(view, i, i2, false);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: q */
    public void mo5420q(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 1) {
            return;
        }
        WeakReference<View> weakReference = this.f36277J;
        if (view != (weakReference != null ? weakReference.get() : null)) {
            return;
        }
        int top = v.getTop();
        int i4 = top - i2;
        if (i2 > 0) {
            if (i4 < m5443V()) {
                iArr[1] = top - m5443V();
                C1679w.m29305b0(v, -iArr[1]);
                m5425m0(3);
            } else if (!this.f36310z) {
                return;
            } else {
                iArr[1] = i2;
                C1679w.m29305b0(v, -i2);
                m5425m0(1);
            }
        } else if (i2 < 0 && !view.canScrollVertically(-1)) {
            int i5 = this.f36306v;
            if (i4 > i5 && !this.f36308x) {
                iArr[1] = top - i5;
                C1679w.m29305b0(v, -iArr[1]);
                m5425m0(4);
            } else if (!this.f36310z) {
                return;
            } else {
                iArr[1] = i2;
                C1679w.m29305b0(v, -i2);
                m5425m0(1);
            }
        }
        m5445T(v.getTop());
        this.f36271D = i2;
        this.f36272E = true;
    }

    /* renamed from: q0 */
    boolean m5419q0(View view, float f) {
        boolean z = true;
        if (this.f36309y) {
            return true;
        }
        if (view.getTop() < this.f36306v) {
            return false;
        }
        if (Math.abs((view.getTop() + (f * 0.1f)) - this.f36306v) / m5450O() <= 0.5f) {
            z = false;
        }
        return z;
    }

    /* renamed from: r0 */
    void m5418r0(View view, int i, int i2, boolean z) {
        C1710c c1710c = this.f36269B;
        if (!(c1710c != null && (!z ? c1710c.m29123P(view, view.getLeft(), i2) : c1710c.m29125N(view.getLeft(), i2)))) {
            m5425m0(i);
            return;
        }
        m5425m0(2);
        m5415t0(i);
        if (this.f36300p == null) {
            this.f36300p = new RunnableC8040g(view, i);
        }
        if (((RunnableC8040g) this.f36300p).f36325e) {
            this.f36300p.f36326f = i;
            return;
        }
        BottomSheetBehavior<V>.RunnableC8040g runnableC8040g = this.f36300p;
        runnableC8040g.f36326f = i;
        C1679w.m29289j0(view, runnableC8040g);
        ((RunnableC8040g) this.f36300p).f36325e = true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: t */
    public void mo5416t(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: x */
    public void mo5412x(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.mo5412x(coordinatorLayout, v, savedState.m33061a());
        m5438a0(savedState);
        int i = savedState.f36311f;
        if (i == 1 || i == 2) {
            this.f36268A = 4;
        } else {
            this.f36268A = i;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: y */
    public Parcelable mo5411y(CoordinatorLayout coordinatorLayout, V v) {
        return new SavedState(super.mo5411y(coordinatorLayout, v), (BottomSheetBehavior<?>) this);
    }
}
