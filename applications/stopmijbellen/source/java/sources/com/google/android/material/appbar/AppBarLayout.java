package com.google.android.material.appbar;

import android.animation.AnimatorInflater;
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
import android.view.AbsSavedState;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import p015b0.C0713a;
import p029c4.C0822f;
import p090f3.C2727a;
import p097g.C2788a;
import p098g0.C2789a;
import p101g3.AbstractC2805b;
import p101g3.AbstractC2807c;
import p101g3.C2804a;
import p101g3.C2810f;
import p102g4.C2811a;
import p124i4.C3102d;
import p134j4.C3260w0;
import p163m0.AbstractC3575h;
import p163m0.C3551b0;
import p163m0.C3589v;
import p163m0.C3611y;
import p174n0.C3694b;
import p216r0.AbstractC4178a;
import p230s3.C4285a;
import p262v3.C4634p;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout.class */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.AbstractC0320b {

    /* renamed from: a */
    public int f6225a;

    /* renamed from: e */
    public boolean f6229e;

    /* renamed from: g */
    public C3551b0 f6231g;

    /* renamed from: h */
    public boolean f6232h;

    /* renamed from: i */
    public boolean f6233i;

    /* renamed from: j */
    public boolean f6234j;

    /* renamed from: k */
    public boolean f6235k;

    /* renamed from: l */
    public int f6236l;

    /* renamed from: m */
    public WeakReference<View> f6237m;

    /* renamed from: n */
    public ValueAnimator f6238n;

    /* renamed from: p */
    public int[] f6240p;

    /* renamed from: q */
    public Drawable f6241q;

    /* renamed from: b */
    public int f6226b = -1;

    /* renamed from: c */
    public int f6227c = -1;

    /* renamed from: d */
    public int f6228d = -1;

    /* renamed from: f */
    public int f6230f = 0;

    /* renamed from: o */
    public final List<AbstractC1690d> f6239o = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior.class */
    public static class BaseBehavior<T extends AppBarLayout> extends AbstractC2805b<T> {

        /* renamed from: j */
        public int f6242j;

        /* renamed from: k */
        public int f6243k;

        /* renamed from: l */
        public ValueAnimator f6244l;

        /* renamed from: m */
        public C1685a f6245m;

        /* renamed from: n */
        public WeakReference<View> f6246n;

        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$a.class */
        public static class C1685a extends AbstractC4178a {
            public static final Parcelable.Creator<C1685a> CREATOR = new C1686a();

            /* renamed from: c */
            public boolean f6247c;

            /* renamed from: d */
            public int f6248d;

            /* renamed from: e */
            public float f6249e;

            /* renamed from: f */
            public boolean f6250f;

            /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$a$a */
            /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$a$a.class */
            public static final class C1686a implements Parcelable.ClassLoaderCreator<C1685a> {
                @Override // android.os.Parcelable.Creator
                public Object createFromParcel(Parcel parcel) {
                    return new C1685a(parcel, null);
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                public C1685a createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new C1685a(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                public Object[] newArray(int i) {
                    return new C1685a[i];
                }
            }

            public C1685a(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f6247c = parcel.readByte() != 0;
                this.f6248d = parcel.readInt();
                this.f6249e = parcel.readFloat();
                this.f6250f = parcel.readByte() != 0;
            }

            public C1685a(Parcelable parcelable) {
                super(parcelable);
            }

            @Override // p216r0.AbstractC4178a, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeParcelable(this.f13167a, i);
                parcel.writeByte(this.f6247c ? (byte) 1 : (byte) 0);
                parcel.writeInt(this.f6248d);
                parcel.writeFloat(this.f6249e);
                parcel.writeByte(this.f6250f ? (byte) 1 : (byte) 0);
            }
        }

        public BaseBehavior() {
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /* renamed from: E */
        public static boolean m4776E(int i, int i2) {
            return (i & i2) == i2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p101g3.AbstractC2805b
        /* renamed from: C */
        public int mo2989C(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
            int i4;
            int i5;
            int i6;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int mo2983y = mo2983y();
            if (i2 == 0 || mo2983y < i2 || mo2983y > i3) {
                this.f6242j = 0;
                i4 = 0;
            } else {
                int m7443d = C0713a.m7443d(i, i2, i3);
                i4 = 0;
                if (mo2983y != m7443d) {
                    if (appBarLayout.f6229e) {
                        int abs = Math.abs(m7443d);
                        int childCount = appBarLayout.getChildCount();
                        int i7 = 0;
                        while (true) {
                            if (i7 >= childCount) {
                                break;
                            }
                            View childAt = appBarLayout.getChildAt(i7);
                            C1689c c1689c = (C1689c) childAt.getLayoutParams();
                            Interpolator interpolator = c1689c.f6255c;
                            if (abs < childAt.getTop() || abs > childAt.getBottom()) {
                                i7++;
                            } else if (interpolator != null) {
                                int i8 = c1689c.f6253a;
                                if ((i8 & 1) != 0) {
                                    int height = childAt.getHeight() + ((LinearLayout.LayoutParams) c1689c).topMargin + ((LinearLayout.LayoutParams) c1689c).bottomMargin + 0;
                                    i6 = height;
                                    if ((i8 & 2) != 0) {
                                        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                                        i6 = height - C3589v.C3593d.m2090d(childAt);
                                    }
                                } else {
                                    i6 = 0;
                                }
                                WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
                                int i9 = i6;
                                if (C3589v.C3593d.m2092b(childAt)) {
                                    i9 = i6 - appBarLayout.getTopInset();
                                }
                                if (i9 > 0) {
                                    int top = childAt.getTop();
                                    float f = i9;
                                    i5 = (childAt.getTop() + Math.round(interpolator.getInterpolation((abs - top) / f) * f)) * Integer.signum(m7443d);
                                }
                            }
                        }
                    }
                    i5 = m7443d;
                    boolean m2973u = m2973u(i5);
                    this.f6242j = m7443d - i5;
                    if (m2973u) {
                        for (int i10 = 0; i10 < appBarLayout.getChildCount(); i10++) {
                            C1689c c1689c2 = (C1689c) appBarLayout.getChildAt(i10).getLayoutParams();
                            AbstractC1687a abstractC1687a = c1689c2.f6254b;
                            if (abstractC1687a != null && (c1689c2.f6253a & 1) != 0) {
                                View childAt2 = appBarLayout.getChildAt(i10);
                                float m2975s = m2975s();
                                C1688b c1688b = (C1688b) abstractC1687a;
                                Rect rect = c1688b.f6251a;
                                childAt2.getDrawingRect(rect);
                                appBarLayout.offsetDescendantRectToMyCoords(childAt2, rect);
                                rect.offset(0, -appBarLayout.getTopInset());
                                float abs2 = c1688b.f6251a.top - Math.abs(m2975s);
                                if (abs2 <= 0.0f) {
                                    float abs3 = Math.abs(abs2 / c1688b.f6251a.height());
                                    if (abs3 < 0.0f) {
                                        abs3 = 0.0f;
                                    } else if (abs3 > 1.0f) {
                                        abs3 = 1.0f;
                                    }
                                    float f2 = -abs2;
                                    float f3 = 1.0f - abs3;
                                    float height2 = f2 - ((c1688b.f6251a.height() * 0.3f) * (1.0f - (f3 * f3)));
                                    childAt2.setTranslationY(height2);
                                    childAt2.getDrawingRect(c1688b.f6252b);
                                    c1688b.f6252b.offset(0, (int) (-height2));
                                    Rect rect2 = c1688b.f6252b;
                                    WeakHashMap<View, C3611y> weakHashMap3 = C3589v.f11780a;
                                    C3589v.C3595f.m2061c(childAt2, rect2);
                                } else {
                                    WeakHashMap<View, C3611y> weakHashMap4 = C3589v.f11780a;
                                    C3589v.C3595f.m2061c(childAt2, null);
                                    childAt2.setTranslationY(0.0f);
                                }
                            }
                        }
                    }
                    if (!m2973u && appBarLayout.f6229e) {
                        coordinatorLayout.m8338c(appBarLayout);
                    }
                    appBarLayout.f6225a = m2975s();
                    if (!appBarLayout.willNotDraw()) {
                        WeakHashMap<View, C3611y> weakHashMap5 = C3589v.f11780a;
                        C3589v.C3593d.m2083k(appBarLayout);
                    }
                    int i11 = 1;
                    if (m7443d < mo2983y) {
                        i11 = -1;
                    }
                    m4771J(coordinatorLayout, appBarLayout, m7443d, i11, false);
                    i4 = mo2983y - m7443d;
                }
            }
            m4772I(coordinatorLayout, appBarLayout);
            return i4;
        }

        /* renamed from: D */
        public final void m4777D(CoordinatorLayout coordinatorLayout, T t, int i, float f) {
            int abs = Math.abs(mo2983y() - i);
            float abs2 = Math.abs(f);
            int round = abs2 > 0.0f ? Math.round((abs / abs2) * 1000.0f) * 3 : (int) (((abs / t.getHeight()) + 1.0f) * 150.0f);
            int mo2983y = mo2983y();
            if (mo2983y == i) {
                ValueAnimator valueAnimator = this.f6244l;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.f6244l.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.f6244l;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.f6244l = valueAnimator3;
                valueAnimator3.setInterpolator(C2727a.f9376e);
                this.f6244l.addUpdateListener(new C1692b(this, coordinatorLayout, t));
            } else {
                valueAnimator2.cancel();
            }
            this.f6244l.setDuration(Math.min(round, 600));
            this.f6244l.setIntValues(mo2983y, i);
            this.f6244l.start();
        }

        /* renamed from: F */
        public final View m4775F(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if ((childAt instanceof AbstractC3575h) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        /* renamed from: G */
        public void m4774G(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int[] iArr) {
            int i2;
            int i3;
            if (i != 0) {
                if (i < 0) {
                    int i4 = -appBarLayout.getTotalScrollRange();
                    i3 = i4;
                    i2 = appBarLayout.getDownNestedPreScrollRange() + i4;
                } else {
                    i3 = -appBarLayout.getUpNestedPreScrollRange();
                    i2 = 0;
                }
                if (i3 != i2) {
                    iArr[1] = m2991A(coordinatorLayout, appBarLayout, i, i3, i2);
                }
            }
            if (appBarLayout.f6235k) {
                appBarLayout.m4781c(appBarLayout.m4780d(view));
            }
        }

        /* renamed from: H */
        public final void m4773H(CoordinatorLayout coordinatorLayout, T t) {
            int i;
            int i2;
            int mo2983y = mo2983y();
            int childCount = t.getChildCount();
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    i3 = -1;
                    break;
                }
                View childAt = t.getChildAt(i3);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                C1689c c1689c = (C1689c) childAt.getLayoutParams();
                int i4 = top;
                int i5 = bottom;
                if (m4776E(c1689c.f6253a, 32)) {
                    i4 = top - ((LinearLayout.LayoutParams) c1689c).topMargin;
                    i5 = bottom + ((LinearLayout.LayoutParams) c1689c).bottomMargin;
                }
                int i6 = -mo2983y;
                if (i4 <= i6 && i5 >= i6) {
                    break;
                }
                i3++;
            }
            if (i3 >= 0) {
                View childAt2 = t.getChildAt(i3);
                C1689c c1689c2 = (C1689c) childAt2.getLayoutParams();
                int i7 = c1689c2.f6253a;
                if ((i7 & 17) != 17) {
                    return;
                }
                int i8 = -childAt2.getTop();
                int i9 = -childAt2.getBottom();
                int i10 = i9;
                if (i3 == t.getChildCount() - 1) {
                    i10 = i9 + t.getPaddingTop() + t.getTopInset();
                }
                if (m4776E(i7, 2)) {
                    WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                    i2 = i10 + C3589v.C3593d.m2090d(childAt2);
                    i = i8;
                } else {
                    i = i8;
                    i2 = i10;
                    if (m4776E(i7, 5)) {
                        WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
                        i2 = C3589v.C3593d.m2090d(childAt2) + i10;
                        if (mo2983y < i2) {
                            i = i2;
                            i2 = i10;
                        } else {
                            i = i8;
                        }
                    }
                }
                int i11 = i;
                int i12 = i2;
                if (m4776E(i7, 32)) {
                    i11 = i + ((LinearLayout.LayoutParams) c1689c2).topMargin;
                    i12 = i2 - ((LinearLayout.LayoutParams) c1689c2).bottomMargin;
                }
                int i13 = i11;
                if (mo2983y < (i12 + i11) / 2) {
                    i13 = i12;
                }
                m4777D(coordinatorLayout, t, C0713a.m7443d(i13, -t.getTotalScrollRange(), 0), 0.0f);
            }
        }

        /* renamed from: I */
        public final void m4772I(CoordinatorLayout coordinatorLayout, T t) {
            C3694b.C3695a c3695a = C3694b.C3695a.f12076h;
            C3589v.m2106r(c3695a.m1868a(), coordinatorLayout);
            C3589v.m2111m(coordinatorLayout, 0);
            C3694b.C3695a c3695a2 = C3694b.C3695a.f12077i;
            C3589v.m2106r(c3695a2.m1868a(), coordinatorLayout);
            C3589v.m2111m(coordinatorLayout, 0);
            View m4775F = m4775F(coordinatorLayout);
            if (m4775F == null || t.getTotalScrollRange() == 0 || !(((CoordinatorLayout.C0324f) m4775F.getLayoutParams()).f1458a instanceof ScrollingViewBehavior)) {
                return;
            }
            if (mo2983y() != (-t.getTotalScrollRange()) && m4775F.canScrollVertically(1)) {
                C3589v.m2105s(coordinatorLayout, c3695a, null, new C1694d(this, t, false));
            }
            if (mo2983y() == 0) {
                return;
            }
            if (!m4775F.canScrollVertically(-1)) {
                C3589v.m2105s(coordinatorLayout, c3695a2, null, new C1694d(this, t, true));
                return;
            }
            int i = -t.getDownNestedPreScrollRange();
            if (i == 0) {
                return;
            }
            C3589v.m2105s(coordinatorLayout, c3695a2, null, new C1693c(this, coordinatorLayout, t, m4775F, i));
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x00b1  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00c9  */
        /* renamed from: J */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m4771J(androidx.coordinatorlayout.widget.CoordinatorLayout r5, T r6, int r7, int r8, boolean r9) {
            /*
                Method dump skipped, instructions count: 298
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.m4771J(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, int, int, boolean):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p101g3.C2808d, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: h */
        public boolean mo2976h(CoordinatorLayout coordinatorLayout, View view, int i) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            super.mo2976h(coordinatorLayout, appBarLayout, i);
            int pendingAction = appBarLayout.getPendingAction();
            C1685a c1685a = this.f6245m;
            if (c1685a == null || (pendingAction & 8) != 0) {
                if (pendingAction != 0) {
                    boolean z = (pendingAction & 4) != 0;
                    if ((pendingAction & 2) != 0) {
                        int i2 = -appBarLayout.getUpNestedPreScrollRange();
                        if (z) {
                            m4777D(coordinatorLayout, appBarLayout, i2, 0.0f);
                        } else {
                            m2990B(coordinatorLayout, appBarLayout, i2);
                        }
                    } else if ((pendingAction & 1) != 0) {
                        if (z) {
                            m4777D(coordinatorLayout, appBarLayout, 0, 0.0f);
                        } else {
                            m2990B(coordinatorLayout, appBarLayout, 0);
                        }
                    }
                }
            } else if (c1685a.f6247c) {
                m2990B(coordinatorLayout, appBarLayout, -appBarLayout.getTotalScrollRange());
            } else {
                View childAt = appBarLayout.getChildAt(c1685a.f6248d);
                int i3 = -childAt.getBottom();
                m2990B(coordinatorLayout, appBarLayout, this.f6245m.f6250f ? appBarLayout.getTopInset() + C3589v.C3593d.m2090d(childAt) + i3 : Math.round(childAt.getHeight() * this.f6245m.f6249e) + i3);
            }
            appBarLayout.f6230f = 0;
            this.f6245m = null;
            m2973u(C0713a.m7443d(m2975s(), -appBarLayout.getTotalScrollRange(), 0));
            m4771J(coordinatorLayout, appBarLayout, m2975s(), 0, true);
            appBarLayout.f6225a = m2975s();
            if (!appBarLayout.willNotDraw()) {
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                C3589v.C3593d.m2083k(appBarLayout);
            }
            m4772I(coordinatorLayout, appBarLayout);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: i */
        public boolean mo2981i(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            boolean z = false;
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.C0324f) appBarLayout.getLayoutParams())).height == -2) {
                coordinatorLayout.m8327t(appBarLayout, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
                z = true;
            }
            return z;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: k */
        public /* bridge */ /* synthetic */ void mo4739k(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
            m4774G(coordinatorLayout, (AppBarLayout) view, view2, i2, iArr);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: l */
        public void mo4738l(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (i4 < 0) {
                iArr[1] = m2991A(coordinatorLayout, appBarLayout, i4, -appBarLayout.getDownNestedScrollRange(), 0);
            }
            if (i4 == 0) {
                m4772I(coordinatorLayout, appBarLayout);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: n */
        public void mo4737n(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (parcelable instanceof C1685a) {
                this.f6245m = (C1685a) parcelable;
            } else {
                this.f6245m = null;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v1 */
        /* JADX WARN: Type inference failed for: r5v2 */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: o */
        public Parcelable mo4736o(CoordinatorLayout coordinatorLayout, View view) {
            C1685a c1685a;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
            int m2975s = m2975s();
            int childCount = appBarLayout.getChildCount();
            int i = 0;
            while (true) {
                c1685a = absSavedState;
                if (i >= childCount) {
                    break;
                }
                View childAt = appBarLayout.getChildAt(i);
                int bottom = childAt.getBottom() + m2975s;
                if (childAt.getTop() + m2975s > 0 || bottom < 0) {
                    i++;
                } else {
                    c1685a = new C1685a(absSavedState);
                    c1685a.f6247c = (-m2975s()) >= appBarLayout.getTotalScrollRange();
                    c1685a.f6248d = i;
                    WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                    boolean z = false;
                    if (bottom == appBarLayout.getTopInset() + C3589v.C3593d.m2090d(childAt)) {
                        z = true;
                    }
                    c1685a.f6250f = z;
                    c1685a.f6249e = bottom / childAt.getHeight();
                }
            }
            return c1685a;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: p */
        public boolean mo4735p(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            boolean z;
            ValueAnimator valueAnimator;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if ((i & 2) != 0) {
                z = true;
                if (!appBarLayout.f6235k) {
                    if ((appBarLayout.getTotalScrollRange() != 0) && coordinatorLayout.getHeight() - view2.getHeight() <= appBarLayout.getHeight()) {
                        z = true;
                    }
                }
                if (z && (valueAnimator = this.f6244l) != null) {
                    valueAnimator.cancel();
                }
                this.f6246n = null;
                this.f6243k = i2;
                return z;
            }
            z = false;
            if (z) {
                valueAnimator.cancel();
            }
            this.f6246n = null;
            this.f6243k = i2;
            return z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: q */
        public void mo4734q(CoordinatorLayout coordinatorLayout, View view, View view2, int i) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (this.f6243k == 0 || i == 1) {
                m4773H(coordinatorLayout, appBarLayout);
                if (appBarLayout.f6235k) {
                    appBarLayout.m4781c(appBarLayout.m4780d(view2));
                }
            }
            this.f6246n = new WeakReference<>(view2);
        }

        @Override // p101g3.AbstractC2805b
        /* renamed from: v */
        public boolean mo2986v(View view) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            WeakReference<View> weakReference = this.f6246n;
            boolean z = true;
            if (weakReference != null) {
                View view2 = weakReference.get();
                z = view2 != null && view2.isShown() && !view2.canScrollVertically(-1);
            }
            return z;
        }

        @Override // p101g3.AbstractC2805b
        /* renamed from: w */
        public int mo2985w(View view) {
            return -((AppBarLayout) view).getDownNestedScrollRange();
        }

        @Override // p101g3.AbstractC2805b
        /* renamed from: x */
        public int mo2984x(View view) {
            return ((AppBarLayout) view).getTotalScrollRange();
        }

        @Override // p101g3.AbstractC2805b
        /* renamed from: y */
        public int mo2983y() {
            return m2975s() + this.f6242j;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p101g3.AbstractC2805b
        /* renamed from: z */
        public void mo2982z(CoordinatorLayout coordinatorLayout, View view) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            m4773H(coordinatorLayout, appBarLayout);
            if (appBarLayout.f6235k) {
                appBarLayout.m4781c(appBarLayout.m4780d(m4775F(coordinatorLayout)));
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$Behavior.class */
    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior.class */
    public static class ScrollingViewBehavior extends AbstractC2807c {
        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3260w0.f11010D);
            this.f9541f = obtainStyledAttributes.getDimensionPixelSize(0, 0);
            obtainStyledAttributes.recycle();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: b */
        public boolean mo4481b(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: d */
        public boolean mo4490d(CoordinatorLayout coordinatorLayout, View view, View view2) {
            CoordinatorLayout.AbstractC0321c abstractC0321c = ((CoordinatorLayout.C0324f) view2.getLayoutParams()).f1458a;
            if (abstractC0321c instanceof BaseBehavior) {
                C3589v.m2109o(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) abstractC0321c).f6242j) + this.f9540e) - m2979w(view2));
            }
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (!appBarLayout.f6235k) {
                    return false;
                }
                appBarLayout.m4781c(appBarLayout.m4780d(view));
                return false;
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: e */
        public void mo4770e(CoordinatorLayout coordinatorLayout, View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                C3589v.m2106r(C3694b.C3695a.f12076h.m1868a(), coordinatorLayout);
                C3589v.m2111m(coordinatorLayout, 0);
                C3589v.m2106r(C3694b.C3695a.f12077i.m1868a(), coordinatorLayout);
                C3589v.m2111m(coordinatorLayout, 0);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: m */
        public boolean mo4769m(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout mo2980v = mo2980v(coordinatorLayout.m8336e(view));
            if (mo2980v != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.f9538c;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (rect2.contains(rect)) {
                    return false;
                }
                mo2980v.m4782b(false, !z, true);
                return true;
            }
            return false;
        }

        @Override // p101g3.AbstractC2807c
        /* renamed from: x */
        public float mo2978x(View view) {
            int i;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                CoordinatorLayout.AbstractC0321c abstractC0321c = ((CoordinatorLayout.C0324f) appBarLayout.getLayoutParams()).f1458a;
                int mo2983y = abstractC0321c instanceof BaseBehavior ? ((BaseBehavior) abstractC0321c).mo2983y() : 0;
                if ((downNestedPreScrollRange != 0 && totalScrollRange + mo2983y <= downNestedPreScrollRange) || (i = totalScrollRange - downNestedPreScrollRange) == 0) {
                    return 0.0f;
                }
                return (mo2983y / i) + 1.0f;
            }
            return 0.0f;
        }

        @Override // p101g3.AbstractC2807c
        /* renamed from: y */
        public int mo2977y(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : view.getMeasuredHeight();
        }

        /* renamed from: z */
        public AppBarLayout mo2980v(List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$a.class */
    public static abstract class AbstractC1687a {
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$b.class */
    public static class C1688b extends AbstractC1687a {

        /* renamed from: a */
        public final Rect f6251a = new Rect();

        /* renamed from: b */
        public final Rect f6252b = new Rect();
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$c.class */
    public static class C1689c extends LinearLayout.LayoutParams {

        /* renamed from: a */
        public int f6253a;

        /* renamed from: b */
        public AbstractC1687a f6254b;

        /* renamed from: c */
        public Interpolator f6255c;

        public C1689c(int i, int i2) {
            super(i, i2);
            this.f6253a = 1;
        }

        public C1689c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f6253a = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3260w0.f11024e);
            this.f6253a = obtainStyledAttributes.getInt(1, 0);
            this.f6254b = obtainStyledAttributes.getInt(0, 0) != 1 ? null : new C1688b();
            if (obtainStyledAttributes.hasValue(2)) {
                this.f6255c = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(2, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public C1689c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f6253a = 1;
        }

        public C1689c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f6253a = 1;
        }

        public C1689c(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f6253a = 1;
        }
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$d.class */
    public interface AbstractC1690d {
        /* renamed from: a */
        void m4767a(float f, int i);
    }

    /* JADX WARN: Finally extract failed */
    public AppBarLayout(Context context, AttributeSet attributeSet) {
        super(C2811a.m2970a(context, attributeSet, 2130968630, 2131886883), attributeSet, 2130968630);
        Context context2 = getContext();
        setOrientation(1);
        int i = Build.VERSION.SDK_INT;
        if (getOutlineProvider() == ViewOutlineProvider.BACKGROUND) {
            setOutlineProvider(ViewOutlineProvider.BOUNDS);
        }
        Context context3 = getContext();
        TypedArray m687d = C4634p.m687d(context3, attributeSet, C2810f.f9549a, 2130968630, 2131886883, new int[0]);
        try {
            if (m687d.hasValue(0)) {
                setStateListAnimator(AnimatorInflater.loadStateListAnimator(context3, m687d.getResourceId(0, 0)));
            }
            m687d.recycle();
            TypedArray m687d2 = C4634p.m687d(context2, attributeSet, C3260w0.f11023d, 2130968630, 2131886883, new int[0]);
            Drawable drawable = m687d2.getDrawable(0);
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3593d.m2077q(this, drawable);
            if (getBackground() instanceof ColorDrawable) {
                ColorDrawable colorDrawable = (ColorDrawable) getBackground();
                C0822f c0822f = new C0822f();
                c0822f.m7314q(ColorStateList.valueOf(colorDrawable.getColor()));
                c0822f.f3010a.f3035b = new C4285a(context2);
                c0822f.m7307x();
                C3589v.C3593d.m2077q(this, c0822f);
            }
            if (m687d2.hasValue(4)) {
                m4782b(m687d2.getBoolean(4, false), false, false);
            }
            if (m687d2.hasValue(3)) {
                C2810f.m2971a(this, m687d2.getDimensionPixelSize(3, 0));
            }
            if (i >= 26) {
                if (m687d2.hasValue(2)) {
                    setKeyboardNavigationCluster(m687d2.getBoolean(2, false));
                }
                if (m687d2.hasValue(1)) {
                    setTouchscreenBlocksFocus(m687d2.getBoolean(1, false));
                }
            }
            this.f6235k = m687d2.getBoolean(5, false);
            this.f6236l = m687d2.getResourceId(6, -1);
            setStatusBarForeground(m687d2.getDrawable(7));
            m687d2.recycle();
            C3589v.C3598i.m2030u(this, new C2804a(this));
        } catch (Throwable th) {
            m687d.recycle();
            throw th;
        }
    }

    /* renamed from: a */
    public C1689c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LinearLayout.LayoutParams ? new C1689c((LinearLayout.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C1689c((ViewGroup.MarginLayoutParams) layoutParams) : new C1689c(layoutParams);
    }

    /* renamed from: b */
    public final void m4782b(boolean z, boolean z2, boolean z3) {
        int i = z ? 1 : 2;
        int i2 = 0;
        int i3 = z2 ? 4 : 0;
        if (z3) {
            i2 = 8;
        }
        this.f6230f = i | i3 | i2;
        requestLayout();
    }

    /* renamed from: c */
    public boolean m4781c(boolean z) {
        boolean z2;
        if (!(!this.f6232h) || this.f6234j == z) {
            z2 = false;
        } else {
            this.f6234j = z;
            refreshDrawableState();
            z2 = true;
            if (this.f6235k) {
                z2 = true;
                if (getBackground() instanceof C0822f) {
                    C0822f c0822f = (C0822f) getBackground();
                    float dimension = getResources().getDimension(2131165311);
                    float f = z ? 0.0f : dimension;
                    if (!z) {
                        dimension = 0.0f;
                    }
                    ValueAnimator valueAnimator = this.f6238n;
                    if (valueAnimator != null) {
                        valueAnimator.cancel();
                    }
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(f, dimension);
                    this.f6238n = ofFloat;
                    ofFloat.setDuration(getResources().getInteger(2131361794));
                    this.f6238n.setInterpolator(C2727a.f9372a);
                    this.f6238n.addUpdateListener(new C1691a(this, c0822f));
                    this.f6238n.start();
                    z2 = true;
                }
            }
        }
        return z2;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C1689c;
    }

    /* renamed from: d */
    public boolean m4780d(View view) {
        int i;
        if (this.f6237m == null && (i = this.f6236l) != -1) {
            View findViewById = view != null ? view.findViewById(i) : null;
            View view2 = findViewById;
            if (findViewById == null) {
                view2 = findViewById;
                if (getParent() instanceof ViewGroup) {
                    view2 = ((ViewGroup) getParent()).findViewById(this.f6236l);
                }
            }
            if (view2 != null) {
                this.f6237m = new WeakReference<>(view2);
            }
        }
        WeakReference<View> weakReference = this.f6237m;
        View view3 = null;
        if (weakReference != null) {
            view3 = weakReference.get();
        }
        if (view3 != null) {
            view = view3;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f6241q != null && getTopInset() > 0) {
            int save = canvas.save();
            canvas.translate(0.0f, -this.f6225a);
            this.f6241q.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f6241q;
        if (drawable == null || !drawable.isStateful() || !drawable.setState(drawableState)) {
            return;
        }
        invalidateDrawable(drawable);
    }

    /* renamed from: e */
    public final boolean m4779e() {
        boolean z = false;
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            z = false;
            if (childAt.getVisibility() != 8) {
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                z = false;
                if (!C3589v.C3593d.m2092b(childAt)) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public final void m4778f() {
        setWillNotDraw(!(this.f6241q != null && getTopInset() > 0));
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C1689c(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: generateDefaultLayoutParams */
    public LinearLayout.LayoutParams mo10547generateDefaultLayoutParams() {
        return new C1689c(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C1689c(getContext(), attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: generateLayoutParams */
    public LinearLayout.LayoutParams mo10548generateLayoutParams(AttributeSet attributeSet) {
        return new C1689c(getContext(), attributeSet);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0320b
    public CoordinatorLayout.AbstractC0321c<AppBarLayout> getBehavior() {
        return new Behavior();
    }

    public int getDownNestedPreScrollRange() {
        int i;
        int i2;
        int i3;
        int i4 = this.f6227c;
        if (i4 != -1) {
            return i4;
        }
        int childCount = getChildCount() - 1;
        int i5 = 0;
        while (true) {
            i = i5;
            if (childCount < 0) {
                break;
            }
            View childAt = getChildAt(childCount);
            C1689c c1689c = (C1689c) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i6 = c1689c.f6253a;
            if ((i6 & 5) == 5) {
                int i7 = ((LinearLayout.LayoutParams) c1689c).topMargin + ((LinearLayout.LayoutParams) c1689c).bottomMargin;
                if ((i6 & 8) != 0) {
                    WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                    i3 = i7 + C3589v.C3593d.m2090d(childAt);
                } else if ((i6 & 2) != 0) {
                    WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
                    i3 = i7 + (measuredHeight - C3589v.C3593d.m2090d(childAt));
                } else {
                    i3 = i7 + measuredHeight;
                }
                int i8 = i3;
                if (childCount == 0) {
                    WeakHashMap<View, C3611y> weakHashMap3 = C3589v.f11780a;
                    i8 = i3;
                    if (C3589v.C3593d.m2092b(childAt)) {
                        i8 = Math.min(i3, measuredHeight - getTopInset());
                    }
                }
                i2 = i + i8;
            } else {
                i2 = i;
                if (i > 0) {
                    break;
                }
            }
            childCount--;
            i5 = i2;
        }
        int max = Math.max(0, i);
        this.f6227c = max;
        return max;
    }

    public int getDownNestedScrollRange() {
        int i;
        int i2 = this.f6228d;
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
            C1689c c1689c = (C1689c) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = ((LinearLayout.LayoutParams) c1689c).topMargin;
            int i6 = ((LinearLayout.LayoutParams) c1689c).bottomMargin;
            int i7 = c1689c.f6253a;
            i = i4;
            if ((i7 & 1) == 0) {
                break;
            }
            i4 += i5 + i6 + measuredHeight;
            if ((i7 & 2) != 0) {
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                i = i4 - C3589v.C3593d.m2090d(childAt);
                break;
            }
            i3++;
        }
        int max = Math.max(0, i);
        this.f6228d = max;
        return max;
    }

    public int getLiftOnScrollTargetViewId() {
        return this.f6236l;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        int m2090d = C3589v.C3593d.m2090d(this);
        if (m2090d == 0) {
            int childCount = getChildCount();
            m2090d = childCount >= 1 ? C3589v.C3593d.m2090d(getChildAt(childCount - 1)) : 0;
            if (m2090d == 0) {
                return getHeight() / 3;
            }
        }
        return (m2090d * 2) + topInset;
    }

    public int getPendingAction() {
        return this.f6230f;
    }

    public Drawable getStatusBarForeground() {
        return this.f6241q;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    public final int getTopInset() {
        C3551b0 c3551b0 = this.f6231g;
        return c3551b0 != null ? c3551b0.m2178e() : 0;
    }

    public final int getTotalScrollRange() {
        int i;
        int i2 = this.f6226b;
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
            C1689c c1689c = (C1689c) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = c1689c.f6253a;
            i = i4;
            if ((i5 & 1) == 0) {
                break;
            }
            int i6 = measuredHeight + ((LinearLayout.LayoutParams) c1689c).topMargin + ((LinearLayout.LayoutParams) c1689c).bottomMargin + i4;
            i4 = i6;
            if (i3 == 0) {
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                i4 = i6;
                if (C3589v.C3593d.m2092b(childAt)) {
                    i4 = i6 - getTopInset();
                }
            }
            if ((i5 & 2) != 0) {
                WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
                i = i4 - C3589v.C3593d.m2090d(childAt);
                break;
            }
            i3++;
        }
        int max = Math.max(0, i);
        this.f6226b = max;
        return max;
    }

    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof C0822f) {
            C3102d.m2644H(this, (C0822f) background);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        if (this.f6240p == null) {
            this.f6240p = new int[4];
        }
        int[] iArr = this.f6240p;
        int[] onCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        boolean z = this.f6233i;
        iArr[0] = z ? 2130969625 : -2130969625;
        iArr[1] = (!z || !this.f6234j) ? -2130969626 : 2130969626;
        iArr[2] = z ? 2130969623 : -2130969623;
        iArr[3] = (!z || !this.f6234j) ? -2130969622 : 2130969622;
        return LinearLayout.mergeDrawableStates(onCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WeakReference<View> weakReference = this.f6237m;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f6237m = null;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        super.onLayout(z, i, i2, i3, i4);
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        if (C3589v.C3593d.m2092b(this) && m4779e()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                C3589v.m2109o(getChildAt(childCount), topInset);
            }
        }
        this.f6226b = -1;
        this.f6227c = -1;
        this.f6228d = -1;
        this.f6229e = false;
        int childCount2 = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount2) {
                break;
            } else if (((C1689c) getChildAt(i5).getLayoutParams()).f6255c != null) {
                this.f6229e = true;
                break;
            } else {
                i5++;
            }
        }
        Drawable drawable = this.f6241q;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (!this.f6232h) {
            boolean z3 = true;
            if (!this.f6235k) {
                int childCount3 = getChildCount();
                int i6 = 0;
                while (true) {
                    if (i6 >= childCount3) {
                        z2 = false;
                        break;
                    }
                    int i7 = ((C1689c) getChildAt(i6).getLayoutParams()).f6253a;
                    if ((i7 & 1) == 1 && (i7 & 10) != 0) {
                        z2 = true;
                        break;
                    }
                    i6++;
                }
                z3 = z2;
            }
            if (this.f6233i == z3) {
                return;
            }
            this.f6233i = z3;
            refreshDrawableState();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            if (C3589v.C3593d.m2092b(this) && m4779e()) {
                int measuredHeight = getMeasuredHeight();
                if (mode == Integer.MIN_VALUE) {
                    measuredHeight = C0713a.m7443d(getTopInset() + getMeasuredHeight(), 0, View.MeasureSpec.getSize(i2));
                } else if (mode == 0) {
                    measuredHeight += getTopInset();
                }
                setMeasuredDimension(getMeasuredWidth(), measuredHeight);
            }
        }
        this.f6226b = -1;
        this.f6227c = -1;
        this.f6228d = -1;
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C3102d.m2645G(this, f);
    }

    public void setExpanded(boolean z) {
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        m4782b(z, C3589v.C3596g.m2058c(this), true);
    }

    public void setLiftOnScroll(boolean z) {
        this.f6235k = z;
    }

    public void setLiftOnScrollTargetViewId(int i) {
        this.f6236l = i;
        WeakReference<View> weakReference = this.f6237m;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f6237m = null;
    }

    public void setLiftableOverrideEnabled(boolean z) {
        this.f6232h = z;
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
        Drawable drawable2 = this.f6241q;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f6241q = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f6241q.setState(getDrawableState());
                }
                Drawable drawable4 = this.f6241q;
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                C2789a.m3012c(drawable4, C3589v.C3594e.m2071d(this));
                this.f6241q.setVisible(getVisibility() == 0, false);
                this.f6241q.setCallback(this);
            }
            m4778f();
            WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
            C3589v.C3593d.m2083k(this);
        }
    }

    public void setStatusBarForegroundColor(int i) {
        setStatusBarForeground(new ColorDrawable(i));
    }

    public void setStatusBarForegroundResource(int i) {
        setStatusBarForeground(C2788a.m3015b(getContext(), i));
    }

    @Deprecated
    public void setTargetElevation(float f) {
        C2810f.m2971a(this, f);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f6241q;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f6241q;
    }
}
