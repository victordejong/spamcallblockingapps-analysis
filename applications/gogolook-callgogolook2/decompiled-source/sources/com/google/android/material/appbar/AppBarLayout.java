package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p294f.p295a.C9167a;
import p081h.p203i.p204a.p294f.p296b.C9178b;
import p081h.p203i.p204a.p294f.p308n.C9245k;
@CoordinatorLayout.DefaultBehavior(Behavior.class)
/* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout.class */
public class AppBarLayout extends LinearLayout {

    /* renamed from: a */
    public int f7222a;

    /* renamed from: b */
    public int f7223b;

    /* renamed from: c */
    public int f7224c;

    /* renamed from: d */
    public boolean f7225d;

    /* renamed from: e */
    public int f7226e;

    /* renamed from: f */
    public WindowInsetsCompat f7227f;

    /* renamed from: g */
    public List<AbstractC3593b> f7228g;

    /* renamed from: h */
    public boolean f7229h;

    /* renamed from: i */
    public boolean f7230i;

    /* renamed from: j */
    public boolean f7231j;

    /* renamed from: k */
    public boolean f7232k;

    /* renamed from: l */
    public int[] f7233l;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior.class */
    public static class BaseBehavior<T extends AppBarLayout> extends HeaderBehavior<T> {

        /* renamed from: k */
        public int f7234k;

        /* renamed from: l */
        public int f7235l;

        /* renamed from: m */
        public ValueAnimator f7236m;

        /* renamed from: n */
        public int f7237n = -1;

        /* renamed from: o */
        public boolean f7238o;

        /* renamed from: p */
        public float f7239p;

        /* renamed from: q */
        public WeakReference<View> f7240q;

        /* renamed from: r */
        public AbstractC3591b f7241r;

        /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState.class */
        public static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new C3589a();

            /* renamed from: a */
            public int f7242a;

            /* renamed from: b */
            public float f7243b;

            /* renamed from: c */
            public boolean f7244c;

            /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$SavedState$a */
            /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState$a.class */
            public static final class C3589a implements Parcelable.ClassLoaderCreator<SavedState> {
                @Override // android.os.Parcelable.Creator
                public SavedState createFromParcel(Parcel parcel) {
                    return new SavedState(parcel, null);
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
                this.f7242a = parcel.readInt();
                this.f7243b = parcel.readFloat();
                this.f7244c = parcel.readByte() != 0;
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.f7242a);
                parcel.writeFloat(this.f7243b);
                parcel.writeByte(this.f7244c ? (byte) 1 : (byte) 0);
            }
        }

        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$a.class */
        public class C3590a implements ValueAnimator.AnimatorUpdateListener {

            /* renamed from: a */
            public final /* synthetic */ CoordinatorLayout f7245a;

            /* renamed from: b */
            public final /* synthetic */ AppBarLayout f7246b;

            public C3590a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
                this.f7245a = coordinatorLayout;
                this.f7246b = appBarLayout;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BaseBehavior.this.m31564b(this.f7245a, this.f7246b, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        }

        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$b */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$b.class */
        public static abstract class AbstractC3591b<T extends AppBarLayout> {
            /* renamed from: a */
            public abstract boolean m31598a(@NonNull T t);
        }

        public BaseBehavior() {
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /* renamed from: a */
        public static boolean m31624a(int i, int i2) {
            return (i & i2) == i2;
        }

        /* renamed from: c */
        public static View m31600c(AppBarLayout appBarLayout, int i) {
            int abs = Math.abs(i);
            int childCount = appBarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = appBarLayout.getChildAt(i2);
                if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        /* renamed from: a */
        public int m31617a(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3) {
            int i4;
            int c = mo31562c();
            if (i2 == 0 || c < i2 || c > i3) {
                this.f7234k = 0;
                i4 = 0;
            } else {
                int clamp = MathUtils.clamp(i, i2, i3);
                i4 = 0;
                if (c != clamp) {
                    int b = t.m31630h() ? m31603b((BaseBehavior<T>) t, clamp) : clamp;
                    boolean a = m31551a(b);
                    i4 = c - clamp;
                    this.f7234k = clamp - b;
                    if (!a && t.m31630h()) {
                        coordinatorLayout.dispatchDependentViewsChanged(t);
                    }
                    t.m31646a(m31552a());
                    m31615a(coordinatorLayout, (CoordinatorLayout) t, clamp, clamp < c ? -1 : 1, false);
                }
            }
            return i4;
        }

        /* renamed from: a */
        public final int m31606a(T t, int i) {
            int childCount = t.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = t.getChildAt(i2);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int i3 = top;
                int i4 = bottom;
                if (m31624a(layoutParams.m31597a(), 32)) {
                    i3 = top - ((LinearLayout.LayoutParams) layoutParams).topMargin;
                    i4 = bottom + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                }
                int i5 = -i;
                if (i3 <= i5 && i4 >= i5) {
                    return i2;
                }
            }
            return -1;
        }

        @Nullable
        /* renamed from: a */
        public final View m31622a(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt instanceof NestedScrollingChild) {
                    return childAt;
                }
            }
            return null;
        }

        /* renamed from: a */
        public final void m31623a(int i, T t, View view, int i2) {
            if (i2 == 1) {
                int c = mo31562c();
                if ((i < 0 && c == 0) || (i > 0 && c == (-t.m31639b()))) {
                    ViewCompat.stopNestedScroll(view, 1);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo31569a(CoordinatorLayout coordinatorLayout, View view) {
            m31621a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view));
        }

        /* renamed from: a */
        public void m31621a(CoordinatorLayout coordinatorLayout, T t) {
            m31599d(coordinatorLayout, t);
        }

        /* renamed from: a */
        public final void m31619a(CoordinatorLayout coordinatorLayout, T t, int i, float f) {
            int abs = Math.abs(mo31562c() - i);
            float abs2 = Math.abs(f);
            m31618a(coordinatorLayout, (CoordinatorLayout) t, i, abs2 > 0.0f ? Math.round((abs / abs2) * 1000.0f) * 3 : (int) (((abs / t.getHeight()) + 1.0f) * 150.0f));
        }

        /* renamed from: a */
        public final void m31618a(CoordinatorLayout coordinatorLayout, T t, int i, int i2) {
            int c = mo31562c();
            if (c == i) {
                ValueAnimator valueAnimator = this.f7236m;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.f7236m.cancel();
                    return;
                }
                return;
            }
            ValueAnimator valueAnimator2 = this.f7236m;
            if (valueAnimator2 == null) {
                this.f7236m = new ValueAnimator();
                this.f7236m.setInterpolator(C9167a.f20883e);
                this.f7236m.addUpdateListener(new C3590a(coordinatorLayout, t));
            } else {
                valueAnimator2.cancel();
            }
            this.f7236m.setDuration(Math.min(i2, 600));
            this.f7236m.setIntValues(c, i);
            this.f7236m.start();
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0076  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00a7  */
        /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m31615a(androidx.coordinatorlayout.widget.CoordinatorLayout r5, T r6, int r7, int r8, boolean r9) {
            /*
                r4 = this;
                r0 = r6
                r1 = r7
                android.view.View r0 = m31600c(r0, r1)
                r10 = r0
                r0 = r10
                if (r0 == 0) goto L_0x00be
                r0 = r10
                android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$LayoutParams r0 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r0
                int r0 = r0.m31597a()
                r11 = r0
                r0 = r11
                r1 = 1
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0068
                r0 = r10
                int r0 = androidx.core.view.ViewCompat.getMinimumHeight(r0)
                r12 = r0
                r0 = r8
                if (r0 <= 0) goto L_0x004c
                r0 = r11
                r1 = 12
                r0 = r0 & r1
                if (r0 == 0) goto L_0x004c
                r0 = r7
                int r0 = -r0
                r1 = r10
                int r1 = r1.getBottom()
                r2 = r12
                int r1 = r1 - r2
                r2 = r6
                int r2 = r2.m31633e()
                int r1 = r1 - r2
                if (r0 < r1) goto L_0x0068
            L_0x0046:
                r0 = 1
                r13 = r0
                goto L_0x006b
            L_0x004c:
                r0 = r11
                r1 = 2
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0068
                r0 = r7
                int r0 = -r0
                r1 = r10
                int r1 = r1.getBottom()
                r2 = r12
                int r1 = r1 - r2
                r2 = r6
                int r2 = r2.m31633e()
                int r1 = r1 - r2
                if (r0 < r1) goto L_0x0068
                goto L_0x0046
            L_0x0068:
                r0 = 0
                r13 = r0
            L_0x006b:
                r0 = r13
                r14 = r0
                r0 = r6
                boolean r0 = r0.m31626l()
                if (r0 == 0) goto L_0x0097
                r0 = r4
                r1 = r5
                android.view.View r0 = r0.m31622a(r1)
                r10 = r0
                r0 = r13
                r14 = r0
                r0 = r10
                if (r0 == 0) goto L_0x0097
                r0 = r10
                int r0 = r0.getScrollY()
                if (r0 <= 0) goto L_0x0094
                r0 = 1
                r14 = r0
                goto L_0x0097
            L_0x0094:
                r0 = 0
                r14 = r0
            L_0x0097:
                r0 = r6
                r1 = r14
                boolean r0 = r0.m31636b(r1)
                r14 = r0
                int r0 = android.os.Build.VERSION.SDK_INT
                r1 = 11
                if (r0 < r1) goto L_0x00be
                r0 = r9
                if (r0 != 0) goto L_0x00ba
                r0 = r14
                if (r0 == 0) goto L_0x00be
                r0 = r4
                r1 = r5
                r2 = r6
                boolean r0 = r0.m31602c(r1, r2)
                if (r0 == 0) goto L_0x00be
            L_0x00ba:
                r0 = r6
                r0.jumpDrawablesToCurrentState()
            L_0x00be:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.m31615a(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, int, int, boolean):void");
        }

        /* renamed from: a */
        public void m31614a(CoordinatorLayout coordinatorLayout, T t, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                SavedState savedState = (SavedState) parcelable;
                super.onRestoreInstanceState(coordinatorLayout, t, savedState.getSuperState());
                this.f7237n = savedState.f7242a;
                this.f7239p = savedState.f7243b;
                this.f7238o = savedState.f7244c;
                return;
            }
            super.onRestoreInstanceState(coordinatorLayout, t, parcelable);
            this.f7237n = -1;
        }

        /* renamed from: a */
        public void m31612a(CoordinatorLayout coordinatorLayout, T t, View view, int i) {
            if (this.f7235l == 0 || i == 1) {
                m31599d(coordinatorLayout, t);
            }
            this.f7240q = new WeakReference<>(view);
        }

        /* renamed from: a */
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int i3, int i4, int i5) {
            if (i4 < 0) {
                m31567a(coordinatorLayout, (CoordinatorLayout) t, i4, -t.m31639b(), 0);
                m31623a(i4, (int) t, view, i5);
            }
            if (t.m31626l()) {
                t.m31636b(view.getScrollY() > 0);
            }
        }

        /* renamed from: a */
        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int[] iArr, int i3) {
            int i4;
            int i5;
            if (i2 != 0) {
                if (i2 < 0) {
                    int i6 = -t.m31632f();
                    i5 = i6;
                    i4 = t.m31647a() + i6;
                } else {
                    i5 = -t.m31631g();
                    i4 = 0;
                }
                if (i5 != i4) {
                    iArr[1] = m31567a(coordinatorLayout, (CoordinatorLayout) t, i2, i5, i4);
                    m31623a(i2, (int) t, view, i3);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo31570a(View view) {
            return m31607a((BaseBehavior<T>) ((AppBarLayout) view));
        }

        /* renamed from: a */
        public boolean m31620a(CoordinatorLayout coordinatorLayout, T t, int i) {
            boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, t, i);
            int d = t.m31634d();
            int i2 = this.f7237n;
            if (i2 >= 0 && (d & 8) == 0) {
                View childAt = t.getChildAt(i2);
                m31564b(coordinatorLayout, t, (-childAt.getBottom()) + (this.f7238o ? ViewCompat.getMinimumHeight(childAt) + t.m31633e() : Math.round(childAt.getHeight() * this.f7239p)));
            } else if (d != 0) {
                boolean z = (d & 4) != 0;
                if ((d & 2) != 0) {
                    int i3 = -t.m31631g();
                    if (z) {
                        m31619a(coordinatorLayout, (CoordinatorLayout) t, i3, 0.0f);
                    } else {
                        m31564b(coordinatorLayout, t, i3);
                    }
                } else if ((d & 1) != 0) {
                    if (z) {
                        m31619a(coordinatorLayout, (CoordinatorLayout) t, 0, 0.0f);
                    } else {
                        m31564b(coordinatorLayout, t, 0);
                    }
                }
            }
            t.m31625m();
            this.f7237n = -1;
            m31551a(MathUtils.clamp(m31552a(), -t.m31632f(), 0));
            m31615a(coordinatorLayout, (CoordinatorLayout) t, m31552a(), 0, true);
            t.m31646a(m31552a());
            return onLayoutChild;
        }

        /* renamed from: a */
        public boolean m31616a(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3, int i4) {
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) t.getLayoutParams())).height != -2) {
                return super.onMeasureChild(coordinatorLayout, t, i, i2, i3, i4);
            }
            coordinatorLayout.onMeasureChild(t, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
            return true;
        }

        /* renamed from: a */
        public final boolean m31613a(CoordinatorLayout coordinatorLayout, T t, View view) {
            return t.m31628j() && coordinatorLayout.getHeight() - view.getHeight() <= t.getHeight();
        }

        /* renamed from: a */
        public boolean m31609a(CoordinatorLayout coordinatorLayout, T t, View view, View view2, int i, int i2) {
            ValueAnimator valueAnimator;
            boolean z = (i & 2) != 0 && (t.m31626l() || m31613a(coordinatorLayout, (CoordinatorLayout) t, view));
            if (z && (valueAnimator = this.f7236m) != null) {
                valueAnimator.cancel();
            }
            this.f7240q = null;
            this.f7235l = i2;
            return z;
        }

        /* renamed from: a */
        public boolean m31607a(T t) {
            AbstractC3591b bVar = this.f7241r;
            if (bVar != null) {
                return bVar.m31598a(t);
            }
            WeakReference<View> weakReference = this.f7240q;
            boolean z = true;
            if (weakReference != null) {
                View view = weakReference.get();
                z = view != null && view.isShown() && !view.canScrollVertically(-1);
            }
            return z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: b */
        public /* bridge */ /* synthetic */ int mo31565b(View view) {
            return m31604b((BaseBehavior<T>) ((AppBarLayout) view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: b */
        public /* bridge */ /* synthetic */ int mo31563b(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
            return m31617a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i, i2, i3);
        }

        /* renamed from: b */
        public int m31604b(T t) {
            return -t.m31639b();
        }

        /* renamed from: b */
        public final int m31603b(T t, int i) {
            int abs = Math.abs(i);
            int childCount = t.getChildCount();
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    break;
                }
                View childAt = t.getChildAt(i3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Interpolator b = layoutParams.m31596b();
                if (abs < childAt.getTop() || abs > childAt.getBottom()) {
                    i3++;
                } else if (b != null) {
                    int a = layoutParams.m31597a();
                    if ((a & 1) != 0) {
                        int height = 0 + childAt.getHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                        i2 = height;
                        if ((a & 2) != 0) {
                            i2 = height - ViewCompat.getMinimumHeight(childAt);
                        }
                    }
                    int i4 = i2;
                    if (ViewCompat.getFitsSystemWindows(childAt)) {
                        i4 = i2 - t.m31633e();
                    }
                    if (i4 > 0) {
                        int top = childAt.getTop();
                        float f = i4;
                        return Integer.signum(i) * (childAt.getTop() + Math.round(f * b.getInterpolation((abs - top) / f)));
                    }
                }
            }
            return i;
        }

        /* renamed from: b */
        public Parcelable m31605b(CoordinatorLayout coordinatorLayout, T t) {
            Parcelable onSaveInstanceState = super.onSaveInstanceState(coordinatorLayout, t);
            int a = m31552a();
            int childCount = t.getChildCount();
            boolean z = false;
            for (int i = 0; i < childCount; i++) {
                View childAt = t.getChildAt(i);
                int bottom = childAt.getBottom() + a;
                if (childAt.getTop() + a <= 0 && bottom >= 0) {
                    SavedState savedState = new SavedState(onSaveInstanceState);
                    savedState.f7242a = i;
                    if (bottom == ViewCompat.getMinimumHeight(childAt) + t.m31633e()) {
                        z = true;
                    }
                    savedState.f7244c = z;
                    savedState.f7243b = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return onSaveInstanceState;
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: c */
        public int mo31562c() {
            return m31552a() + this.f7234k;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: c */
        public /* bridge */ /* synthetic */ int mo31561c(View view) {
            return m31601c((BaseBehavior<T>) ((AppBarLayout) view));
        }

        /* renamed from: c */
        public int m31601c(T t) {
            return t.m31632f();
        }

        /* renamed from: c */
        public final boolean m31602c(CoordinatorLayout coordinatorLayout, T t) {
            List<View> dependents = coordinatorLayout.getDependents(t);
            int size = dependents.size();
            boolean z = false;
            for (int i = 0; i < size; i++) {
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) dependents.get(i).getLayoutParams()).getBehavior();
                if (behavior instanceof ScrollingViewBehavior) {
                    if (((ScrollingViewBehavior) behavior).m31558b() != 0) {
                        z = true;
                    }
                    return z;
                }
            }
            return false;
        }

        /* renamed from: d */
        public final void m31599d(CoordinatorLayout coordinatorLayout, T t) {
            int i;
            int i2;
            int c = mo31562c();
            int a = m31606a((BaseBehavior<T>) t, c);
            if (a >= 0) {
                View childAt = t.getChildAt(a);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int a2 = layoutParams.m31597a();
                if ((a2 & 17) == 17) {
                    int i3 = -childAt.getTop();
                    int i4 = -childAt.getBottom();
                    int i5 = i4;
                    if (a == t.getChildCount() - 1) {
                        i5 = i4 + t.m31633e();
                    }
                    if (m31624a(a2, 2)) {
                        i = i5 + ViewCompat.getMinimumHeight(childAt);
                        i2 = i3;
                    } else {
                        i2 = i3;
                        i = i5;
                        if (m31624a(a2, 5)) {
                            i = ViewCompat.getMinimumHeight(childAt) + i5;
                            if (c < i) {
                                i2 = i;
                                i = i5;
                            } else {
                                i2 = i3;
                            }
                        }
                    }
                    int i6 = i2;
                    int i7 = i;
                    if (m31624a(a2, 32)) {
                        i6 = i2 + ((LinearLayout.LayoutParams) layoutParams).topMargin;
                        i7 = i - ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    }
                    int i8 = i6;
                    if (c < (i7 + i6) / 2) {
                        i8 = i7;
                    }
                    m31619a(coordinatorLayout, (CoordinatorLayout) t, MathUtils.clamp(i8, -t.m31632f(), 0), 0.0f);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
            return m31620a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return m31616a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i, i2, i3, i4);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
            m31614a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), parcelable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, View view) {
            return m31605b(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            return m31609a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, view3, i, i2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onStopNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i) {
            m31612a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$Behavior.class */
    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$LayoutParams.class */
    public static class LayoutParams extends LinearLayout.LayoutParams {

        /* renamed from: a */
        public int f7248a;

        /* renamed from: b */
        public Interpolator f7249b;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f7248a = 1;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f7248a = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AppBarLayout_Layout);
            this.f7248a = obtainStyledAttributes.getInt(R$styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
            if (obtainStyledAttributes.hasValue(R$styleable.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.f7249b = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(R$styleable.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f7248a = 1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f7248a = 1;
        }

        @RequiresApi(19)
        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f7248a = 1;
        }

        /* renamed from: a */
        public int m31597a() {
            return this.f7248a;
        }

        /* renamed from: b */
        public Interpolator m31596b() {
            return this.f7249b;
        }

        /* renamed from: c */
        public boolean m31595c() {
            int i = this.f7248a;
            boolean z = true;
            if ((i & 1) != 1 || (i & 10) == 0) {
                z = false;
            }
            return z;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior.class */
    public static class ScrollingViewBehavior extends HeaderScrollingViewBehavior {
        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ScrollingViewBehavior_Layout);
            m31557b(obtainStyledAttributes.getDimensionPixelSize(R$styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public static int m31593a(AppBarLayout appBarLayout) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                return ((BaseBehavior) behavior).mo31562c();
            }
            return 0;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        /* renamed from: a */
        public AppBarLayout mo31559a(List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        /* renamed from: a */
        public final void m31594a(View view, View view2) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                ViewCompat.offsetTopAndBottom(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) behavior).f7234k) + m31555c()) - m31560a(view2));
            }
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        /* renamed from: b */
        public float mo31556b(View view) {
            int i;
            if (!(view instanceof AppBarLayout)) {
                return 0.0f;
            }
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int f = appBarLayout.m31632f();
            int a = appBarLayout.m31647a();
            int a2 = m31593a(appBarLayout);
            if ((a == 0 || f + a2 > a) && (i = f - a) != 0) {
                return (a2 / i) + 1.0f;
            }
            return 0.0f;
        }

        /* renamed from: b */
        public final void m31592b(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.m31626l()) {
                    appBarLayout.m31636b(view.getScrollY() > 0);
                }
            }
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        /* renamed from: c */
        public int mo31553c(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).m31632f() : super.mo31553c(view);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
            m31594a(view, view2);
            m31592b(view, view2);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout a = mo31559a(coordinatorLayout.getDependencies(view));
            if (a == null) {
                return false;
            }
            rect.offset(view.getLeft(), view.getTop());
            Rect rect2 = this.f7289d;
            rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
            if (rect2.contains(rect)) {
                return false;
            }
            a.m31641a(false, !z);
            return true;
        }
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$a.class */
    public class C3592a implements OnApplyWindowInsetsListener {
        public C3592a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return AppBarLayout.this.m31645a(windowInsetsCompat);
        }
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$b.class */
    public interface AbstractC3593b<T extends AppBarLayout> {
        /* renamed from: a */
        void mo26837a(T t, int i);
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$c.class */
    public interface AbstractC3594c extends AbstractC3593b<AppBarLayout> {
    }

    public AppBarLayout(Context context) {
        this(context, null);
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7222a = -1;
        this.f7223b = -1;
        this.f7224c = -1;
        this.f7226e = 0;
        setOrientation(1);
        if (Build.VERSION.SDK_INT >= 21) {
            C9178b.m15940a(this);
            C9178b.m15938a(this, attributeSet, 0, R$style.Widget_Design_AppBarLayout);
        }
        TypedArray c = C9245k.m15637c(context, attributeSet, R$styleable.AppBarLayout, 0, R$style.Widget_Design_AppBarLayout, new int[0]);
        ViewCompat.setBackground(this, c.getDrawable(R$styleable.AppBarLayout_android_background));
        if (c.hasValue(R$styleable.AppBarLayout_expanded)) {
            m31640a(c.getBoolean(R$styleable.AppBarLayout_expanded, false), false, false);
        }
        if (Build.VERSION.SDK_INT >= 21 && c.hasValue(R$styleable.AppBarLayout_elevation)) {
            C9178b.m15939a(this, c.getDimensionPixelSize(R$styleable.AppBarLayout_elevation, 0));
        }
        if (Build.VERSION.SDK_INT >= 26) {
            if (c.hasValue(R$styleable.AppBarLayout_android_keyboardNavigationCluster)) {
                setKeyboardNavigationCluster(c.getBoolean(R$styleable.AppBarLayout_android_keyboardNavigationCluster, false));
            }
            if (c.hasValue(R$styleable.AppBarLayout_android_touchscreenBlocksFocus)) {
                setTouchscreenBlocksFocus(c.getBoolean(R$styleable.AppBarLayout_android_touchscreenBlocksFocus, false));
            }
        }
        this.f7232k = c.getBoolean(R$styleable.AppBarLayout_liftOnScroll, false);
        c.recycle();
        ViewCompat.setOnApplyWindowInsetsListener(this, new C3592a());
    }

    /* renamed from: a */
    public int m31647a() {
        int i = this.f7223b;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = layoutParams.f7248a;
            if ((i3 & 5) != 5) {
                i2 = i2;
                if (i2 > 0) {
                    break;
                }
            } else {
                int i4 = i2 + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                i2 = (i3 & 8) != 0 ? i4 + ViewCompat.getMinimumHeight(childAt) : i4 + (measuredHeight - ((i3 & 2) != 0 ? ViewCompat.getMinimumHeight(childAt) : m31633e()));
            }
        }
        int max = Math.max(0, i2);
        this.f7223b = max;
        return max;
    }

    /* renamed from: a */
    public WindowInsetsCompat m31645a(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(this) ? windowInsetsCompat : null;
        if (!ObjectsCompat.equals(this.f7227f, windowInsetsCompat2)) {
            this.f7227f = windowInsetsCompat2;
            m31627k();
        }
        return windowInsetsCompat;
    }

    /* renamed from: a */
    public void m31646a(int i) {
        List<AbstractC3593b> list = this.f7228g;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC3593b bVar = this.f7228g.get(i2);
                if (bVar != null) {
                    bVar.mo26837a(this, i);
                }
            }
        }
    }

    /* renamed from: a */
    public void m31644a(AbstractC3593b bVar) {
        if (this.f7228g == null) {
            this.f7228g = new ArrayList();
        }
        if (bVar != null && !this.f7228g.contains(bVar)) {
            this.f7228g.add(bVar);
        }
    }

    /* renamed from: a */
    public void m31643a(AbstractC3594c cVar) {
        m31644a((AbstractC3593b) cVar);
    }

    /* renamed from: a */
    public void m31641a(boolean z, boolean z2) {
        m31640a(z, z2, true);
    }

    /* renamed from: a */
    public final void m31640a(boolean z, boolean z2, boolean z3) {
        int i = z ? 1 : 2;
        int i2 = 0;
        int i3 = z2 ? 4 : 0;
        if (z3) {
            i2 = 8;
        }
        this.f7226e = i | i3 | i2;
        requestLayout();
    }

    /* renamed from: a */
    public final boolean m31642a(boolean z) {
        if (this.f7230i == z) {
            return false;
        }
        this.f7230i = z;
        refreshDrawableState();
        return true;
    }

    /* renamed from: b */
    public int m31639b() {
        int i;
        int i2 = this.f7224c;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = ((LinearLayout.LayoutParams) layoutParams).topMargin;
            int i6 = ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
            int i7 = layoutParams.f7248a;
            i = i4;
            if ((i7 & 1) == 0) {
                break;
            }
            i4 += measuredHeight + i5 + i6;
            if ((i7 & 2) != 0) {
                i = i4 - (ViewCompat.getMinimumHeight(childAt) + m31633e());
                break;
            }
            i3++;
        }
        int max = Math.max(0, i);
        this.f7224c = max;
        return max;
    }

    /* renamed from: b */
    public void m31638b(AbstractC3593b bVar) {
        List<AbstractC3593b> list = this.f7228g;
        if (list != null && bVar != null) {
            list.remove(bVar);
        }
    }

    /* renamed from: b */
    public void m31637b(AbstractC3594c cVar) {
        m31638b((AbstractC3593b) cVar);
    }

    /* renamed from: b */
    public boolean m31636b(boolean z) {
        if (this.f7231j == z) {
            return false;
        }
        this.f7231j = z;
        refreshDrawableState();
        return true;
    }

    /* renamed from: c */
    public final int m31635c() {
        int e = m31633e();
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        if (minimumHeight == 0) {
            int childCount = getChildCount();
            minimumHeight = childCount >= 1 ? ViewCompat.getMinimumHeight(getChildAt(childCount - 1)) : 0;
            if (minimumHeight == 0) {
                return getHeight() / 3;
            }
        }
        return (minimumHeight * 2) + e;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: d */
    public int m31634d() {
        return this.f7226e;
    }

    @VisibleForTesting
    /* renamed from: e */
    public final int m31633e() {
        WindowInsetsCompat windowInsetsCompat = this.f7227f;
        return windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
    }

    /* renamed from: f */
    public final int m31632f() {
        int i;
        int i2 = this.f7222a;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = layoutParams.f7248a;
            i = i4;
            if ((i5 & 1) == 0) {
                break;
            }
            i4 += measuredHeight + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
            if ((i5 & 2) != 0) {
                i = i4 - ViewCompat.getMinimumHeight(childAt);
                break;
            }
            i3++;
        }
        int max = Math.max(0, i - m31633e());
        this.f7222a = max;
        return max;
    }

    /* renamed from: g */
    public int m31631g() {
        return m31632f();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (Build.VERSION.SDK_INT < 19 || !(layoutParams instanceof LinearLayout.LayoutParams)) ? layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams) : new LayoutParams((LinearLayout.LayoutParams) layoutParams);
    }

    /* renamed from: h */
    public boolean m31630h() {
        return this.f7225d;
    }

    /* renamed from: i */
    public final boolean m31629i() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((LayoutParams) getChildAt(i).getLayoutParams()).m31595c()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: j */
    public boolean m31628j() {
        return m31632f() != 0;
    }

    /* renamed from: k */
    public final void m31627k() {
        this.f7222a = -1;
        this.f7223b = -1;
        this.f7224c = -1;
    }

    /* renamed from: l */
    public boolean m31626l() {
        return this.f7232k;
    }

    /* renamed from: m */
    public void m31625m() {
        this.f7226e = 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        if (this.f7233l == null) {
            this.f7233l = new int[4];
        }
        int[] iArr = this.f7233l;
        int[] onCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        iArr[0] = this.f7230i ? R$attr.state_liftable : -R$attr.state_liftable;
        iArr[1] = (!this.f7230i || !this.f7231j) ? -R$attr.state_lifted : R$attr.state_lifted;
        iArr[2] = this.f7230i ? R$attr.state_collapsible : -R$attr.state_collapsible;
        iArr[3] = (!this.f7230i || !this.f7231j) ? -R$attr.state_collapsed : R$attr.state_collapsed;
        return LinearLayout.mergeDrawableStates(onCreateDrawableState, iArr);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m31627k();
        boolean z2 = false;
        this.f7225d = false;
        int childCount = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount) {
                break;
            } else if (((LayoutParams) getChildAt(i5).getLayoutParams()).m31596b() != null) {
                this.f7225d = true;
                break;
            } else {
                i5++;
            }
        }
        if (!this.f7229h) {
            if (this.f7232k || m31629i()) {
                z2 = true;
            }
            m31642a(z2);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        m31627k();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i == 1) {
            super.setOrientation(i);
            return;
        }
        throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
    }
}
