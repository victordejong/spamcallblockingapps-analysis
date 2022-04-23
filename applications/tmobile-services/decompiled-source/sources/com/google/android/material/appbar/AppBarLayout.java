package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C1027R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout.class */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.AttachedBehavior {

    /* renamed from: w */
    private static final int f9946w = C1027R.style.Widget_Design_AppBarLayout;

    /* renamed from: f */
    private int f9947f;

    /* renamed from: g */
    private int f9948g;

    /* renamed from: h */
    private int f9949h;

    /* renamed from: i */
    private int f9950i;

    /* renamed from: j */
    private boolean f9951j;

    /* renamed from: k */
    private int f9952k;
    @Nullable

    /* renamed from: l */
    private WindowInsetsCompat f9953l;

    /* renamed from: m */
    private List<BaseOnOffsetChangedListener> f9954m;

    /* renamed from: n */
    private boolean f9955n;

    /* renamed from: o */
    private boolean f9956o;

    /* renamed from: p */
    private boolean f9957p;

    /* renamed from: q */
    private boolean f9958q;
    @IdRes

    /* renamed from: r */
    private int f9959r;
    @Nullable

    /* renamed from: s */
    private WeakReference<View> f9960s;
    @Nullable

    /* renamed from: t */
    private ValueAnimator f9961t;

    /* renamed from: u */
    private int[] f9962u;
    @Nullable

    /* renamed from: v */
    private Drawable f9963v;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior.class */
    public static class BaseBehavior<T extends AppBarLayout> extends HeaderBehavior<T> {

        /* renamed from: k */
        private int f9966k;

        /* renamed from: l */
        private int f9967l;

        /* renamed from: m */
        private ValueAnimator f9968m;

        /* renamed from: n */
        private int f9969n = -1;

        /* renamed from: o */
        private boolean f9970o;

        /* renamed from: p */
        private float f9971p;
        @Nullable

        /* renamed from: q */
        private WeakReference<View> f9972q;

        /* renamed from: r */
        private BaseDragCallback f9973r;

        /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback.class */
        public static abstract class BaseDragCallback<T extends AppBarLayout> {
            /* renamed from: a */
            public abstract boolean m10684a(@NonNull T t);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState.class */
        public static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.SavedState.1
                @Nullable
                /* renamed from: a */
                public SavedState createFromParcel(@NonNull Parcel parcel) {
                    return new SavedState(parcel, null);
                }

                @NonNull
                /* renamed from: b */
                public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                    return new SavedState(parcel, classLoader);
                }

                @NonNull
                /* renamed from: c */
                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            };

            /* renamed from: h */
            int f9984h;

            /* renamed from: i */
            float f9985i;

            /* renamed from: j */
            boolean f9986j;

            public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f9984h = parcel.readInt();
                this.f9985i = parcel.readFloat();
                this.f9986j = parcel.readByte() != 0;
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(@NonNull Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.f9984h);
                parcel.writeFloat(this.f9985i);
                parcel.writeByte(this.f9986j ? (byte) 1 : (byte) 0);
            }
        }

        public BaseBehavior() {
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /* renamed from: S */
        private void m10711S(final CoordinatorLayout coordinatorLayout, @NonNull final T t, @NonNull final View view) {
            if (mo10651M() != (-t.getTotalScrollRange()) && view.canScrollVertically(1)) {
                m10710T(coordinatorLayout, t, AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3333h, false);
            }
            if (mo10651M() == 0) {
                return;
            }
            if (view.canScrollVertically(-1)) {
                final int i = -t.getDownNestedPreScrollRange();
                if (i != 0) {
                    ViewCompat.m19191j0(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3334i, null, new AccessibilityViewCommand() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.2
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                        /* renamed from: a */
                        public boolean mo10380a(@NonNull View view2, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                            BaseBehavior.this.mo10401q(coordinatorLayout, t, view, 0, i, new int[]{0, 0}, 1);
                            return true;
                        }
                    });
                    return;
                }
                return;
            }
            m10710T(coordinatorLayout, t, AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3334i, true);
        }

        /* renamed from: T */
        private void m10710T(CoordinatorLayout coordinatorLayout, @NonNull final T t, @NonNull AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, final boolean z) {
            ViewCompat.m19191j0(coordinatorLayout, accessibilityActionCompat, null, new AccessibilityViewCommand(this) { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.3
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                /* renamed from: a */
                public boolean mo10380a(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                    t.setExpanded(z);
                    return true;
                }
            });
        }

        /* renamed from: U */
        private void m10709U(CoordinatorLayout coordinatorLayout, @NonNull T t, int i, float f) {
            int abs = Math.abs(mo10651M() - i);
            float abs2 = Math.abs(f);
            m10708V(coordinatorLayout, t, i, abs2 > 0.0f ? Math.round((abs / abs2) * 1000.0f) * 3 : (int) (((abs / t.getHeight()) + 1.0f) * 150.0f));
        }

        /* renamed from: V */
        private void m10708V(final CoordinatorLayout coordinatorLayout, final T t, int i, int i2) {
            int M = mo10651M();
            if (M == i) {
                ValueAnimator valueAnimator = this.f9968m;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.f9968m.cancel();
                    return;
                }
                return;
            }
            ValueAnimator valueAnimator2 = this.f9968m;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.f9968m = valueAnimator3;
                valueAnimator3.setInterpolator(AnimationUtils.f9927e);
                this.f9968m.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator4) {
                        BaseBehavior.this.m10648P(coordinatorLayout, t, ((Integer) valueAnimator4.getAnimatedValue()).intValue());
                    }
                });
            } else {
                valueAnimator2.cancel();
            }
            this.f9968m.setDuration(Math.min(i2, 600));
            this.f9968m.setIntValues(M, i);
            this.f9968m.start();
        }

        /* renamed from: X */
        private boolean m10706X(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, @NonNull View view) {
            return t.m10728j() && coordinatorLayout.getHeight() - view.getHeight() <= t.getHeight();
        }

        /* renamed from: Y */
        private static boolean m10705Y(int i, int i2) {
            return (i & i2) == i2;
        }

        @Nullable
        /* renamed from: Z */
        private View m10704Z(@NonNull CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if ((childAt instanceof NestedScrollingChild) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        @Nullable
        /* renamed from: a0 */
        private static View m10703a0(@NonNull AppBarLayout appBarLayout, int i) {
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

        /* renamed from: b0 */
        private int m10702b0(@NonNull T t, int i) {
            int childCount = t.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = t.getChildAt(i2);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int i3 = top;
                int i4 = bottom;
                if (m10705Y(layoutParams.m10680a(), 32)) {
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

        /* renamed from: e0 */
        private int m10699e0(@NonNull T t, int i) {
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
                Interpolator b = layoutParams.m10679b();
                if (abs < childAt.getTop() || abs > childAt.getBottom()) {
                    i3++;
                } else if (b != null) {
                    int a = layoutParams.m10680a();
                    if ((a & 1) != 0) {
                        int height = 0 + childAt.getHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                        i2 = height;
                        if ((a & 2) != 0) {
                            i2 = height - ViewCompat.m19242B(childAt);
                        }
                    }
                    int i4 = i2;
                    if (ViewCompat.m19164x(childAt)) {
                        i4 = i2 - t.getTopInset();
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

        /* renamed from: p0 */
        private boolean m10688p0(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t) {
            List<View> w = coordinatorLayout.m19913w(t);
            int size = w.size();
            boolean z = false;
            for (int i = 0; i < size; i++) {
                CoordinatorLayout.Behavior f = ((CoordinatorLayout.LayoutParams) w.get(i).getLayoutParams()).m19892f();
                if (f instanceof ScrollingViewBehavior) {
                    if (((ScrollingViewBehavior) f).m10643K() != 0) {
                        z = true;
                    }
                    return z;
                }
            }
            return false;
        }

        /* renamed from: q0 */
        private void m10687q0(CoordinatorLayout coordinatorLayout, @NonNull T t) {
            int i;
            int i2;
            int M = mo10651M();
            int b0 = m10702b0(t, M);
            if (b0 >= 0) {
                View childAt = t.getChildAt(b0);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int a = layoutParams.m10680a();
                if ((a & 17) == 17) {
                    int i3 = -childAt.getTop();
                    int i4 = -childAt.getBottom();
                    int i5 = i4;
                    if (b0 == t.getChildCount() - 1) {
                        i5 = i4 + t.getTopInset();
                    }
                    if (m10705Y(a, 2)) {
                        i = i5 + ViewCompat.m19242B(childAt);
                        i2 = i3;
                    } else {
                        i2 = i3;
                        i = i5;
                        if (m10705Y(a, 5)) {
                            i = ViewCompat.m19242B(childAt) + i5;
                            if (M < i) {
                                i2 = i;
                                i = i5;
                            } else {
                                i2 = i3;
                            }
                        }
                    }
                    int i6 = i2;
                    int i7 = i;
                    if (m10705Y(a, 32)) {
                        i6 = i2 + ((LinearLayout.LayoutParams) layoutParams).topMargin;
                        i7 = i - ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    }
                    int i8 = i6;
                    if (M < (i7 + i6) / 2) {
                        i8 = i7;
                    }
                    m10709U(coordinatorLayout, t, MathUtils.m19451b(i8, -t.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        /* renamed from: r0 */
        private void m10686r0(CoordinatorLayout coordinatorLayout, @NonNull T t) {
            ViewCompat.m19195h0(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3333h.m18978b());
            ViewCompat.m19195h0(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3334i.m18978b());
            View Z = m10704Z(coordinatorLayout);
            if (Z != null && t.getTotalScrollRange() != 0 && (((CoordinatorLayout.LayoutParams) Z.getLayoutParams()).m19892f() instanceof ScrollingViewBehavior)) {
                m10711S(coordinatorLayout, t, Z);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x004e, code lost:
            if ((-r7) >= ((r0.getBottom() - r0) - r6.getTopInset())) goto L_0x0051;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0051, code lost:
            r13 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0075, code lost:
            if ((-r7) >= ((r0.getBottom() - r0) - r6.getTopInset())) goto L_0x0051;
         */
        /* renamed from: s0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void m10685s0(@androidx.annotation.NonNull androidx.coordinatorlayout.widget.CoordinatorLayout r5, @androidx.annotation.NonNull T r6, int r7, int r8, boolean r9) {
            /*
                r4 = this;
                r0 = r6
                r1 = r7
                android.view.View r0 = m10703a0(r0, r1)
                r10 = r0
                r0 = r10
                if (r0 == 0) goto L_0x00ac
                r0 = r10
                android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$LayoutParams r0 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r0
                int r0 = r0.m10680a()
                r11 = r0
                r0 = 0
                r12 = r0
                r0 = r12
                r13 = r0
                r0 = r11
                r1 = 1
                r0 = r0 & r1
                if (r0 == 0) goto L_0x007b
                r0 = r10
                int r0 = androidx.core.view.ViewCompat.m19242B(r0)
                r14 = r0
                r0 = r8
                if (r0 <= 0) goto L_0x0057
                r0 = r11
                r1 = 12
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0057
                r0 = r12
                r13 = r0
                r0 = r7
                int r0 = -r0
                r1 = r10
                int r1 = r1.getBottom()
                r2 = r14
                int r1 = r1 - r2
                r2 = r6
                int r2 = r2.getTopInset()
                int r1 = r1 - r2
                if (r0 < r1) goto L_0x007b
            L_0x0051:
                r0 = 1
                r13 = r0
                goto L_0x007b
            L_0x0057:
                r0 = r12
                r13 = r0
                r0 = r11
                r1 = 2
                r0 = r0 & r1
                if (r0 == 0) goto L_0x007b
                r0 = r12
                r13 = r0
                r0 = r7
                int r0 = -r0
                r1 = r10
                int r1 = r1.getBottom()
                r2 = r14
                int r1 = r1 - r2
                r2 = r6
                int r2 = r2.getTopInset()
                int r1 = r1 - r2
                if (r0 < r1) goto L_0x007b
                goto L_0x0051
            L_0x007b:
                r0 = r6
                boolean r0 = r0.m10726l()
                if (r0 == 0) goto L_0x008d
                r0 = r6
                r1 = r4
                r2 = r5
                android.view.View r1 = r1.m10704Z(r2)
                boolean r0 = r0.m10716v(r1)
                r13 = r0
            L_0x008d:
                r0 = r6
                r1 = r13
                boolean r0 = r0.m10718t(r1)
                r13 = r0
                r0 = r9
                if (r0 != 0) goto L_0x00a8
                r0 = r13
                if (r0 == 0) goto L_0x00ac
                r0 = r4
                r1 = r5
                r2 = r6
                boolean r0 = r0.m10688p0(r1, r2)
                if (r0 == 0) goto L_0x00ac
            L_0x00a8:
                r0 = r6
                r0.jumpDrawablesToCurrentState()
            L_0x00ac:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.m10685s0(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, int, int, boolean):void");
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: M */
        int mo10651M() {
            return m10635E() + this.f9966k;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: W */
        public boolean mo10656H(T t) {
            BaseDragCallback baseDragCallback = this.f9973r;
            if (baseDragCallback != null) {
                return baseDragCallback.m10684a(t);
            }
            WeakReference<View> weakReference = this.f9972q;
            boolean z = true;
            if (weakReference != null) {
                View view = weakReference.get();
                z = view != null && view.isShown() && !view.canScrollVertically(-1);
            }
            return z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: c0 */
        public int mo10653K(@NonNull T t) {
            return -t.getDownNestedScrollRange();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: d0 */
        public int mo10652L(@NonNull T t) {
            return t.getTotalScrollRange();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: f0 */
        public void mo10650N(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t) {
            m10687q0(coordinatorLayout, t);
            if (t.m10726l()) {
                t.m10718t(t.m10716v(m10704Z(coordinatorLayout)));
            }
        }

        /* renamed from: g0 */
        public boolean mo8678l(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, int i) {
            boolean l = super.mo8678l(coordinatorLayout, t, i);
            int pendingAction = t.getPendingAction();
            int i2 = this.f9969n;
            if (i2 >= 0 && (pendingAction & 8) == 0) {
                View childAt = t.getChildAt(i2);
                m10648P(coordinatorLayout, t, (-childAt.getBottom()) + (this.f9970o ? ViewCompat.m19242B(childAt) + t.getTopInset() : Math.round(childAt.getHeight() * this.f9971p)));
            } else if (pendingAction != 0) {
                boolean z = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i3 = -t.getUpNestedPreScrollRange();
                    if (z) {
                        m10709U(coordinatorLayout, t, i3, 0.0f);
                    } else {
                        m10648P(coordinatorLayout, t, i3);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        m10709U(coordinatorLayout, t, 0, 0.0f);
                    } else {
                        m10648P(coordinatorLayout, t, 0);
                    }
                }
            }
            t.m10721q();
            this.f9969n = -1;
            m10633G(MathUtils.m19451b(m10635E(), -t.getTotalScrollRange(), 0));
            m10685s0(coordinatorLayout, t, m10635E(), 0, true);
            t.m10725m(m10635E());
            m10686r0(coordinatorLayout, t);
            return l;
        }

        /* renamed from: h0 */
        public boolean mo10637m(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, int i, int i2, int i3, int i4) {
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) t.getLayoutParams())).height != -2) {
                return super.mo10637m(coordinatorLayout, t, i, i2, i3, i4);
            }
            coordinatorLayout.m19940N(t, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
            return true;
        }

        /* renamed from: i0 */
        public void mo10401q(CoordinatorLayout coordinatorLayout, @NonNull T t, View view, int i, int i2, int[] iArr, int i3) {
            int i4;
            int i5;
            if (i2 != 0) {
                if (i2 < 0) {
                    int i6 = -t.getTotalScrollRange();
                    i5 = i6;
                    i4 = t.getDownNestedPreScrollRange() + i6;
                } else {
                    i5 = -t.getUpNestedPreScrollRange();
                    i4 = 0;
                }
                if (i5 != i4) {
                    iArr[1] = m10649O(coordinatorLayout, t, i2, i5, i4);
                }
            }
            if (t.m10726l()) {
                t.m10718t(t.m10716v(view));
            }
        }

        /* renamed from: j0 */
        public void mo10397t(CoordinatorLayout coordinatorLayout, @NonNull T t, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            if (i4 < 0) {
                iArr[1] = m10649O(coordinatorLayout, t, i4, -t.getDownNestedScrollRange(), 0);
            }
            if (i4 == 0) {
                m10686r0(coordinatorLayout, t);
            }
        }

        /* renamed from: k0 */
        public void mo10392x(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                SavedState savedState = (SavedState) parcelable;
                super.mo10392x(coordinatorLayout, t, savedState.m18793a());
                this.f9969n = savedState.f9984h;
                this.f9971p = savedState.f9985i;
                this.f9970o = savedState.f9986j;
                return;
            }
            super.mo10392x(coordinatorLayout, t, parcelable);
            this.f9969n = -1;
        }

        /* renamed from: l0 */
        public Parcelable mo10390y(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t) {
            Parcelable y = super.mo10390y(coordinatorLayout, t);
            int E = m10635E();
            int childCount = t.getChildCount();
            boolean z = false;
            for (int i = 0; i < childCount; i++) {
                View childAt = t.getChildAt(i);
                int bottom = childAt.getBottom() + E;
                if (childAt.getTop() + E <= 0 && bottom >= 0) {
                    SavedState savedState = new SavedState(y);
                    savedState.f9984h = i;
                    if (bottom == ViewCompat.m19242B(childAt) + t.getTopInset()) {
                        z = true;
                    }
                    savedState.f9986j = z;
                    savedState.f9985i = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return y;
        }

        /* renamed from: m0 */
        public boolean mo10443A(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, @NonNull View view, View view2, int i, int i2) {
            ValueAnimator valueAnimator;
            boolean z = (i & 2) != 0 && (t.m10726l() || m10706X(coordinatorLayout, t, view));
            if (z && (valueAnimator = this.f9968m) != null) {
                valueAnimator.cancel();
            }
            this.f9972q = null;
            this.f9967l = i2;
            return z;
        }

        /* renamed from: n0 */
        public void mo10442C(CoordinatorLayout coordinatorLayout, @NonNull T t, View view, int i) {
            if (this.f9967l == 0 || i == 1) {
                m10687q0(coordinatorLayout, t);
                if (t.m10726l()) {
                    t.m10718t(t.m10716v(view));
                }
            }
            this.f9972q = new WeakReference<>(view);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: o0 */
        public int mo10647Q(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, int i, int i2, int i3) {
            int i4;
            int M = mo10651M();
            if (i2 == 0 || M < i2 || M > i3) {
                this.f9966k = 0;
                i4 = 0;
            } else {
                int b = MathUtils.m19451b(i, i2, i3);
                i4 = 0;
                if (M != b) {
                    int e0 = t.m10730h() ? m10699e0(t, b) : b;
                    boolean G = m10633G(e0);
                    i4 = M - b;
                    this.f9966k = b - e0;
                    if (!G && t.m10730h()) {
                        coordinatorLayout.m19920f(t);
                    }
                    t.m10725m(m10635E());
                    m10685s0(coordinatorLayout, t, b, b < M ? -1 : 1, false);
                }
            }
            m10686r0(coordinatorLayout, t);
            return i4;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener.class */
    public interface BaseOnOffsetChangedListener<T extends AppBarLayout> {
        /* renamed from: a */
        void mo10657a(T t, int i);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$Behavior.class */
    public static class Behavior extends BaseBehavior<AppBarLayout> {

        /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$Behavior$DragCallback.class */
        public static abstract class DragCallback extends BaseBehavior.BaseDragCallback<AppBarLayout> {
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$LayoutParams.class */
    public static class LayoutParams extends LinearLayout.LayoutParams {

        /* renamed from: a */
        int f9987a;

        /* renamed from: b */
        Interpolator f9988b;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$LayoutParams$ScrollFlags.class */
        public @interface ScrollFlags {
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f9987a = 1;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f9987a = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1027R.styleable.AppBarLayout_Layout);
            this.f9987a = obtainStyledAttributes.getInt(C1027R.styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
            if (obtainStyledAttributes.hasValue(C1027R.styleable.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.f9988b = android.view.animation.AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(C1027R.styleable.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f9987a = 1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f9987a = 1;
        }

        @RequiresApi
        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f9987a = 1;
        }

        /* renamed from: a */
        public int m10680a() {
            return this.f9987a;
        }

        /* renamed from: b */
        public Interpolator m10679b() {
            return this.f9988b;
        }

        /* renamed from: c */
        boolean m10678c() {
            int i = this.f9987a;
            boolean z = true;
            if ((i & 1) != 1 || (i & 10) == 0) {
                z = false;
            }
            return z;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener.class */
    public interface OnOffsetChangedListener extends BaseOnOffsetChangedListener<AppBarLayout> {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior.class */
    public static class ScrollingViewBehavior extends HeaderScrollingViewBehavior {
        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1027R.styleable.ScrollingViewBehavior_Layout);
            m10639O(obtainStyledAttributes.getDimensionPixelSize(C1027R.styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            obtainStyledAttributes.recycle();
        }

        /* renamed from: R */
        private static int m10676R(@NonNull AppBarLayout appBarLayout) {
            CoordinatorLayout.Behavior f = ((CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams()).m19892f();
            if (f instanceof BaseBehavior) {
                return ((BaseBehavior) f).mo10651M();
            }
            return 0;
        }

        /* renamed from: S */
        private void m10675S(@NonNull View view, @NonNull View view2) {
            CoordinatorLayout.Behavior f = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).m19892f();
            if (f instanceof BaseBehavior) {
                ViewCompat.m19212Y(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) f).f9966k) + m10641M()) - m10645I(view2));
            }
        }

        /* renamed from: T */
        private void m10674T(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.m10726l()) {
                    appBarLayout.m10718t(appBarLayout.m10716v(view));
                }
            }
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        /* renamed from: J */
        float mo10644J(View view) {
            int i;
            if (!(view instanceof AppBarLayout)) {
                return 0.0f;
            }
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int totalScrollRange = appBarLayout.getTotalScrollRange();
            int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
            int R = m10676R(appBarLayout);
            if ((downNestedPreScrollRange == 0 || totalScrollRange + R > downNestedPreScrollRange) && (i = totalScrollRange - downNestedPreScrollRange) != 0) {
                return (R / i) + 1.0f;
            }
            return 0.0f;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        /* renamed from: L */
        int mo10642L(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : super.mo10642L(view);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Nullable
        /* renamed from: Q */
        public AppBarLayout mo10646H(@NonNull List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: e */
        public boolean mo8651e(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: h */
        public boolean mo8679h(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
            m10675S(view, view2);
            m10674T(view, view2);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: i */
        public void mo10673i(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
            if (view2 instanceof AppBarLayout) {
                ViewCompat.m19195h0(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3333h.m18978b());
                ViewCompat.m19195h0(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3334i.m18978b());
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: w */
        public boolean mo10672w(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull Rect rect, boolean z) {
            AppBarLayout Q = mo10646H(coordinatorLayout.m19914v(view));
            if (Q == null) {
                return false;
            }
            rect.offset(view.getLeft(), view.getTop());
            Rect rect2 = this.f10028d;
            rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
            if (rect2.contains(rect)) {
                return false;
            }
            Q.setExpanded(false, !z);
            return true;
        }
    }

    public AppBarLayout(@NonNull Context context) {
        this(context, null);
    }

    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C1027R.attr.appBarLayoutStyle);
    }

    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f9946w), attributeSet, i);
        this.f9948g = -1;
        this.f9949h = -1;
        this.f9950i = -1;
        this.f9952k = 0;
        Context context2 = getContext();
        setOrientation(1);
        if (Build.VERSION.SDK_INT >= 21) {
            ViewUtilsLollipop.m10626a(this);
            ViewUtilsLollipop.m10624c(this, attributeSet, i, f9946w);
        }
        TypedArray h = ThemeEnforcement.m9445h(context2, attributeSet, C1027R.styleable.AppBarLayout, i, f9946w, new int[0]);
        ViewCompat.m19177q0(this, h.getDrawable(C1027R.styleable.AppBarLayout_android_background));
        if (getBackground() instanceof ColorDrawable) {
            ColorDrawable colorDrawable = (ColorDrawable) getBackground();
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            materialShapeDrawable.m9328W(ColorStateList.valueOf(colorDrawable.getColor()));
            materialShapeDrawable.m9338M(context2);
            ViewCompat.m19177q0(this, materialShapeDrawable);
        }
        if (h.hasValue(C1027R.styleable.AppBarLayout_expanded)) {
            m10720r(h.getBoolean(C1027R.styleable.AppBarLayout_expanded, false), false, false);
        }
        if (Build.VERSION.SDK_INT >= 21 && h.hasValue(C1027R.styleable.AppBarLayout_elevation)) {
            ViewUtilsLollipop.m10625b(this, h.getDimensionPixelSize(C1027R.styleable.AppBarLayout_elevation, 0));
        }
        if (Build.VERSION.SDK_INT >= 26) {
            if (h.hasValue(C1027R.styleable.AppBarLayout_android_keyboardNavigationCluster)) {
                setKeyboardNavigationCluster(h.getBoolean(C1027R.styleable.AppBarLayout_android_keyboardNavigationCluster, false));
            }
            if (h.hasValue(C1027R.styleable.AppBarLayout_android_touchscreenBlocksFocus)) {
                setTouchscreenBlocksFocus(h.getBoolean(C1027R.styleable.AppBarLayout_android_touchscreenBlocksFocus, false));
            }
        }
        this.f9958q = h.getBoolean(C1027R.styleable.AppBarLayout_liftOnScroll, false);
        this.f9959r = h.getResourceId(C1027R.styleable.AppBarLayout_liftOnScrollTargetViewId, -1);
        setStatusBarForeground(h.getDrawable(C1027R.styleable.AppBarLayout_statusBarForeground));
        h.recycle();
        ViewCompat.m19243A0(this, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.appbar.AppBarLayout.1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            /* renamed from: a */
            public WindowInsetsCompat mo9036a(View view, WindowInsetsCompat windowInsetsCompat) {
                AppBarLayout.this.m10724n(windowInsetsCompat);
                return windowInsetsCompat;
            }
        });
    }

    /* renamed from: c */
    private void m10735c() {
        WeakReference<View> weakReference = this.f9960s;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f9960s = null;
    }

    @Nullable
    /* renamed from: d */
    private View m10734d(@Nullable View view) {
        int i;
        View view2 = null;
        if (this.f9960s == null && (i = this.f9959r) != -1) {
            View findViewById = view != null ? view.findViewById(i) : null;
            View view3 = findViewById;
            if (findViewById == null) {
                view3 = findViewById;
                if (getParent() instanceof ViewGroup) {
                    view3 = ((ViewGroup) getParent()).findViewById(this.f9959r);
                }
            }
            if (view3 != null) {
                this.f9960s = new WeakReference<>(view3);
            }
        }
        WeakReference<View> weakReference = this.f9960s;
        if (weakReference != null) {
            view2 = weakReference.get();
        }
        return view2;
    }

    /* renamed from: i */
    private boolean m10729i() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((LayoutParams) getChildAt(i).getLayoutParams()).m10678c()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: k */
    private void m10727k() {
        this.f9948g = -1;
        this.f9949h = -1;
        this.f9950i = -1;
    }

    /* renamed from: r */
    private void m10720r(boolean z, boolean z2, boolean z3) {
        int i = z ? 1 : 2;
        int i2 = 0;
        int i3 = z2 ? 4 : 0;
        if (z3) {
            i2 = 8;
        }
        this.f9952k = i | i3 | i2;
        requestLayout();
    }

    /* renamed from: s */
    private boolean m10719s(boolean z) {
        if (this.f9956o == z) {
            return false;
        }
        this.f9956o = z;
        refreshDrawableState();
        return true;
    }

    /* renamed from: u */
    private boolean m10717u() {
        return this.f9963v != null && getTopInset() > 0;
    }

    /* renamed from: w */
    private boolean m10715w() {
        boolean z = false;
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            z = false;
            if (childAt.getVisibility() != 8) {
                z = false;
                if (!ViewCompat.m19164x(childAt)) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: x */
    private void m10714x(@NonNull final MaterialShapeDrawable materialShapeDrawable, boolean z) {
        float dimension = getResources().getDimension(C1027R.dimen.design_appbar_elevation);
        float f = z ? 0.0f : dimension;
        if (!z) {
            dimension = 0.0f;
        }
        ValueAnimator valueAnimator = this.f9961t;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, dimension);
        this.f9961t = ofFloat;
        ofFloat.setDuration(getResources().getInteger(C1027R.integer.app_bar_elevation_anim_duration));
        this.f9961t.setInterpolator(AnimationUtils.f9923a);
        this.f9961t.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.google.android.material.appbar.AppBarLayout.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator2) {
                materialShapeDrawable.m9329V(((Float) valueAnimator2.getAnimatedValue()).floatValue());
            }
        });
        this.f9961t.start();
    }

    /* renamed from: y */
    private void m10713y() {
        setWillNotDraw(!m10717u());
    }

    /* renamed from: a */
    public void m10737a(@Nullable BaseOnOffsetChangedListener baseOnOffsetChangedListener) {
        if (this.f9954m == null) {
            this.f9954m = new ArrayList();
        }
        if (baseOnOffsetChangedListener != null && !this.f9954m.contains(baseOnOffsetChangedListener)) {
            this.f9954m.add(baseOnOffsetChangedListener);
        }
    }

    /* renamed from: b */
    public void m10736b(OnOffsetChangedListener onOffsetChangedListener) {
        m10737a(onOffsetChangedListener);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        if (m10717u()) {
            int save = canvas.save();
            canvas.translate(0.0f, -this.f9947f);
            this.f9963v.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f9963v;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    /* renamed from: f */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (Build.VERSION.SDK_INT < 19 || !(layoutParams instanceof LinearLayout.LayoutParams)) ? layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams) : new LayoutParams((LinearLayout.LayoutParams) layoutParams);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<AppBarLayout> getBehavior() {
        return new Behavior();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    int getDownNestedPreScrollRange() {
        /*
            Method dump skipped, instructions count: 189
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.getDownNestedPreScrollRange():int");
    }

    int getDownNestedScrollRange() {
        int i;
        int i2 = this.f9950i;
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
            int i7 = layoutParams.f9987a;
            i = i4;
            if ((i7 & 1) == 0) {
                break;
            }
            i4 += measuredHeight + i5 + i6;
            if ((i7 & 2) != 0) {
                i = i4 - ViewCompat.m19242B(childAt);
                break;
            }
            i3++;
        }
        int max = Math.max(0, i);
        this.f9950i = max;
        return max;
    }

    @IdRes
    public int getLiftOnScrollTargetViewId() {
        return this.f9959r;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int B = ViewCompat.m19242B(this);
        if (B == 0) {
            int childCount = getChildCount();
            B = childCount >= 1 ? ViewCompat.m19242B(getChildAt(childCount - 1)) : 0;
            if (B == 0) {
                return getHeight() / 3;
            }
        }
        return (B * 2) + topInset;
    }

    int getPendingAction() {
        return this.f9952k;
    }

    @Nullable
    public Drawable getStatusBarForeground() {
        return this.f9963v;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    @VisibleForTesting
    final int getTopInset() {
        WindowInsetsCompat windowInsetsCompat = this.f9953l;
        return windowInsetsCompat != null ? windowInsetsCompat.m19093h() : 0;
    }

    public final int getTotalScrollRange() {
        int i;
        int i2 = this.f9948g;
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
            int i5 = layoutParams.f9987a;
            i = i4;
            if ((i5 & 1) == 0) {
                break;
            }
            int i6 = i4 + measuredHeight + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
            i4 = i6;
            if (i3 == 0) {
                i4 = i6;
                if (ViewCompat.m19164x(childAt)) {
                    i4 = i6 - getTopInset();
                }
            }
            if ((i5 & 2) != 0) {
                i = i4 - ViewCompat.m19242B(childAt);
                break;
            }
            i3++;
        }
        int max = Math.max(0, i);
        this.f9948g = max;
        return max;
    }

    int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    /* renamed from: h */
    boolean m10730h() {
        return this.f9951j;
    }

    /* renamed from: j */
    boolean m10728j() {
        return getTotalScrollRange() != 0;
    }

    /* renamed from: l */
    public boolean m10726l() {
        return this.f9958q;
    }

    /* renamed from: m */
    void m10725m(int i) {
        this.f9947f = i;
        if (!willNotDraw()) {
            ViewCompat.m19203d0(this);
        }
        List<BaseOnOffsetChangedListener> list = this.f9954m;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                BaseOnOffsetChangedListener baseOnOffsetChangedListener = this.f9954m.get(i2);
                if (baseOnOffsetChangedListener != null) {
                    baseOnOffsetChangedListener.mo10657a(this, i);
                }
            }
        }
    }

    /* renamed from: n */
    WindowInsetsCompat m10724n(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.m19164x(this) ? windowInsetsCompat : null;
        if (!ObjectsCompat.m19346a(this.f9953l, windowInsetsCompat2)) {
            this.f9953l = windowInsetsCompat2;
            m10713y();
            requestLayout();
        }
        return windowInsetsCompat;
    }

    /* renamed from: o */
    public void m10723o(@Nullable BaseOnOffsetChangedListener baseOnOffsetChangedListener) {
        List<BaseOnOffsetChangedListener> list = this.f9954m;
        if (list != null && baseOnOffsetChangedListener != null) {
            list.remove(baseOnOffsetChangedListener);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.m9282e(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        if (this.f9962u == null) {
            this.f9962u = new int[4];
        }
        int[] iArr = this.f9962u;
        int[] onCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        iArr[0] = this.f9956o ? C1027R.attr.state_liftable : -C1027R.attr.state_liftable;
        iArr[1] = (!this.f9956o || !this.f9957p) ? -C1027R.attr.state_lifted : C1027R.attr.state_lifted;
        iArr[2] = this.f9956o ? C1027R.attr.state_collapsible : -C1027R.attr.state_collapsible;
        iArr[3] = (!this.f9956o || !this.f9957p) ? -C1027R.attr.state_collapsed : C1027R.attr.state_collapsed;
        return LinearLayout.mergeDrawableStates(onCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m10735c();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (ViewCompat.m19164x(this) && m10715w()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                ViewCompat.m19212Y(getChildAt(childCount), topInset);
            }
        }
        m10727k();
        this.f9951j = false;
        int childCount2 = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount2) {
                break;
            } else if (((LayoutParams) getChildAt(i5).getLayoutParams()).m10679b() != null) {
                this.f9951j = true;
                break;
            } else {
                i5++;
            }
        }
        Drawable drawable = this.f9963v;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (!this.f9955n) {
            boolean z2 = true;
            if (!this.f9958q) {
                z2 = m10729i();
            }
            m10719s(z2);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824 && ViewCompat.m19164x(this) && m10715w()) {
            int measuredHeight = getMeasuredHeight();
            if (mode == Integer.MIN_VALUE) {
                measuredHeight = MathUtils.m19451b(getMeasuredHeight() + getTopInset(), 0, View.MeasureSpec.getSize(i2));
            } else if (mode == 0) {
                measuredHeight += getTopInset();
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
        m10727k();
    }

    /* renamed from: p */
    public void m10722p(OnOffsetChangedListener onOffsetChangedListener) {
        m10723o(onOffsetChangedListener);
    }

    /* renamed from: q */
    void m10721q() {
        this.f9952k = 0;
    }

    @Override // android.view.View
    @RequiresApi
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.m9283d(this, f);
    }

    public void setExpanded(boolean z) {
        setExpanded(z, ViewCompat.m19218S(this));
    }

    public void setExpanded(boolean z, boolean z2) {
        m10720r(z, z2, true);
    }

    public void setLiftOnScroll(boolean z) {
        this.f9958q = z;
    }

    public void setLiftOnScrollTargetViewId(@IdRes int i) {
        this.f9959r = i;
        m10735c();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i == 1) {
            super.setOrientation(i);
            return;
        }
        throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
    }

    public void setStatusBarForeground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f9963v;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f9963v = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f9963v.setState(getDrawableState());
                }
                DrawableCompat.m19500m(this.f9963v, ViewCompat.m19244A(this));
                this.f9963v.setVisible(getVisibility() == 0, false);
                this.f9963v.setCallback(this);
            }
            m10713y();
            ViewCompat.m19203d0(this);
        }
    }

    public void setStatusBarForegroundColor(@ColorInt int i) {
        setStatusBarForeground(new ColorDrawable(i));
    }

    public void setStatusBarForegroundResource(@DrawableRes int i) {
        setStatusBarForeground(AppCompatResources.m22069d(getContext(), i));
    }

    @Deprecated
    public void setTargetElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            ViewUtilsLollipop.m10625b(this, f);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f9963v;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
    }

    /* renamed from: t */
    boolean m10718t(boolean z) {
        if (this.f9957p == z) {
            return false;
        }
        this.f9957p = z;
        refreshDrawableState();
        if (!this.f9958q || !(getBackground() instanceof MaterialShapeDrawable)) {
            return true;
        }
        m10714x((MaterialShapeDrawable) getBackground(), z);
        return true;
    }

    /* renamed from: v */
    boolean m10716v(@Nullable View view) {
        View d = m10734d(view);
        if (d != null) {
            view = d;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(@NonNull Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f9963v;
    }
}
