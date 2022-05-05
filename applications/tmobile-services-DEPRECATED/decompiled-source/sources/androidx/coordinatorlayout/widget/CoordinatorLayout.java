package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.C0183R;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout.class */
public class CoordinatorLayout extends ViewGroup implements NestedScrollingParent2, NestedScrollingParent3 {

    /* renamed from: A */
    static final Class<?>[] f2750A;

    /* renamed from: B */
    static final ThreadLocal<Map<String, Constructor<Behavior>>> f2751B;

    /* renamed from: C */
    static final Comparator<View> f2752C;

    /* renamed from: D */
    private static final Pools.Pool<Rect> f2753D;

    /* renamed from: z */
    static final String f2754z;

    /* renamed from: f */
    private final List<View> f2755f;

    /* renamed from: g */
    private final DirectedAcyclicGraph<View> f2756g;

    /* renamed from: h */
    private final List<View> f2757h;

    /* renamed from: i */
    private final List<View> f2758i;

    /* renamed from: j */
    private Paint f2759j;

    /* renamed from: k */
    private final int[] f2760k;

    /* renamed from: l */
    private final int[] f2761l;

    /* renamed from: m */
    private boolean f2762m;

    /* renamed from: n */
    private boolean f2763n;

    /* renamed from: o */
    private int[] f2764o;

    /* renamed from: p */
    private View f2765p;

    /* renamed from: q */
    private View f2766q;

    /* renamed from: r */
    private OnPreDrawListener f2767r;

    /* renamed from: s */
    private boolean f2768s;

    /* renamed from: t */
    private WindowInsetsCompat f2769t;

    /* renamed from: u */
    private boolean f2770u;

    /* renamed from: v */
    private Drawable f2771v;

    /* renamed from: w */
    ViewGroup.OnHierarchyChangeListener f2772w;

    /* renamed from: x */
    private OnApplyWindowInsetsListener f2773x;

    /* renamed from: y */
    private final NestedScrollingParentHelper f2774y;

    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior.class */
    public interface AttachedBehavior {
        @NonNull
        Behavior getBehavior();
    }

    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior.class */
    public static abstract class Behavior<V extends View> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
        }

        /* renamed from: A */
        public boolean mo10443A(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
            if (i2 == 0) {
                return m19898z(coordinatorLayout, v, view, view2, i);
            }
            return false;
        }

        @Deprecated
        /* renamed from: B */
        public void m19909B(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
        }

        /* renamed from: C */
        public void mo10442C(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i) {
            if (i == 0) {
                m19909B(coordinatorLayout, v, view);
            }
        }

        /* renamed from: D */
        public boolean mo8654D(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: a */
        public boolean m19908a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
            return m19906d(coordinatorLayout, v) > 0.0f;
        }

        /* renamed from: b */
        public boolean mo9711b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Rect rect) {
            return false;
        }

        @ColorInt
        /* renamed from: c */
        public int m19907c(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
            return -16777216;
        }

        @FloatRange
        /* renamed from: d */
        public float m19906d(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
            return 0.0f;
        }

        /* renamed from: e */
        public boolean mo8651e(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
            return false;
        }

        @NonNull
        /* renamed from: f */
        public WindowInsetsCompat m19905f(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull WindowInsetsCompat windowInsetsCompat) {
            return windowInsetsCompat;
        }

        /* renamed from: g */
        public void mo8655g(@NonNull LayoutParams layoutParams) {
        }

        /* renamed from: h */
        public boolean mo8679h(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
            return false;
        }

        /* renamed from: i */
        public void mo10673i(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
        }

        /* renamed from: j */
        public void mo10410j() {
        }

        /* renamed from: k */
        public boolean mo9030k(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: l */
        public boolean mo8678l(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
            return false;
        }

        /* renamed from: m */
        public boolean mo10637m(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i, int i2, int i3, int i4) {
            return false;
        }

        /* renamed from: n */
        public boolean m19904n(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, float f, float f2, boolean z) {
            return false;
        }

        /* renamed from: o */
        public boolean mo10404o(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, float f, float f2) {
            return false;
        }

        @Deprecated
        /* renamed from: p */
        public void m19903p(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, @NonNull int[] iArr) {
        }

        /* renamed from: q */
        public void mo10401q(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, @NonNull int[] iArr, int i3) {
            if (i3 == 0) {
                m19903p(coordinatorLayout, v, view, i, i2, iArr);
            }
        }

        @Deprecated
        /* renamed from: r */
        public void m19902r(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, int i3, int i4) {
        }

        @Deprecated
        /* renamed from: s */
        public void m19901s(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, int i3, int i4, int i5) {
            if (i5 == 0) {
                m19902r(coordinatorLayout, v, view, i, i2, i3, i4);
            }
        }

        /* renamed from: t */
        public void mo10397t(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, int i3, int i4, int i5, @NonNull int[] iArr) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
            m19901s(coordinatorLayout, v, view, i, i2, i3, i4, i5);
        }

        @Deprecated
        /* renamed from: u */
        public void m19900u(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i) {
        }

        /* renamed from: v */
        public void m19899v(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
            if (i2 == 0) {
                m19900u(coordinatorLayout, v, view, view2, i);
            }
        }

        /* renamed from: w */
        public boolean mo10672w(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Rect rect, boolean z) {
            return false;
        }

        /* renamed from: x */
        public void mo10392x(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Parcelable parcelable) {
        }

        @Nullable
        /* renamed from: y */
        public Parcelable mo10390y(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        @Deprecated
        /* renamed from: z */
        public boolean m19898z(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i) {
            return false;
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior.class */
    public @interface DefaultBehavior {
        Class<? extends Behavior> value();
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$DispatchChangeEvent.class */
    public @interface DispatchChangeEvent {
    }

    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener.class */
    private class HierarchyChangeListener implements ViewGroup.OnHierarchyChangeListener {
        HierarchyChangeListener() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f2772w;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.m19942L(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f2772w;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        Behavior f2777a;

        /* renamed from: b */
        boolean f2778b;

        /* renamed from: c */
        public int f2779c;

        /* renamed from: d */
        public int f2780d;

        /* renamed from: e */
        public int f2781e;

        /* renamed from: f */
        int f2782f;

        /* renamed from: g */
        public int f2783g;

        /* renamed from: h */
        public int f2784h;

        /* renamed from: i */
        int f2785i;

        /* renamed from: j */
        int f2786j;

        /* renamed from: k */
        View f2787k;

        /* renamed from: l */
        View f2788l;

        /* renamed from: m */
        private boolean f2789m;

        /* renamed from: n */
        private boolean f2790n;

        /* renamed from: o */
        private boolean f2791o;

        /* renamed from: p */
        private boolean f2792p;

        /* renamed from: q */
        final Rect f2793q;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f2778b = false;
            this.f2779c = 0;
            this.f2780d = 0;
            this.f2781e = -1;
            this.f2782f = -1;
            this.f2783g = 0;
            this.f2784h = 0;
            this.f2793q = new Rect();
        }

        LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2778b = false;
            this.f2779c = 0;
            this.f2780d = 0;
            this.f2781e = -1;
            this.f2782f = -1;
            this.f2783g = 0;
            this.f2784h = 0;
            this.f2793q = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0183R.styleable.CoordinatorLayout_Layout);
            this.f2779c = obtainStyledAttributes.getInteger(C0183R.styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f2782f = obtainStyledAttributes.getResourceId(C0183R.styleable.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f2780d = obtainStyledAttributes.getInteger(C0183R.styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.f2781e = obtainStyledAttributes.getInteger(C0183R.styleable.CoordinatorLayout_Layout_layout_keyline, -1);
            this.f2783g = obtainStyledAttributes.getInt(C0183R.styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.f2784h = obtainStyledAttributes.getInt(C0183R.styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            boolean hasValue = obtainStyledAttributes.hasValue(C0183R.styleable.CoordinatorLayout_Layout_layout_behavior);
            this.f2778b = hasValue;
            if (hasValue) {
                this.f2777a = CoordinatorLayout.m19939O(context, attributeSet, obtainStyledAttributes.getString(C0183R.styleable.CoordinatorLayout_Layout_layout_behavior));
            }
            obtainStyledAttributes.recycle();
            Behavior behavior = this.f2777a;
            if (behavior != null) {
                behavior.mo8655g(this);
            }
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2778b = false;
            this.f2779c = 0;
            this.f2780d = 0;
            this.f2781e = -1;
            this.f2782f = -1;
            this.f2783g = 0;
            this.f2784h = 0;
            this.f2793q = new Rect();
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2778b = false;
            this.f2779c = 0;
            this.f2780d = 0;
            this.f2781e = -1;
            this.f2782f = -1;
            this.f2783g = 0;
            this.f2784h = 0;
            this.f2793q = new Rect();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f2778b = false;
            this.f2779c = 0;
            this.f2780d = 0;
            this.f2781e = -1;
            this.f2782f = -1;
            this.f2783g = 0;
            this.f2784h = 0;
            this.f2793q = new Rect();
        }

        /* renamed from: n */
        private void m19884n(View view, CoordinatorLayout coordinatorLayout) {
            View findViewById = coordinatorLayout.findViewById(this.f2782f);
            this.f2787k = findViewById;
            if (findViewById != null) {
                if (findViewById != coordinatorLayout) {
                    for (ViewParent parent = findViewById.getParent(); parent != coordinatorLayout && parent != null; parent = parent.getParent()) {
                        if (parent != view) {
                            if (parent instanceof View) {
                                findViewById = (View) parent;
                            }
                        } else if (coordinatorLayout.isInEditMode()) {
                            this.f2788l = null;
                            this.f2787k = null;
                            return;
                        } else {
                            throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                        }
                    }
                    this.f2788l = findViewById;
                } else if (coordinatorLayout.isInEditMode()) {
                    this.f2788l = null;
                    this.f2787k = null;
                } else {
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
            } else if (coordinatorLayout.isInEditMode()) {
                this.f2788l = null;
                this.f2787k = null;
            } else {
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f2782f) + " to anchor view " + view);
            }
        }

        /* renamed from: s */
        private boolean m19879s(View view, int i) {
            int b = GravityCompat.m19304b(((LayoutParams) view.getLayoutParams()).f2783g, i);
            return b != 0 && (GravityCompat.m19304b(this.f2784h, i) & b) == b;
        }

        /* renamed from: t */
        private boolean m19878t(View view, CoordinatorLayout coordinatorLayout) {
            if (this.f2787k.getId() != this.f2782f) {
                return false;
            }
            View view2 = this.f2787k;
            for (ViewParent parent = view2.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
                if (parent == null || parent == view) {
                    this.f2788l = null;
                    this.f2787k = null;
                    return false;
                }
                if (parent instanceof View) {
                    view2 = (View) parent;
                }
            }
            this.f2788l = view2;
            return true;
        }

        /* renamed from: a */
        boolean m19897a() {
            return this.f2787k == null && this.f2782f != -1;
        }

        /* renamed from: b */
        boolean m19896b(CoordinatorLayout coordinatorLayout, View view, View view2) {
            Behavior behavior;
            return view2 == this.f2788l || m19879s(view2, ViewCompat.m19244A(coordinatorLayout)) || ((behavior = this.f2777a) != null && behavior.mo8651e(coordinatorLayout, view, view2));
        }

        /* renamed from: c */
        boolean m19895c() {
            if (this.f2777a == null) {
                this.f2789m = false;
            }
            return this.f2789m;
        }

        /* renamed from: d */
        View m19894d(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f2782f == -1) {
                this.f2788l = null;
                this.f2787k = null;
                return null;
            }
            if (this.f2787k == null || !m19878t(view, coordinatorLayout)) {
                m19884n(view, coordinatorLayout);
            }
            return this.f2787k;
        }

        @IdRes
        /* renamed from: e */
        public int m19893e() {
            return this.f2782f;
        }

        @Nullable
        /* renamed from: f */
        public Behavior m19892f() {
            return this.f2777a;
        }

        /* renamed from: g */
        boolean m19891g() {
            return this.f2792p;
        }

        /* renamed from: h */
        Rect m19890h() {
            return this.f2793q;
        }

        /* renamed from: i */
        boolean m19889i(CoordinatorLayout coordinatorLayout, View view) {
            boolean z = this.f2789m;
            if (z) {
                return true;
            }
            Behavior behavior = this.f2777a;
            boolean a = (behavior != null ? behavior.m19908a(coordinatorLayout, view) : false) | z;
            this.f2789m = a;
            return a;
        }

        /* renamed from: j */
        boolean m19888j(int i) {
            if (i == 0) {
                return this.f2790n;
            }
            if (i != 1) {
                return false;
            }
            return this.f2791o;
        }

        /* renamed from: k */
        void m19887k() {
            this.f2792p = false;
        }

        /* renamed from: l */
        void m19886l(int i) {
            m19880r(i, false);
        }

        /* renamed from: m */
        void m19885m() {
            this.f2789m = false;
        }

        /* renamed from: o */
        public void m19883o(@Nullable Behavior behavior) {
            Behavior behavior2 = this.f2777a;
            if (behavior2 != behavior) {
                if (behavior2 != null) {
                    behavior2.mo10410j();
                }
                this.f2777a = behavior;
                this.f2778b = true;
                if (behavior != null) {
                    behavior.mo8655g(this);
                }
            }
        }

        /* renamed from: p */
        void m19882p(boolean z) {
            this.f2792p = z;
        }

        /* renamed from: q */
        void m19881q(Rect rect) {
            this.f2793q.set(rect);
        }

        /* renamed from: r */
        void m19880r(int i, boolean z) {
            if (i == 0) {
                this.f2790n = z;
            } else if (i == 1) {
                this.f2791o = z;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener.class */
    public class OnPreDrawListener implements ViewTreeObserver.OnPreDrawListener {
        OnPreDrawListener() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.m19942L(0);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState.1
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
        };

        /* renamed from: h */
        SparseArray<Parcelable> f2795h;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.f2795h = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                this.f2795h.append(iArr[i], readParcelableArray[i]);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            SparseArray<Parcelable> sparseArray = this.f2795h;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.f2795h.keyAt(i2);
                parcelableArr[i2] = this.f2795h.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator.class */
    static class ViewElevationComparator implements Comparator<View> {
        ViewElevationComparator() {
        }

        /* renamed from: a */
        public int compare(View view, View view2) {
            float M = ViewCompat.m19224M(view);
            float M2 = ViewCompat.m19224M(view2);
            if (M > M2) {
                return -1;
            }
            return M < M2 ? 1 : 0;
        }
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        f2754z = r0 != null ? r0.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            f2752C = new ViewElevationComparator();
        } else {
            f2752C = null;
        }
        f2750A = new Class[]{Context.class, AttributeSet.class};
        f2751B = new ThreadLocal<>();
        f2753D = new Pools.SynchronizedPool(12);
    }

    public CoordinatorLayout(@NonNull Context context) {
        this(context, null);
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0183R.attr.coordinatorLayoutStyle);
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        this.f2755f = new ArrayList();
        this.f2756g = new DirectedAcyclicGraph<>();
        this.f2757h = new ArrayList();
        this.f2758i = new ArrayList();
        this.f2760k = new int[2];
        this.f2761l = new int[2];
        this.f2774y = new NestedScrollingParentHelper(this);
        TypedArray obtainStyledAttributes = i == 0 ? context.obtainStyledAttributes(attributeSet, C0183R.styleable.CoordinatorLayout, 0, C0183R.style.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, C0183R.styleable.CoordinatorLayout, i, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            if (i == 0) {
                saveAttributeDataForStyleable(context, C0183R.styleable.CoordinatorLayout, attributeSet, obtainStyledAttributes, 0, C0183R.style.Widget_Support_CoordinatorLayout);
            } else {
                saveAttributeDataForStyleable(context, C0183R.styleable.CoordinatorLayout, attributeSet, obtainStyledAttributes, i, 0);
            }
        }
        int resourceId = obtainStyledAttributes.getResourceId(C0183R.styleable.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.f2764o = resources.getIntArray(resourceId);
            float f = resources.getDisplayMetrics().density;
            int length = this.f2764o.length;
            for (int i2 = 0; i2 < length; i2++) {
                int[] iArr = this.f2764o;
                iArr[i2] = (int) (iArr[i2] * f);
            }
        }
        this.f2771v = obtainStyledAttributes.getDrawable(C0183R.styleable.CoordinatorLayout_statusBarBackground);
        obtainStyledAttributes.recycle();
        m19924b0();
        super.setOnHierarchyChangeListener(new HierarchyChangeListener());
        if (ViewCompat.m19162y(this) == 0) {
            ViewCompat.m19163x0(this, 1);
        }
    }

    /* renamed from: A */
    private int m19953A(int i) {
        int[] iArr = this.f2764o;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i);
            return 0;
        } else if (i >= 0 && i < iArr.length) {
            return iArr[i];
        } else {
            Log.e("CoordinatorLayout", "Keyline index " + i + " out of range for " + this);
            return 0;
        }
    }

    /* renamed from: D */
    private void m19950D(List<View> list) {
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i = childCount - 1; i >= 0; i--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i) : i));
        }
        Comparator<View> comparator = f2752C;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
    }

    /* renamed from: E */
    private boolean m19949E(View view) {
        return this.f2756g.m19864j(view);
    }

    /* renamed from: G */
    private void m19947G(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect a = m19927a();
        a.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        if (this.f2769t != null && ViewCompat.m19164x(this) && !ViewCompat.m19164x(view)) {
            a.left += this.f2769t.m19095f();
            a.top += this.f2769t.m19093h();
            a.right -= this.f2769t.m19094g();
            a.bottom -= this.f2769t.m19096e();
        }
        Rect a2 = m19927a();
        GravityCompat.m19305a(m19931W(layoutParams.f2779c), view.getMeasuredWidth(), view.getMeasuredHeight(), a, a2, i);
        view.layout(a2.left, a2.top, a2.right, a2.bottom);
        m19935S(a);
        m19935S(a2);
    }

    /* renamed from: H */
    private void m19946H(View view, View view2, int i) {
        Rect a = m19927a();
        Rect a2 = m19927a();
        try {
            m19912x(view2, a);
            m19911y(view, i, a, a2);
            view.layout(a2.left, a2.top, a2.right, a2.bottom);
        } finally {
            m19935S(a);
            m19935S(a2);
        }
    }

    /* renamed from: I */
    private void m19945I(View view, int i, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int b = GravityCompat.m19304b(m19930X(layoutParams.f2779c), i2);
        int i3 = b & 7;
        int i4 = b & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i5 = i;
        if (i2 == 1) {
            i5 = width - i;
        }
        int A = m19953A(i5) - measuredWidth;
        int i6 = 0;
        if (i3 == 1) {
            A += measuredWidth / 2;
        } else if (i3 == 5) {
            A += measuredWidth;
        }
        if (i4 == 16) {
            i6 = 0 + (measuredHeight / 2);
        } else if (i4 == 80) {
            i6 = measuredHeight + 0;
        }
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, Math.min(A, ((width - getPaddingRight()) - measuredWidth) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, Math.min(i6, ((height - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
        view.layout(max, max2, measuredWidth + max, measuredHeight + max2);
    }

    /* renamed from: J */
    private void m19944J(View view, Rect rect, int i) {
        boolean z;
        int width;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (ViewCompat.m19218S(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Behavior f = layoutParams.m19892f();
            Rect a = m19927a();
            Rect a2 = m19927a();
            a2.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (f == null || !f.mo9711b(this, view, a)) {
                a.set(a2);
            } else if (!a2.contains(a)) {
                throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + a.toShortString() + " | Bounds:" + a2.toShortString());
            }
            m19935S(a2);
            if (a.isEmpty()) {
                m19935S(a);
                return;
            }
            int b = GravityCompat.m19304b(layoutParams.f2784h, i);
            boolean z2 = true;
            if ((b & 48) != 48 || (i5 = (a.top - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - layoutParams.f2786j) >= (i6 = rect.top)) {
                z = false;
            } else {
                m19928Z(view, i6 - i5);
                z = true;
            }
            boolean z3 = z;
            if ((b & 80) == 80) {
                int height = ((getHeight() - a.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) + layoutParams.f2786j;
                int i7 = rect.bottom;
                z3 = z;
                if (height < i7) {
                    m19928Z(view, height - i7);
                    z3 = true;
                }
            }
            if (!z3) {
                m19928Z(view, 0);
            }
            if ((b & 3) != 3 || (i3 = (a.left - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - layoutParams.f2785i) >= (i4 = rect.left)) {
                z2 = false;
            } else {
                m19929Y(view, i4 - i3);
                z2 = true;
            }
            if ((b & 5) == 5 && (width = ((getWidth() - a.right) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + layoutParams.f2785i) < (i2 = rect.right)) {
                m19929Y(view, width - i2);
            }
            if (!z2) {
                m19929Y(view, 0);
            }
            m19935S(a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: O */
    static Behavior m19939O(Context context, AttributeSet attributeSet, String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str2 = context.getPackageName() + str;
        } else if (str.indexOf(46) >= 0) {
            str2 = str;
        } else {
            str2 = str;
            if (!TextUtils.isEmpty(f2754z)) {
                str2 = f2754z + '.' + str;
            }
        }
        try {
            Map<String, Constructor<Behavior>> map = f2751B.get();
            Map<String, Constructor<Behavior>> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
                f2751B.set(map2);
            }
            Constructor<Behavior> constructor = map2.get(str2);
            Constructor<Behavior> constructor2 = constructor;
            if (constructor == null) {
                constructor2 = Class.forName(str2, false, context.getClassLoader()).getConstructor(f2750A);
                constructor2.setAccessible(true);
                map2.put(str2, constructor2);
            }
            return constructor2.newInstance(context, attributeSet);
        } catch (Exception e) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str2, e);
        }
    }

    /* renamed from: P */
    private boolean m19938P(MotionEvent motionEvent, int i) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.f2757h;
        m19950D(list);
        int size = list.size();
        MotionEvent motionEvent2 = null;
        int i2 = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            z = z2;
            if (i2 >= size) {
                break;
            }
            View view = list.get(i2);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Behavior f = layoutParams.m19892f();
            if ((z2 || z3) && actionMasked != 0) {
                motionEvent2 = motionEvent2;
                z2 = z2;
                z3 = z3;
                if (f != null) {
                    motionEvent2 = motionEvent2;
                    if (motionEvent2 == null) {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    }
                    if (i == 0) {
                        f.mo9030k(this, view, motionEvent2);
                        z2 = z2;
                        z3 = z3;
                    } else if (i != 1) {
                        z2 = z2;
                        z3 = z3;
                    } else {
                        f.mo8654D(this, view, motionEvent2);
                        z2 = z2;
                        z3 = z3;
                    }
                }
            } else {
                z = z2;
                if (!z2) {
                    z = z2;
                    if (f != null) {
                        if (i == 0) {
                            z2 = f.mo9030k(this, view, motionEvent);
                        } else if (i == 1) {
                            z2 = f.mo8654D(this, view, motionEvent);
                        }
                        z = z2;
                        if (z2) {
                            this.f2765p = view;
                            z = z2;
                        }
                    }
                }
                boolean c = layoutParams.m19895c();
                boolean i3 = layoutParams.m19889i(this, view);
                boolean z4 = i3 && !c;
                motionEvent2 = motionEvent2;
                z2 = z;
                z3 = z4;
                if (i3) {
                    motionEvent2 = motionEvent2;
                    z2 = z;
                    z3 = z4;
                    if (!z4) {
                        break;
                    }
                } else {
                    continue;
                }
            }
            i2++;
        }
        list.clear();
        return z;
    }

    /* renamed from: Q */
    private void m19937Q() {
        this.f2755f.clear();
        this.f2756g.m19871c();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            LayoutParams C = m19951C(childAt);
            C.m19894d(this, childAt);
            this.f2756g.m19872b(childAt);
            for (int i2 = 0; i2 < childCount; i2++) {
                if (i2 != i) {
                    View childAt2 = getChildAt(i2);
                    if (C.m19896b(this, childAt, childAt2)) {
                        if (!this.f2756g.m19870d(childAt2)) {
                            this.f2756g.m19872b(childAt2);
                        }
                        this.f2756g.m19873a(childAt2, childAt);
                    }
                }
            }
        }
        this.f2755f.addAll(this.f2756g.m19865i());
        Collections.reverse(this.f2755f);
    }

    /* renamed from: S */
    private static void m19935S(@NonNull Rect rect) {
        rect.setEmpty();
        f2753D.mo19342a(rect);
    }

    /* renamed from: U */
    private void m19933U(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            Behavior f = ((LayoutParams) childAt.getLayoutParams()).m19892f();
            if (f != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    f.mo9030k(this, childAt, obtain);
                } else {
                    f.mo8654D(this, childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((LayoutParams) getChildAt(i2).getLayoutParams()).m19885m();
        }
        this.f2765p = null;
        this.f2762m = false;
    }

    /* renamed from: V */
    private static int m19932V(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 17;
        }
        return i2;
    }

    /* renamed from: W */
    private static int m19931W(int i) {
        int i2 = i;
        if ((i & 7) == 0) {
            i2 = i | 8388611;
        }
        int i3 = i2;
        if ((i2 & 112) == 0) {
            i3 = i2 | 48;
        }
        return i3;
    }

    /* renamed from: X */
    private static int m19930X(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 8388661;
        }
        return i2;
    }

    /* renamed from: Y */
    private void m19929Y(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i2 = layoutParams.f2785i;
        if (i2 != i) {
            ViewCompat.m19213X(view, i - i2);
            layoutParams.f2785i = i;
        }
    }

    /* renamed from: Z */
    private void m19928Z(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i2 = layoutParams.f2786j;
        if (i2 != i) {
            ViewCompat.m19212Y(view, i - i2);
            layoutParams.f2786j = i;
        }
    }

    @NonNull
    /* renamed from: a */
    private static Rect m19927a() {
        Rect b = f2753D.mo19341b();
        Rect rect = b;
        if (b == null) {
            rect = new Rect();
        }
        return rect;
    }

    /* renamed from: b0 */
    private void m19924b0() {
        if (Build.VERSION.SDK_INT >= 21) {
            if (ViewCompat.m19164x(this)) {
                if (this.f2773x == null) {
                    this.f2773x = new OnApplyWindowInsetsListener() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.1
                        @Override // androidx.core.view.OnApplyWindowInsetsListener
                        /* renamed from: a */
                        public WindowInsetsCompat mo9036a(View view, WindowInsetsCompat windowInsetsCompat) {
                            CoordinatorLayout.this.m19926a0(windowInsetsCompat);
                            return windowInsetsCompat;
                        }
                    };
                }
                ViewCompat.m19243A0(this, this.f2773x);
                setSystemUiVisibility(1280);
                return;
            }
            ViewCompat.m19243A0(this, null);
        }
    }

    /* renamed from: c */
    private static int m19923c(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    /* renamed from: d */
    private void m19922d(LayoutParams layoutParams, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
        rect.set(max, max2, i + max, i2 + max2);
    }

    /* renamed from: e */
    private WindowInsetsCompat m19921e(WindowInsetsCompat windowInsetsCompat) {
        Behavior f;
        if (windowInsetsCompat.m19088m()) {
            return windowInsetsCompat;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (ViewCompat.m19164x(childAt) && (f = ((LayoutParams) childAt.getLayoutParams()).m19892f()) != null) {
                f.m19905f(this, childAt, windowInsetsCompat);
                if (windowInsetsCompat.m19088m()) {
                    break;
                }
            }
        }
        return windowInsetsCompat;
    }

    /* renamed from: z */
    private void m19910z(View view, int i, Rect rect, Rect rect2, LayoutParams layoutParams, int i2, int i3) {
        int i4;
        int i5;
        int b = GravityCompat.m19304b(m19932V(layoutParams.f2779c), i);
        int b2 = GravityCompat.m19304b(m19931W(layoutParams.f2780d), i);
        int i6 = b & 7;
        int i7 = b & 112;
        int i8 = b2 & 7;
        int i9 = b2 & 112;
        int width = i8 != 1 ? i8 != 5 ? rect.left : rect.right : rect.left + (rect.width() / 2);
        int height = i9 != 16 ? i9 != 80 ? rect.top : rect.bottom : rect.top + (rect.height() / 2);
        if (i6 != 1) {
            i4 = width;
            if (i6 != 5) {
                i4 = width - i2;
            }
        } else {
            i4 = width - (i2 / 2);
        }
        if (i7 != 16) {
            i5 = height;
            if (i7 != 80) {
                i5 = height - i3;
            }
        } else {
            i5 = height - (i3 / 2);
        }
        rect2.set(i4, i5, i2 + i4, i3 + i5);
    }

    /* renamed from: B */
    void m19952B(View view, Rect rect) {
        rect.set(((LayoutParams) view.getLayoutParams()).m19890h());
    }

    /* renamed from: C */
    LayoutParams m19951C(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.f2778b) {
            if (view instanceof AttachedBehavior) {
                Behavior behavior = ((AttachedBehavior) view).getBehavior();
                if (behavior == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                layoutParams.m19883o(behavior);
                layoutParams.f2778b = true;
            } else {
                Class<?> cls = view.getClass();
                DefaultBehavior defaultBehavior = null;
                while (cls != null) {
                    DefaultBehavior defaultBehavior2 = (DefaultBehavior) cls.getAnnotation(DefaultBehavior.class);
                    defaultBehavior = defaultBehavior2;
                    if (defaultBehavior2 != null) {
                        break;
                    }
                    cls = cls.getSuperclass();
                    defaultBehavior = defaultBehavior2;
                }
                if (defaultBehavior != null) {
                    try {
                        layoutParams.m19883o((Behavior) defaultBehavior.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e) {
                        Log.e("CoordinatorLayout", "Default behavior class " + defaultBehavior.value().getName() + " could not be instantiated. Did you forget a default constructor?", e);
                    }
                }
                layoutParams.f2778b = true;
            }
        }
        return layoutParams;
    }

    /* renamed from: F */
    public boolean m19948F(@NonNull View view, int i, int i2) {
        Rect a = m19927a();
        m19912x(view, a);
        try {
            return a.contains(i, i2);
        } finally {
            m19935S(a);
        }
    }

    /* renamed from: K */
    void m19943K(View view, int i) {
        Behavior f;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.f2787k != null) {
            Rect a = m19927a();
            Rect a2 = m19927a();
            Rect a3 = m19927a();
            m19912x(layoutParams.f2787k, a);
            boolean z = false;
            m19915u(view, false, a2);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            m19910z(view, i, a, a3, layoutParams, measuredWidth, measuredHeight);
            if (!(a3.left == a2.left && a3.top == a2.top)) {
                z = true;
            }
            m19922d(layoutParams, a3, measuredWidth, measuredHeight);
            int i2 = a3.left - a2.left;
            int i3 = a3.top - a2.top;
            if (i2 != 0) {
                ViewCompat.m19213X(view, i2);
            }
            if (i3 != 0) {
                ViewCompat.m19212Y(view, i3);
            }
            if (z && (f = layoutParams.m19892f()) != null) {
                f.mo8679h(this, view, layoutParams.f2787k);
            }
            m19935S(a);
            m19935S(a2);
            m19935S(a3);
        }
    }

    /* renamed from: L */
    final void m19942L(int i) {
        boolean z;
        int A = ViewCompat.m19244A(this);
        int size = this.f2755f.size();
        Rect a = m19927a();
        Rect a2 = m19927a();
        Rect a3 = m19927a();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f2755f.get(i2);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (i != 0 || view.getVisibility() != 8) {
                for (int i3 = 0; i3 < i2; i3++) {
                    if (layoutParams.f2788l == this.f2755f.get(i3)) {
                        m19943K(view, A);
                    }
                }
                m19915u(view, true, a2);
                if (layoutParams.f2783g != 0 && !a2.isEmpty()) {
                    int b = GravityCompat.m19304b(layoutParams.f2783g, A);
                    int i4 = b & 112;
                    if (i4 == 48) {
                        a.top = Math.max(a.top, a2.bottom);
                    } else if (i4 == 80) {
                        a.bottom = Math.max(a.bottom, getHeight() - a2.top);
                    }
                    int i5 = b & 7;
                    if (i5 == 3) {
                        a.left = Math.max(a.left, a2.right);
                    } else if (i5 == 5) {
                        a.right = Math.max(a.right, getWidth() - a2.left);
                    }
                }
                if (layoutParams.f2784h != 0 && view.getVisibility() == 0) {
                    m19944J(view, a, A);
                }
                if (i != 2) {
                    m19952B(view, a3);
                    if (!a3.equals(a2)) {
                        m19936R(view, a2);
                    }
                }
                for (int i6 = i2 + 1; i6 < size; i6++) {
                    View view2 = this.f2755f.get(i6);
                    LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
                    Behavior f = layoutParams2.m19892f();
                    if (f != null && f.mo8651e(this, view2, view)) {
                        if (i != 0 || !layoutParams2.m19891g()) {
                            if (i != 2) {
                                z = f.mo8679h(this, view2, view);
                            } else {
                                f.mo10673i(this, view2, view);
                                z = true;
                            }
                            if (i == 1) {
                                layoutParams2.m19882p(z);
                            }
                        } else {
                            layoutParams2.m19887k();
                        }
                    }
                }
            }
        }
        m19935S(a);
        m19935S(a2);
        m19935S(a3);
    }

    /* renamed from: M */
    public void m19941M(@NonNull View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.m19897a()) {
            View view2 = layoutParams.f2787k;
            if (view2 != null) {
                m19946H(view, view2, i);
                return;
            }
            int i2 = layoutParams.f2781e;
            if (i2 >= 0) {
                m19945I(view, i2, i);
            } else {
                m19947G(view, i);
            }
        } else {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
    }

    /* renamed from: N */
    public void m19940N(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    /* renamed from: R */
    void m19936R(View view, Rect rect) {
        ((LayoutParams) view.getLayoutParams()).m19881q(rect);
    }

    /* renamed from: T */
    void m19934T() {
        if (this.f2763n && this.f2767r != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f2767r);
        }
        this.f2768s = false;
    }

    /* renamed from: a0 */
    final WindowInsetsCompat m19926a0(WindowInsetsCompat windowInsetsCompat) {
        if (!ObjectsCompat.m19346a(this.f2769t, windowInsetsCompat)) {
            this.f2769t = windowInsetsCompat;
            boolean z = true;
            boolean z2 = windowInsetsCompat != null && windowInsetsCompat.m19093h() > 0;
            this.f2770u = z2;
            if (z2 || getBackground() != null) {
                z = false;
            }
            setWillNotDraw(z);
            m19921e(windowInsetsCompat);
            requestLayout();
        }
        return windowInsetsCompat;
    }

    /* renamed from: b */
    void m19925b() {
        if (this.f2763n) {
            if (this.f2767r == null) {
                this.f2767r = new OnPreDrawListener();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f2767r);
        }
        this.f2768s = true;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Behavior behavior = layoutParams.f2777a;
        if (behavior != null) {
            float d = behavior.m19906d(this, view);
            if (d > 0.0f) {
                if (this.f2759j == null) {
                    this.f2759j = new Paint();
                }
                this.f2759j.setColor(layoutParams.f2777a.m19907c(this, view));
                this.f2759j.setAlpha(m19923c(Math.round(d * 255.0f), 0, 255));
                int save = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.f2759j);
                canvas.restoreToCount(save);
            }
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f2771v;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        if (z) {
            invalidate();
        }
    }

    /* renamed from: f */
    public void m19920f(@NonNull View view) {
        List g = this.f2756g.m19867g(view);
        if (!(g == null || g.isEmpty())) {
            for (int i = 0; i < g.size(); i++) {
                View view2 = (View) g.get(i);
                Behavior f = ((LayoutParams) view2.getLayoutParams()).m19892f();
                if (f != null) {
                    f.mo8679h(this, view2, view);
                }
            }
        }
    }

    /* renamed from: g */
    void m19919g() {
        int childCount = getChildCount();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            } else if (m19949E(getChildAt(i))) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (z == this.f2768s) {
            return;
        }
        if (z) {
            m19925b();
        } else {
            m19934T();
        }
    }

    @VisibleForTesting
    final List<View> getDependencySortedChildren() {
        m19937Q();
        return Collections.unmodifiableList(this.f2755f);
    }

    @RestrictTo
    public final WindowInsetsCompat getLastWindowInsets() {
        return this.f2769t;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f2774y.m19254a();
    }

    @Nullable
    public Drawable getStatusBarBackground() {
        return this.f2771v;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    @Override // androidx.core.view.NestedScrollingParent3
    /* renamed from: i */
    public void mo18867i(@NonNull View view, int i, int i2, int i3, int i4, int i5, @NonNull int[] iArr) {
        int childCount = getChildCount();
        boolean z = false;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() == 8) {
                i6 = i6;
                i7 = i7;
            } else {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (!layoutParams.m19888j(i5)) {
                    i6 = i6;
                    i7 = i7;
                } else {
                    Behavior f = layoutParams.m19892f();
                    i6 = i6;
                    i7 = i7;
                    if (f != null) {
                        int[] iArr2 = this.f2760k;
                        iArr2[0] = 0;
                        iArr2[1] = 0;
                        f.mo10397t(this, childAt, view, i, i2, i3, i4, i5, iArr2);
                        int[] iArr3 = this.f2760k;
                        i6 = i3 > 0 ? Math.max(i6, iArr3[0]) : Math.min(i6, iArr3[0]);
                        i7 = i4 > 0 ? Math.max(i7, this.f2760k[1]) : Math.min(i7, this.f2760k[1]);
                        z = true;
                    }
                }
            }
        }
        iArr[0] = iArr[0] + i6;
        iArr[1] = iArr[1] + i7;
        if (z) {
            m19942L(1);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: j */
    public void mo18866j(View view, int i, int i2, int i3, int i4, int i5) {
        mo18867i(view, i, i2, i3, i4, 0, this.f2761l);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: k */
    public boolean mo18865k(View view, View view2, int i, int i2) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Behavior f = layoutParams.m19892f();
                if (f != null) {
                    boolean A = f.mo10443A(this, childAt, view, view2, i, i2);
                    z |= A;
                    layoutParams.m19880r(i2, A);
                } else {
                    layoutParams.m19880r(i2, false);
                }
            }
        }
        return z;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: l */
    public void mo18864l(View view, View view2, int i, int i2) {
        Behavior f;
        this.f2774y.m19252c(view, view2, i, i2);
        this.f2766q = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.m19888j(i2) && (f = layoutParams.m19892f()) != null) {
                f.m19899v(this, childAt, view, view2, i, i2);
            }
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: m */
    public void mo18863m(View view, int i) {
        this.f2774y.m19250e(view, i);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.m19888j(i)) {
                Behavior f = layoutParams.m19892f();
                if (f != null) {
                    f.mo10442C(this, childAt, view, i);
                }
                layoutParams.m19886l(i);
                layoutParams.m19887k();
            }
        }
        this.f2766q = null;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: n */
    public void mo18862n(View view, int i, int i2, int[] iArr, int i3) {
        int childCount = getChildCount();
        boolean z = false;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() == 8) {
                i4 = i4;
                i5 = i5;
            } else {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (!layoutParams.m19888j(i3)) {
                    i4 = i4;
                    i5 = i5;
                } else {
                    Behavior f = layoutParams.m19892f();
                    i4 = i4;
                    i5 = i5;
                    if (f != null) {
                        int[] iArr2 = this.f2760k;
                        iArr2[0] = 0;
                        iArr2[1] = 0;
                        f.mo10401q(this, childAt, view, i, i2, iArr2, i3);
                        int[] iArr3 = this.f2760k;
                        i4 = i > 0 ? Math.max(i4, iArr3[0]) : Math.min(i4, iArr3[0]);
                        int[] iArr4 = this.f2760k;
                        i5 = i2 > 0 ? Math.max(i5, iArr4[1]) : Math.min(i5, iArr4[1]);
                        z = true;
                    }
                }
            }
        }
        iArr[0] = i4;
        iArr[1] = i5;
        if (z) {
            m19942L(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m19933U(false);
        if (this.f2768s) {
            if (this.f2767r == null) {
                this.f2767r = new OnPreDrawListener();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f2767r);
        }
        if (this.f2769t == null && ViewCompat.m19164x(this)) {
            ViewCompat.m19189k0(this);
        }
        this.f2763n = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m19933U(false);
        if (this.f2768s && this.f2767r != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f2767r);
        }
        View view = this.f2766q;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.f2763n = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f2770u && this.f2771v != null) {
            WindowInsetsCompat windowInsetsCompat = this.f2769t;
            int h = windowInsetsCompat != null ? windowInsetsCompat.m19093h() : 0;
            if (h > 0) {
                this.f2771v.setBounds(0, 0, getWidth(), h);
                this.f2771v.draw(canvas);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m19933U(true);
        }
        boolean P = m19938P(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            m19933U(true);
        }
        return P;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Behavior f;
        int A = ViewCompat.m19244A(this);
        int size = this.f2755f.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = this.f2755f.get(i5);
            if (view.getVisibility() != 8 && ((f = ((LayoutParams) view.getLayoutParams()).m19892f()) == null || !f.mo8678l(this, view, A))) {
                m19941M(view, A);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        Behavior f;
        m19937Q();
        m19919g();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int A = ViewCompat.m19244A(this);
        boolean z = A == 1;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z2 = this.f2769t != null && ViewCompat.m19164x(this);
        int size3 = this.f2755f.size();
        int i6 = 0;
        int i7 = 0;
        int i8 = paddingLeft;
        while (i7 < size3) {
            View view = this.f2755f.get(i7);
            if (view.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                int i9 = layoutParams.f2781e;
                if (i9 >= 0 && mode != 0) {
                    int A2 = m19953A(i9);
                    int b = GravityCompat.m19304b(m19930X(layoutParams.f2779c), A) & 7;
                    if ((b == 3 && !z) || (b == 5 && z)) {
                        i3 = Math.max(0, (size - paddingRight) - A2);
                    } else if ((b == 5 && !z) || (b == 3 && z)) {
                        i3 = Math.max(0, A2 - i8);
                    }
                    if (z2 || ViewCompat.m19164x(view)) {
                        i5 = i;
                        i4 = i2;
                    } else {
                        int f2 = this.f2769t.m19095f();
                        int g = this.f2769t.m19094g();
                        int h = this.f2769t.m19093h();
                        int e = this.f2769t.m19096e();
                        i5 = View.MeasureSpec.makeMeasureSpec(size - (f2 + g), mode);
                        i4 = View.MeasureSpec.makeMeasureSpec(size2 - (h + e), mode2);
                    }
                    f = layoutParams.m19892f();
                    if (f != null || !f.mo10637m(this, view, i5, i3, i4, 0)) {
                        m19940N(view, i5, i3, i4, 0);
                    }
                    suggestedMinimumWidth = Math.max(suggestedMinimumWidth, paddingLeft + paddingRight + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                    suggestedMinimumHeight = Math.max(suggestedMinimumHeight, paddingTop + paddingBottom + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                    i6 = View.combineMeasuredStates(i6, view.getMeasuredState());
                }
                i3 = 0;
                if (z2) {
                }
                i5 = i;
                i4 = i2;
                f = layoutParams.m19892f();
                if (f != null) {
                }
                m19940N(view, i5, i3, i4, 0);
                suggestedMinimumWidth = Math.max(suggestedMinimumWidth, paddingLeft + paddingRight + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                suggestedMinimumHeight = Math.max(suggestedMinimumHeight, paddingTop + paddingBottom + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                i6 = View.combineMeasuredStates(i6, view.getMeasuredState());
            }
            i7++;
            i8 = i8;
        }
        setMeasuredDimension(View.resolveSizeAndState(suggestedMinimumWidth, i, (-16777216) & i6), View.resolveSizeAndState(suggestedMinimumHeight, i2, i6 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 8) {
                z2 = z2;
            } else {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (!layoutParams.m19888j(0)) {
                    z2 = z2;
                } else {
                    Behavior f3 = layoutParams.m19892f();
                    z2 = z2;
                    if (f3 != null) {
                        z2 |= f3.m19904n(this, childAt, view, f, f2, z);
                    }
                }
            }
        }
        if (z2) {
            m19942L(1);
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 8) {
                z = z;
            } else {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (!layoutParams.m19888j(0)) {
                    z = z;
                } else {
                    Behavior f3 = layoutParams.m19892f();
                    z = z;
                    if (f3 != null) {
                        z |= f3.mo10404o(this, childAt, view, f, f2);
                    }
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo18862n(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        mo18866j(view, i, i2, i3, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        mo18864l(view, view2, i, 0);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m18793a());
        SparseArray<Parcelable> sparseArray = savedState.f2795h;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior f = m19951C(childAt).m19892f();
            if (!(id == -1 || f == null || (parcelable2 = sparseArray.get(id)) == null)) {
                f.mo10392x(this, childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable y;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior f = ((LayoutParams) childAt.getLayoutParams()).m19892f();
            if (!(id == -1 || f == null || (y = f.mo10390y(this, childAt)) == null)) {
                sparseArray.append(id, y);
            }
        }
        savedState.f2795h = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return mo18865k(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        mo18863m(view, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0017, code lost:
        if (r12 != false) goto L_0x001f;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0094  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            r9 = this;
            r0 = r10
            int r0 = r0.getActionMasked()
            r11 = r0
            r0 = r9
            android.view.View r0 = r0.f2765p
            if (r0 != 0) goto L_0x001d
            r0 = r9
            r1 = r10
            r2 = 1
            boolean r0 = r0.m19938P(r1, r2)
            r12 = r0
            r0 = r12
            r13 = r0
            r0 = r12
            if (r0 == 0) goto L_0x004c
            goto L_0x001f
        L_0x001d:
            r0 = 0
            r12 = r0
        L_0x001f:
            r0 = r9
            android.view.View r0 = r0.f2765p
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$LayoutParams r0 = (androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams) r0
            androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r0 = r0.m19892f()
            r14 = r0
            r0 = r12
            r13 = r0
            r0 = r14
            if (r0 == 0) goto L_0x004c
            r0 = r14
            r1 = r9
            r2 = r9
            android.view.View r2 = r2.f2765p
            r3 = r10
            boolean r0 = r0.mo8654D(r1, r2, r3)
            r15 = r0
            r0 = r12
            r13 = r0
            r0 = r15
            r12 = r0
            goto L_0x004e
        L_0x004c:
            r0 = 0
            r12 = r0
        L_0x004e:
            r0 = r9
            android.view.View r0 = r0.f2765p
            r16 = r0
            r0 = 0
            r14 = r0
            r0 = r16
            if (r0 != 0) goto L_0x006b
            r0 = r12
            r1 = r9
            r2 = r10
            boolean r1 = super.onTouchEvent(r2)
            r0 = r0 | r1
            r15 = r0
            r0 = r14
            r10 = r0
            goto L_0x0090
        L_0x006b:
            r0 = r12
            r15 = r0
            r0 = r14
            r10 = r0
            r0 = r13
            if (r0 == 0) goto L_0x0090
            long r0 = android.os.SystemClock.uptimeMillis()
            r17 = r0
            r0 = r17
            r1 = r17
            r2 = 3
            r3 = 0
            r4 = 0
            r5 = 0
            android.view.MotionEvent r0 = android.view.MotionEvent.obtain(r0, r1, r2, r3, r4, r5)
            r10 = r0
            r0 = r9
            r1 = r10
            boolean r0 = super.onTouchEvent(r1)
            r0 = r12
            r15 = r0
        L_0x0090:
            r0 = r10
            if (r0 == 0) goto L_0x0098
            r0 = r10
            r0.recycle()
        L_0x0098:
            r0 = r11
            r1 = 1
            if (r0 == r1) goto L_0x00a2
            r0 = r11
            r1 = 3
            if (r0 != r1) goto L_0x00a7
        L_0x00a2:
            r0 = r9
            r1 = 0
            r0.m19933U(r1)
        L_0x00a7:
            r0 = r15
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: r */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        Behavior f = ((LayoutParams) view.getLayoutParams()).m19892f();
        if (f == null || !f.mo10672w(this, view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z && !this.f2762m) {
            m19933U(false);
            this.f2762m = true;
        }
    }

    /* renamed from: s */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        m19924b0();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f2772w = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f2771v;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f2771v = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f2771v.setState(getDrawableState());
                }
                DrawableCompat.m19500m(this.f2771v, ViewCompat.m19244A(this));
                this.f2771v.setVisible(getVisibility() == 0, false);
                this.f2771v.setCallback(this);
            }
            ViewCompat.m19203d0(this);
        }
    }

    public void setStatusBarBackgroundColor(@ColorInt int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    public void setStatusBarBackgroundResource(@DrawableRes int i) {
        setStatusBarBackground(i != 0 ? ContextCompat.m19673f(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f2771v;
        if (drawable != null && drawable.isVisible() != z) {
            this.f2771v.setVisible(z, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: t */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    /* renamed from: u */
    void m19915u(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            m19912x(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    @NonNull
    /* renamed from: v */
    public List<View> m19914v(@NonNull View view) {
        List<View> h = this.f2756g.m19866h(view);
        this.f2758i.clear();
        if (h != null) {
            this.f2758i.addAll(h);
        }
        return this.f2758i;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f2771v;
    }

    @NonNull
    /* renamed from: w */
    public List<View> m19913w(@NonNull View view) {
        List g = this.f2756g.m19867g(view);
        this.f2758i.clear();
        if (g != null) {
            this.f2758i.addAll(g);
        }
        return this.f2758i;
    }

    /* renamed from: x */
    void m19912x(View view, Rect rect) {
        ViewGroupUtils.m19862a(this, view, rect);
    }

    /* renamed from: y */
    void m19911y(View view, int i, Rect rect, Rect rect2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        m19910z(view, i, rect, rect2, layoutParams, measuredWidth, measuredHeight);
        m19922d(layoutParams, rect2, measuredWidth, measuredHeight);
    }
}
