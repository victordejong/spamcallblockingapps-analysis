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
import androidx.core.content.C0586a;
import androidx.core.graphics.drawable.C0615a;
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
import p020b.p040g.C1515a;
import p020b.p040g.C1516b;
import p020b.p040g.C1517c;
import p020b.p041h.p049k.AbstractC1594e;
import p020b.p041h.p049k.C1592c;
import p020b.p041h.p049k.C1596g;
import p020b.p041h.p050l.AbstractC1669m;
import p020b.p041h.p050l.AbstractC1670n;
import p020b.p041h.p050l.AbstractC1673q;
import p020b.p041h.p050l.C1614e;
import p020b.p041h.p050l.C1615e0;
import p020b.p041h.p050l.C1672p;
import p020b.p041h.p050l.C1679w;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout.class */
public class CoordinatorLayout extends ViewGroup implements AbstractC1669m, AbstractC1670n {

    /* renamed from: d */
    static final String f2734d;

    /* renamed from: e */
    static final Class<?>[] f2735e;

    /* renamed from: f */
    static final ThreadLocal<Map<String, Constructor<Behavior>>> f2736f;

    /* renamed from: g */
    static final Comparator<View> f2737g;

    /* renamed from: h */
    private static final AbstractC1594e<Rect> f2738h;

    /* renamed from: A */
    private AbstractC1673q f2739A;

    /* renamed from: B */
    private final C1672p f2740B;

    /* renamed from: i */
    private final List<View> f2741i;

    /* renamed from: j */
    private final C0535a<View> f2742j;

    /* renamed from: k */
    private final List<View> f2743k;

    /* renamed from: l */
    private final List<View> f2744l;

    /* renamed from: m */
    private Paint f2745m;

    /* renamed from: n */
    private final int[] f2746n;

    /* renamed from: o */
    private final int[] f2747o;

    /* renamed from: p */
    private boolean f2748p;

    /* renamed from: q */
    private boolean f2749q;

    /* renamed from: r */
    private int[] f2750r;

    /* renamed from: s */
    private View f2751s;

    /* renamed from: t */
    private View f2752t;

    /* renamed from: u */
    private ViewTreeObserver$OnPreDrawListenerC0533f f2753u;

    /* renamed from: v */
    private boolean f2754v;

    /* renamed from: w */
    private C1615e0 f2755w;

    /* renamed from: x */
    private boolean f2756x;

    /* renamed from: y */
    private Drawable f2757y;

    /* renamed from: z */
    ViewGroup.OnHierarchyChangeListener f2758z;

    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior.class */
    public static abstract class Behavior<V extends View> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
        }

        /* renamed from: A */
        public boolean mo5462A(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                return m33543z(coordinatorLayout, v, view, view2, i);
            }
            return false;
        }

        @Deprecated
        /* renamed from: B */
        public void m33554B(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        /* renamed from: C */
        public void mo5461C(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
            if (i == 0) {
                m33554B(coordinatorLayout, v, view);
            }
        }

        /* renamed from: D */
        public boolean mo3804D(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: a */
        public boolean m33553a(CoordinatorLayout coordinatorLayout, V v) {
            return m33551d(coordinatorLayout, v) > 0.0f;
        }

        /* renamed from: b */
        public boolean mo4765b(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
            return false;
        }

        /* renamed from: c */
        public int m33552c(CoordinatorLayout coordinatorLayout, V v) {
            return -16777216;
        }

        /* renamed from: d */
        public float m33551d(CoordinatorLayout coordinatorLayout, V v) {
            return 0.0f;
        }

        /* renamed from: e */
        public boolean mo3801e(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        /* renamed from: f */
        public C1615e0 m33550f(CoordinatorLayout coordinatorLayout, V v, C1615e0 c1615e0) {
            return c1615e0;
        }

        /* renamed from: g */
        public void mo3805g(C0532e c0532e) {
        }

        /* renamed from: h */
        public boolean mo3829h(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        /* renamed from: i */
        public void mo5712i(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        /* renamed from: j */
        public void mo5429j() {
        }

        /* renamed from: k */
        public boolean mo4206k(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: l */
        public boolean mo3828l(CoordinatorLayout coordinatorLayout, V v, int i) {
            return false;
        }

        /* renamed from: m */
        public boolean mo5673m(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
            return false;
        }

        /* renamed from: n */
        public boolean m33549n(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2, boolean z) {
            return false;
        }

        /* renamed from: o */
        public boolean mo5423o(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
            return false;
        }

        @Deprecated
        /* renamed from: p */
        public void m33548p(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr) {
        }

        /* renamed from: q */
        public void mo5420q(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
            if (i3 == 0) {
                m33548p(coordinatorLayout, v, view, i, i2, iArr);
            }
        }

        @Deprecated
        /* renamed from: r */
        public void m33547r(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        }

        @Deprecated
        /* renamed from: s */
        public void m33546s(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5) {
            if (i5 == 0) {
                m33547r(coordinatorLayout, v, view, i, i2, i3, i4);
            }
        }

        /* renamed from: t */
        public void mo5416t(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
            m33546s(coordinatorLayout, v, view, i, i2, i3, i4, i5);
        }

        @Deprecated
        /* renamed from: u */
        public void m33545u(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        }

        /* renamed from: v */
        public void m33544v(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                m33545u(coordinatorLayout, v, view, view2, i);
            }
        }

        /* renamed from: w */
        public boolean mo5711w(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        /* renamed from: x */
        public void mo5412x(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        }

        /* renamed from: y */
        public Parcelable mo5411y(CoordinatorLayout coordinatorLayout, V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        @Deprecated
        /* renamed from: z */
        public boolean m33543z(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
            return false;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0527a();

        /* renamed from: f */
        SparseArray<Parcelable> f2759f;

        /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState$a.class */
        static final class C0527a implements Parcelable.ClassLoaderCreator<SavedState> {
            C0527a() {
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

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.f2759f = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                this.f2759f.append(iArr[i], readParcelableArray[i]);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            SparseArray<Parcelable> sparseArray = this.f2759f;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.f2759f.keyAt(i2);
                parcelableArr[i2] = this.f2759f.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$a.class */
    public class C0528a implements AbstractC1673q {
        C0528a() {
            CoordinatorLayout.this = r4;
        }

        @Override // p020b.p041h.p050l.AbstractC1673q
        /* renamed from: a */
        public C1615e0 mo4441a(View view, C1615e0 c1615e0) {
            return CoordinatorLayout.this.m33572a0(c1615e0);
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$b.class */
    public interface AbstractC0529b {
        Behavior getBehavior();
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$c.class */
    public @interface AbstractC0530c {
        Class<? extends Behavior> value();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$d.class */
    public class ViewGroup$OnHierarchyChangeListenerC0531d implements ViewGroup.OnHierarchyChangeListener {
        ViewGroup$OnHierarchyChangeListenerC0531d() {
            CoordinatorLayout.this = r4;
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f2758z;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.m33587L(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f2758z;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$e */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$e.class */
    public static class C0532e extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        Behavior f2762a;

        /* renamed from: b */
        boolean f2763b;

        /* renamed from: c */
        public int f2764c;

        /* renamed from: d */
        public int f2765d;

        /* renamed from: e */
        public int f2766e;

        /* renamed from: f */
        int f2767f;

        /* renamed from: g */
        public int f2768g;

        /* renamed from: h */
        public int f2769h;

        /* renamed from: i */
        int f2770i;

        /* renamed from: j */
        int f2771j;

        /* renamed from: k */
        View f2772k;

        /* renamed from: l */
        View f2773l;

        /* renamed from: m */
        private boolean f2774m;

        /* renamed from: n */
        private boolean f2775n;

        /* renamed from: o */
        private boolean f2776o;

        /* renamed from: p */
        private boolean f2777p;

        /* renamed from: q */
        final Rect f2778q;

        /* renamed from: r */
        Object f2779r;

        public C0532e(int i, int i2) {
            super(i, i2);
            this.f2763b = false;
            this.f2764c = 0;
            this.f2765d = 0;
            this.f2766e = -1;
            this.f2767f = -1;
            this.f2768g = 0;
            this.f2769h = 0;
            this.f2778q = new Rect();
        }

        C0532e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2763b = false;
            this.f2764c = 0;
            this.f2765d = 0;
            this.f2766e = -1;
            this.f2767f = -1;
            this.f2768g = 0;
            this.f2769h = 0;
            this.f2778q = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1517c.CoordinatorLayout_Layout);
            this.f2764c = obtainStyledAttributes.getInteger(C1517c.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f2767f = obtainStyledAttributes.getResourceId(C1517c.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f2765d = obtainStyledAttributes.getInteger(C1517c.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.f2766e = obtainStyledAttributes.getInteger(C1517c.CoordinatorLayout_Layout_layout_keyline, -1);
            this.f2768g = obtainStyledAttributes.getInt(C1517c.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.f2769h = obtainStyledAttributes.getInt(C1517c.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            int i = C1517c.CoordinatorLayout_Layout_layout_behavior;
            boolean hasValue = obtainStyledAttributes.hasValue(i);
            this.f2763b = hasValue;
            if (hasValue) {
                this.f2762a = CoordinatorLayout.m33584O(context, attributeSet, obtainStyledAttributes.getString(i));
            }
            obtainStyledAttributes.recycle();
            Behavior behavior = this.f2762a;
            if (behavior != null) {
                behavior.mo3805g(this);
            }
        }

        public C0532e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2763b = false;
            this.f2764c = 0;
            this.f2765d = 0;
            this.f2766e = -1;
            this.f2767f = -1;
            this.f2768g = 0;
            this.f2769h = 0;
            this.f2778q = new Rect();
        }

        public C0532e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2763b = false;
            this.f2764c = 0;
            this.f2765d = 0;
            this.f2766e = -1;
            this.f2767f = -1;
            this.f2768g = 0;
            this.f2769h = 0;
            this.f2778q = new Rect();
        }

        public C0532e(C0532e c0532e) {
            super((ViewGroup.MarginLayoutParams) c0532e);
            this.f2763b = false;
            this.f2764c = 0;
            this.f2765d = 0;
            this.f2766e = -1;
            this.f2767f = -1;
            this.f2768g = 0;
            this.f2769h = 0;
            this.f2778q = new Rect();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View] */
        /* renamed from: n */
        private void m33526n(View view, CoordinatorLayout coordinatorLayout) {
            CoordinatorLayout findViewById = coordinatorLayout.findViewById(this.f2767f);
            this.f2772k = findViewById;
            if (findViewById == null) {
                if (coordinatorLayout.isInEditMode()) {
                    this.f2773l = null;
                    this.f2772k = null;
                    return;
                }
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f2767f) + " to anchor view " + view);
            } else if (findViewById == coordinatorLayout) {
                if (!coordinatorLayout.isInEditMode()) {
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
                this.f2773l = null;
                this.f2772k = null;
            } else {
                ViewParent parent = findViewById.getParent();
                while (true) {
                    CoordinatorLayout coordinatorLayout2 = parent;
                    if (coordinatorLayout2 == coordinatorLayout || coordinatorLayout2 == null) {
                        break;
                    } else if (coordinatorLayout2 == view) {
                        if (!coordinatorLayout.isInEditMode()) {
                            throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                        }
                        this.f2773l = null;
                        this.f2772k = null;
                        return;
                    } else {
                        if (coordinatorLayout2 instanceof View) {
                            findViewById = coordinatorLayout2;
                        }
                        parent = coordinatorLayout2.getParent();
                    }
                }
                this.f2773l = findViewById;
            }
        }

        /* renamed from: s */
        private boolean m33521s(View view, int i) {
            int m29600b = C1614e.m29600b(((C0532e) view.getLayoutParams()).f2768g, i);
            return m29600b != 0 && (C1614e.m29600b(this.f2769h, i) & m29600b) == m29600b;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0049, code lost:
            r3.f2773l = null;
            r3.f2772k = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0054, code lost:
            return false;
         */
        /* renamed from: t */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean m33520t(android.view.View r4, androidx.coordinatorlayout.widget.CoordinatorLayout r5) {
            /*
                r3 = this;
                r0 = r3
                android.view.View r0 = r0.f2772k
                int r0 = r0.getId()
                r1 = r3
                int r1 = r1.f2767f
                if (r0 == r1) goto L10
                r0 = 0
                return r0
            L10:
                r0 = r3
                android.view.View r0 = r0.f2772k
                r6 = r0
                r0 = r6
                android.view.ViewParent r0 = r0.getParent()
                r7 = r0
            L1b:
                r0 = r7
                r1 = r5
                if (r0 == r1) goto L55
                r0 = r7
                if (r0 == 0) goto L49
                r0 = r7
                r1 = r4
                if (r0 != r1) goto L2f
                goto L49
            L2f:
                r0 = r7
                boolean r0 = r0 instanceof android.view.View
                if (r0 == 0) goto L3d
                r0 = r7
                android.view.View r0 = (android.view.View) r0
                r6 = r0
            L3d:
                r0 = r7
                android.view.ViewParent r0 = r0.getParent()
                r7 = r0
                goto L1b
            L49:
                r0 = r3
                r1 = 0
                r0.f2773l = r1
                r0 = r3
                r1 = 0
                r0.f2772k = r1
                r0 = 0
                return r0
            L55:
                r0 = r3
                r1 = r6
                r0.f2773l = r1
                r0 = 1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.C0532e.m33520t(android.view.View, androidx.coordinatorlayout.widget.CoordinatorLayout):boolean");
        }

        /* renamed from: a */
        boolean m33539a() {
            return this.f2772k == null && this.f2767f != -1;
        }

        /* renamed from: b */
        boolean m33538b(CoordinatorLayout coordinatorLayout, View view, View view2) {
            Behavior behavior;
            return view2 == this.f2773l || m33521s(view2, C1679w.m29346C(coordinatorLayout)) || ((behavior = this.f2762a) != null && behavior.mo3801e(coordinatorLayout, view, view2));
        }

        /* renamed from: c */
        boolean m33537c() {
            if (this.f2762a == null) {
                this.f2774m = false;
            }
            return this.f2774m;
        }

        /* renamed from: d */
        View m33536d(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f2767f == -1) {
                this.f2773l = null;
                this.f2772k = null;
                return null;
            }
            if (this.f2772k == null || !m33520t(view, coordinatorLayout)) {
                m33526n(view, coordinatorLayout);
            }
            return this.f2772k;
        }

        /* renamed from: e */
        public int m33535e() {
            return this.f2767f;
        }

        /* renamed from: f */
        public Behavior m33534f() {
            return this.f2762a;
        }

        /* renamed from: g */
        boolean m33533g() {
            return this.f2777p;
        }

        /* renamed from: h */
        Rect m33532h() {
            return this.f2778q;
        }

        /* renamed from: i */
        boolean m33531i(CoordinatorLayout coordinatorLayout, View view) {
            boolean z = this.f2774m;
            if (z) {
                return true;
            }
            Behavior behavior = this.f2762a;
            boolean m33553a = (behavior != null ? behavior.m33553a(coordinatorLayout, view) : false) | z;
            this.f2774m = m33553a;
            return m33553a;
        }

        /* renamed from: j */
        boolean m33530j(int i) {
            if (i != 0) {
                if (i == 1) {
                    return this.f2776o;
                }
                return false;
            }
            return this.f2775n;
        }

        /* renamed from: k */
        void m33529k() {
            this.f2777p = false;
        }

        /* renamed from: l */
        void m33528l(int i) {
            m33522r(i, false);
        }

        /* renamed from: m */
        void m33527m() {
            this.f2774m = false;
        }

        /* renamed from: o */
        public void m33525o(Behavior behavior) {
            Behavior behavior2 = this.f2762a;
            if (behavior2 != behavior) {
                if (behavior2 != null) {
                    behavior2.mo5429j();
                }
                this.f2762a = behavior;
                this.f2779r = null;
                this.f2763b = true;
                if (behavior == null) {
                    return;
                }
                behavior.mo3805g(this);
            }
        }

        /* renamed from: p */
        void m33524p(boolean z) {
            this.f2777p = z;
        }

        /* renamed from: q */
        void m33523q(Rect rect) {
            this.f2778q.set(rect);
        }

        /* renamed from: r */
        void m33522r(int i, boolean z) {
            if (i == 0) {
                this.f2775n = z;
            } else if (i != 1) {
            } else {
                this.f2776o = z;
            }
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$f */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$f.class */
    public class ViewTreeObserver$OnPreDrawListenerC0533f implements ViewTreeObserver.OnPreDrawListener {
        ViewTreeObserver$OnPreDrawListenerC0533f() {
            CoordinatorLayout.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.m33587L(0);
            return true;
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$g */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$g.class */
    static class C0534g implements Comparator<View> {
        C0534g() {
        }

        /* renamed from: a */
        public int compare(View view, View view2) {
            float m29320P = C1679w.m29320P(view);
            float m29320P2 = C1679w.m29320P(view2);
            if (m29320P > m29320P2) {
                return -1;
            }
            return m29320P < m29320P2 ? 1 : 0;
        }
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        f2734d = r0 != null ? r0.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            f2737g = new C0534g();
        } else {
            f2737g = null;
        }
        f2735e = new Class[]{Context.class, AttributeSet.class};
        f2736f = new ThreadLocal<>();
        f2738h = new C1596g(12);
    }

    public CoordinatorLayout(Context context) {
        this(context, null);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1515a.coordinatorLayoutStyle);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int[] iArr;
        this.f2741i = new ArrayList();
        this.f2742j = new C0535a<>();
        this.f2743k = new ArrayList();
        this.f2744l = new ArrayList();
        this.f2746n = new int[2];
        this.f2747o = new int[2];
        this.f2740B = new C1672p(this);
        TypedArray obtainStyledAttributes = i == 0 ? context.obtainStyledAttributes(attributeSet, C1517c.CoordinatorLayout, 0, C1516b.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, C1517c.CoordinatorLayout, i, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            if (i == 0) {
                saveAttributeDataForStyleable(context, C1517c.CoordinatorLayout, attributeSet, obtainStyledAttributes, 0, C1516b.Widget_Support_CoordinatorLayout);
            } else {
                saveAttributeDataForStyleable(context, C1517c.CoordinatorLayout, attributeSet, obtainStyledAttributes, i, 0);
            }
        }
        int resourceId = obtainStyledAttributes.getResourceId(C1517c.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.f2750r = resources.getIntArray(resourceId);
            float f = resources.getDisplayMetrics().density;
            int length = this.f2750r.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.f2750r[i2] = (int) (iArr[i2] * f);
            }
        }
        this.f2757y = obtainStyledAttributes.getDrawable(C1517c.CoordinatorLayout_statusBarBackground);
        obtainStyledAttributes.recycle();
        m33571b0();
        super.setOnHierarchyChangeListener(new ViewGroup$OnHierarchyChangeListenerC0531d());
        if (C1679w.m29350A(this) == 0) {
            C1679w.m29347B0(this, 1);
        }
    }

    /* renamed from: A */
    private int m33598A(int i) {
        int[] iArr = this.f2750r;
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
    private void m33595D(List<View> list) {
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i = childCount - 1; i >= 0; i--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i) : i));
        }
        Comparator<View> comparator = f2737g;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
    }

    /* renamed from: E */
    private boolean m33594E(View view) {
        return this.f2742j.m33509j(view);
    }

    /* renamed from: G */
    private void m33592G(View view, int i) {
        C0532e c0532e = (C0532e) view.getLayoutParams();
        Rect m33570e = m33570e();
        m33570e.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0532e).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) c0532e).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) c0532e).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) c0532e).bottomMargin);
        if (this.f2755w != null && C1679w.m29258z(this) && !C1679w.m29258z(view)) {
            m33570e.left += this.f2755w.m29590j();
            m33570e.top += this.f2755w.m29588l();
            m33570e.right -= this.f2755w.m29589k();
            m33570e.bottom -= this.f2755w.m29591i();
        }
        Rect m33570e2 = m33570e();
        C1614e.m29601a(m33576W(c0532e.f2764c), view.getMeasuredWidth(), view.getMeasuredHeight(), m33570e, m33570e2, i);
        view.layout(m33570e2.left, m33570e2.top, m33570e2.right, m33570e2.bottom);
        m33580S(m33570e);
        m33580S(m33570e2);
    }

    /* renamed from: H */
    private void m33591H(View view, View view2, int i) {
        Rect m33570e = m33570e();
        Rect m33570e2 = m33570e();
        try {
            m33557x(view2, m33570e);
            m33556y(view, i, m33570e, m33570e2);
            view.layout(m33570e2.left, m33570e2.top, m33570e2.right, m33570e2.bottom);
        } finally {
            m33580S(m33570e);
            m33580S(m33570e2);
        }
    }

    /* renamed from: I */
    private void m33590I(View view, int i, int i2) {
        C0532e c0532e = (C0532e) view.getLayoutParams();
        int m29600b = C1614e.m29600b(m33575X(c0532e.f2764c), i2);
        int i3 = m29600b & 7;
        int i4 = m29600b & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i5 = i;
        if (i2 == 1) {
            i5 = width - i;
        }
        int m33598A = m33598A(i5) - measuredWidth;
        int i6 = 0;
        if (i3 == 1) {
            m33598A += measuredWidth / 2;
        } else if (i3 == 5) {
            m33598A += measuredWidth;
        }
        if (i4 == 16) {
            i6 = 0 + (measuredHeight / 2);
        } else if (i4 == 80) {
            i6 = measuredHeight + 0;
        }
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0532e).leftMargin, Math.min(m33598A, ((width - getPaddingRight()) - measuredWidth) - ((ViewGroup.MarginLayoutParams) c0532e).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) c0532e).topMargin, Math.min(i6, ((height - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) c0532e).bottomMargin));
        view.layout(max, max2, measuredWidth + max, measuredHeight + max2);
    }

    /* renamed from: J */
    private void m33589J(View view, Rect rect, int i) {
        boolean z;
        boolean z2;
        int width;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (C1679w.m29313V(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            C0532e c0532e = (C0532e) view.getLayoutParams();
            Behavior m33534f = c0532e.m33534f();
            Rect m33570e = m33570e();
            Rect m33570e2 = m33570e();
            m33570e2.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (m33534f == null || !m33534f.mo4765b(this, view, m33570e)) {
                m33570e.set(m33570e2);
            } else if (!m33570e2.contains(m33570e)) {
                throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + m33570e.toShortString() + " | Bounds:" + m33570e2.toShortString());
            }
            m33580S(m33570e2);
            if (m33570e.isEmpty()) {
                m33580S(m33570e);
                return;
            }
            int m29600b = C1614e.m29600b(c0532e.f2769h, i);
            if ((m29600b & 48) != 48 || (i5 = (m33570e.top - ((ViewGroup.MarginLayoutParams) c0532e).topMargin) - c0532e.f2771j) >= (i6 = rect.top)) {
                z = false;
            } else {
                m33573Z(view, i6 - i5);
                z = true;
            }
            boolean z3 = z;
            if ((m29600b & 80) == 80) {
                int height = ((getHeight() - m33570e.bottom) - ((ViewGroup.MarginLayoutParams) c0532e).bottomMargin) + c0532e.f2771j;
                int i7 = rect.bottom;
                z3 = z;
                if (height < i7) {
                    m33573Z(view, height - i7);
                    z3 = true;
                }
            }
            if (!z3) {
                m33573Z(view, 0);
            }
            if ((m29600b & 3) != 3 || (i3 = (m33570e.left - ((ViewGroup.MarginLayoutParams) c0532e).leftMargin) - c0532e.f2770i) >= (i4 = rect.left)) {
                z2 = false;
            } else {
                m33574Y(view, i4 - i3);
                z2 = true;
            }
            if ((m29600b & 5) == 5 && (width = ((getWidth() - m33570e.right) - ((ViewGroup.MarginLayoutParams) c0532e).rightMargin) + c0532e.f2770i) < (i2 = rect.right)) {
                m33574Y(view, width - i2);
                z2 = true;
            }
            if (!z2) {
                m33574Y(view, 0);
            }
            m33580S(m33570e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: O */
    static Behavior m33584O(Context context, AttributeSet attributeSet, String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str2 = context.getPackageName() + str;
        } else if (str.indexOf(46) >= 0) {
            str2 = str;
        } else {
            String str3 = f2734d;
            str2 = str;
            if (!TextUtils.isEmpty(str3)) {
                str2 = str3 + '.' + str;
            }
        }
        try {
            ThreadLocal<Map<String, Constructor<Behavior>>> threadLocal = f2736f;
            Map<String, Constructor<Behavior>> map = threadLocal.get();
            Map<String, Constructor<Behavior>> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
                threadLocal.set(map2);
            }
            Constructor<Behavior> constructor = map2.get(str2);
            Constructor<Behavior> constructor2 = constructor;
            if (constructor == null) {
                constructor2 = Class.forName(str2, false, context.getClassLoader()).getConstructor(f2735e);
                constructor2.setAccessible(true);
                map2.put(str2, constructor2);
            }
            return constructor2.newInstance(context, attributeSet);
        } catch (Exception e) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str2, e);
        }
    }

    /* renamed from: P */
    private boolean m33583P(MotionEvent motionEvent, int i) {
        boolean z;
        boolean z2;
        boolean z3;
        MotionEvent motionEvent2;
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.f2743k;
        m33595D(list);
        int size = list.size();
        MotionEvent motionEvent3 = null;
        int i2 = 0;
        boolean z4 = false;
        boolean z5 = false;
        while (true) {
            boolean z6 = z5;
            z = z4;
            if (i2 >= size) {
                break;
            }
            View view = list.get(i2);
            C0532e c0532e = (C0532e) view.getLayoutParams();
            Behavior m33534f = c0532e.m33534f();
            if ((z4 || z6) && actionMasked != 0) {
                motionEvent2 = motionEvent3;
                z3 = z4;
                z2 = z6;
                if (m33534f != null) {
                    motionEvent2 = motionEvent3;
                    if (motionEvent3 == null) {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    }
                    if (i == 0) {
                        m33534f.mo4206k(this, view, motionEvent2);
                        z3 = z4;
                        z2 = z6;
                    } else if (i != 1) {
                        z3 = z4;
                        z2 = z6;
                    } else {
                        m33534f.mo3804D(this, view, motionEvent2);
                        z3 = z4;
                        z2 = z6;
                    }
                }
            } else {
                z = z4;
                if (!z4) {
                    z = z4;
                    if (m33534f != null) {
                        if (i == 0) {
                            z4 = m33534f.mo4206k(this, view, motionEvent);
                        } else if (i == 1) {
                            z4 = m33534f.mo3804D(this, view, motionEvent);
                        }
                        z = z4;
                        if (z4) {
                            this.f2751s = view;
                            z = z4;
                        }
                    }
                }
                boolean m33537c = c0532e.m33537c();
                boolean m33531i = c0532e.m33531i(this, view);
                boolean z7 = m33531i && !m33537c;
                motionEvent2 = motionEvent3;
                z3 = z;
                z2 = z7;
                if (m33531i) {
                    motionEvent2 = motionEvent3;
                    z3 = z;
                    z2 = z7;
                    if (!z7) {
                        break;
                    }
                } else {
                    continue;
                }
            }
            i2++;
            motionEvent3 = motionEvent2;
            z4 = z3;
            z5 = z2;
        }
        list.clear();
        return z;
    }

    /* renamed from: Q */
    private void m33582Q() {
        this.f2741i.clear();
        this.f2742j.m33516c();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            C0532e m33596C = m33596C(childAt);
            m33596C.m33536d(this, childAt);
            this.f2742j.m33517b(childAt);
            for (int i2 = 0; i2 < childCount; i2++) {
                if (i2 != i) {
                    View childAt2 = getChildAt(i2);
                    if (m33596C.m33538b(this, childAt, childAt2)) {
                        if (!this.f2742j.m33515d(childAt2)) {
                            this.f2742j.m33517b(childAt2);
                        }
                        this.f2742j.m33518a(childAt2, childAt);
                    }
                }
            }
        }
        this.f2741i.addAll(this.f2742j.m33510i());
        Collections.reverse(this.f2741i);
    }

    /* renamed from: S */
    private static void m33580S(Rect rect) {
        rect.setEmpty();
        f2738h.mo22685b(rect);
    }

    /* renamed from: U */
    private void m33578U(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            Behavior m33534f = ((C0532e) childAt.getLayoutParams()).m33534f();
            if (m33534f != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    m33534f.mo4206k(this, childAt, obtain);
                } else {
                    m33534f.mo3804D(this, childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((C0532e) getChildAt(i2).getLayoutParams()).m33527m();
        }
        this.f2751s = null;
        this.f2748p = false;
    }

    /* renamed from: V */
    private static int m33577V(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 17;
        }
        return i2;
    }

    /* renamed from: W */
    private static int m33576W(int i) {
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
    private static int m33575X(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 8388661;
        }
        return i2;
    }

    /* renamed from: Y */
    private void m33574Y(View view, int i) {
        C0532e c0532e = (C0532e) view.getLayoutParams();
        int i2 = c0532e.f2770i;
        if (i2 != i) {
            C1679w.m29307a0(view, i - i2);
            c0532e.f2770i = i;
        }
    }

    /* renamed from: Z */
    private void m33573Z(View view, int i) {
        C0532e c0532e = (C0532e) view.getLayoutParams();
        int i2 = c0532e.f2771j;
        if (i2 != i) {
            C1679w.m29305b0(view, i - i2);
            c0532e.f2771j = i;
        }
    }

    /* renamed from: b0 */
    private void m33571b0() {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (!C1679w.m29258z(this)) {
            C1679w.m29341E0(this, null);
            return;
        }
        if (this.f2739A == null) {
            this.f2739A = new C0528a();
        }
        C1679w.m29341E0(this, this.f2739A);
        setSystemUiVisibility(1280);
    }

    /* renamed from: e */
    private static Rect m33570e() {
        Rect mo22686a = f2738h.mo22686a();
        Rect rect = mo22686a;
        if (mo22686a == null) {
            rect = new Rect();
        }
        return rect;
    }

    /* renamed from: g */
    private static int m33568g(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    /* renamed from: n */
    private void m33567n(C0532e c0532e, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0532e).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - ((ViewGroup.MarginLayoutParams) c0532e).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) c0532e).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - ((ViewGroup.MarginLayoutParams) c0532e).bottomMargin));
        rect.set(max, max2, i + max, i2 + max2);
    }

    /* renamed from: o */
    private C1615e0 m33566o(C1615e0 c1615e0) {
        C1615e0 c1615e02;
        if (c1615e0.m29584p()) {
            return c1615e0;
        }
        int i = 0;
        int childCount = getChildCount();
        while (true) {
            c1615e02 = c1615e0;
            if (i >= childCount) {
                break;
            }
            View childAt = getChildAt(i);
            C1615e0 c1615e03 = c1615e0;
            if (C1679w.m29258z(childAt)) {
                Behavior m33534f = ((C0532e) childAt.getLayoutParams()).m33534f();
                c1615e03 = c1615e0;
                if (m33534f != null) {
                    C1615e0 m33550f = m33534f.m33550f(this, childAt, c1615e0);
                    c1615e03 = m33550f;
                    if (m33550f.m29584p()) {
                        c1615e02 = m33550f;
                        break;
                    }
                } else {
                    continue;
                }
            }
            i++;
            c1615e0 = c1615e03;
        }
        return c1615e02;
    }

    /* renamed from: z */
    private void m33555z(View view, int i, Rect rect, Rect rect2, C0532e c0532e, int i2, int i3) {
        int i4;
        int i5;
        int m29600b = C1614e.m29600b(m33577V(c0532e.f2764c), i);
        int m29600b2 = C1614e.m29600b(m33576W(c0532e.f2765d), i);
        int i6 = m29600b & 7;
        int i7 = m29600b & 112;
        int i8 = m29600b2 & 7;
        int i9 = m29600b2 & 112;
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
    void m33597B(View view, Rect rect) {
        rect.set(((C0532e) view.getLayoutParams()).m33532h());
    }

    /* renamed from: C */
    C0532e m33596C(View view) {
        AbstractC0530c abstractC0530c;
        C0532e c0532e = (C0532e) view.getLayoutParams();
        if (!c0532e.f2763b) {
            if (view instanceof AbstractC0529b) {
                Behavior behavior = ((AbstractC0529b) view).getBehavior();
                if (behavior == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                c0532e.m33525o(behavior);
                c0532e.f2763b = true;
            } else {
                Class<? super Object> cls = view.getClass();
                AbstractC0530c abstractC0530c2 = null;
                while (true) {
                    abstractC0530c = abstractC0530c2;
                    if (cls == null) {
                        break;
                    }
                    AbstractC0530c abstractC0530c3 = (AbstractC0530c) cls.getAnnotation(AbstractC0530c.class);
                    abstractC0530c = abstractC0530c3;
                    if (abstractC0530c3 != null) {
                        break;
                    }
                    cls = cls.getSuperclass();
                    abstractC0530c2 = abstractC0530c3;
                }
                if (abstractC0530c != null) {
                    try {
                        c0532e.m33525o(abstractC0530c.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e) {
                        Log.e("CoordinatorLayout", "Default behavior class " + abstractC0530c.value().getName() + " could not be instantiated. Did you forget a default constructor?", e);
                    }
                }
                c0532e.f2763b = true;
            }
        }
        return c0532e;
    }

    /* renamed from: F */
    public boolean m33593F(View view, int i, int i2) {
        Rect m33570e = m33570e();
        m33557x(view, m33570e);
        try {
            return m33570e.contains(i, i2);
        } finally {
            m33580S(m33570e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0068, code lost:
        if (r0.top != r0.top) goto L8;
     */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m33588K(android.view.View r10, int r11) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.m33588K(android.view.View, int):void");
    }

    /* renamed from: L */
    final void m33587L(int i) {
        boolean z;
        int m29346C = C1679w.m29346C(this);
        int size = this.f2741i.size();
        Rect m33570e = m33570e();
        Rect m33570e2 = m33570e();
        Rect m33570e3 = m33570e();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f2741i.get(i2);
            C0532e c0532e = (C0532e) view.getLayoutParams();
            if (i != 0 || view.getVisibility() != 8) {
                for (int i3 = 0; i3 < i2; i3++) {
                    if (c0532e.f2773l == this.f2741i.get(i3)) {
                        m33588K(view, m29346C);
                    }
                }
                m33560u(view, true, m33570e2);
                if (c0532e.f2768g != 0 && !m33570e2.isEmpty()) {
                    int m29600b = C1614e.m29600b(c0532e.f2768g, m29346C);
                    int i4 = m29600b & 112;
                    if (i4 == 48) {
                        m33570e.top = Math.max(m33570e.top, m33570e2.bottom);
                    } else if (i4 == 80) {
                        m33570e.bottom = Math.max(m33570e.bottom, getHeight() - m33570e2.top);
                    }
                    int i5 = m29600b & 7;
                    if (i5 == 3) {
                        m33570e.left = Math.max(m33570e.left, m33570e2.right);
                    } else if (i5 == 5) {
                        m33570e.right = Math.max(m33570e.right, getWidth() - m33570e2.left);
                    }
                }
                if (c0532e.f2769h != 0 && view.getVisibility() == 0) {
                    m33589J(view, m33570e, m29346C);
                }
                if (i != 2) {
                    m33597B(view, m33570e3);
                    if (!m33570e3.equals(m33570e2)) {
                        m33581R(view, m33570e2);
                    }
                }
                for (int i6 = i2 + 1; i6 < size; i6++) {
                    View view2 = this.f2741i.get(i6);
                    C0532e c0532e2 = (C0532e) view2.getLayoutParams();
                    Behavior m33534f = c0532e2.m33534f();
                    if (m33534f != null && m33534f.mo3801e(this, view2, view)) {
                        if (i != 0 || !c0532e2.m33533g()) {
                            if (i != 2) {
                                z = m33534f.mo3829h(this, view2, view);
                            } else {
                                m33534f.mo5712i(this, view2, view);
                                z = true;
                            }
                            if (i == 1) {
                                c0532e2.m33524p(z);
                            }
                        } else {
                            c0532e2.m33529k();
                        }
                    }
                }
            }
        }
        m33580S(m33570e);
        m33580S(m33570e2);
        m33580S(m33570e3);
    }

    /* renamed from: M */
    public void m33586M(View view, int i) {
        C0532e c0532e = (C0532e) view.getLayoutParams();
        if (!c0532e.m33539a()) {
            View view2 = c0532e.f2772k;
            if (view2 != null) {
                m33591H(view, view2, i);
                return;
            }
            int i2 = c0532e.f2766e;
            if (i2 >= 0) {
                m33590I(view, i2, i);
                return;
            } else {
                m33592G(view, i);
                return;
            }
        }
        throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
    }

    /* renamed from: N */
    public void m33585N(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    /* renamed from: R */
    void m33581R(View view, Rect rect) {
        ((C0532e) view.getLayoutParams()).m33523q(rect);
    }

    /* renamed from: T */
    void m33579T() {
        if (this.f2749q && this.f2753u != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f2753u);
        }
        this.f2754v = false;
    }

    /* renamed from: a0 */
    final C1615e0 m33572a0(C1615e0 c1615e0) {
        C1615e0 c1615e02 = c1615e0;
        if (!C1592c.m29668a(this.f2755w, c1615e0)) {
            this.f2755w = c1615e0;
            boolean z = c1615e0 != null && c1615e0.m29588l() > 0;
            this.f2756x = z;
            setWillNotDraw(!z && getBackground() == null);
            c1615e02 = m33566o(c1615e0);
            requestLayout();
        }
        return c1615e02;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0532e) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        C0532e c0532e = (C0532e) view.getLayoutParams();
        Behavior behavior = c0532e.f2762a;
        if (behavior != null) {
            float m33551d = behavior.m33551d(this, view);
            if (m33551d > 0.0f) {
                if (this.f2745m == null) {
                    this.f2745m = new Paint();
                }
                this.f2745m.setColor(c0532e.f2762a.m33552c(this, view));
                this.f2745m.setAlpha(m33568g(Math.round(m33551d * 255.0f), 0, 255));
                int save = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.f2745m);
                canvas.restoreToCount(save);
            }
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f2757y;
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
    void m33569f() {
        if (this.f2749q) {
            if (this.f2753u == null) {
                this.f2753u = new ViewTreeObserver$OnPreDrawListenerC0533f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f2753u);
        }
        this.f2754v = true;
    }

    final List<View> getDependencySortedChildren() {
        m33582Q();
        return Collections.unmodifiableList(this.f2741i);
    }

    public final C1615e0 getLastWindowInsets() {
        return this.f2755w;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f2740B.m29360a();
    }

    public Drawable getStatusBarBackground() {
        return this.f2757y;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    @Override // p020b.p041h.p050l.AbstractC1670n
    /* renamed from: h */
    public void mo29361h(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        int i6;
        int i7;
        int i8;
        int childCount = getChildCount();
        boolean z = false;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            i6 = i11;
            if (i9 >= childCount) {
                break;
            }
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() == 8) {
                i8 = i10;
                i7 = i6;
            } else {
                C0532e c0532e = (C0532e) childAt.getLayoutParams();
                if (!c0532e.m33530j(i5)) {
                    i8 = i10;
                    i7 = i6;
                } else {
                    Behavior m33534f = c0532e.m33534f();
                    i8 = i10;
                    i7 = i6;
                    if (m33534f != null) {
                        int[] iArr2 = this.f2746n;
                        iArr2[0] = 0;
                        iArr2[1] = 0;
                        m33534f.mo5416t(this, childAt, view, i, i2, i3, i4, i5, iArr2);
                        int[] iArr3 = this.f2746n;
                        int max = i3 > 0 ? Math.max(i10, iArr3[0]) : Math.min(i10, iArr3[0]);
                        i7 = i4 > 0 ? Math.max(i6, this.f2746n[1]) : Math.min(i6, this.f2746n[1]);
                        z = true;
                        i8 = max;
                    }
                }
            }
            i9++;
            i10 = i8;
            i11 = i7;
        }
        iArr[0] = iArr[0] + i10;
        iArr[1] = iArr[1] + i6;
        if (z) {
            m33587L(1);
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: i */
    public void mo29366i(View view, int i, int i2, int i3, int i4, int i5) {
        mo29361h(view, i, i2, i3, i4, 0, this.f2747o);
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: j */
    public boolean mo29365j(View view, View view2, int i, int i2) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                C0532e c0532e = (C0532e) childAt.getLayoutParams();
                Behavior m33534f = c0532e.m33534f();
                if (m33534f != null) {
                    boolean mo5462A = m33534f.mo5462A(this, childAt, view, view2, i, i2);
                    z |= mo5462A;
                    c0532e.m33522r(i2, mo5462A);
                } else {
                    c0532e.m33522r(i2, false);
                }
            }
        }
        return z;
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: k */
    public void mo29364k(View view, View view2, int i, int i2) {
        Behavior m33534f;
        this.f2740B.m29358c(view, view2, i, i2);
        this.f2752t = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            C0532e c0532e = (C0532e) childAt.getLayoutParams();
            if (c0532e.m33530j(i2) && (m33534f = c0532e.m33534f()) != null) {
                m33534f.m33544v(this, childAt, view, view2, i, i2);
            }
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: l */
    public void mo29363l(View view, int i) {
        this.f2740B.m29356e(view, i);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            C0532e c0532e = (C0532e) childAt.getLayoutParams();
            if (c0532e.m33530j(i)) {
                Behavior m33534f = c0532e.m33534f();
                if (m33534f != null) {
                    m33534f.mo5461C(this, childAt, view, i);
                }
                c0532e.m33528l(i);
                c0532e.m33529k();
            }
        }
        this.f2752t = null;
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: m */
    public void mo29362m(View view, int i, int i2, int[] iArr, int i3) {
        int i4;
        int i5;
        int i6;
        int childCount = getChildCount();
        boolean z = false;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            i4 = i9;
            if (i7 >= childCount) {
                break;
            }
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() == 8) {
                i6 = i8;
                i5 = i4;
            } else {
                C0532e c0532e = (C0532e) childAt.getLayoutParams();
                if (!c0532e.m33530j(i3)) {
                    i6 = i8;
                    i5 = i4;
                } else {
                    Behavior m33534f = c0532e.m33534f();
                    i6 = i8;
                    i5 = i4;
                    if (m33534f != null) {
                        int[] iArr2 = this.f2746n;
                        iArr2[0] = 0;
                        iArr2[1] = 0;
                        m33534f.mo5420q(this, childAt, view, i, i2, iArr2, i3);
                        int[] iArr3 = this.f2746n;
                        i6 = i > 0 ? Math.max(i8, iArr3[0]) : Math.min(i8, iArr3[0]);
                        int[] iArr4 = this.f2746n;
                        i5 = i2 > 0 ? Math.max(i4, iArr4[1]) : Math.min(i4, iArr4[1]);
                        z = true;
                    }
                }
            }
            i7++;
            i8 = i6;
            i9 = i5;
        }
        iArr[0] = i8;
        iArr[1] = i4;
        if (z) {
            m33587L(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m33578U(false);
        if (this.f2754v) {
            if (this.f2753u == null) {
                this.f2753u = new ViewTreeObserver$OnPreDrawListenerC0533f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f2753u);
        }
        if (this.f2755w == null && C1679w.m29258z(this)) {
            C1679w.m29279o0(this);
        }
        this.f2749q = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m33578U(false);
        if (this.f2754v && this.f2753u != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f2753u);
        }
        View view = this.f2752t;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.f2749q = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f2756x || this.f2757y == null) {
            return;
        }
        C1615e0 c1615e0 = this.f2755w;
        int m29588l = c1615e0 != null ? c1615e0.m29588l() : 0;
        if (m29588l <= 0) {
            return;
        }
        this.f2757y.setBounds(0, 0, getWidth(), m29588l);
        this.f2757y.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m33578U(true);
        }
        boolean m33583P = m33583P(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            m33578U(true);
        }
        return m33583P;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Behavior m33534f;
        int m29346C = C1679w.m29346C(this);
        int size = this.f2741i.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = this.f2741i.get(i5);
            if (view.getVisibility() != 8 && ((m33534f = ((C0532e) view.getLayoutParams()).m33534f()) == null || !m33534f.mo3828l(this, view, m29346C))) {
                m33586M(view, m29346C);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        Behavior m33534f;
        m33582Q();
        m33564q();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int m29346C = C1679w.m29346C(this);
        boolean z = m29346C == 1;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z2 = this.f2755w != null && C1679w.m29258z(this);
        int size3 = this.f2741i.size();
        int i6 = 0;
        int i7 = 0;
        int i8 = paddingLeft;
        while (true) {
            int i9 = i8;
            if (i7 >= size3) {
                setMeasuredDimension(View.resolveSizeAndState(suggestedMinimumWidth, i, (-16777216) & i6), View.resolveSizeAndState(suggestedMinimumHeight, i2, i6 << 16));
                return;
            }
            View view = this.f2741i.get(i7);
            if (view.getVisibility() != 8) {
                C0532e c0532e = (C0532e) view.getLayoutParams();
                int i10 = c0532e.f2766e;
                if (i10 >= 0 && mode != 0) {
                    int m33598A = m33598A(i10);
                    int m29600b = C1614e.m29600b(m33575X(c0532e.f2764c), m29346C) & 7;
                    if ((m29600b == 3 && !z) || (m29600b == 5 && z)) {
                        i3 = Math.max(0, (size - paddingRight) - m33598A);
                    } else if ((m29600b == 5 && !z) || (m29600b == 3 && z)) {
                        i3 = Math.max(0, m33598A - i9);
                    }
                    int i11 = i6;
                    if (z2 || C1679w.m29258z(view)) {
                        i5 = i;
                        i4 = i2;
                    } else {
                        int m29590j = this.f2755w.m29590j();
                        int m29589k = this.f2755w.m29589k();
                        int m29588l = this.f2755w.m29588l();
                        int m29591i = this.f2755w.m29591i();
                        i5 = View.MeasureSpec.makeMeasureSpec(size - (m29590j + m29589k), mode);
                        i4 = View.MeasureSpec.makeMeasureSpec(size2 - (m29588l + m29591i), mode2);
                    }
                    m33534f = c0532e.m33534f();
                    if (m33534f != null || !m33534f.mo5673m(this, view, i5, i3, i4, 0)) {
                        m33585N(view, i5, i3, i4, 0);
                    }
                    suggestedMinimumWidth = Math.max(suggestedMinimumWidth, paddingLeft + paddingRight + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0532e).leftMargin + ((ViewGroup.MarginLayoutParams) c0532e).rightMargin);
                    suggestedMinimumHeight = Math.max(suggestedMinimumHeight, paddingTop + paddingBottom + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0532e).topMargin + ((ViewGroup.MarginLayoutParams) c0532e).bottomMargin);
                    i6 = View.combineMeasuredStates(i11, view.getMeasuredState());
                }
                i3 = 0;
                int i112 = i6;
                if (z2) {
                }
                i5 = i;
                i4 = i2;
                m33534f = c0532e.m33534f();
                if (m33534f != null) {
                }
                m33585N(view, i5, i3, i4, 0);
                suggestedMinimumWidth = Math.max(suggestedMinimumWidth, paddingLeft + paddingRight + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0532e).leftMargin + ((ViewGroup.MarginLayoutParams) c0532e).rightMargin);
                suggestedMinimumHeight = Math.max(suggestedMinimumHeight, paddingTop + paddingBottom + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0532e).topMargin + ((ViewGroup.MarginLayoutParams) c0532e).bottomMargin);
                i6 = View.combineMeasuredStates(i112, view.getMeasuredState());
            }
            i7++;
            i8 = i9;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        boolean z2;
        boolean z3;
        int childCount = getChildCount();
        int i = 0;
        boolean z4 = false;
        while (true) {
            z2 = z4;
            if (i >= childCount) {
                break;
            }
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 8) {
                z3 = z2;
            } else {
                C0532e c0532e = (C0532e) childAt.getLayoutParams();
                if (!c0532e.m33530j(0)) {
                    z3 = z2;
                } else {
                    Behavior m33534f = c0532e.m33534f();
                    z3 = z2;
                    if (m33534f != null) {
                        z3 = z2 | m33534f.m33549n(this, childAt, view, f, f2, z);
                    }
                }
            }
            i++;
            z4 = z3;
        }
        if (z2) {
            m33587L(1);
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public boolean onNestedPreFling(View view, float f, float f2) {
        boolean z;
        int childCount = getChildCount();
        int i = 0;
        boolean z2 = false;
        while (true) {
            boolean z3 = z2;
            if (i < childCount) {
                View childAt = getChildAt(i);
                if (childAt.getVisibility() == 8) {
                    z = z3;
                } else {
                    C0532e c0532e = (C0532e) childAt.getLayoutParams();
                    if (!c0532e.m33530j(0)) {
                        z = z3;
                    } else {
                        Behavior m33534f = c0532e.m33534f();
                        z = z3;
                        if (m33534f != null) {
                            z = z3 | m33534f.mo5423o(this, childAt, view, f, f2);
                        }
                    }
                }
                i++;
                z2 = z;
            } else {
                return z3;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo29362m(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        mo29366i(view, i, i2, i3, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public void onNestedScrollAccepted(View view, View view2, int i) {
        mo29364k(view, view2, i, 0);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m33061a());
        SparseArray<Parcelable> sparseArray = savedState.f2759f;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior m33534f = m33596C(childAt).m33534f();
            if (id != -1 && m33534f != null && (parcelable2 = sparseArray.get(id)) != null) {
                m33534f.mo5412x(this, childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable mo5411y;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior m33534f = ((C0532e) childAt.getLayoutParams()).m33534f();
            if (id != -1 && m33534f != null && (mo5411y = m33534f.mo5411y(this, childAt)) != null) {
                sparseArray.append(id, mo5411y);
            }
        }
        savedState.f2759f = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return mo29365j(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public void onStopNestedScroll(View view) {
        mo29363l(view, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0017, code lost:
        if (r12 != false) goto L7;
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
            android.view.View r0 = r0.f2751s
            if (r0 != 0) goto L1d
            r0 = r9
            r1 = r10
            r2 = 1
            boolean r0 = r0.m33583P(r1, r2)
            r12 = r0
            r0 = r12
            r13 = r0
            r0 = r12
            if (r0 == 0) goto L4c
            goto L1f
        L1d:
            r0 = 0
            r12 = r0
        L1f:
            r0 = r9
            android.view.View r0 = r0.f2751s
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$e r0 = (androidx.coordinatorlayout.widget.CoordinatorLayout.C0532e) r0
            androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r0 = r0.m33534f()
            r14 = r0
            r0 = r12
            r13 = r0
            r0 = r14
            if (r0 == 0) goto L4c
            r0 = r14
            r1 = r9
            r2 = r9
            android.view.View r2 = r2.f2751s
            r3 = r10
            boolean r0 = r0.mo3804D(r1, r2, r3)
            r15 = r0
            r0 = r12
            r13 = r0
            r0 = r15
            r12 = r0
            goto L4e
        L4c:
            r0 = 0
            r12 = r0
        L4e:
            r0 = r9
            android.view.View r0 = r0.f2751s
            r16 = r0
            r0 = 0
            r14 = r0
            r0 = r16
            if (r0 != 0) goto L6b
            r0 = r12
            r1 = r9
            r2 = r10
            boolean r1 = super.onTouchEvent(r2)
            r0 = r0 | r1
            r15 = r0
            r0 = r14
            r10 = r0
            goto L90
        L6b:
            r0 = r12
            r15 = r0
            r0 = r14
            r10 = r0
            r0 = r13
            if (r0 == 0) goto L90
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
        L90:
            r0 = r10
            if (r0 == 0) goto L98
            r0 = r10
            r0.recycle()
        L98:
            r0 = r11
            r1 = 1
            if (r0 == r1) goto La2
            r0 = r11
            r1 = 3
            if (r0 != r1) goto La7
        La2:
            r0 = r9
            r1 = 0
            r0.m33578U(r1)
        La7:
            r0 = r15
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    public void m33565p(View view) {
        List m33512g = this.f2742j.m33512g(view);
        if (m33512g == null || m33512g.isEmpty()) {
            return;
        }
        for (int i = 0; i < m33512g.size(); i++) {
            View view2 = (View) m33512g.get(i);
            Behavior m33534f = ((C0532e) view2.getLayoutParams()).m33534f();
            if (m33534f != null) {
                m33534f.mo3829h(this, view2, view);
            }
        }
    }

    /* renamed from: q */
    void m33564q() {
        boolean z;
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            z = false;
            if (i >= childCount) {
                break;
            } else if (m33594E(getChildAt(i))) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (z != this.f2754v) {
            if (z) {
                m33569f();
            } else {
                m33579T();
            }
        }
    }

    /* renamed from: r */
    public C0532e generateDefaultLayoutParams() {
        return new C0532e(-2, -2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        Behavior m33534f = ((C0532e) view.getLayoutParams()).m33534f();
        if (m33534f == null || !m33534f.mo5711w(this, view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z || this.f2748p) {
            return;
        }
        m33578U(false);
        this.f2748p = true;
    }

    /* renamed from: s */
    public C0532e generateLayoutParams(AttributeSet attributeSet) {
        return new C0532e(getContext(), attributeSet);
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        m33571b0();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f2758z = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.f2757y;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f2757y = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f2757y.setState(getDrawableState());
                }
                C0615a.m33217m(this.f2757y, C1679w.m29346C(this));
                this.f2757y.setVisible(getVisibility() == 0, false);
                this.f2757y.setCallback(this);
            }
            C1679w.m29293h0(this);
        }
    }

    public void setStatusBarBackgroundColor(int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    public void setStatusBarBackgroundResource(int i) {
        setStatusBarBackground(i != 0 ? C0586a.m33348f(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f2757y;
        if (drawable == null || drawable.isVisible() == z) {
            return;
        }
        this.f2757y.setVisible(z, false);
    }

    /* renamed from: t */
    public C0532e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0532e ? new C0532e((C0532e) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0532e((ViewGroup.MarginLayoutParams) layoutParams) : new C0532e(layoutParams);
    }

    /* renamed from: u */
    void m33560u(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            m33557x(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    /* renamed from: v */
    public List<View> m33559v(View view) {
        List<View> m33511h = this.f2742j.m33511h(view);
        this.f2744l.clear();
        if (m33511h != null) {
            this.f2744l.addAll(m33511h);
        }
        return this.f2744l;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f2757y;
    }

    /* renamed from: w */
    public List<View> m33558w(View view) {
        List m33512g = this.f2742j.m33512g(view);
        this.f2744l.clear();
        if (m33512g != null) {
            this.f2744l.addAll(m33512g);
        }
        return this.f2744l;
    }

    /* renamed from: x */
    void m33557x(View view, Rect rect) {
        C0536b.m33507a(this, view, rect);
    }

    /* renamed from: y */
    void m33556y(View view, int i, Rect rect, Rect rect2) {
        C0532e c0532e = (C0532e) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        m33555z(view, i, rect, rect2, c0532e, measuredWidth, measuredHeight);
        m33567n(c0532e, rect2, measuredWidth, measuredHeight);
    }
}
