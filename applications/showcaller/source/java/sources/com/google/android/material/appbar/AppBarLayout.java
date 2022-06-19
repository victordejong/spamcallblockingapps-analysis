package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
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
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.C0615a;
import androidx.customview.view.AbsSavedState;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p041h.p045g.C1542a;
import p020b.p041h.p049k.C1592c;
import p020b.p041h.p050l.AbstractC1667k;
import p020b.p041h.p050l.AbstractC1673q;
import p020b.p041h.p050l.C1615e0;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.AbstractC1644f;
import p020b.p041h.p050l.p051f0.C1634c;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1891g;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p097m.C1897a;
import p078c.p084c.p085a.p096b.p108x.C1938h;
import p078c.p084c.p085a.p096b.p108x.C1942i;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout.class */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.AbstractC0529b {

    /* renamed from: d */
    private static final int f35994d = C1895k.Widget_Design_AppBarLayout;

    /* renamed from: e */
    private int f35995e;

    /* renamed from: f */
    private int f35996f;

    /* renamed from: g */
    private int f35997g;

    /* renamed from: h */
    private int f35998h;

    /* renamed from: i */
    private boolean f35999i;

    /* renamed from: j */
    private int f36000j;

    /* renamed from: k */
    private C1615e0 f36001k;

    /* renamed from: l */
    private List<AbstractC7994c> f36002l;

    /* renamed from: m */
    private boolean f36003m;

    /* renamed from: n */
    private boolean f36004n;

    /* renamed from: o */
    private boolean f36005o;

    /* renamed from: p */
    private boolean f36006p;

    /* renamed from: q */
    private int f36007q;

    /* renamed from: r */
    private WeakReference<View> f36008r;

    /* renamed from: s */
    private ValueAnimator f36009s;

    /* renamed from: t */
    private int[] f36010t;

    /* renamed from: u */
    private Drawable f36011u;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior.class */
    public static class BaseBehavior<T extends AppBarLayout> extends HeaderBehavior<T> {

        /* renamed from: k */
        private int f36012k;

        /* renamed from: l */
        private int f36013l;

        /* renamed from: m */
        private ValueAnimator f36014m;

        /* renamed from: n */
        private int f36015n = -1;

        /* renamed from: o */
        private boolean f36016o;

        /* renamed from: p */
        private float f36017p;

        /* renamed from: q */
        private WeakReference<View> f36018q;

        /* renamed from: r */
        private AbstractC7991d f36019r;

        /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState.class */
        public static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new C7987a();

            /* renamed from: f */
            int f36020f;

            /* renamed from: g */
            float f36021g;

            /* renamed from: h */
            boolean f36022h;

            /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$SavedState$a */
            /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState$a.class */
            static final class C7987a implements Parcelable.ClassLoaderCreator<SavedState> {
                C7987a() {
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
                this.f36020f = parcel.readInt();
                this.f36021g = parcel.readFloat();
                this.f36022h = parcel.readByte() != 0;
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.f36020f);
                parcel.writeFloat(this.f36021g);
                parcel.writeByte(this.f36022h ? (byte) 1 : (byte) 0);
            }
        }

        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$a.class */
        public class C7988a implements ValueAnimator.AnimatorUpdateListener {

            /* renamed from: a */
            final /* synthetic */ CoordinatorLayout f36023a;

            /* renamed from: b */
            final /* synthetic */ AppBarLayout f36024b;

            C7988a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
                BaseBehavior.this = r4;
                this.f36023a = coordinatorLayout;
                this.f36024b = appBarLayout;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BaseBehavior.this.m5684P(this.f36023a, this.f36024b, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        }

        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$b */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$b.class */
        public class C7989b implements AbstractC1644f {

            /* renamed from: a */
            final /* synthetic */ CoordinatorLayout f36026a;

            /* renamed from: b */
            final /* synthetic */ AppBarLayout f36027b;

            /* renamed from: c */
            final /* synthetic */ View f36028c;

            /* renamed from: d */
            final /* synthetic */ int f36029d;

            C7989b(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
                BaseBehavior.this = r4;
                this.f36026a = coordinatorLayout;
                this.f36027b = appBarLayout;
                this.f36028c = view;
                this.f36029d = i;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // p020b.p041h.p050l.p051f0.AbstractC1644f
            /* renamed from: a */
            public boolean mo5399a(View view, AbstractC1644f.AbstractC1645a abstractC1645a) {
                BaseBehavior.this.mo5420q(this.f36026a, this.f36027b, this.f36028c, 0, this.f36029d, new int[]{0, 0}, 1);
                return true;
            }
        }

        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$c */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$c.class */
        public class C7990c implements AbstractC1644f {

            /* renamed from: a */
            final /* synthetic */ AppBarLayout f36031a;

            /* renamed from: b */
            final /* synthetic */ boolean f36032b;

            C7990c(AppBarLayout appBarLayout, boolean z) {
                BaseBehavior.this = r4;
                this.f36031a = appBarLayout;
                this.f36032b = z;
            }

            @Override // p020b.p041h.p050l.p051f0.AbstractC1644f
            /* renamed from: a */
            public boolean mo5399a(View view, AbstractC1644f.AbstractC1645a abstractC1645a) {
                this.f36031a.setExpanded(this.f36032b);
                return true;
            }
        }

        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$d */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$d.class */
        public static abstract class AbstractC7991d<T extends AppBarLayout> {
        }

        public BaseBehavior() {
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /* renamed from: S */
        private void m5749S(CoordinatorLayout coordinatorLayout, T t, View view) {
            if (mo5687M() != (-t.getTotalScrollRange()) && view.canScrollVertically(1)) {
                m5748T(coordinatorLayout, t, C1634c.C1635a.f6294m, false);
            }
            if (mo5687M() != 0) {
                if (!view.canScrollVertically(-1)) {
                    m5748T(coordinatorLayout, t, C1634c.C1635a.f6295n, true);
                    return;
                }
                int i = -t.getDownNestedPreScrollRange();
                if (i == 0) {
                    return;
                }
                C1679w.m29281n0(coordinatorLayout, C1634c.C1635a.f6295n, null, new C7989b(coordinatorLayout, t, view, i));
            }
        }

        /* renamed from: T */
        private void m5748T(CoordinatorLayout coordinatorLayout, T t, C1634c.C1635a c1635a, boolean z) {
            C1679w.m29281n0(coordinatorLayout, c1635a, null, new C7990c(t, z));
        }

        /* renamed from: U */
        private void m5747U(CoordinatorLayout coordinatorLayout, T t, int i, float f) {
            int abs = Math.abs(mo5687M() - i);
            float abs2 = Math.abs(f);
            m5746V(coordinatorLayout, t, i, abs2 > 0.0f ? Math.round((abs / abs2) * 1000.0f) * 3 : (int) (((abs / t.getHeight()) + 1.0f) * 150.0f));
        }

        /* renamed from: V */
        private void m5746V(CoordinatorLayout coordinatorLayout, T t, int i, int i2) {
            int mo5687M = mo5687M();
            if (mo5687M == i) {
                ValueAnimator valueAnimator = this.f36014m;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.f36014m.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.f36014m;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.f36014m = valueAnimator3;
                valueAnimator3.setInterpolator(C1897a.f6817e);
                this.f36014m.addUpdateListener(new C7988a(coordinatorLayout, t));
            } else {
                valueAnimator2.cancel();
            }
            this.f36014m.setDuration(Math.min(i2, 600));
            this.f36014m.setIntValues(mo5687M, i);
            this.f36014m.start();
        }

        /* renamed from: X */
        private boolean m5744X(CoordinatorLayout coordinatorLayout, T t, View view) {
            return t.m5766j() && coordinatorLayout.getHeight() - view.getHeight() <= t.getHeight();
        }

        /* renamed from: Y */
        private static boolean m5743Y(int i, int i2) {
            return (i & i2) == i2;
        }

        /* renamed from: Z */
        private View m5742Z(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if ((childAt instanceof AbstractC1667k) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        /* renamed from: a0 */
        private static View m5741a0(AppBarLayout appBarLayout, int i) {
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
        private int m5740b0(T t, int i) {
            int childCount = t.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = t.getChildAt(i2);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int i3 = top;
                int i4 = bottom;
                if (m5743Y(layoutParams.m5719a(), 32)) {
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
        private int m5737e0(T t, int i) {
            int abs = Math.abs(i);
            int childCount = t.getChildCount();
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    break;
                }
                View childAt = t.getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Interpolator m5718b = layoutParams.m5718b();
                if (abs < childAt.getTop() || abs > childAt.getBottom()) {
                    i2++;
                } else if (m5718b != null) {
                    int m5719a = layoutParams.m5719a();
                    int i3 = 0;
                    if ((m5719a & 1) != 0) {
                        int height = 0 + childAt.getHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                        i3 = height;
                        if ((m5719a & 2) != 0) {
                            i3 = height - C1679w.m29344D(childAt);
                        }
                    }
                    int i4 = i3;
                    if (C1679w.m29258z(childAt)) {
                        i4 = i3 - t.getTopInset();
                    }
                    if (i4 > 0) {
                        int top = childAt.getTop();
                        float f = i4;
                        return Integer.signum(i) * (childAt.getTop() + Math.round(f * m5718b.getInterpolation((abs - top) / f)));
                    }
                }
            }
            return i;
        }

        /* renamed from: p0 */
        private boolean m5734p0(CoordinatorLayout coordinatorLayout, T t) {
            List<View> m33558w = coordinatorLayout.m33558w(t);
            int size = m33558w.size();
            boolean z = false;
            for (int i = 0; i < size; i++) {
                CoordinatorLayout.Behavior m33534f = ((CoordinatorLayout.C0532e) m33558w.get(i).getLayoutParams()).m33534f();
                if (m33534f instanceof ScrollingViewBehavior) {
                    if (((ScrollingViewBehavior) m33534f).m5679K() != 0) {
                        z = true;
                    }
                    return z;
                }
            }
            return false;
        }

        /* renamed from: q0 */
        private void m5733q0(CoordinatorLayout coordinatorLayout, T t) {
            int i;
            int i2;
            int mo5687M = mo5687M();
            int m5740b0 = m5740b0(t, mo5687M);
            if (m5740b0 >= 0) {
                View childAt = t.getChildAt(m5740b0);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int m5719a = layoutParams.m5719a();
                if ((m5719a & 17) != 17) {
                    return;
                }
                int i3 = -childAt.getTop();
                int i4 = -childAt.getBottom();
                int i5 = i4;
                if (m5740b0 == t.getChildCount() - 1) {
                    i5 = i4 + t.getTopInset();
                }
                if (m5743Y(m5719a, 2)) {
                    i = i5 + C1679w.m29344D(childAt);
                    i2 = i3;
                } else {
                    i2 = i3;
                    i = i5;
                    if (m5743Y(m5719a, 5)) {
                        i = C1679w.m29344D(childAt) + i5;
                        if (mo5687M < i) {
                            i2 = i;
                            i = i5;
                        } else {
                            i2 = i3;
                        }
                    }
                }
                int i6 = i2;
                int i7 = i;
                if (m5743Y(m5719a, 32)) {
                    i6 = i2 + ((LinearLayout.LayoutParams) layoutParams).topMargin;
                    i7 = i - ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                }
                int i8 = i6;
                if (mo5687M < (i7 + i6) / 2) {
                    i8 = i7;
                }
                m5747U(coordinatorLayout, t, C1542a.m29769b(i8, -t.getTotalScrollRange(), 0), 0.0f);
            }
        }

        /* renamed from: r0 */
        private void m5732r0(CoordinatorLayout coordinatorLayout, T t) {
            C1679w.m29285l0(coordinatorLayout, C1634c.C1635a.f6294m.m29441b());
            C1679w.m29285l0(coordinatorLayout, C1634c.C1635a.f6295n.m29441b());
            View m5742Z = m5742Z(coordinatorLayout);
            if (m5742Z == null || t.getTotalScrollRange() == 0 || !(((CoordinatorLayout.C0532e) m5742Z.getLayoutParams()).m33534f() instanceof ScrollingViewBehavior)) {
                return;
            }
            m5749S(coordinatorLayout, t, m5742Z);
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x004e, code lost:
            if ((-r7) >= ((r0.getBottom() - r0) - r6.getTopInset())) goto L12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0051, code lost:
            r13 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0075, code lost:
            if ((-r7) >= ((r0.getBottom() - r0) - r6.getTopInset())) goto L12;
         */
        /* renamed from: s0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void m5731s0(androidx.coordinatorlayout.widget.CoordinatorLayout r5, T r6, int r7, int r8, boolean r9) {
            /*
                r4 = this;
                r0 = r6
                r1 = r7
                android.view.View r0 = m5741a0(r0, r1)
                r10 = r0
                r0 = r10
                if (r0 == 0) goto Lac
                r0 = r10
                android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$LayoutParams r0 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r0
                int r0 = r0.m5719a()
                r11 = r0
                r0 = 0
                r12 = r0
                r0 = r12
                r13 = r0
                r0 = r11
                r1 = 1
                r0 = r0 & r1
                if (r0 == 0) goto L7b
                r0 = r10
                int r0 = p020b.p041h.p050l.C1679w.m29344D(r0)
                r14 = r0
                r0 = r8
                if (r0 <= 0) goto L57
                r0 = r11
                r1 = 12
                r0 = r0 & r1
                if (r0 == 0) goto L57
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
                if (r0 < r1) goto L7b
            L51:
                r0 = 1
                r13 = r0
                goto L7b
            L57:
                r0 = r12
                r13 = r0
                r0 = r11
                r1 = 2
                r0 = r0 & r1
                if (r0 == 0) goto L7b
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
                if (r0 < r1) goto L7b
                goto L51
            L7b:
                r0 = r6
                boolean r0 = r0.m5764l()
                if (r0 == 0) goto L8d
                r0 = r6
                r1 = r4
                r2 = r5
                android.view.View r1 = r1.m5742Z(r2)
                boolean r0 = r0.m5754v(r1)
                r13 = r0
            L8d:
                r0 = r6
                r1 = r13
                boolean r0 = r0.m5756t(r1)
                r13 = r0
                r0 = r9
                if (r0 != 0) goto La8
                r0 = r13
                if (r0 == 0) goto Lac
                r0 = r4
                r1 = r5
                r2 = r6
                boolean r0 = r0.m5734p0(r1, r2)
                if (r0 == 0) goto Lac
            La8:
                r0 = r6
                r0.jumpDrawablesToCurrentState()
            Lac:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.m5731s0(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, int, int, boolean):void");
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: M */
        int mo5687M() {
            return mo5670E() + this.f36012k;
        }

        /* renamed from: W */
        public boolean mo5692H(T t) {
            if (this.f36019r == null) {
                WeakReference<View> weakReference = this.f36018q;
                boolean z = true;
                if (weakReference != null) {
                    View view = weakReference.get();
                    z = view != null && view.isShown() && !view.canScrollVertically(-1);
                }
                return z;
            }
            throw null;
        }

        /* renamed from: c0 */
        public int mo5689K(T t) {
            return -t.getDownNestedScrollRange();
        }

        /* renamed from: d0 */
        public int mo5688L(T t) {
            return t.getTotalScrollRange();
        }

        /* renamed from: f0 */
        public void mo5686N(CoordinatorLayout coordinatorLayout, T t) {
            m5733q0(coordinatorLayout, t);
            if (t.m5764l()) {
                t.m5756t(t.m5754v(m5742Z(coordinatorLayout)));
            }
        }

        /* renamed from: g0 */
        public boolean mo3828l(CoordinatorLayout coordinatorLayout, T t, int i) {
            boolean mo3828l = super.mo3828l(coordinatorLayout, t, i);
            int pendingAction = t.getPendingAction();
            int i2 = this.f36015n;
            if (i2 >= 0 && (pendingAction & 8) == 0) {
                View childAt = t.getChildAt(i2);
                m5684P(coordinatorLayout, t, (-childAt.getBottom()) + (this.f36016o ? C1679w.m29344D(childAt) + t.getTopInset() : Math.round(childAt.getHeight() * this.f36017p)));
            } else if (pendingAction != 0) {
                boolean z = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i3 = -t.getUpNestedPreScrollRange();
                    if (z) {
                        m5747U(coordinatorLayout, t, i3, 0.0f);
                    } else {
                        m5684P(coordinatorLayout, t, i3);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        m5747U(coordinatorLayout, t, 0, 0.0f);
                    } else {
                        m5684P(coordinatorLayout, t, 0);
                    }
                }
            }
            t.m5759q();
            this.f36015n = -1;
            mo5668G(C1542a.m29769b(mo5670E(), -t.getTotalScrollRange(), 0));
            m5731s0(coordinatorLayout, t, mo5670E(), 0, true);
            t.m5763m(mo5670E());
            m5732r0(coordinatorLayout, t);
            return mo3828l;
        }

        /* renamed from: h0 */
        public boolean mo5673m(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3, int i4) {
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.C0532e) t.getLayoutParams())).height == -2) {
                coordinatorLayout.m33585N(t, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
                return true;
            }
            return super.mo5673m(coordinatorLayout, t, i, i2, i3, i4);
        }

        /* renamed from: i0 */
        public void mo5420q(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int[] iArr, int i3) {
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
                    iArr[1] = m5685O(coordinatorLayout, t, i2, i5, i4);
                }
            }
            if (t.m5764l()) {
                t.m5756t(t.m5754v(view));
            }
        }

        /* renamed from: j0 */
        public void mo5416t(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            if (i4 < 0) {
                iArr[1] = m5685O(coordinatorLayout, t, i4, -t.getDownNestedScrollRange(), 0);
            }
            if (i4 == 0) {
                m5732r0(coordinatorLayout, t);
            }
        }

        /* renamed from: k0 */
        public void mo5412x(CoordinatorLayout coordinatorLayout, T t, Parcelable parcelable) {
            if (!(parcelable instanceof SavedState)) {
                super.mo5412x(coordinatorLayout, t, parcelable);
                this.f36015n = -1;
                return;
            }
            SavedState savedState = (SavedState) parcelable;
            super.mo5412x(coordinatorLayout, t, savedState.m33061a());
            this.f36015n = savedState.f36020f;
            this.f36017p = savedState.f36021g;
            this.f36016o = savedState.f36022h;
        }

        /* renamed from: l0 */
        public Parcelable mo5411y(CoordinatorLayout coordinatorLayout, T t) {
            Parcelable mo5411y = super.mo5411y(coordinatorLayout, t);
            int mo5670E = mo5670E();
            int childCount = t.getChildCount();
            boolean z = false;
            for (int i = 0; i < childCount; i++) {
                View childAt = t.getChildAt(i);
                int bottom = childAt.getBottom() + mo5670E;
                if (childAt.getTop() + mo5670E <= 0 && bottom >= 0) {
                    SavedState savedState = new SavedState(mo5411y);
                    savedState.f36020f = i;
                    if (bottom == C1679w.m29344D(childAt) + t.getTopInset()) {
                        z = true;
                    }
                    savedState.f36022h = z;
                    savedState.f36021g = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return mo5411y;
        }

        /* renamed from: m0 */
        public boolean mo5462A(CoordinatorLayout coordinatorLayout, T t, View view, View view2, int i, int i2) {
            ValueAnimator valueAnimator;
            boolean z = (i & 2) != 0 && (t.m5764l() || m5744X(coordinatorLayout, t, view));
            if (z && (valueAnimator = this.f36014m) != null) {
                valueAnimator.cancel();
            }
            this.f36018q = null;
            this.f36013l = i2;
            return z;
        }

        /* renamed from: n0 */
        public void mo5461C(CoordinatorLayout coordinatorLayout, T t, View view, int i) {
            if (this.f36013l == 0 || i == 1) {
                m5733q0(coordinatorLayout, t);
                if (t.m5764l()) {
                    t.m5756t(t.m5754v(view));
                }
            }
            this.f36018q = new WeakReference<>(view);
        }

        /* renamed from: o0 */
        public int mo5683Q(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3) {
            int i4;
            int mo5687M = mo5687M();
            if (i2 == 0 || mo5687M < i2 || mo5687M > i3) {
                this.f36012k = 0;
                i4 = 0;
            } else {
                int m29769b = C1542a.m29769b(i, i2, i3);
                i4 = 0;
                if (mo5687M != m29769b) {
                    int m5737e0 = t.m5768h() ? m5737e0(t, m29769b) : m29769b;
                    boolean mo5668G = mo5668G(m5737e0);
                    int i5 = mo5687M - m29769b;
                    this.f36012k = m29769b - m5737e0;
                    if (!mo5668G && t.m5768h()) {
                        coordinatorLayout.m33565p(t);
                    }
                    t.m5763m(mo5670E());
                    m5731s0(coordinatorLayout, t, m29769b, m29769b < mo5687M ? -1 : 1, false);
                    i4 = i5;
                }
            }
            m5732r0(coordinatorLayout, t);
            return i4;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$Behavior.class */
    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        /* renamed from: E */
        public /* bridge */ /* synthetic */ int mo5670E() {
            return super.mo5670E();
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        /* renamed from: G */
        public /* bridge */ /* synthetic */ boolean mo5668G(int i) {
            return super.mo5668G(i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: g0 */
        public /* bridge */ /* synthetic */ boolean mo5727g0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            return super.mo3828l(coordinatorLayout, appBarLayout, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: h0 */
        public /* bridge */ /* synthetic */ boolean mo5726h0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3, int i4) {
            return super.mo5673m(coordinatorLayout, appBarLayout, i, i2, i3, i4);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: i0 */
        public /* bridge */ /* synthetic */ void mo5725i0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
            super.mo5420q(coordinatorLayout, appBarLayout, view, i, i2, iArr, i3);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: j0 */
        public /* bridge */ /* synthetic */ void mo5724j0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            super.mo5416t(coordinatorLayout, appBarLayout, view, i, i2, i3, i4, i5, iArr);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: k0 */
        public /* bridge */ /* synthetic */ void mo5723k0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            super.mo5412x(coordinatorLayout, appBarLayout, parcelable);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: l0 */
        public /* bridge */ /* synthetic */ Parcelable mo5722l0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            return super.mo5411y(coordinatorLayout, appBarLayout);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: m0 */
        public /* bridge */ /* synthetic */ boolean mo5721m0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i, int i2) {
            return super.mo5462A(coordinatorLayout, appBarLayout, view, view2, i, i2);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: n0 */
        public /* bridge */ /* synthetic */ void mo5720n0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
            super.mo5461C(coordinatorLayout, appBarLayout, view, i);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$LayoutParams.class */
    public static class LayoutParams extends LinearLayout.LayoutParams {

        /* renamed from: a */
        int f36034a;

        /* renamed from: b */
        Interpolator f36035b;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f36034a = 1;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f36034a = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1896l.AppBarLayout_Layout);
            this.f36034a = obtainStyledAttributes.getInt(C1896l.AppBarLayout_Layout_layout_scrollFlags, 0);
            int i = C1896l.AppBarLayout_Layout_layout_scrollInterpolator;
            if (obtainStyledAttributes.hasValue(i)) {
                this.f36035b = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(i, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f36034a = 1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f36034a = 1;
        }

        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f36034a = 1;
        }

        /* renamed from: a */
        public int m5719a() {
            return this.f36034a;
        }

        /* renamed from: b */
        public Interpolator m5718b() {
            return this.f36035b;
        }

        /* renamed from: c */
        boolean m5717c() {
            int i = this.f36034a;
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
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1896l.ScrollingViewBehavior_Layout);
            m5675O(obtainStyledAttributes.getDimensionPixelSize(C1896l.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            obtainStyledAttributes.recycle();
        }

        /* renamed from: R */
        private static int m5715R(AppBarLayout appBarLayout) {
            CoordinatorLayout.Behavior m33534f = ((CoordinatorLayout.C0532e) appBarLayout.getLayoutParams()).m33534f();
            if (m33534f instanceof BaseBehavior) {
                return ((BaseBehavior) m33534f).mo5687M();
            }
            return 0;
        }

        /* renamed from: S */
        private void m5714S(View view, View view2) {
            CoordinatorLayout.Behavior m33534f = ((CoordinatorLayout.C0532e) view2.getLayoutParams()).m33534f();
            if (m33534f instanceof BaseBehavior) {
                C1679w.m29305b0(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) m33534f).f36012k) + m5677M()) - m5681I(view2));
            }
        }

        /* renamed from: T */
        private void m5713T(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (!appBarLayout.m5764l()) {
                    return;
                }
                appBarLayout.m5756t(appBarLayout.m5754v(view));
            }
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        /* renamed from: J */
        float mo5680J(View view) {
            int i;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int m5715R = m5715R(appBarLayout);
                if ((downNestedPreScrollRange != 0 && totalScrollRange + m5715R <= downNestedPreScrollRange) || (i = totalScrollRange - downNestedPreScrollRange) == 0) {
                    return 0.0f;
                }
                return (m5715R / i) + 1.0f;
            }
            return 0.0f;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        /* renamed from: L */
        public int mo5678L(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : super.mo5678L(view);
        }

        /* renamed from: Q */
        public AppBarLayout mo5682H(List<View> list) {
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
        public boolean mo3801e(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: h */
        public boolean mo3829h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            m5714S(view, view2);
            m5713T(view, view2);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: i */
        public void mo5712i(CoordinatorLayout coordinatorLayout, View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                C1679w.m29285l0(coordinatorLayout, C1634c.C1635a.f6294m.m29441b());
                C1679w.m29285l0(coordinatorLayout, C1634c.C1635a.f6295n.m29441b());
            }
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: l */
        public /* bridge */ /* synthetic */ boolean mo3828l(CoordinatorLayout coordinatorLayout, View view, int i) {
            return super.mo3828l(coordinatorLayout, view, i);
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: m */
        public /* bridge */ /* synthetic */ boolean mo5673m(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return super.mo5673m(coordinatorLayout, view, i, i2, i3, i4);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: w */
        public boolean mo5711w(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout mo5682H = mo5682H(coordinatorLayout.m33559v(view));
            if (mo5682H != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.f36078d;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (rect2.contains(rect)) {
                    return false;
                }
                mo5682H.setExpanded(false, !z);
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.appbar.AppBarLayout$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$a.class */
    public class C7992a implements AbstractC1673q {
        C7992a() {
            AppBarLayout.this = r4;
        }

        @Override // p020b.p041h.p050l.AbstractC1673q
        /* renamed from: a */
        public C1615e0 mo4441a(View view, C1615e0 c1615e0) {
            return AppBarLayout.this.m5762n(c1615e0);
        }
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$b.class */
    public class C7993b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        final /* synthetic */ C1938h f36037a;

        C7993b(C1938h c1938h) {
            AppBarLayout.this = r4;
            this.f36037a = c1938h;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f36037a.m28626Z(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$c.class */
    public interface AbstractC7994c<T extends AppBarLayout> {
        /* renamed from: a */
        void mo5693a(T t, int i);
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$d.class */
    public interface AbstractC7995d extends AbstractC7994c<AppBarLayout> {
    }

    public AppBarLayout(Context context) {
        this(context, null);
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.appBarLayoutStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppBarLayout(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: c */
    private void m5773c() {
        WeakReference<View> weakReference = this.f36008r;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f36008r = null;
    }

    /* renamed from: d */
    private View m5772d(View view) {
        int i;
        if (this.f36008r == null && (i = this.f36007q) != -1) {
            View findViewById = view != null ? view.findViewById(i) : null;
            View view2 = findViewById;
            if (findViewById == null) {
                view2 = findViewById;
                if (getParent() instanceof ViewGroup) {
                    view2 = ((ViewGroup) getParent()).findViewById(this.f36007q);
                }
            }
            if (view2 != null) {
                this.f36008r = new WeakReference<>(view2);
            }
        }
        WeakReference<View> weakReference = this.f36008r;
        View view3 = null;
        if (weakReference != null) {
            view3 = weakReference.get();
        }
        return view3;
    }

    /* renamed from: i */
    private boolean m5767i() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((LayoutParams) getChildAt(i).getLayoutParams()).m5717c()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: k */
    private void m5765k() {
        this.f35996f = -1;
        this.f35997g = -1;
        this.f35998h = -1;
    }

    /* renamed from: r */
    private void m5758r(boolean z, boolean z2, boolean z3) {
        int i = z ? 1 : 2;
        int i2 = 0;
        int i3 = z2 ? 4 : 0;
        if (z3) {
            i2 = 8;
        }
        this.f36000j = i | i3 | i2;
        requestLayout();
    }

    /* renamed from: s */
    private boolean m5757s(boolean z) {
        if (this.f36004n != z) {
            this.f36004n = z;
            refreshDrawableState();
            return true;
        }
        return false;
    }

    /* renamed from: u */
    private boolean m5755u() {
        return this.f36011u != null && getTopInset() > 0;
    }

    /* renamed from: w */
    private boolean m5753w() {
        boolean z = false;
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            z = false;
            if (childAt.getVisibility() != 8) {
                z = false;
                if (!C1679w.m29258z(childAt)) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: x */
    private void m5752x(C1938h c1938h, boolean z) {
        float dimension = getResources().getDimension(C1888d.design_appbar_elevation);
        float f = z ? 0.0f : dimension;
        if (!z) {
            dimension = 0.0f;
        }
        ValueAnimator valueAnimator = this.f36009s;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, dimension);
        this.f36009s = ofFloat;
        ofFloat.setDuration(getResources().getInteger(C1891g.app_bar_elevation_anim_duration));
        this.f36009s.setInterpolator(C1897a.f6813a);
        this.f36009s.addUpdateListener(new C7993b(c1938h));
        this.f36009s.start();
    }

    /* renamed from: y */
    private void m5751y() {
        setWillNotDraw(!m5755u());
    }

    /* renamed from: a */
    public void m5775a(AbstractC7994c abstractC7994c) {
        if (this.f36002l == null) {
            this.f36002l = new ArrayList();
        }
        if (abstractC7994c == null || this.f36002l.contains(abstractC7994c)) {
            return;
        }
        this.f36002l.add(abstractC7994c);
    }

    /* renamed from: b */
    public void m5774b(AbstractC7995d abstractC7995d) {
        m5775a(abstractC7995d);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (m5755u()) {
            int save = canvas.save();
            canvas.translate(0.0f, -this.f35995e);
            this.f36011u.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f36011u;
        if (drawable == null || !drawable.isStateful() || !drawable.setState(drawableState)) {
            return;
        }
        invalidateDrawable(drawable);
    }

    /* renamed from: e */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    /* renamed from: f */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* renamed from: g */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (Build.VERSION.SDK_INT < 19 || !(layoutParams instanceof LinearLayout.LayoutParams)) ? layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams) : new LayoutParams((LinearLayout.LayoutParams) layoutParams);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0529b
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
        int i2 = this.f35998h;
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
            int i7 = layoutParams.f36034a;
            i = i4;
            if ((i7 & 1) == 0) {
                break;
            }
            i4 += measuredHeight + i5 + i6;
            if ((i7 & 2) != 0) {
                i = i4 - C1679w.m29344D(childAt);
                break;
            }
            i3++;
        }
        int max = Math.max(0, i);
        this.f35998h = max;
        return max;
    }

    public int getLiftOnScrollTargetViewId() {
        return this.f36007q;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int m29344D = C1679w.m29344D(this);
        if (m29344D == 0) {
            int childCount = getChildCount();
            m29344D = childCount >= 1 ? C1679w.m29344D(getChildAt(childCount - 1)) : 0;
            if (m29344D == 0) {
                return getHeight() / 3;
            }
        }
        return (m29344D * 2) + topInset;
    }

    int getPendingAction() {
        return this.f36000j;
    }

    public Drawable getStatusBarForeground() {
        return this.f36011u;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    final int getTopInset() {
        C1615e0 c1615e0 = this.f36001k;
        return c1615e0 != null ? c1615e0.m29588l() : 0;
    }

    public final int getTotalScrollRange() {
        int i;
        int i2 = this.f35996f;
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
            int i5 = layoutParams.f36034a;
            i = i4;
            if ((i5 & 1) == 0) {
                break;
            }
            int i6 = i4 + measuredHeight + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
            i4 = i6;
            if (i3 == 0) {
                i4 = i6;
                if (C1679w.m29258z(childAt)) {
                    i4 = i6 - getTopInset();
                }
            }
            if ((i5 & 2) != 0) {
                i = i4 - C1679w.m29344D(childAt);
                break;
            }
            i3++;
        }
        int max = Math.max(0, i);
        this.f35996f = max;
        return max;
    }

    int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    /* renamed from: h */
    boolean m5768h() {
        return this.f35999i;
    }

    /* renamed from: j */
    boolean m5766j() {
        return getTotalScrollRange() != 0;
    }

    /* renamed from: l */
    public boolean m5764l() {
        return this.f36006p;
    }

    /* renamed from: m */
    void m5763m(int i) {
        this.f35995e = i;
        if (!willNotDraw()) {
            C1679w.m29293h0(this);
        }
        List<AbstractC7994c> list = this.f36002l;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC7994c abstractC7994c = this.f36002l.get(i2);
                if (abstractC7994c != null) {
                    abstractC7994c.mo5693a(this, i);
                }
            }
        }
    }

    /* renamed from: n */
    C1615e0 m5762n(C1615e0 c1615e0) {
        C1615e0 c1615e02 = C1679w.m29258z(this) ? c1615e0 : null;
        if (!C1592c.m29668a(this.f36001k, c1615e02)) {
            this.f36001k = c1615e02;
            m5751y();
            requestLayout();
        }
        return c1615e0;
    }

    /* renamed from: o */
    public void m5761o(AbstractC7994c abstractC7994c) {
        List<AbstractC7994c> list = this.f36002l;
        if (list == null || abstractC7994c == null) {
            return;
        }
        list.remove(abstractC7994c);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C1942i.m28580e(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        if (this.f36010t == null) {
            this.f36010t = new int[4];
        }
        int[] iArr = this.f36010t;
        int[] onCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        boolean z = this.f36004n;
        int i2 = C1886b.state_liftable;
        if (!z) {
            i2 = -i2;
        }
        iArr[0] = i2;
        iArr[1] = (!z || !this.f36005o) ? -C1886b.state_lifted : C1886b.state_lifted;
        int i3 = C1886b.state_collapsible;
        if (!z) {
            i3 = -i3;
        }
        iArr[2] = i3;
        iArr[3] = (!z || !this.f36005o) ? -C1886b.state_collapsed : C1886b.state_collapsed;
        return LinearLayout.mergeDrawableStates(onCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m5773c();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (C1679w.m29258z(this) && m5753w()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                C1679w.m29305b0(getChildAt(childCount), topInset);
            }
        }
        m5765k();
        this.f35999i = false;
        int childCount2 = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount2) {
                break;
            } else if (((LayoutParams) getChildAt(i5).getLayoutParams()).m5718b() != null) {
                this.f35999i = true;
                break;
            } else {
                i5++;
            }
        }
        Drawable drawable = this.f36011u;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (!this.f36003m) {
            boolean z2 = true;
            if (!this.f36006p) {
                z2 = m5767i();
            }
            m5757s(z2);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824 && C1679w.m29258z(this) && m5753w()) {
            int measuredHeight = getMeasuredHeight();
            if (mode == Integer.MIN_VALUE) {
                measuredHeight = C1542a.m29769b(getMeasuredHeight() + getTopInset(), 0, View.MeasureSpec.getSize(i2));
            } else if (mode == 0) {
                measuredHeight += getTopInset();
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
        m5765k();
    }

    /* renamed from: p */
    public void m5760p(AbstractC7995d abstractC7995d) {
        m5761o(abstractC7995d);
    }

    /* renamed from: q */
    void m5759q() {
        this.f36000j = 0;
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C1942i.m28581d(this, f);
    }

    public void setExpanded(boolean z) {
        setExpanded(z, C1679w.m29313V(this));
    }

    public void setExpanded(boolean z, boolean z2) {
        m5758r(z, z2, true);
    }

    public void setLiftOnScroll(boolean z) {
        this.f36006p = z;
    }

    public void setLiftOnScrollTargetViewId(int i) {
        this.f36007q = i;
        m5773c();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i == 1) {
            super.setOrientation(i);
            return;
        }
        throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
    }

    public void setStatusBarForeground(Drawable drawable) {
        Drawable drawable2 = this.f36011u;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f36011u = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f36011u.setState(getDrawableState());
                }
                C0615a.m33217m(this.f36011u, C1679w.m29346C(this));
                this.f36011u.setVisible(getVisibility() == 0, false);
                this.f36011u.setCallback(this);
            }
            m5751y();
            C1679w.m29293h0(this);
        }
    }

    public void setStatusBarForegroundColor(int i) {
        setStatusBarForeground(new ColorDrawable(i));
    }

    public void setStatusBarForegroundResource(int i) {
        setStatusBarForeground(C1433a.m30126d(getContext(), i));
    }

    @Deprecated
    public void setTargetElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            C8001b.m5660b(this, f);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f36011u;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
    }

    /* renamed from: t */
    boolean m5756t(boolean z) {
        if (this.f36005o != z) {
            this.f36005o = z;
            refreshDrawableState();
            if (!this.f36006p || !(getBackground() instanceof C1938h)) {
                return true;
            }
            m5752x((C1938h) getBackground(), z);
            return true;
        }
        return false;
    }

    /* renamed from: v */
    boolean m5754v(View view) {
        View m5772d = m5772d(view);
        if (m5772d != null) {
            view = m5772d;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f36011u;
    }
}
