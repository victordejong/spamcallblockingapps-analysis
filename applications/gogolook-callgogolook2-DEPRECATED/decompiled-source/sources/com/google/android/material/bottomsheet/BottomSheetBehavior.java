package com.google.android.material.bottomsheet;

import android.content.Context;
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
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.R$dimen;
import com.google.android.material.R$styleable;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior.class */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: b */
    public float f7391b;

    /* renamed from: c */
    public int f7392c;

    /* renamed from: d */
    public boolean f7393d;

    /* renamed from: e */
    public int f7394e;

    /* renamed from: f */
    public int f7395f;

    /* renamed from: g */
    public int f7396g;

    /* renamed from: h */
    public int f7397h;

    /* renamed from: i */
    public int f7398i;

    /* renamed from: j */
    public boolean f7399j;

    /* renamed from: k */
    public boolean f7400k;

    /* renamed from: m */
    public ViewDragHelper f7402m;

    /* renamed from: n */
    public boolean f7403n;

    /* renamed from: o */
    public int f7404o;

    /* renamed from: p */
    public boolean f7405p;

    /* renamed from: q */
    public int f7406q;

    /* renamed from: r */
    public WeakReference<V> f7407r;

    /* renamed from: s */
    public WeakReference<View> f7408s;

    /* renamed from: t */
    public AbstractC3618c f7409t;

    /* renamed from: u */
    public VelocityTracker f7410u;

    /* renamed from: v */
    public int f7411v;

    /* renamed from: w */
    public int f7412w;

    /* renamed from: x */
    public boolean f7413x;

    /* renamed from: y */
    public Map<View, Integer> f7414y;

    /* renamed from: a */
    public boolean f7390a = true;

    /* renamed from: l */
    public int f7401l = 4;

    /* renamed from: z */
    public final ViewDragHelper.Callback f7415z = new C3617b();

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C3615a();

        /* renamed from: a */
        public final int f7416a;

        /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$SavedState$a.class */
        public static final class C3615a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f7416a = parcel.readInt();
        }

        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.f7416a = i;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f7416a);
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$a.class */
    public class RunnableC3616a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f7417a;

        /* renamed from: b */
        public final /* synthetic */ int f7418b;

        public RunnableC3616a(View view, int i) {
            this.f7417a = view;
            this.f7418b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            BottomSheetBehavior.this.m31441a(this.f7417a, this.f7418b);
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$b.class */
    public class C3617b extends ViewDragHelper.Callback {
        public C3617b() {
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NonNull View view, int i, int i2) {
            return view.getLeft();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NonNull View view, int i, int i2) {
            int b = BottomSheetBehavior.this.m31437b();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return MathUtils.clamp(i, b, bottomSheetBehavior.f7399j ? bottomSheetBehavior.f7406q : bottomSheetBehavior.f7398i);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewVerticalDragRange(@NonNull View view) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return bottomSheetBehavior.f7399j ? bottomSheetBehavior.f7406q : bottomSheetBehavior.f7398i;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            if (i == 1) {
                BottomSheetBehavior.this.m31428d(1);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NonNull View view, int i, int i2, int i3, int i4) {
            BottomSheetBehavior.this.m31444a(i2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x0035, code lost:
            if (r0 > r12) goto L_0x0038;
         */
        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onViewReleased(@androidx.annotation.NonNull android.view.View r8, float r9, float r10) {
            /*
                Method dump skipped, instructions count: 393
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.C3617b.onViewReleased(android.view.View, float, float):void");
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(@NonNull View view, int i) {
            View view2;
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i2 = bottomSheetBehavior.f7401l;
            boolean z = true;
            if (i2 == 1 || bottomSheetBehavior.f7413x) {
                return false;
            }
            if (i2 == 3 && bottomSheetBehavior.f7411v == i && (view2 = bottomSheetBehavior.f7408s.get()) != null && view2.canScrollVertically(-1)) {
                return false;
            }
            WeakReference<V> weakReference = BottomSheetBehavior.this.f7407r;
            if (weakReference == null || weakReference.get() != view) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$c.class */
    public static abstract class AbstractC3618c {
        /* renamed from: a */
        public abstract void mo15931a(@NonNull View view, float f);

        /* renamed from: a */
        public abstract void mo15930a(@NonNull View view, int i);
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$d.class */
    public class RunnableC3619d implements Runnable {

        /* renamed from: a */
        public final View f7421a;

        /* renamed from: b */
        public final int f7422b;

        public RunnableC3619d(View view, int i) {
            this.f7421a = view;
            this.f7422b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewDragHelper viewDragHelper = BottomSheetBehavior.this.f7402m;
            if (viewDragHelper == null || !viewDragHelper.continueSettling(true)) {
                BottomSheetBehavior.this.m31428d(this.f7422b);
            } else {
                ViewCompat.postOnAnimation(this.f7421a, this);
            }
        }
    }

    public BottomSheetBehavior() {
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.BottomSheetBehavior_Layout);
        TypedValue peekValue = obtainStyledAttributes.peekValue(R$styleable.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (peekValue == null || (i = peekValue.data) != -1) {
            m31436b(obtainStyledAttributes.getDimensionPixelSize(R$styleable.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        } else {
            m31436b(i);
        }
        m31433b(obtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        m31438a(obtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        m31430c(obtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        obtainStyledAttributes.recycle();
        this.f7391b = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    /* renamed from: b */
    public static <V extends View> BottomSheetBehavior<V> m31435b(V v) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
            if (behavior instanceof BottomSheetBehavior) {
                return (BottomSheetBehavior) behavior;
            }
            throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
        }
        throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
    }

    @VisibleForTesting
    /* renamed from: a */
    public View m31443a(View view) {
        if (ViewCompat.isNestedScrollingEnabled(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View a = m31443a(viewGroup.getChildAt(i));
            if (a != null) {
                return a;
            }
        }
        return null;
    }

    /* renamed from: a */
    public final void m31445a() {
        if (this.f7390a) {
            this.f7398i = Math.max(this.f7406q - this.f7395f, this.f7396g);
        } else {
            this.f7398i = this.f7406q - this.f7395f;
        }
    }

    /* renamed from: a */
    public void m31444a(int i) {
        AbstractC3618c cVar;
        V v = this.f7407r.get();
        if (v != null && (cVar = this.f7409t) != null) {
            int i2 = this.f7398i;
            if (i > i2) {
                cVar.mo15931a(v, (i2 - i) / (this.f7406q - i2));
            } else {
                cVar.mo15931a(v, (i2 - i) / (i2 - m31437b()));
            }
        }
    }

    /* renamed from: a */
    public void m31441a(View view, int i) {
        int i2;
        if (i == 4) {
            i2 = this.f7398i;
        } else if (i == 6) {
            int i3 = this.f7397h;
            if (this.f7390a) {
                i2 = this.f7396g;
                if (i3 <= i2) {
                    i = 3;
                }
            }
            i2 = i3;
        } else if (i == 3) {
            i2 = m31437b();
        } else if (!this.f7399j || i != 5) {
            throw new IllegalArgumentException("Illegal state argument: " + i);
        } else {
            i2 = this.f7406q;
        }
        if (this.f7402m.smoothSlideViewTo(view, view.getLeft(), i2)) {
            m31428d(2);
            ViewCompat.postOnAnimation(view, new RunnableC3619d(view, i));
            return;
        }
        m31428d(i);
    }

    /* renamed from: a */
    public void m31440a(AbstractC3618c cVar) {
        this.f7409t = cVar;
    }

    /* renamed from: a */
    public void m31438a(boolean z) {
        if (this.f7390a != z) {
            this.f7390a = z;
            if (this.f7407r != null) {
                m31445a();
            }
            m31428d((!this.f7390a || this.f7401l != 6) ? this.f7401l : 3);
        }
    }

    /* renamed from: a */
    public boolean m31442a(View view, float f) {
        boolean z = true;
        if (this.f7400k) {
            return true;
        }
        if (view.getTop() < this.f7398i) {
            return false;
        }
        if (Math.abs((view.getTop() + (f * 0.1f)) - this.f7398i) / this.f7392c <= 0.5f) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final int m31437b() {
        return this.f7390a ? this.f7396g : 0;
    }

    /* renamed from: b */
    public final void m31436b(int i) {
        boolean z;
        WeakReference<V> weakReference;
        V v;
        if (i == -1) {
            if (!this.f7393d) {
                this.f7393d = true;
                z = true;
            }
            z = false;
        } else {
            if (this.f7393d || this.f7392c != i) {
                this.f7393d = false;
                this.f7392c = Math.max(0, i);
                this.f7398i = this.f7406q - i;
                z = true;
            }
            z = false;
        }
        if (z && this.f7401l == 4 && (weakReference = this.f7407r) != null && (v = weakReference.get()) != null) {
            v.requestLayout();
        }
    }

    /* renamed from: b */
    public void m31433b(boolean z) {
        this.f7399j = z;
    }

    /* renamed from: c */
    public final int m31432c() {
        return this.f7401l;
    }

    /* renamed from: c */
    public final void m31431c(int i) {
        if (i != this.f7401l) {
            WeakReference<V> weakReference = this.f7407r;
            if (weakReference != null) {
                V v = weakReference.get();
                if (v != null) {
                    ViewParent parent = v.getParent();
                    if (parent == null || !parent.isLayoutRequested() || !ViewCompat.isAttachedToWindow(v)) {
                        m31441a((View) v, i);
                    } else {
                        v.post(new RunnableC3616a(v, i));
                    }
                }
            } else if (i == 4 || i == 3 || i == 6 || (this.f7399j && i == 5)) {
                this.f7401l = i;
            }
        }
    }

    /* renamed from: c */
    public void m31430c(boolean z) {
        this.f7400k = z;
    }

    /* renamed from: d */
    public final float m31429d() {
        VelocityTracker velocityTracker = this.f7410u;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.f7391b);
        return this.f7410u.getYVelocity(this.f7411v);
    }

    /* renamed from: d */
    public void m31428d(int i) {
        AbstractC3618c cVar;
        if (this.f7401l != i) {
            this.f7401l = i;
            if (i == 6 || i == 3) {
                m31427d(true);
            } else if (i == 5 || i == 4) {
                m31427d(false);
            }
            V v = this.f7407r.get();
            if (v != null && (cVar = this.f7409t) != null) {
                cVar.mo15930a((View) v, i);
            }
        }
    }

    /* renamed from: d */
    public final void m31427d(boolean z) {
        WeakReference<V> weakReference = this.f7407r;
        if (weakReference != null) {
            ViewParent parent = weakReference.get().getParent();
            if (parent instanceof CoordinatorLayout) {
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
                int childCount = coordinatorLayout.getChildCount();
                if (Build.VERSION.SDK_INT >= 16 && z) {
                    if (this.f7414y == null) {
                        this.f7414y = new HashMap(childCount);
                    } else {
                        return;
                    }
                }
                for (int i = 0; i < childCount; i++) {
                    View childAt = coordinatorLayout.getChildAt(i);
                    if (childAt != this.f7407r.get()) {
                        if (!z) {
                            Map<View, Integer> map = this.f7414y;
                            if (map != null && map.containsKey(childAt)) {
                                ViewCompat.setImportantForAccessibility(childAt, this.f7414y.get(childAt).intValue());
                            }
                        } else {
                            if (Build.VERSION.SDK_INT >= 16) {
                                this.f7414y.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                            }
                            ViewCompat.setImportantForAccessibility(childAt, 4);
                        }
                    }
                }
                if (!z) {
                    this.f7414y = null;
                }
            }
        }
    }

    /* renamed from: e */
    public final void m31426e() {
        this.f7411v = -1;
        VelocityTracker velocityTracker = this.f7410u;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f7410u = null;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper;
        if (!v.isShown()) {
            this.f7403n = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m31426e();
        }
        if (this.f7410u == null) {
            this.f7410u = VelocityTracker.obtain();
        }
        this.f7410u.addMovement(motionEvent);
        View view = null;
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.f7412w = (int) motionEvent.getY();
            WeakReference<View> weakReference = this.f7408s;
            View view2 = weakReference != null ? weakReference.get() : null;
            if (view2 != null && coordinatorLayout.isPointInChildBounds(view2, x, this.f7412w)) {
                this.f7411v = motionEvent.getPointerId(motionEvent.getActionIndex());
                this.f7413x = true;
            }
            this.f7403n = this.f7411v == -1 && !coordinatorLayout.isPointInChildBounds(v, x, this.f7412w);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f7413x = false;
            this.f7411v = -1;
            if (this.f7403n) {
                this.f7403n = false;
                return false;
            }
        }
        if (!this.f7403n && (viewDragHelper = this.f7402m) != null && viewDragHelper.shouldInterceptTouchEvent(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.f7408s;
        if (weakReference2 != null) {
            view = weakReference2.get();
        }
        boolean z = false;
        if (actionMasked == 2) {
            z = false;
            if (view != null) {
                z = false;
                if (!this.f7403n) {
                    z = false;
                    if (this.f7401l != 1) {
                        z = false;
                        if (!coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                            z = false;
                            if (this.f7402m != null) {
                                z = false;
                                if (Math.abs(this.f7412w - motionEvent.getY()) > this.f7402m.getTouchSlop()) {
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

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(v)) {
            v.setFitsSystemWindows(true);
        }
        int top = v.getTop();
        coordinatorLayout.onLayoutChild(v, i);
        this.f7406q = coordinatorLayout.getHeight();
        if (this.f7393d) {
            if (this.f7394e == 0) {
                this.f7394e = coordinatorLayout.getResources().getDimensionPixelSize(R$dimen.design_bottom_sheet_peek_height_min);
            }
            this.f7395f = Math.max(this.f7394e, this.f7406q - ((coordinatorLayout.getWidth() * 9) / 16));
        } else {
            this.f7395f = this.f7392c;
        }
        this.f7396g = Math.max(0, this.f7406q - v.getHeight());
        this.f7397h = this.f7406q / 2;
        m31445a();
        int i2 = this.f7401l;
        if (i2 == 3) {
            ViewCompat.offsetTopAndBottom(v, m31437b());
        } else if (i2 == 6) {
            ViewCompat.offsetTopAndBottom(v, this.f7397h);
        } else if (!this.f7399j || i2 != 5) {
            int i3 = this.f7401l;
            if (i3 == 4) {
                ViewCompat.offsetTopAndBottom(v, this.f7398i);
            } else if (i3 == 1 || i3 == 2) {
                ViewCompat.offsetTopAndBottom(v, top - v.getTop());
            }
        } else {
            ViewCompat.offsetTopAndBottom(v, this.f7406q);
        }
        if (this.f7402m == null) {
            this.f7402m = ViewDragHelper.create(coordinatorLayout, this.f7415z);
        }
        this.f7407r = new WeakReference<>(v);
        this.f7408s = new WeakReference<>(m31443a(v));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onNestedPreFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, float f, float f2) {
        return view == this.f7408s.get() && (this.f7401l != 3 || super.onNestedPreFling(coordinatorLayout, v, view, f, f2));
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, @NonNull int[] iArr, int i3) {
        if (i3 != 1 && view == this.f7408s.get()) {
            int top = v.getTop();
            int i4 = top - i2;
            if (i2 > 0) {
                if (i4 < m31437b()) {
                    iArr[1] = top - m31437b();
                    ViewCompat.offsetTopAndBottom(v, -iArr[1]);
                    m31428d(3);
                } else {
                    iArr[1] = i2;
                    ViewCompat.offsetTopAndBottom(v, -i2);
                    m31428d(1);
                }
            } else if (i2 < 0 && !view.canScrollVertically(-1)) {
                int i5 = this.f7398i;
                if (i4 <= i5 || this.f7399j) {
                    iArr[1] = i2;
                    ViewCompat.offsetTopAndBottom(v, -i2);
                    m31428d(1);
                } else {
                    iArr[1] = top - i5;
                    ViewCompat.offsetTopAndBottom(v, -iArr[1]);
                    m31428d(4);
                }
            }
            m31444a(v.getTop());
            this.f7404o = i2;
            this.f7405p = true;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v, savedState.getSuperState());
        int i = savedState.f7416a;
        if (i == 1 || i == 2) {
            this.f7401l = 4;
        } else {
            this.f7401l = i;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v), this.f7401l);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
        boolean z = false;
        this.f7404o = 0;
        this.f7405p = false;
        if ((i & 2) != 0) {
            z = true;
        }
        return z;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onStopNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i) {
        int i2;
        int i3 = 3;
        if (v.getTop() == m31437b()) {
            m31428d(3);
        } else if (view == this.f7408s.get() && this.f7405p) {
            if (this.f7404o > 0) {
                i2 = m31437b();
            } else if (!this.f7399j || !m31442a(v, m31429d())) {
                if (this.f7404o == 0) {
                    int top = v.getTop();
                    if (!this.f7390a) {
                        int i4 = this.f7397h;
                        if (top < i4) {
                            if (top < Math.abs(top - this.f7398i)) {
                                i2 = 0;
                            } else {
                                i2 = this.f7397h;
                            }
                        } else if (Math.abs(top - i4) < Math.abs(top - this.f7398i)) {
                            i2 = this.f7397h;
                        } else {
                            i2 = this.f7398i;
                        }
                        i3 = 6;
                    } else if (Math.abs(top - this.f7396g) < Math.abs(top - this.f7398i)) {
                        i2 = this.f7396g;
                    } else {
                        i2 = this.f7398i;
                    }
                } else {
                    i2 = this.f7398i;
                }
                i3 = 4;
            } else {
                i2 = this.f7406q;
                i3 = 5;
            }
            if (this.f7402m.smoothSlideViewTo(v, v.getLeft(), i2)) {
                m31428d(2);
                ViewCompat.postOnAnimation(v, new RunnableC3619d(v, i3));
            } else {
                m31428d(i3);
            }
            this.f7405p = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f7401l == 1 && actionMasked == 0) {
            return true;
        }
        ViewDragHelper viewDragHelper = this.f7402m;
        if (viewDragHelper != null) {
            viewDragHelper.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            m31426e();
        }
        if (this.f7410u == null) {
            this.f7410u = VelocityTracker.obtain();
        }
        this.f7410u.addMovement(motionEvent);
        if (actionMasked == 2 && !this.f7403n && Math.abs(this.f7412w - motionEvent.getY()) > this.f7402m.getTouchSlop()) {
            this.f7402m.captureChildView(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f7403n;
    }
}
