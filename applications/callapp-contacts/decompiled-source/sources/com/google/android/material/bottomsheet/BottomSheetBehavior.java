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
import androidx.core.view.a.c;
import androidx.core.view.a.f;
import androidx.core.view.ac;
import androidx.core.view.v;
import androidx.customview.a.c;
import androidx.customview.view.AbsSavedState;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.internal.r;
import com.google.android.material.k.h;
import com.google.android.material.k.m;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior.class */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    private static final int G = a.k.Widget_Design_BottomSheet_Modal;
    private int A;
    private boolean B;
    private m C;
    private boolean D;
    private BottomSheetBehavior<V>.b E;
    private ValueAnimator F;
    private boolean H;
    private boolean I;
    private boolean J;
    private int K;
    private boolean L;
    private int M;
    private VelocityTracker N;
    private int O;
    private Map<View, Integer> P;
    private int Q;
    private final c.a R;

    /* renamed from: a  reason: collision with root package name */
    int f30311a;

    /* renamed from: b  reason: collision with root package name */
    int f30312b;

    /* renamed from: c  reason: collision with root package name */
    int f30313c;

    /* renamed from: d  reason: collision with root package name */
    float f30314d;
    int e;
    float f;
    boolean g;
    int h;
    c i;
    int j;
    int k;
    WeakReference<V> l;
    WeakReference<View> m;
    final ArrayList<a> n;
    int o;
    boolean p;
    private int q;
    private boolean r;
    private boolean s;
    private float t;
    private int u;
    private boolean v;
    private int w;
    private int x;
    private boolean y;
    private h z;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$SavedState.class */
    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean fitToContents;
        boolean hideable;
        int peekHeight;
        boolean skipCollapsed;
        final int state;

        public SavedState(Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
            this.peekHeight = parcel.readInt();
            boolean z = false;
            this.fitToContents = parcel.readInt() == 1;
            this.hideable = parcel.readInt() == 1;
            this.skipCollapsed = parcel.readInt() == 1 ? true : z;
        }

        @Deprecated
        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.state = i;
        }

        public SavedState(Parcelable parcelable, BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.state = bottomSheetBehavior.h;
            this.peekHeight = ((BottomSheetBehavior) bottomSheetBehavior).u;
            this.fitToContents = ((BottomSheetBehavior) bottomSheetBehavior).r;
            this.hideable = bottomSheetBehavior.g;
            this.skipCollapsed = ((BottomSheetBehavior) bottomSheetBehavior).H;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.state);
            parcel.writeInt(this.peekHeight);
            parcel.writeInt(this.fitToContents ? 1 : 0);
            parcel.writeInt(this.hideable ? 1 : 0);
            parcel.writeInt(this.skipCollapsed ? 1 : 0);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$a.class */
    public static abstract class a {
        public abstract void a(int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$b.class */
    public final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        int f30323a;

        /* renamed from: c  reason: collision with root package name */
        private final View f30325c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f30326d;

        b(View view, int i) {
            this.f30325c = view;
            this.f30323a = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (BottomSheetBehavior.this.i == null || !BottomSheetBehavior.this.i.c()) {
                BottomSheetBehavior.this.d(this.f30323a);
            } else {
                v.a(this.f30325c, this);
            }
            this.f30326d = false;
        }
    }

    public BottomSheetBehavior() {
        this.q = 0;
        this.r = true;
        this.s = false;
        this.E = null;
        this.f30314d = 0.5f;
        this.f = -1.0f;
        this.I = true;
        this.h = 4;
        this.n = new ArrayList<>();
        this.Q = -1;
        this.R = new c.a() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.4
            @Override // androidx.customview.a.c.a
            public final void a(int i) {
                if (i == 1 && BottomSheetBehavior.this.I) {
                    BottomSheetBehavior.this.d(1);
                }
            }

            @Override // androidx.customview.a.c.a
            public final void a(View view, float f, float f2) {
                int i;
                int i2 = 4;
                if (f2 < BitmapDescriptorFactory.HUE_RED) {
                    if (BottomSheetBehavior.this.r) {
                        i = BottomSheetBehavior.this.f30312b;
                    } else if (view.getTop() > BottomSheetBehavior.this.f30313c) {
                        i = BottomSheetBehavior.this.f30313c;
                        i2 = 6;
                    } else {
                        i = BottomSheetBehavior.this.f30311a;
                    }
                    i2 = 3;
                } else if (BottomSheetBehavior.this.g && BottomSheetBehavior.this.a(view, f2)) {
                    if (Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) {
                        if (!(view.getTop() > (BottomSheetBehavior.this.k + BottomSheetBehavior.this.b()) / 2)) {
                            if (BottomSheetBehavior.this.r) {
                                i = BottomSheetBehavior.this.f30312b;
                            } else if (Math.abs(view.getTop() - BottomSheetBehavior.this.f30311a) < Math.abs(view.getTop() - BottomSheetBehavior.this.f30313c)) {
                                i = BottomSheetBehavior.this.f30311a;
                            } else {
                                i = BottomSheetBehavior.this.f30313c;
                                i2 = 6;
                            }
                            i2 = 3;
                        }
                    }
                    i = BottomSheetBehavior.this.k;
                    i2 = 5;
                } else if (f2 == BitmapDescriptorFactory.HUE_RED || Math.abs(f) > Math.abs(f2)) {
                    int top = view.getTop();
                    if (!BottomSheetBehavior.this.r) {
                        if (top < BottomSheetBehavior.this.f30313c) {
                            if (top < Math.abs(top - BottomSheetBehavior.this.e)) {
                                i = BottomSheetBehavior.this.f30311a;
                                i2 = 3;
                            } else {
                                i = BottomSheetBehavior.this.f30313c;
                            }
                        } else if (Math.abs(top - BottomSheetBehavior.this.f30313c) < Math.abs(top - BottomSheetBehavior.this.e)) {
                            i = BottomSheetBehavior.this.f30313c;
                        } else {
                            i = BottomSheetBehavior.this.e;
                        }
                        i2 = 6;
                    } else if (Math.abs(top - BottomSheetBehavior.this.f30312b) < Math.abs(top - BottomSheetBehavior.this.e)) {
                        i = BottomSheetBehavior.this.f30312b;
                        i2 = 3;
                    } else {
                        i = BottomSheetBehavior.this.e;
                    }
                } else {
                    if (!BottomSheetBehavior.this.r) {
                        int top2 = view.getTop();
                        if (Math.abs(top2 - BottomSheetBehavior.this.f30313c) < Math.abs(top2 - BottomSheetBehavior.this.e)) {
                            i = BottomSheetBehavior.this.f30313c;
                            i2 = 6;
                        }
                    }
                    i = BottomSheetBehavior.this.e;
                }
                BottomSheetBehavior.this.a(view, i2, i, true);
            }

            @Override // androidx.customview.a.c.a
            public final void a(View view, int i, int i2) {
                BottomSheetBehavior.this.e(i2);
            }

            @Override // androidx.customview.a.c.a
            public final int b(View view) {
                return BottomSheetBehavior.this.g ? BottomSheetBehavior.this.k : BottomSheetBehavior.this.e;
            }

            @Override // androidx.customview.a.c.a
            public final boolean b(View view, int i) {
                if (BottomSheetBehavior.this.h == 1 || BottomSheetBehavior.this.p) {
                    return false;
                }
                if (BottomSheetBehavior.this.h == 3 && BottomSheetBehavior.this.o == i) {
                    View view2 = BottomSheetBehavior.this.m != null ? BottomSheetBehavior.this.m.get() : null;
                    if (view2 != null && view2.canScrollVertically(-1)) {
                        return false;
                    }
                }
                return BottomSheetBehavior.this.l != null && BottomSheetBehavior.this.l.get() == view;
            }

            @Override // androidx.customview.a.c.a
            public final int c(View view, int i) {
                return view.getLeft();
            }

            @Override // androidx.customview.a.c.a
            public final int d(View view, int i) {
                return androidx.core.b.a.a(i, BottomSheetBehavior.this.b(), BottomSheetBehavior.this.g ? BottomSheetBehavior.this.k : BottomSheetBehavior.this.e);
            }
        };
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.q = 0;
        this.r = true;
        this.s = false;
        this.E = null;
        this.f30314d = 0.5f;
        this.f = -1.0f;
        this.I = true;
        this.h = 4;
        this.n = new ArrayList<>();
        this.Q = -1;
        this.R = new c.a() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.4
            @Override // androidx.customview.a.c.a
            public final void a(int i) {
                if (i == 1 && BottomSheetBehavior.this.I) {
                    BottomSheetBehavior.this.d(1);
                }
            }

            @Override // androidx.customview.a.c.a
            public final void a(View view, float f, float f2) {
                int i;
                int i2 = 4;
                if (f2 < BitmapDescriptorFactory.HUE_RED) {
                    if (BottomSheetBehavior.this.r) {
                        i = BottomSheetBehavior.this.f30312b;
                    } else if (view.getTop() > BottomSheetBehavior.this.f30313c) {
                        i = BottomSheetBehavior.this.f30313c;
                        i2 = 6;
                    } else {
                        i = BottomSheetBehavior.this.f30311a;
                    }
                    i2 = 3;
                } else if (BottomSheetBehavior.this.g && BottomSheetBehavior.this.a(view, f2)) {
                    if (Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) {
                        if (!(view.getTop() > (BottomSheetBehavior.this.k + BottomSheetBehavior.this.b()) / 2)) {
                            if (BottomSheetBehavior.this.r) {
                                i = BottomSheetBehavior.this.f30312b;
                            } else if (Math.abs(view.getTop() - BottomSheetBehavior.this.f30311a) < Math.abs(view.getTop() - BottomSheetBehavior.this.f30313c)) {
                                i = BottomSheetBehavior.this.f30311a;
                            } else {
                                i = BottomSheetBehavior.this.f30313c;
                                i2 = 6;
                            }
                            i2 = 3;
                        }
                    }
                    i = BottomSheetBehavior.this.k;
                    i2 = 5;
                } else if (f2 == BitmapDescriptorFactory.HUE_RED || Math.abs(f) > Math.abs(f2)) {
                    int top = view.getTop();
                    if (!BottomSheetBehavior.this.r) {
                        if (top < BottomSheetBehavior.this.f30313c) {
                            if (top < Math.abs(top - BottomSheetBehavior.this.e)) {
                                i = BottomSheetBehavior.this.f30311a;
                                i2 = 3;
                            } else {
                                i = BottomSheetBehavior.this.f30313c;
                            }
                        } else if (Math.abs(top - BottomSheetBehavior.this.f30313c) < Math.abs(top - BottomSheetBehavior.this.e)) {
                            i = BottomSheetBehavior.this.f30313c;
                        } else {
                            i = BottomSheetBehavior.this.e;
                        }
                        i2 = 6;
                    } else if (Math.abs(top - BottomSheetBehavior.this.f30312b) < Math.abs(top - BottomSheetBehavior.this.e)) {
                        i = BottomSheetBehavior.this.f30312b;
                        i2 = 3;
                    } else {
                        i = BottomSheetBehavior.this.e;
                    }
                } else {
                    if (!BottomSheetBehavior.this.r) {
                        int top2 = view.getTop();
                        if (Math.abs(top2 - BottomSheetBehavior.this.f30313c) < Math.abs(top2 - BottomSheetBehavior.this.e)) {
                            i = BottomSheetBehavior.this.f30313c;
                            i2 = 6;
                        }
                    }
                    i = BottomSheetBehavior.this.e;
                }
                BottomSheetBehavior.this.a(view, i2, i, true);
            }

            @Override // androidx.customview.a.c.a
            public final void a(View view, int i, int i2) {
                BottomSheetBehavior.this.e(i2);
            }

            @Override // androidx.customview.a.c.a
            public final int b(View view) {
                return BottomSheetBehavior.this.g ? BottomSheetBehavior.this.k : BottomSheetBehavior.this.e;
            }

            @Override // androidx.customview.a.c.a
            public final boolean b(View view, int i) {
                if (BottomSheetBehavior.this.h == 1 || BottomSheetBehavior.this.p) {
                    return false;
                }
                if (BottomSheetBehavior.this.h == 3 && BottomSheetBehavior.this.o == i) {
                    View view2 = BottomSheetBehavior.this.m != null ? BottomSheetBehavior.this.m.get() : null;
                    if (view2 != null && view2.canScrollVertically(-1)) {
                        return false;
                    }
                }
                return BottomSheetBehavior.this.l != null && BottomSheetBehavior.this.l.get() == view;
            }

            @Override // androidx.customview.a.c.a
            public final int c(View view, int i) {
                return view.getLeft();
            }

            @Override // androidx.customview.a.c.a
            public final int d(View view, int i) {
                return androidx.core.b.a.a(i, BottomSheetBehavior.this.b(), BottomSheetBehavior.this.g ? BottomSheetBehavior.this.k : BottomSheetBehavior.this.e);
            }
        };
        this.x = context.getResources().getDimensionPixelSize(a.d.mtrl_min_touch_target_size);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.l.BottomSheetBehavior_Layout);
        this.y = obtainStyledAttributes.hasValue(a.l.BottomSheetBehavior_Layout_shapeAppearance);
        boolean hasValue = obtainStyledAttributes.hasValue(a.l.BottomSheetBehavior_Layout_backgroundTint);
        if (hasValue) {
            a(context, attributeSet, hasValue, com.google.android.material.h.c.a(context, obtainStyledAttributes, a.l.BottomSheetBehavior_Layout_backgroundTint));
        } else {
            a(context, attributeSet, hasValue, (ColorStateList) null);
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.F = ofFloat;
        ofFloat.setDuration(500L);
        this.F.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                if (BottomSheetBehavior.this.z != null) {
                    BottomSheetBehavior.this.z.p(floatValue);
                }
            }
        });
        if (Build.VERSION.SDK_INT >= 21) {
            this.f = obtainStyledAttributes.getDimension(a.l.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(a.l.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (peekValue == null || peekValue.data != -1) {
            b(obtainStyledAttributes.getDimensionPixelSize(a.l.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        } else {
            b(peekValue.data);
        }
        a(obtainStyledAttributes.getBoolean(a.l.BottomSheetBehavior_Layout_behavior_hideable, false));
        this.B = obtainStyledAttributes.getBoolean(a.l.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false);
        boolean z = obtainStyledAttributes.getBoolean(a.l.BottomSheetBehavior_Layout_behavior_fitToContents, true);
        if (this.r != z) {
            this.r = z;
            if (this.l != null) {
                d();
            }
            d((!this.r || this.h != 6) ? this.h : 3);
            g();
        }
        this.H = obtainStyledAttributes.getBoolean(a.l.BottomSheetBehavior_Layout_behavior_skipCollapsed, false);
        this.I = obtainStyledAttributes.getBoolean(a.l.BottomSheetBehavior_Layout_behavior_draggable, true);
        this.q = obtainStyledAttributes.getInt(a.l.BottomSheetBehavior_Layout_behavior_saveFlags, 0);
        float f = obtainStyledAttributes.getFloat(a.l.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f);
        if (f <= BitmapDescriptorFactory.HUE_RED || f >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.f30314d = f;
        if (this.l != null) {
            e();
        }
        TypedValue peekValue2 = obtainStyledAttributes.peekValue(a.l.BottomSheetBehavior_Layout_behavior_expandedOffset);
        if (peekValue2 == null || peekValue2.type != 16) {
            f(obtainStyledAttributes.getDimensionPixelOffset(a.l.BottomSheetBehavior_Layout_behavior_expandedOffset, 0));
        } else {
            f(peekValue2.data);
        }
        obtainStyledAttributes.recycle();
        this.t = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    public static <V extends View> BottomSheetBehavior<V> a(V v) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.d) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.d) layoutParams).f1663a;
            if (behavior instanceof BottomSheetBehavior) {
                return (BottomSheetBehavior) behavior;
            }
            throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
        }
        throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
    }

    private void a(Context context, AttributeSet attributeSet, boolean z, ColorStateList colorStateList) {
        if (this.y) {
            this.C = m.a(context, attributeSet, a.b.bottomSheetStyle, G).a();
            h hVar = new h(this.C);
            this.z = hVar;
            hVar.a(context);
            if (!z || colorStateList == null) {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(16842801, typedValue, true);
                this.z.setTint(typedValue.data);
                return;
            }
            this.z.g(colorStateList);
        }
    }

    private void a(V v, c.a aVar, int i) {
        v.a(v, aVar, i(i));
    }

    private int b(V v, int i) {
        return v.a(v, v.getResources().getString(i), i(6));
    }

    private View b(View view) {
        if (v.y(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View b2 = b(viewGroup.getChildAt(i));
            if (b2 != null) {
                return b2;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        V v;
        if (this.l != null) {
            d();
            if (this.h == 4 && (v = this.l.get()) != null) {
                v.requestLayout();
            }
        }
    }

    private int c() {
        int i;
        return this.v ? Math.min(Math.max(this.w, this.k - ((this.j * 9) / 16)), this.M) : (this.B || (i = this.A) <= 0) ? this.u : Math.max(this.u, i + this.x);
    }

    private void c(boolean z) {
        Map<View, Integer> map;
        WeakReference<V> weakReference = this.l;
        if (weakReference != null) {
            ViewParent parent = weakReference.get().getParent();
            if (parent instanceof CoordinatorLayout) {
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
                int childCount = coordinatorLayout.getChildCount();
                if (Build.VERSION.SDK_INT >= 16 && z) {
                    if (this.P == null) {
                        this.P = new HashMap(childCount);
                    } else {
                        return;
                    }
                }
                for (int i = 0; i < childCount; i++) {
                    View childAt = coordinatorLayout.getChildAt(i);
                    if (childAt != this.l.get()) {
                        if (z) {
                            if (Build.VERSION.SDK_INT >= 16) {
                                this.P.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                            }
                            if (this.s) {
                                v.c(childAt, 4);
                            }
                        } else if (this.s && (map = this.P) != null && map.containsKey(childAt)) {
                            v.c(childAt, this.P.get(childAt).intValue());
                        }
                    }
                }
                if (!z) {
                    this.P = null;
                } else if (this.s) {
                    this.l.get().sendAccessibilityEvent(8);
                }
            }
        }
    }

    private void d() {
        int c2 = c();
        if (this.r) {
            this.e = Math.max(this.k - c2, this.f30312b);
        } else {
            this.e = this.k - c2;
        }
    }

    private void e() {
        this.f30313c = (int) (this.k * (1.0f - this.f30314d));
    }

    private void f() {
        this.o = -1;
        VelocityTracker velocityTracker = this.N;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.N = null;
        }
    }

    private void f(int i) {
        if (i >= 0) {
            this.f30311a = i;
            return;
        }
        throw new IllegalArgumentException("offset must be greater than or equal to 0");
    }

    private void g() {
        V v;
        WeakReference<V> weakReference = this.l;
        if (weakReference != null && (v = weakReference.get()) != null) {
            v.d(v, 524288);
            v.d(v, 262144);
            v.d(v, 1048576);
            int i = this.Q;
            if (i != -1) {
                v.d(v, i);
            }
            int i2 = 6;
            if (this.h != 6) {
                this.Q = b((BottomSheetBehavior<V>) v, a.j.bottomsheet_action_expand_halfway);
            }
            if (this.g && this.h != 5) {
                a((BottomSheetBehavior<V>) v, c.a.u, 5);
            }
            int i3 = this.h;
            if (i3 == 3) {
                if (this.r) {
                    i2 = 4;
                }
                a((BottomSheetBehavior<V>) v, c.a.t, i2);
            } else if (i3 == 4) {
                if (this.r) {
                    i2 = 3;
                }
                a((BottomSheetBehavior<V>) v, c.a.s, i2);
            } else if (i3 == 6) {
                a((BottomSheetBehavior<V>) v, c.a.t, 4);
                a((BottomSheetBehavior<V>) v, c.a.s, 3);
            }
        }
    }

    private void g(final int i) {
        final V v = this.l.get();
        if (v != null) {
            ViewParent parent = v.getParent();
            if (parent == null || !parent.isLayoutRequested() || !v.E(v)) {
                a((View) v, i);
            } else {
                v.post(new Runnable() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        BottomSheetBehavior.this.a(v, i);
                    }
                });
            }
        }
    }

    private void h(int i) {
        ValueAnimator valueAnimator;
        if (i != 2) {
            boolean z = i == 3;
            if (this.D != z) {
                this.D = z;
                if (this.z != null && (valueAnimator = this.F) != null) {
                    if (valueAnimator.isRunning()) {
                        this.F.reverse();
                        return;
                    }
                    float f = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
                    this.F.setFloatValues(1.0f - f, f);
                    this.F.start();
                }
            }
        }
    }

    private f i(final int i) {
        return new f() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.5
            @Override // androidx.core.view.a.f
            public final boolean a(View view) {
                BottomSheetBehavior.this.c(i);
                return true;
            }
        };
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void a() {
        super.a();
        this.l = null;
        this.i = null;
    }

    final void a(View view, int i) {
        int i2;
        int i3;
        if (i == 4) {
            i2 = this.e;
        } else if (i == 6) {
            i2 = this.f30313c;
            if (this.r && i2 <= (i3 = this.f30312b)) {
                i2 = i3;
                i = 3;
            }
        } else if (i == 3) {
            i2 = b();
        } else if (!this.g || i != 5) {
            throw new IllegalArgumentException("Illegal state argument: ".concat(String.valueOf(i)));
        } else {
            i2 = this.k;
        }
        a(view, i, i2, false);
    }

    final void a(View view, int i, int i2, boolean z) {
        androidx.customview.a.c cVar = this.i;
        if (cVar != null && (!z ? cVar.a(view, view.getLeft(), i2) : cVar.a(view.getLeft(), i2))) {
            d(2);
            h(i);
            if (this.E == null) {
                this.E = new b(view, i);
            }
            if (!((b) this.E).f30326d) {
                this.E.f30323a = i;
                v.a(view, this.E);
                ((b) this.E).f30326d = true;
                return;
            }
            this.E.f30323a = i;
            return;
        }
        d(i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void a(CoordinatorLayout.d dVar) {
        super.a(dVar);
        this.l = null;
        this.i = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.a(coordinatorLayout, (CoordinatorLayout) v, savedState.getSuperState());
        int i = this.q;
        if (i != 0) {
            if (i == -1 || (i & 1) == 1) {
                this.u = savedState.peekHeight;
            }
            int i2 = this.q;
            if (i2 == -1 || (i2 & 2) == 2) {
                this.r = savedState.fitToContents;
            }
            int i3 = this.q;
            if (i3 == -1 || (i3 & 4) == 4) {
                this.g = savedState.hideable;
            }
            int i4 = this.q;
            if (i4 == -1 || (i4 & 8) == 8) {
                this.H = savedState.skipCollapsed;
            }
        }
        if (savedState.state == 1 || savedState.state == 2) {
            this.h = 4;
        } else {
            this.h = savedState.state;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void a(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
        int i2;
        float f;
        int i3 = 3;
        if (v.getTop() == b()) {
            d(3);
            return;
        }
        WeakReference<View> weakReference = this.m;
        if (weakReference != null && view == weakReference.get() && this.L) {
            if (this.K > 0) {
                if (this.r) {
                    i2 = this.f30312b;
                } else {
                    int top = v.getTop();
                    i2 = this.f30313c;
                    if (top <= i2) {
                        i2 = this.f30311a;
                    }
                    i3 = 6;
                }
                a((View) v, i3, i2, false);
                this.L = false;
            }
            if (this.g) {
                VelocityTracker velocityTracker = this.N;
                if (velocityTracker == null) {
                    f = BitmapDescriptorFactory.HUE_RED;
                } else {
                    velocityTracker.computeCurrentVelocity(1000, this.t);
                    f = this.N.getYVelocity(this.o);
                }
                if (a(v, f)) {
                    i2 = this.k;
                    i3 = 5;
                    a((View) v, i3, i2, false);
                    this.L = false;
                }
            }
            if (this.K == 0) {
                int top2 = v.getTop();
                if (!this.r) {
                    int i4 = this.f30313c;
                    if (top2 < i4) {
                        if (top2 < Math.abs(top2 - this.e)) {
                            i2 = this.f30311a;
                        } else {
                            i2 = this.f30313c;
                        }
                    } else if (Math.abs(top2 - i4) < Math.abs(top2 - this.e)) {
                        i2 = this.f30313c;
                    } else {
                        i2 = this.e;
                        i3 = 4;
                    }
                    i3 = 6;
                } else if (Math.abs(top2 - this.f30312b) < Math.abs(top2 - this.e)) {
                    i2 = this.f30312b;
                } else {
                    i2 = this.e;
                    i3 = 4;
                }
            } else {
                if (!this.r) {
                    int top3 = v.getTop();
                    if (Math.abs(top3 - this.f30313c) < Math.abs(top3 - this.e)) {
                        i2 = this.f30313c;
                        i3 = 6;
                    }
                }
                i2 = this.e;
                i3 = 4;
            }
            a((View) v, i3, i2, false);
            this.L = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
        if (i3 != 1) {
            WeakReference<View> weakReference = this.m;
            if (view == (weakReference != null ? weakReference.get() : null)) {
                int top = v.getTop();
                int i4 = top - i2;
                if (i2 > 0) {
                    if (i4 < b()) {
                        iArr[1] = top - b();
                        v.e(v, -iArr[1]);
                        d(3);
                    } else if (this.I) {
                        iArr[1] = i2;
                        v.e(v, -i2);
                        d(1);
                    } else {
                        return;
                    }
                } else if (i2 < 0 && !view.canScrollVertically(-1)) {
                    int i5 = this.e;
                    if (i4 > i5 && !this.g) {
                        iArr[1] = top - i5;
                        v.e(v, -iArr[1]);
                        d(4);
                    } else if (this.I) {
                        iArr[1] = i2;
                        v.e(v, -i2);
                        d(1);
                    } else {
                        return;
                    }
                }
                e(v.getTop());
                this.K = i2;
                this.L = true;
            }
        }
    }

    public final void a(a aVar) {
        if (!this.n.contains(aVar)) {
            this.n.add(aVar);
        }
    }

    public final void a(boolean z) {
        if (this.g != z) {
            this.g = z;
            if (!z && this.h == 5) {
                c(4);
            }
            g();
        }
    }

    final boolean a(View view, float f) {
        if (this.H) {
            return true;
        }
        if (view.getTop() < this.e) {
            return false;
        }
        return Math.abs((((float) view.getTop()) + (f * 0.1f)) - ((float) this.e)) / ((float) c()) > 0.5f;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean a(CoordinatorLayout coordinatorLayout, V v, int i) {
        h hVar;
        if (v.s(coordinatorLayout) && !v.s(v)) {
            v.setFitsSystemWindows(true);
        }
        if (this.l == null) {
            this.w = coordinatorLayout.getResources().getDimensionPixelSize(a.d.design_bottom_sheet_peek_height_min);
            if (Build.VERSION.SDK_INT >= 29 && !this.B && !this.v) {
                r.a(v, new r.a() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.3
                    @Override // com.google.android.material.internal.r.a
                    public final ac a(View view, ac acVar, r.b bVar) {
                        BottomSheetBehavior.this.A = acVar.f1974b.i().e;
                        BottomSheetBehavior.this.b(false);
                        return acVar;
                    }
                });
            }
            this.l = new WeakReference<>(v);
            if (this.y && (hVar = this.z) != null) {
                v.a(v, hVar);
            }
            h hVar2 = this.z;
            if (hVar2 != null) {
                float f = this.f;
                float f2 = f;
                if (f == -1.0f) {
                    f2 = v.n(v);
                }
                hVar2.r(f2);
                boolean z = this.h == 3;
                this.D = z;
                this.z.p(z ? BitmapDescriptorFactory.HUE_RED : 1.0f);
            }
            g();
            if (v.e(v) == 0) {
                v.c((View) v, 1);
            }
        }
        if (this.i == null) {
            this.i = androidx.customview.a.c.a(coordinatorLayout, this.R);
        }
        int top = v.getTop();
        coordinatorLayout.b(v, i);
        this.j = coordinatorLayout.getWidth();
        this.k = coordinatorLayout.getHeight();
        int height = v.getHeight();
        this.M = height;
        this.f30312b = Math.max(0, this.k - height);
        e();
        d();
        int i2 = this.h;
        if (i2 == 3) {
            v.e(v, b());
        } else if (i2 == 6) {
            v.e(v, this.f30313c);
        } else if (this.g && i2 == 5) {
            v.e(v, this.k);
        } else if (i2 == 4) {
            v.e(v, this.e);
        } else if (i2 == 1 || i2 == 2) {
            v.e(v, top - v.getTop());
        }
        this.m = new WeakReference<>(b(v));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        androidx.customview.a.c cVar;
        if (!v.isShown() || !this.I) {
            this.J = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            f();
        }
        if (this.N == null) {
            this.N = VelocityTracker.obtain();
        }
        this.N.addMovement(motionEvent);
        View view = null;
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.O = (int) motionEvent.getY();
            if (this.h != 2) {
                WeakReference<View> weakReference = this.m;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && coordinatorLayout.a(view2, x, this.O)) {
                    this.o = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.p = true;
                }
            }
            this.J = this.o == -1 && !coordinatorLayout.a(v, x, this.O);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.p = false;
            this.o = -1;
            if (this.J) {
                this.J = false;
                return false;
            }
        }
        if (!this.J && (cVar = this.i) != null && cVar.a(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.m;
        if (weakReference2 != null) {
            view = weakReference2.get();
        }
        return actionMasked == 2 && view != null && !this.J && this.h != 1 && !coordinatorLayout.a(view, (int) motionEvent.getX(), (int) motionEvent.getY()) && this.i != null && Math.abs(((float) this.O) - motionEvent.getY()) > ((float) this.i.f2083b);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
        WeakReference<View> weakReference = this.m;
        if (weakReference == null || view != weakReference.get()) {
            return false;
        }
        return this.h != 3 || super.a(coordinatorLayout, v, view, f, f2);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        boolean z = false;
        this.K = 0;
        this.L = false;
        if ((i & 2) != 0) {
            z = true;
        }
        return z;
    }

    public final int b() {
        return this.r ? this.f30312b : this.f30311a;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final Parcelable b(CoordinatorLayout coordinatorLayout, V v) {
        return new SavedState(super.b(coordinatorLayout, (CoordinatorLayout) v), (BottomSheetBehavior<?>) this);
    }

    public final void b(int i) {
        boolean z;
        if (i == -1) {
            if (!this.v) {
                this.v = true;
                z = true;
            }
            z = false;
        } else {
            if (this.v || this.u != i) {
                this.v = false;
                this.u = Math.max(0, i);
                z = true;
            }
            z = false;
        }
        if (z) {
            b(false);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.h == 1 && actionMasked == 0) {
            return true;
        }
        androidx.customview.a.c cVar = this.i;
        if (cVar != null) {
            cVar.b(motionEvent);
        }
        if (actionMasked == 0) {
            f();
        }
        if (this.N == null) {
            this.N = VelocityTracker.obtain();
        }
        this.N.addMovement(motionEvent);
        if (this.i != null && actionMasked == 2 && !this.J && Math.abs(this.O - motionEvent.getY()) > this.i.f2083b) {
            this.i.a(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.J;
    }

    public final void c(int i) {
        if (i != this.h) {
            if (this.l != null) {
                g(i);
            } else if (i == 4 || i == 3 || i == 6 || (this.g && i == 5)) {
                this.h = i;
            }
        }
    }

    final void d(int i) {
        if (this.h != i) {
            this.h = i;
            WeakReference<V> weakReference = this.l;
            if (!(weakReference == null || weakReference.get() == null)) {
                if (i == 3) {
                    c(true);
                } else if (i == 6 || i == 5 || i == 4) {
                    c(false);
                }
                h(i);
                for (int i2 = 0; i2 < this.n.size(); i2++) {
                    this.n.get(i2).a(i);
                }
                g();
            }
        }
    }

    final void e(int i) {
        if (!(this.l.get() == null || this.n.isEmpty())) {
            int i2 = this.e;
            if (i <= i2 && i2 != b()) {
                b();
            }
            for (int i3 = 0; i3 < this.n.size(); i3++) {
                this.n.get(i3);
            }
        }
    }
}
