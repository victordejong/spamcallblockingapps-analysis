package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import p015b0.C0713a;
import p029c4.C0822f;
import p029c4.C0827i;
import p133j3.C3178a;
import p133j3.C3179b;
import p133j3.C3180c;
import p134j4.C3260w0;
import p163m0.C3589v;
import p163m0.C3611y;
import p174n0.C3694b;
import p216r0.AbstractC4178a;
import p227s0.C4273c;
import p230s3.C4285a;
import p262v3.C4636r;
import p262v3.C4638t;
import p262v3.View$OnAttachStateChangeListenerC4637s;
import p304z3.C5071c;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior.class */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.AbstractC0321c<V> {

    /* renamed from: A */
    public float f6307A;

    /* renamed from: B */
    public int f6308B;

    /* renamed from: C */
    public float f6309C;

    /* renamed from: D */
    public boolean f6310D;

    /* renamed from: E */
    public boolean f6311E;

    /* renamed from: F */
    public boolean f6312F;

    /* renamed from: G */
    public int f6313G;

    /* renamed from: H */
    public C4273c f6314H;

    /* renamed from: I */
    public boolean f6315I;

    /* renamed from: J */
    public int f6316J;

    /* renamed from: K */
    public boolean f6317K;

    /* renamed from: L */
    public int f6318L;

    /* renamed from: M */
    public int f6319M;

    /* renamed from: N */
    public int f6320N;

    /* renamed from: O */
    public WeakReference<V> f6321O;

    /* renamed from: P */
    public WeakReference<View> f6322P;

    /* renamed from: Q */
    public final ArrayList<AbstractC1703c> f6323Q;

    /* renamed from: R */
    public VelocityTracker f6324R;

    /* renamed from: S */
    public int f6325S;

    /* renamed from: T */
    public int f6326T;

    /* renamed from: U */
    public boolean f6327U;

    /* renamed from: V */
    public Map<View, Integer> f6328V;

    /* renamed from: W */
    public int f6329W;

    /* renamed from: X */
    public final C4273c.AbstractC4276c f6330X;

    /* renamed from: a */
    public int f6331a;

    /* renamed from: b */
    public boolean f6332b;

    /* renamed from: c */
    public float f6333c;

    /* renamed from: d */
    public int f6334d;

    /* renamed from: e */
    public boolean f6335e;

    /* renamed from: f */
    public int f6336f;

    /* renamed from: g */
    public int f6337g;

    /* renamed from: h */
    public boolean f6338h;

    /* renamed from: i */
    public C0822f f6339i;

    /* renamed from: j */
    public int f6340j;

    /* renamed from: k */
    public int f6341k;

    /* renamed from: l */
    public int f6342l;

    /* renamed from: m */
    public boolean f6343m;

    /* renamed from: n */
    public boolean f6344n;

    /* renamed from: o */
    public boolean f6345o;

    /* renamed from: p */
    public boolean f6346p;

    /* renamed from: q */
    public boolean f6347q;

    /* renamed from: r */
    public int f6348r;

    /* renamed from: s */
    public int f6349s;

    /* renamed from: t */
    public C0827i f6350t;

    /* renamed from: u */
    public boolean f6351u;

    /* renamed from: v */
    public BottomSheetBehavior<V>.RunnableC1706e f6352v;

    /* renamed from: w */
    public ValueAnimator f6353w;

    /* renamed from: x */
    public int f6354x;

    /* renamed from: y */
    public int f6355y;

    /* renamed from: z */
    public int f6356z;

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$a.class */
    public class RunnableC1701a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f6357a;

        /* renamed from: b */
        public final /* synthetic */ int f6358b;

        public RunnableC1701a(View view, int i) {
            BottomSheetBehavior.this = r4;
            this.f6357a = view;
            this.f6358b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            BottomSheetBehavior.this.m4749D(this.f6357a, this.f6358b);
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$b.class */
    public class C1702b extends C4273c.AbstractC4276c {
        public C1702b() {
            BottomSheetBehavior.this = r4;
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: a */
        public int mo1138a(View view, int i, int i2) {
            return view.getLeft();
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: b */
        public int mo1137b(View view, int i, int i2) {
            int m4727y = BottomSheetBehavior.this.m4727y();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return C0713a.m7443d(i, m4727y, bottomSheetBehavior.f6310D ? bottomSheetBehavior.f6320N : bottomSheetBehavior.f6308B);
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: d */
        public int mo1135d(View view) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return bottomSheetBehavior.f6310D ? bottomSheetBehavior.f6320N : bottomSheetBehavior.f6308B;
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: h */
        public void mo1131h(int i) {
            if (i == 1) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (!bottomSheetBehavior.f6312F) {
                    return;
                }
                bottomSheetBehavior.m4750C(1);
            }
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: i */
        public void mo1130i(View view, int i, int i2, int i3, int i4) {
            BottomSheetBehavior.this.m4730v(i2);
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: j */
        public void mo1129j(View view, float f, float f2) {
            int i;
            int i2 = 4;
            if (f2 < 0.0f) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.f6332b) {
                    i = bottomSheetBehavior.f6355y;
                } else {
                    int top = view.getTop();
                    System.currentTimeMillis();
                    Objects.requireNonNull(BottomSheetBehavior.this);
                    BottomSheetBehavior bottomSheetBehavior2 = BottomSheetBehavior.this;
                    i = bottomSheetBehavior2.f6356z;
                    if (top <= i) {
                        i = bottomSheetBehavior2.m4727y();
                    }
                    i2 = 6;
                }
                i2 = 3;
            } else {
                BottomSheetBehavior bottomSheetBehavior3 = BottomSheetBehavior.this;
                if (bottomSheetBehavior3.f6310D && bottomSheetBehavior3.m4747F(view, f2)) {
                    if (Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) {
                        int top2 = view.getTop();
                        BottomSheetBehavior bottomSheetBehavior4 = BottomSheetBehavior.this;
                        if (!(top2 > (bottomSheetBehavior4.m4727y() + bottomSheetBehavior4.f6320N) / 2)) {
                            BottomSheetBehavior bottomSheetBehavior5 = BottomSheetBehavior.this;
                            if (bottomSheetBehavior5.f6332b) {
                                i = bottomSheetBehavior5.f6355y;
                            } else if (Math.abs(view.getTop() - BottomSheetBehavior.this.m4727y()) < Math.abs(view.getTop() - BottomSheetBehavior.this.f6356z)) {
                                i = BottomSheetBehavior.this.m4727y();
                            } else {
                                i = BottomSheetBehavior.this.f6356z;
                                i2 = 6;
                            }
                            i2 = 3;
                        }
                    }
                    i = BottomSheetBehavior.this.f6320N;
                    i2 = 5;
                } else if (f2 == 0.0f || Math.abs(f) > Math.abs(f2)) {
                    int top3 = view.getTop();
                    BottomSheetBehavior bottomSheetBehavior6 = BottomSheetBehavior.this;
                    if (!bottomSheetBehavior6.f6332b) {
                        int i3 = bottomSheetBehavior6.f6356z;
                        if (top3 < i3) {
                            if (top3 < Math.abs(top3 - bottomSheetBehavior6.f6308B)) {
                                i = BottomSheetBehavior.this.m4727y();
                                i2 = 3;
                            } else {
                                Objects.requireNonNull(BottomSheetBehavior.this);
                                i = BottomSheetBehavior.this.f6356z;
                            }
                        } else if (Math.abs(top3 - i3) < Math.abs(top3 - BottomSheetBehavior.this.f6308B)) {
                            Objects.requireNonNull(BottomSheetBehavior.this);
                            i = BottomSheetBehavior.this.f6356z;
                        } else {
                            i = BottomSheetBehavior.this.f6308B;
                        }
                        i2 = 6;
                    } else if (Math.abs(top3 - bottomSheetBehavior6.f6355y) < Math.abs(top3 - BottomSheetBehavior.this.f6308B)) {
                        i = BottomSheetBehavior.this.f6355y;
                        i2 = 3;
                    } else {
                        i = BottomSheetBehavior.this.f6308B;
                    }
                } else {
                    BottomSheetBehavior bottomSheetBehavior7 = BottomSheetBehavior.this;
                    if (bottomSheetBehavior7.f6332b) {
                        i = bottomSheetBehavior7.f6308B;
                    } else {
                        int top4 = view.getTop();
                        if (Math.abs(top4 - BottomSheetBehavior.this.f6356z) < Math.abs(top4 - BottomSheetBehavior.this.f6308B)) {
                            Objects.requireNonNull(BottomSheetBehavior.this);
                            i = BottomSheetBehavior.this.f6356z;
                            i2 = 6;
                        } else {
                            i = BottomSheetBehavior.this.f6308B;
                        }
                    }
                }
            }
            BottomSheetBehavior bottomSheetBehavior8 = BottomSheetBehavior.this;
            Objects.requireNonNull(bottomSheetBehavior8);
            bottomSheetBehavior8.m4746G(view, i2, i, true);
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: k */
        public boolean mo1128k(View view, int i) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i2 = bottomSheetBehavior.f6313G;
            if (i2 != 1 && !bottomSheetBehavior.f6327U) {
                if (i2 == 3 && bottomSheetBehavior.f6325S == i) {
                    WeakReference<View> weakReference = bottomSheetBehavior.f6322P;
                    View view2 = weakReference != null ? weakReference.get() : null;
                    if (view2 != null && view2.canScrollVertically(-1)) {
                        return false;
                    }
                }
                System.currentTimeMillis();
                WeakReference<V> weakReference2 = BottomSheetBehavior.this.f6321O;
                boolean z = false;
                if (weakReference2 != null) {
                    z = false;
                    if (weakReference2.get() == view) {
                        z = true;
                    }
                }
                return z;
            }
            return false;
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$c.class */
    public static abstract class AbstractC1703c {
        /* renamed from: a */
        public abstract void m4725a(View view, float f);

        /* renamed from: b */
        public abstract void m4724b(View view, int i);
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$d.class */
    public static class C1704d extends AbstractC4178a {
        public static final Parcelable.Creator<C1704d> CREATOR = new C1705a();

        /* renamed from: c */
        public final int f6361c;

        /* renamed from: d */
        public int f6362d;

        /* renamed from: e */
        public boolean f6363e;

        /* renamed from: f */
        public boolean f6364f;

        /* renamed from: g */
        public boolean f6365g;

        /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$d$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$d$a.class */
        public static final class C1705a implements Parcelable.ClassLoaderCreator<C1704d> {
            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new C1704d(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public C1704d createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C1704d(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new C1704d[i];
            }
        }

        public C1704d(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f6361c = parcel.readInt();
            this.f6362d = parcel.readInt();
            this.f6363e = parcel.readInt() == 1;
            this.f6364f = parcel.readInt() == 1;
            this.f6365g = parcel.readInt() == 1;
        }

        public C1704d(Parcelable parcelable, BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.f6361c = bottomSheetBehavior.f6313G;
            this.f6362d = bottomSheetBehavior.f6334d;
            this.f6363e = bottomSheetBehavior.f6332b;
            this.f6364f = bottomSheetBehavior.f6310D;
            this.f6365g = bottomSheetBehavior.f6311E;
        }

        @Override // p216r0.AbstractC4178a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f13167a, i);
            parcel.writeInt(this.f6361c);
            parcel.writeInt(this.f6362d);
            parcel.writeInt(this.f6363e ? 1 : 0);
            parcel.writeInt(this.f6364f ? 1 : 0);
            parcel.writeInt(this.f6365g ? 1 : 0);
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$e.class */
    public class RunnableC1706e implements Runnable {

        /* renamed from: a */
        public final View f6366a;

        /* renamed from: b */
        public boolean f6367b;

        /* renamed from: c */
        public int f6368c;

        public RunnableC1706e(View view, int i) {
            BottomSheetBehavior.this = r4;
            this.f6366a = view;
            this.f6368c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            C4273c c4273c = BottomSheetBehavior.this.f6314H;
            if (c4273c == null || !c4273c.m1155i(true)) {
                BottomSheetBehavior.this.m4750C(this.f6368c);
            } else {
                View view = this.f6366a;
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                C3589v.C3593d.m2081m(view, this);
            }
            this.f6367b = false;
        }
    }

    public BottomSheetBehavior() {
        this.f6331a = 0;
        this.f6332b = true;
        this.f6340j = -1;
        this.f6341k = -1;
        this.f6352v = null;
        this.f6307A = 0.5f;
        this.f6309C = -1.0f;
        this.f6312F = true;
        this.f6313G = 4;
        this.f6323Q = new ArrayList<>();
        this.f6329W = -1;
        this.f6330X = new C1702b();
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i;
        this.f6331a = 0;
        this.f6332b = true;
        this.f6340j = -1;
        this.f6341k = -1;
        this.f6352v = null;
        this.f6307A = 0.5f;
        this.f6309C = -1.0f;
        this.f6312F = true;
        this.f6313G = 4;
        this.f6323Q = new ArrayList<>();
        this.f6329W = -1;
        this.f6330X = new C1702b();
        this.f6337g = context.getResources().getDimensionPixelSize(2131165745);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3260w0.f11025f);
        this.f6338h = obtainStyledAttributes.hasValue(17);
        int i2 = 3;
        boolean hasValue = obtainStyledAttributes.hasValue(3);
        if (hasValue) {
            m4731u(context, attributeSet, hasValue, C5071c.m72a(context, obtainStyledAttributes, 3));
        } else {
            m4731u(context, attributeSet, hasValue, null);
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f6353w = ofFloat;
        ofFloat.setDuration(500L);
        this.f6353w.addUpdateListener(new C3178a(this));
        this.f6309C = obtainStyledAttributes.getDimension(2, -1.0f);
        if (obtainStyledAttributes.hasValue(0)) {
            this.f6340j = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        }
        if (obtainStyledAttributes.hasValue(1)) {
            this.f6341k = obtainStyledAttributes.getDimensionPixelSize(1, -1);
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(9);
        if (peekValue == null || (i = peekValue.data) != -1) {
            m4752A(obtainStyledAttributes.getDimensionPixelSize(9, -1));
        } else {
            m4752A(i);
        }
        boolean z = obtainStyledAttributes.getBoolean(8, false);
        if (this.f6310D != z) {
            this.f6310D = z;
            if (!z && this.f6313G == 5) {
                m4751B(4);
            }
            m4745H();
        }
        this.f6343m = obtainStyledAttributes.getBoolean(12, false);
        boolean z2 = obtainStyledAttributes.getBoolean(6, true);
        if (this.f6332b != z2) {
            this.f6332b = z2;
            if (this.f6321O != null) {
                m4733s();
            }
            m4750C((!this.f6332b || this.f6313G != 6) ? this.f6313G : i2);
            m4745H();
        }
        this.f6311E = obtainStyledAttributes.getBoolean(11, false);
        this.f6312F = obtainStyledAttributes.getBoolean(4, true);
        this.f6331a = obtainStyledAttributes.getInt(10, 0);
        float f = obtainStyledAttributes.getFloat(7, 0.5f);
        if (f <= 0.0f || f >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.f6307A = f;
        if (this.f6321O != null) {
            this.f6356z = (int) ((1.0f - f) * this.f6320N);
        }
        TypedValue peekValue2 = obtainStyledAttributes.peekValue(5);
        if (peekValue2 == null || peekValue2.type != 16) {
            int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(5, 0);
            if (dimensionPixelOffset < 0) {
                throw new IllegalArgumentException("offset must be greater than or equal to 0");
            }
            this.f6354x = dimensionPixelOffset;
        } else {
            int i3 = peekValue2.data;
            if (i3 < 0) {
                throw new IllegalArgumentException("offset must be greater than or equal to 0");
            }
            this.f6354x = i3;
        }
        this.f6344n = obtainStyledAttributes.getBoolean(13, false);
        this.f6345o = obtainStyledAttributes.getBoolean(14, false);
        this.f6346p = obtainStyledAttributes.getBoolean(15, false);
        this.f6347q = obtainStyledAttributes.getBoolean(16, true);
        obtainStyledAttributes.recycle();
        this.f6333c = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    /* renamed from: A */
    public void m4752A(int i) {
        boolean z;
        if (i == -1) {
            if (!this.f6335e) {
                this.f6335e = true;
                z = true;
            }
            z = false;
        } else {
            if (this.f6335e || this.f6334d != i) {
                this.f6335e = false;
                this.f6334d = Math.max(0, i);
                z = true;
            }
            z = false;
        }
        if (z) {
            m4742K(false);
        }
    }

    /* renamed from: B */
    public void m4751B(int i) {
        if (i == this.f6313G) {
            return;
        }
        if (this.f6321O != null) {
            m4748E(i);
        } else if (i != 4 && i != 3 && i != 6 && (!this.f6310D || i != 5)) {
        } else {
            this.f6313G = i;
        }
    }

    /* renamed from: C */
    public void m4750C(int i) {
        V v;
        if (this.f6313G == i) {
            return;
        }
        this.f6313G = i;
        if (i != 4 && i != 3 && i != 6) {
            boolean z = this.f6310D;
        }
        WeakReference<V> weakReference = this.f6321O;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        if (i == 3) {
            m4743J(true);
        } else if (i == 6 || i == 5 || i == 4) {
            m4743J(false);
        }
        m4744I(i);
        for (int i2 = 0; i2 < this.f6323Q.size(); i2++) {
            this.f6323Q.get(i2).m4724b(v, i);
        }
        m4745H();
    }

    /* renamed from: D */
    public void m4749D(View view, int i) {
        int i2;
        int i3;
        if (i == 4) {
            i2 = this.f6308B;
        } else if (i == 6) {
            i2 = this.f6356z;
            if (this.f6332b && i2 <= (i3 = this.f6355y)) {
                i2 = i3;
                i = 3;
            }
        } else if (i == 3) {
            i2 = m4727y();
        } else if (!this.f6310D || i != 5) {
            Log.w("BottomSheetBehavior", "The bottom sheet may be in an invalid state. Ensure `hideable` is true when using `STATE_HIDDEN`.");
            return;
        } else {
            i2 = this.f6320N;
        }
        m4746G(view, i, i2, false);
    }

    /* renamed from: E */
    public final void m4748E(int i) {
        V v = this.f6321O.get();
        if (v == null) {
            return;
        }
        ViewParent parent = v.getParent();
        if (parent != null && parent.isLayoutRequested()) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            if (C3589v.C3596g.m2059b(v)) {
                v.post(new RunnableC1701a(v, i));
                return;
            }
        }
        m4749D(v, i);
    }

    /* renamed from: F */
    public boolean m4747F(View view, float f) {
        boolean z = true;
        if (this.f6311E) {
            return true;
        }
        if (view.getTop() < this.f6308B) {
            return false;
        }
        if (Math.abs(((f * 0.1f) + view.getTop()) - this.f6308B) / m4732t() <= 0.5f) {
            z = false;
        }
        return z;
    }

    /* renamed from: G */
    public void m4746G(View view, int i, int i2, boolean z) {
        C4273c c4273c = this.f6314H;
        if (!(c4273c != null && (!z ? c4273c.m1140x(view, view.getLeft(), i2) : c4273c.m1142v(view.getLeft(), i2)))) {
            m4750C(i);
            return;
        }
        m4750C(2);
        m4744I(i);
        if (this.f6352v == null) {
            this.f6352v = new RunnableC1706e(view, i);
        }
        BottomSheetBehavior<V>.RunnableC1706e runnableC1706e = this.f6352v;
        if (runnableC1706e.f6367b) {
            runnableC1706e.f6368c = i;
            return;
        }
        runnableC1706e.f6368c = i;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3593d.m2081m(view, runnableC1706e);
        this.f6352v.f6367b = true;
    }

    /* renamed from: H */
    public final void m4745H() {
        V v;
        int i;
        WeakReference<V> weakReference = this.f6321O;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        C3589v.m2106r(524288, v);
        C3589v.m2111m(v, 0);
        C3589v.m2106r(262144, v);
        C3589v.m2111m(v, 0);
        C3589v.m2106r(1048576, v);
        C3589v.m2111m(v, 0);
        int i2 = this.f6329W;
        if (i2 != -1) {
            C3589v.m2106r(i2, v);
            C3589v.m2111m(v, 0);
        }
        int i3 = 6;
        if (!this.f6332b && this.f6313G != 6) {
            String string = v.getResources().getString(2131820610);
            C3180c c3180c = new C3180c(this, 6);
            List<C3694b.C3695a> m2114j = C3589v.m2114j(v);
            int i4 = 0;
            while (true) {
                if (i4 >= m2114j.size()) {
                    i = -1;
                    int i5 = 0;
                    while (true) {
                        int[] iArr = C3589v.f11784e;
                        if (i5 >= iArr.length || i != -1) {
                            break;
                        }
                        int i6 = iArr[i5];
                        boolean z = true;
                        for (int i7 = 0; i7 < m2114j.size(); i7++) {
                            z &= m2114j.get(i7).m1868a() != i6;
                        }
                        if (z) {
                            i = i6;
                        }
                        i5++;
                    }
                } else if (TextUtils.equals(string, m2114j.get(i4).m1867b())) {
                    i = m2114j.get(i4).m1868a();
                    break;
                } else {
                    i4++;
                }
            }
            if (i != -1) {
                C3589v.m2123a(v, new C3694b.C3695a(null, i, string, c3180c, null));
            }
            this.f6329W = i;
        }
        if (this.f6310D && this.f6313G != 5) {
            m4726z(v, C3694b.C3695a.f12080l, 5);
        }
        int i8 = this.f6313G;
        if (i8 == 3) {
            if (this.f6332b) {
                i3 = 4;
            }
            m4726z(v, C3694b.C3695a.f12079k, i3);
        } else if (i8 == 4) {
            if (this.f6332b) {
                i3 = 3;
            }
            m4726z(v, C3694b.C3695a.f12078j, i3);
        } else if (i8 == 6) {
            m4726z(v, C3694b.C3695a.f12079k, 4);
            m4726z(v, C3694b.C3695a.f12078j, 3);
        }
    }

    /* renamed from: I */
    public final void m4744I(int i) {
        ValueAnimator valueAnimator;
        if (i == 2) {
            return;
        }
        boolean z = i == 3;
        if (this.f6351u == z) {
            return;
        }
        this.f6351u = z;
        if (this.f6339i == null || (valueAnimator = this.f6353w) == null) {
            return;
        }
        if (valueAnimator.isRunning()) {
            this.f6353w.reverse();
            return;
        }
        float f = z ? 0.0f : 1.0f;
        this.f6353w.setFloatValues(1.0f - f, f);
        this.f6353w.start();
    }

    /* renamed from: J */
    public final void m4743J(boolean z) {
        WeakReference<V> weakReference = this.f6321O;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (!(parent instanceof CoordinatorLayout)) {
            return;
        }
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
        int childCount = coordinatorLayout.getChildCount();
        if (z) {
            if (this.f6328V != null) {
                return;
            }
            this.f6328V = new HashMap(childCount);
        }
        for (int i = 0; i < childCount; i++) {
            View childAt = coordinatorLayout.getChildAt(i);
            if (childAt != this.f6321O.get() && z) {
                this.f6328V.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
            }
        }
        if (z) {
            return;
        }
        this.f6328V = null;
    }

    /* renamed from: K */
    public final void m4742K(boolean z) {
        V v;
        if (this.f6321O != null) {
            m4733s();
            if (this.f6313G != 4 || (v = this.f6321O.get()) == null) {
                return;
            }
            if (z) {
                m4748E(this.f6313G);
            } else {
                v.requestLayout();
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: c */
    public void mo4487c(CoordinatorLayout.C0324f c0324f) {
        this.f6321O = null;
        this.f6314H = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: f */
    public void mo4741f() {
        this.f6321O = null;
        this.f6314H = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: g */
    public boolean mo2988g(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        C4273c c4273c;
        if (!v.isShown() || !this.f6312F) {
            this.f6315I = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f6325S = -1;
            VelocityTracker velocityTracker = this.f6324R;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f6324R = null;
            }
        }
        if (this.f6324R == null) {
            this.f6324R = VelocityTracker.obtain();
        }
        this.f6324R.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.f6326T = (int) motionEvent.getY();
            if (this.f6313G != 2) {
                WeakReference<View> weakReference = this.f6322P;
                View view = weakReference != null ? weakReference.get() : null;
                if (view != null && coordinatorLayout.m8330q(view, x, this.f6326T)) {
                    this.f6325S = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f6327U = true;
                }
            }
            this.f6315I = this.f6325S == -1 && !coordinatorLayout.m8330q(v, x, this.f6326T);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f6327U = false;
            this.f6325S = -1;
            if (this.f6315I) {
                this.f6315I = false;
                return false;
            }
        }
        if (!this.f6315I && (c4273c = this.f6314H) != null && c4273c.m1141w(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.f6322P;
        View view2 = null;
        if (weakReference2 != null) {
            view2 = weakReference2.get();
        }
        boolean z = false;
        if (actionMasked == 2) {
            z = false;
            if (view2 != null) {
                z = false;
                if (!this.f6315I) {
                    z = false;
                    if (this.f6313G != 1) {
                        z = false;
                        if (!coordinatorLayout.m8330q(view2, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                            z = false;
                            if (this.f6314H != null) {
                                z = false;
                                if (Math.abs(this.f6326T - motionEvent.getY()) > this.f6314H.f13390b) {
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

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: h */
    public boolean mo2976h(CoordinatorLayout coordinatorLayout, V v, int i) {
        C0822f c0822f;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        if (C3589v.C3593d.m2092b(coordinatorLayout) && !C3589v.C3593d.m2092b(v)) {
            v.setFitsSystemWindows(true);
        }
        if (this.f6321O == null) {
            this.f6336f = coordinatorLayout.getResources().getDimensionPixelSize(2131165326);
            boolean z = Build.VERSION.SDK_INT >= 29 && !this.f6343m && !this.f6335e;
            if (this.f6344n || this.f6345o || this.f6346p || z) {
                C3589v.C3598i.m2030u(v, new C4636r(new C3179b(this, z), new C4638t.C4640b(C3589v.C3594e.m2069f(v), v.getPaddingTop(), C3589v.C3594e.m2070e(v), v.getPaddingBottom())));
                if (C3589v.C3596g.m2059b(v)) {
                    C3589v.C3597h.m2051c(v);
                } else {
                    v.addOnAttachStateChangeListener(new View$OnAttachStateChangeListenerC4637s());
                }
            }
            this.f6321O = new WeakReference<>(v);
            if (this.f6338h && (c0822f = this.f6339i) != null) {
                C3589v.C3593d.m2077q(v, c0822f);
            }
            C0822f c0822f2 = this.f6339i;
            if (c0822f2 != null) {
                float f = this.f6309C;
                float f2 = f;
                if (f == -1.0f) {
                    f2 = C3589v.C3598i.m2042i(v);
                }
                c0822f2.m7315p(f2);
                boolean z2 = this.f6313G == 3;
                this.f6351u = z2;
                this.f6339i.m7313r(z2 ? 0.0f : 1.0f);
            }
            m4745H();
            if (C3589v.C3593d.m2091c(v) == 0) {
                C3589v.C3593d.m2075s(v, 1);
            }
        }
        if (this.f6314H == null) {
            this.f6314H = new C4273c(coordinatorLayout.getContext(), coordinatorLayout, this.f6330X);
        }
        int top = v.getTop();
        coordinatorLayout.m8328s(v, i);
        this.f6319M = coordinatorLayout.getWidth();
        this.f6320N = coordinatorLayout.getHeight();
        int height = v.getHeight();
        this.f6318L = height;
        int i2 = this.f6320N;
        int i3 = this.f6349s;
        if (i2 - height < i3) {
            if (this.f6347q) {
                this.f6318L = i2;
            } else {
                this.f6318L = i2 - i3;
            }
        }
        this.f6355y = Math.max(0, i2 - this.f6318L);
        this.f6356z = (int) ((1.0f - this.f6307A) * this.f6320N);
        m4733s();
        int i4 = this.f6313G;
        if (i4 == 3) {
            C3589v.m2109o(v, m4727y());
        } else if (i4 == 6) {
            C3589v.m2109o(v, this.f6356z);
        } else if (this.f6310D && i4 == 5) {
            C3589v.m2109o(v, this.f6320N);
        } else if (i4 == 4) {
            C3589v.m2109o(v, this.f6308B);
        } else if (i4 == 1 || i4 == 2) {
            C3589v.m2109o(v, top - v.getTop());
        }
        this.f6322P = new WeakReference<>(m4729w(v));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: i */
    public boolean mo2981i(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v.getLayoutParams();
        v.measure(m4728x(i, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, this.f6340j, marginLayoutParams.width), m4728x(i3, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, this.f6341k, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: j */
    public boolean mo4740j(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
        WeakReference<View> weakReference = this.f6322P;
        return (weakReference == null || view != weakReference.get() || this.f6313G == 3) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: k */
    public void mo4739k(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 1) {
            return;
        }
        WeakReference<View> weakReference = this.f6322P;
        if (view != (weakReference != null ? weakReference.get() : null)) {
            return;
        }
        int top = v.getTop();
        int i4 = top - i2;
        if (i2 > 0) {
            if (i4 < m4727y()) {
                iArr[1] = top - m4727y();
                C3589v.m2109o(v, -iArr[1]);
                m4750C(3);
            } else if (!this.f6312F) {
                return;
            } else {
                iArr[1] = i2;
                C3589v.m2109o(v, -i2);
                m4750C(1);
            }
        } else if (i2 < 0 && !view.canScrollVertically(-1)) {
            int i5 = this.f6308B;
            if (i4 > i5 && !this.f6310D) {
                iArr[1] = top - i5;
                C3589v.m2109o(v, -iArr[1]);
                m4750C(4);
            } else if (!this.f6312F) {
                return;
            } else {
                iArr[1] = i2;
                C3589v.m2109o(v, -i2);
                m4750C(1);
            }
        }
        m4730v(v.getTop());
        this.f6316J = i2;
        this.f6317K = true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: l */
    public void mo4738l(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: n */
    public void mo4737n(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        C1704d c1704d = (C1704d) parcelable;
        int i = this.f6331a;
        if (i != 0) {
            if (i == -1 || (i & 1) == 1) {
                this.f6334d = c1704d.f6362d;
            }
            if (i == -1 || (i & 2) == 2) {
                this.f6332b = c1704d.f6363e;
            }
            if (i == -1 || (i & 4) == 4) {
                this.f6310D = c1704d.f6364f;
            }
            if (i == -1 || (i & 8) == 8) {
                this.f6311E = c1704d.f6365g;
            }
        }
        int i2 = c1704d.f6361c;
        if (i2 == 1 || i2 == 2) {
            this.f6313G = 4;
        } else {
            this.f6313G = i2;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: o */
    public Parcelable mo4736o(CoordinatorLayout coordinatorLayout, V v) {
        return new C1704d((Parcelable) View.BaseSavedState.EMPTY_STATE, (BottomSheetBehavior<?>) this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: p */
    public boolean mo4735p(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        boolean z = false;
        this.f6316J = 0;
        this.f6317K = false;
        if ((i & 2) != 0) {
            z = true;
        }
        return z;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: q */
    public void mo4734q(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
        int i2;
        float f;
        int i3 = 3;
        if (v.getTop() == m4727y()) {
            m4750C(3);
            return;
        }
        WeakReference<View> weakReference = this.f6322P;
        if (weakReference == null || view != weakReference.get() || !this.f6317K) {
            return;
        }
        if (this.f6316J > 0) {
            if (this.f6332b) {
                i2 = this.f6355y;
            } else {
                int top = v.getTop();
                i2 = this.f6356z;
                if (top <= i2) {
                    i2 = m4727y();
                }
                i3 = 6;
            }
            m4746G(v, i3, i2, false);
            this.f6317K = false;
        }
        if (this.f6310D) {
            VelocityTracker velocityTracker = this.f6324R;
            if (velocityTracker == null) {
                f = 0.0f;
            } else {
                velocityTracker.computeCurrentVelocity(1000, this.f6333c);
                f = this.f6324R.getYVelocity(this.f6325S);
            }
            if (m4747F(v, f)) {
                i2 = this.f6320N;
                i3 = 5;
                m4746G(v, i3, i2, false);
                this.f6317K = false;
            }
        }
        if (this.f6316J == 0) {
            int top2 = v.getTop();
            if (!this.f6332b) {
                int i4 = this.f6356z;
                if (top2 < i4) {
                    if (top2 < Math.abs(top2 - this.f6308B)) {
                        i2 = m4727y();
                    } else {
                        i2 = this.f6356z;
                    }
                } else if (Math.abs(top2 - i4) < Math.abs(top2 - this.f6308B)) {
                    i2 = this.f6356z;
                } else {
                    i2 = this.f6308B;
                    i3 = 4;
                }
                i3 = 6;
            } else if (Math.abs(top2 - this.f6355y) < Math.abs(top2 - this.f6308B)) {
                i2 = this.f6355y;
            } else {
                i2 = this.f6308B;
                i3 = 4;
            }
        } else {
            if (this.f6332b) {
                i2 = this.f6308B;
            } else {
                int top3 = v.getTop();
                if (Math.abs(top3 - this.f6356z) < Math.abs(top3 - this.f6308B)) {
                    i2 = this.f6356z;
                    i3 = 6;
                } else {
                    i2 = this.f6308B;
                }
            }
            i3 = 4;
        }
        m4746G(v, i3, i2, false);
        this.f6317K = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x009f, code lost:
        if (r5.f6313G == 1) goto L35;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo2987r(androidx.coordinatorlayout.widget.CoordinatorLayout r6, V r7, android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.mo2987r(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: s */
    public final void m4733s() {
        int m4732t = m4732t();
        if (this.f6332b) {
            this.f6308B = Math.max(this.f6320N - m4732t, this.f6355y);
        } else {
            this.f6308B = this.f6320N - m4732t;
        }
    }

    /* renamed from: t */
    public final int m4732t() {
        int i;
        return this.f6335e ? Math.min(Math.max(this.f6336f, this.f6320N - ((this.f6319M * 9) / 16)), this.f6318L) + this.f6348r : (this.f6343m || this.f6344n || (i = this.f6342l) <= 0) ? this.f6334d + this.f6348r : Math.max(this.f6334d, i + this.f6337g);
    }

    /* renamed from: u */
    public final void m4731u(Context context, AttributeSet attributeSet, boolean z, ColorStateList colorStateList) {
        if (this.f6338h) {
            this.f6350t = C0827i.m7304b(context, attributeSet, 2130968685, 2131886885).m7299a();
            C0822f c0822f = new C0822f(this.f6350t);
            this.f6339i = c0822f;
            c0822f.f3010a.f3035b = new C4285a(context);
            c0822f.m7307x();
            if (z && colorStateList != null) {
                this.f6339i.m7314q(colorStateList);
                return;
            }
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(16842801, typedValue, true);
            this.f6339i.setTint(typedValue.data);
        }
    }

    /* renamed from: v */
    public void m4730v(int i) {
        float f;
        float f2;
        V v = this.f6321O.get();
        if (v == null || this.f6323Q.isEmpty()) {
            return;
        }
        int i2 = this.f6308B;
        if (i > i2 || i2 == m4727y()) {
            int i3 = this.f6308B;
            f2 = i3 - i;
            f = this.f6320N - i3;
        } else {
            int i4 = this.f6308B;
            f2 = i4 - i;
            f = i4 - m4727y();
        }
        float f3 = f2 / f;
        for (int i5 = 0; i5 < this.f6323Q.size(); i5++) {
            this.f6323Q.get(i5).m4725a(v, f3);
        }
    }

    /* renamed from: w */
    public View m4729w(View view) {
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        if (C3589v.C3598i.m2035p(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View m4729w = m4729w(viewGroup.getChildAt(i));
            if (m4729w != null) {
                return m4729w;
            }
        }
        return null;
    }

    /* renamed from: x */
    public final int m4728x(int i, int i2, int i3, int i4) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, i2, i4);
        if (i3 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i3), 1073741824);
        }
        if (size != 0) {
            i3 = Math.min(size, i3);
        }
        return View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
    }

    /* renamed from: y */
    public int m4727y() {
        int i;
        if (this.f6332b) {
            i = this.f6355y;
        } else {
            i = Math.max(this.f6354x, this.f6347q ? 0 : this.f6349s);
        }
        return i;
    }

    /* renamed from: z */
    public final void m4726z(V v, C3694b.C3695a c3695a, int i) {
        C3589v.m2105s(v, c3695a, null, new C3180c(this, i));
    }
}
