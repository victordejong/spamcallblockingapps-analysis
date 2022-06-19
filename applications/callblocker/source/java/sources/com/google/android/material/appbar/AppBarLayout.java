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
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p021c.C0486a;
import androidx.core.p026h.AbstractC0583i;
import androidx.core.p026h.C0572ac;
import androidx.core.p026h.C0595u;
import androidx.p029d.p030a.AbstractC0633a;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C4492a;
import com.google.android.material.p142a.C4505a;
import com.google.android.material.p159q.C4736g;
import com.google.android.material.p159q.C4740h;
import java.lang.ref.WeakReference;
import java.util.List;
@CoordinatorLayout.AbstractC0424c(m20940a = Behavior.class)
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout.class */
public class AppBarLayout extends LinearLayout {

    /* renamed from: a */
    private int f19592a;

    /* renamed from: b */
    private int f19593b;

    /* renamed from: c */
    private int f19594c;

    /* renamed from: d */
    private int f19595d;

    /* renamed from: e */
    private boolean f19596e;

    /* renamed from: f */
    private int f19597f;

    /* renamed from: g */
    private C0572ac f19598g;

    /* renamed from: h */
    private List<AbstractC4521a> f19599h;

    /* renamed from: i */
    private boolean f19600i;

    /* renamed from: j */
    private boolean f19601j;

    /* renamed from: k */
    private boolean f19602k;

    /* renamed from: l */
    private boolean f19603l;

    /* renamed from: m */
    private int f19604m;

    /* renamed from: n */
    private WeakReference<View> f19605n;

    /* renamed from: o */
    private ValueAnimator f19606o;

    /* renamed from: p */
    private int[] f19607p;

    /* renamed from: q */
    private Drawable f19608q;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior.class */
    public static class BaseBehavior<T extends AppBarLayout> extends AbstractC4523a<T> {

        /* renamed from: b */
        private int f19611b;

        /* renamed from: c */
        private int f19612c;

        /* renamed from: d */
        private ValueAnimator f19613d;

        /* renamed from: e */
        private int f19614e = -1;

        /* renamed from: f */
        private boolean f19615f;

        /* renamed from: g */
        private float f19616g;

        /* renamed from: h */
        private WeakReference<View> f19617h;

        /* renamed from: i */
        private AbstractC4518a f19618i;

        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$a.class */
        public static abstract class AbstractC4518a<T extends AppBarLayout> {
            /* renamed from: a */
            public abstract boolean m3788a(T t);
        }

        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$b */
        /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$b.class */
        public static class C4519b extends AbstractC0633a {
            public static final Parcelable.Creator<C4519b> CREATOR = new Parcelable.ClassLoaderCreator<C4519b>() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.b.1
                /* renamed from: a */
                public C4519b createFromParcel(Parcel parcel) {
                    return new C4519b(parcel, null);
                }

                /* renamed from: a */
                public C4519b createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new C4519b(parcel, classLoader);
                }

                /* renamed from: a */
                public C4519b[] newArray(int i) {
                    return new C4519b[i];
                }
            };

            /* renamed from: a */
            int f19622a;

            /* renamed from: b */
            float f19623b;

            /* renamed from: d */
            boolean f19624d;

            public C4519b(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f19622a = parcel.readInt();
                this.f19623b = parcel.readFloat();
                this.f19624d = parcel.readByte() != 0;
            }

            public C4519b(Parcelable parcelable) {
                super(parcelable);
            }

            @Override // androidx.p029d.p030a.AbstractC0633a, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.f19622a);
                parcel.writeFloat(this.f19623b);
                parcel.writeByte((byte) (this.f19624d ? 1 : 0));
            }
        }

        public BaseBehavior() {
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /* renamed from: a */
        private int m3795a(T t, int i) {
            int i2 = 0;
            int childCount = t.getChildCount();
            while (true) {
                if (i2 >= childCount) {
                    i2 = -1;
                    break;
                }
                View childAt = t.getChildAt(i2);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                C4522b c4522b = (C4522b) childAt.getLayoutParams();
                if (m3805a(c4522b.m3770a(), 32)) {
                    top -= c4522b.topMargin;
                    bottom = c4522b.bottomMargin + bottom;
                }
                if (top <= (-i) && bottom >= (-i)) {
                    break;
                }
                i2++;
            }
            return i2;
        }

        /* renamed from: a */
        private View m3804a(CoordinatorLayout coordinatorLayout) {
            View view;
            int childCount = coordinatorLayout.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    view = null;
                    break;
                }
                View childAt = coordinatorLayout.getChildAt(i);
                view = childAt;
                if (childAt instanceof AbstractC0583i) {
                    break;
                }
                view = childAt;
                if (childAt instanceof ListView) {
                    break;
                } else if (childAt instanceof ScrollView) {
                    view = childAt;
                    break;
                } else {
                    i++;
                }
            }
            return view;
        }

        /* renamed from: a */
        private void m3802a(CoordinatorLayout coordinatorLayout, T t, int i, float f) {
            int abs = Math.abs(mo3762b() - i);
            float abs2 = Math.abs(f);
            m3801a(coordinatorLayout, (CoordinatorLayout) t, i, abs2 > 0.0f ? Math.round((abs / abs2) * 1000.0f) * 3 : (int) (((abs / t.getHeight()) + 1.0f) * 150.0f));
        }

        /* renamed from: a */
        private void m3801a(final CoordinatorLayout coordinatorLayout, final T t, int i, int i2) {
            int mo3762b = mo3762b();
            if (mo3762b == i) {
                if (this.f19613d == null || !this.f19613d.isRunning()) {
                    return;
                }
                this.f19613d.cancel();
                return;
            }
            if (this.f19613d == null) {
                this.f19613d = new ValueAnimator();
                this.f19613d.setInterpolator(C4505a.f19573e);
                this.f19613d.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        BaseBehavior.this.m3763a_(coordinatorLayout, t, ((Integer) valueAnimator.getAnimatedValue()).intValue());
                    }
                });
            } else {
                this.f19613d.cancel();
            }
            this.f19613d.setDuration(Math.min(i2, 600));
            this.f19613d.setIntValues(mo3762b, i);
            this.f19613d.start();
        }

        /* renamed from: a */
        private void m3799a(CoordinatorLayout coordinatorLayout, T t, int i, int i2, boolean z) {
            View m3790c = m3790c(t, i);
            if (m3790c != null) {
                int m3770a = ((C4522b) m3790c.getLayoutParams()).m3770a();
                boolean z2 = false;
                if ((m3770a & 1) != 0) {
                    int m20312l = C0595u.m20312l(m3790c);
                    if (i2 <= 0 || (m3770a & 12) == 0) {
                        z2 = false;
                        if ((m3770a & 2) != 0) {
                            z2 = (-i) >= (m3790c.getBottom() - m20312l) - t.getTopInset();
                        }
                    } else {
                        z2 = (-i) >= (m3790c.getBottom() - m20312l) - t.getTopInset();
                    }
                }
                if (t.m3813d()) {
                    z2 = t.m3823a(m3804a(coordinatorLayout));
                }
                boolean m3820a = t.m3820a(z2);
                if (!z && (!m3820a || !m3789d(coordinatorLayout, (CoordinatorLayout) t))) {
                    return;
                }
                t.jumpDrawablesToCurrentState();
            }
        }

        /* renamed from: a */
        private static boolean m3805a(int i, int i2) {
            return (i & i2) == i2;
        }

        /* renamed from: a */
        private boolean m3798a(CoordinatorLayout coordinatorLayout, T t, View view) {
            return t.m3814c() && coordinatorLayout.getHeight() - view.getHeight() <= t.getHeight();
        }

        /* renamed from: b */
        private int m3793b(T t, int i) {
            int i2;
            int i3;
            int abs = Math.abs(i);
            int childCount = t.getChildCount();
            int i4 = 0;
            while (true) {
                i2 = i;
                if (i4 >= childCount) {
                    break;
                }
                View childAt = t.getChildAt(i4);
                C4522b c4522b = (C4522b) childAt.getLayoutParams();
                Interpolator m3769b = c4522b.m3769b();
                if (abs < childAt.getTop() || abs > childAt.getBottom()) {
                    i4++;
                } else {
                    i2 = i;
                    if (m3769b != null) {
                        int m3770a = c4522b.m3770a();
                        if ((m3770a & 1) != 0) {
                            int height = c4522b.bottomMargin + childAt.getHeight() + c4522b.topMargin + 0;
                            i3 = height;
                            if ((m3770a & 2) != 0) {
                                i3 = height - C0595u.m20312l(childAt);
                            }
                        } else {
                            i3 = 0;
                        }
                        int i5 = i3;
                        if (C0595u.m20306r(childAt)) {
                            i5 = i3 - t.getTopInset();
                        }
                        i2 = i;
                        if (i5 > 0) {
                            int top = childAt.getTop();
                            i2 = Integer.signum(i) * (Math.round(m3769b.getInterpolation((abs - top) / i5) * i5) + childAt.getTop());
                        }
                    }
                }
            }
            return i2;
        }

        /* renamed from: c */
        private static View m3790c(AppBarLayout appBarLayout, int i) {
            View view;
            int abs = Math.abs(i);
            int childCount = appBarLayout.getChildCount();
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    view = null;
                    break;
                }
                View childAt = appBarLayout.getChildAt(i2);
                if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                    view = childAt;
                    break;
                }
                i2++;
            }
            return view;
        }

        /* renamed from: c */
        private void m3792c(CoordinatorLayout coordinatorLayout, T t) {
            int i;
            int i2;
            int mo3762b = mo3762b();
            int m3795a = m3795a((BaseBehavior<T>) t, mo3762b);
            if (m3795a >= 0) {
                View childAt = t.getChildAt(m3795a);
                C4522b c4522b = (C4522b) childAt.getLayoutParams();
                int m3770a = c4522b.m3770a();
                if ((m3770a & 17) != 17) {
                    return;
                }
                int i3 = -childAt.getTop();
                int i4 = -childAt.getBottom();
                int i5 = i4;
                if (m3795a == t.getChildCount() - 1) {
                    i5 = i4 + t.getTopInset();
                }
                if (m3805a(m3770a, 2)) {
                    i = i5 + C0595u.m20312l(childAt);
                    i2 = i3;
                } else {
                    i = i5;
                    i2 = i3;
                    if (m3805a(m3770a, 5)) {
                        i = C0595u.m20312l(childAt) + i5;
                        if (mo3762b < i) {
                            i2 = i;
                            i = i5;
                        } else {
                            i2 = i3;
                        }
                    }
                }
                int i6 = i;
                int i7 = i2;
                if (m3805a(m3770a, 32)) {
                    i7 = i2 + c4522b.topMargin;
                    i6 = i - c4522b.bottomMargin;
                }
                if (mo3762b < (i6 + i7) / 2) {
                    i7 = i6;
                }
                m3802a(coordinatorLayout, (CoordinatorLayout) t, C0486a.m20726a(i7, -t.getTotalScrollRange(), 0), 0.0f);
            }
        }

        /* renamed from: d */
        private boolean m3789d(CoordinatorLayout coordinatorLayout, T t) {
            boolean z;
            List<View> m20960d = coordinatorLayout.m20960d(t);
            int size = m20960d.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    z = false;
                    break;
                }
                CoordinatorLayout.AbstractC0423b m20929b = ((CoordinatorLayout.C0426e) m20960d.get(i).getLayoutParams()).m20929b();
                if (m20929b instanceof ScrollingViewBehavior) {
                    z = ((ScrollingViewBehavior) m20929b).m3747e() != 0;
                } else {
                    i++;
                }
            }
            return z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.AbstractC4523a
        /* renamed from: a */
        /* synthetic */ int mo3766a(View view) {
            return m3791c((BaseBehavior<T>) ((AppBarLayout) view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.AbstractC4523a
        /* renamed from: a */
        /* bridge */ /* synthetic */ int mo3764a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
            return m3800a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i, i2, i3);
        }

        /* renamed from: a */
        int m3800a(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3) {
            int i4;
            int mo3762b = mo3762b();
            if (i2 == 0 || mo3762b < i2 || mo3762b > i3) {
                this.f19611b = 0;
                i4 = 0;
            } else {
                int m20726a = C0486a.m20726a(i, i2, i3);
                i4 = 0;
                if (mo3762b != m20726a) {
                    int m3793b = t.m3817b() ? m3793b((BaseBehavior<T>) t, m20726a) : m20726a;
                    boolean a = mo3746a(m3793b);
                    this.f19611b = m20726a - m3793b;
                    if (!a && t.m3817b()) {
                        coordinatorLayout.m20972b(t);
                    }
                    t.m3825a(mo3744c());
                    m3799a(coordinatorLayout, (CoordinatorLayout) t, m20726a, m20726a < mo3762b ? -1 : 1, false);
                    i4 = mo3762b - m20726a;
                }
            }
            return i4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo3563a(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
            mo3782a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), parcelable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo3561a(CoordinatorLayout coordinatorLayout, View view, View view2, int i) {
            mo3781a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo3560a(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            mo3780a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i, i2, i3, i4, i5, iArr);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo3559a(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
            mo3779a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i, i2, iArr, i3);
        }

        /* renamed from: a */
        void m3803a(CoordinatorLayout coordinatorLayout, T t) {
            m3792c(coordinatorLayout, (CoordinatorLayout) t);
            if (t.m3813d()) {
                t.m3820a(t.m3823a(m3804a(coordinatorLayout)));
            }
        }

        /* renamed from: a */
        public void mo3782a(CoordinatorLayout coordinatorLayout, T t, Parcelable parcelable) {
            if (!(parcelable instanceof C4519b)) {
                super.mo3563a(coordinatorLayout, (CoordinatorLayout) t, parcelable);
                this.f19614e = -1;
                return;
            }
            C4519b c4519b = (C4519b) parcelable;
            super.mo3563a(coordinatorLayout, (CoordinatorLayout) t, c4519b.m20121a());
            this.f19614e = c4519b.f19622a;
            this.f19616g = c4519b.f19623b;
            this.f19615f = c4519b.f19624d;
        }

        /* renamed from: a */
        public void mo3781a(CoordinatorLayout coordinatorLayout, T t, View view, int i) {
            if (this.f19612c == 0 || i == 1) {
                m3792c(coordinatorLayout, (CoordinatorLayout) t);
                if (t.m3813d()) {
                    t.m3820a(t.m3823a(view));
                }
            }
            this.f19617h = new WeakReference<>(view);
        }

        /* renamed from: a */
        public void mo3780a(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            if (i4 < 0) {
                iArr[1] = m3760b(coordinatorLayout, (CoordinatorLayout) t, i4, -t.getDownNestedScrollRange(), 0);
            }
        }

        /* renamed from: a */
        public void mo3779a(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int[] iArr, int i3) {
            int i4;
            int i5;
            if (i2 != 0) {
                if (i2 < 0) {
                    i4 = -t.getTotalScrollRange();
                    i5 = i4 + t.getDownNestedPreScrollRange();
                } else {
                    i4 = -t.getUpNestedPreScrollRange();
                    i5 = 0;
                }
                if (i4 != i5) {
                    iArr[1] = m3760b(coordinatorLayout, (CoordinatorLayout) t, i2, i4, i5);
                }
            }
            if (t.m3813d()) {
                t.m3820a(t.m3823a(view));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.C4526c, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo2219a(CoordinatorLayout coordinatorLayout, View view, int i) {
            return mo3784a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo3755a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return mo3783a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i, i2, i3, i4);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo3558a(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            return mo3778a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, view3, i, i2);
        }

        /* renamed from: a */
        public boolean mo3784a(CoordinatorLayout coordinatorLayout, T t, int i) {
            boolean a = super.mo2219a(coordinatorLayout, (CoordinatorLayout) t, i);
            int pendingAction = t.getPendingAction();
            if (this.f19614e >= 0 && (pendingAction & 8) == 0) {
                View childAt = t.getChildAt(this.f19614e);
                int i2 = -childAt.getBottom();
                m3763a_(coordinatorLayout, t, this.f19615f ? C0595u.m20312l(childAt) + t.getTopInset() + i2 : Math.round(childAt.getHeight() * this.f19616g) + i2);
            } else if (pendingAction != 0) {
                boolean z = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i3 = -t.getUpNestedPreScrollRange();
                    if (z) {
                        m3802a(coordinatorLayout, (CoordinatorLayout) t, i3, 0.0f);
                    } else {
                        m3763a_(coordinatorLayout, t, i3);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        m3802a(coordinatorLayout, (CoordinatorLayout) t, 0, 0.0f);
                    } else {
                        m3763a_(coordinatorLayout, t, 0);
                    }
                }
            }
            t.m3812e();
            this.f19614e = -1;
            mo3746a(C0486a.m20726a(mo3744c(), -t.getTotalScrollRange(), 0));
            m3799a(coordinatorLayout, (CoordinatorLayout) t, mo3744c(), 0, true);
            t.m3825a(mo3744c());
            return a;
        }

        /* renamed from: a */
        public boolean mo3783a(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3, int i4) {
            boolean a;
            if (((CoordinatorLayout.C0426e) t.getLayoutParams()).height == -2) {
                coordinatorLayout.m20986a(t, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
                a = true;
            } else {
                a = super.mo3755a(coordinatorLayout, (CoordinatorLayout) t, i, i2, i3, i4);
            }
            return a;
        }

        /* renamed from: a */
        public boolean mo3778a(CoordinatorLayout coordinatorLayout, T t, View view, View view2, int i, int i2) {
            boolean z = (i & 2) != 0 && (t.m3813d() || m3798a(coordinatorLayout, (CoordinatorLayout) t, view));
            if (z && this.f19613d != null) {
                this.f19613d.cancel();
            }
            this.f19617h = null;
            this.f19612c = i2;
            return z;
        }

        /* renamed from: a */
        boolean m3796a(T t) {
            boolean z;
            if (this.f19618i != null) {
                z = this.f19618i.m3788a(t);
            } else if (this.f19617h != null) {
                View view = this.f19617h.get();
                z = view != null && view.isShown() && !view.canScrollVertically(-1);
            } else {
                z = true;
            }
            return z;
        }

        @Override // com.google.android.material.appbar.AbstractC4523a
        /* renamed from: b */
        int mo3762b() {
            return mo3744c() + this.f19611b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.AbstractC4523a
        /* renamed from: b */
        /* bridge */ /* synthetic */ int mo3761b(View view) {
            return m3794b((BaseBehavior<T>) ((AppBarLayout) view));
        }

        /* renamed from: b */
        int m3794b(T t) {
            return -t.getDownNestedScrollRange();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v1, types: [android.os.Parcelable] */
        /* JADX WARN: Type inference failed for: r5v2 */
        /* renamed from: b */
        public Parcelable mo3777b(CoordinatorLayout coordinatorLayout, T t) {
            boolean z = false;
            C4519b d = super.mo3542d(coordinatorLayout, (CoordinatorLayout) t);
            int c = mo3744c();
            int childCount = t.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                View childAt = t.getChildAt(i);
                int bottom = childAt.getBottom() + c;
                if (childAt.getTop() + c > 0 || bottom < 0) {
                    i++;
                } else {
                    d = new C4519b(d);
                    d.f19622a = i;
                    if (bottom == C0595u.m20312l(childAt) + t.getTopInset()) {
                        z = true;
                    }
                    d.f19624d = z;
                    d.f19623b = bottom / childAt.getHeight();
                }
            }
            return d;
        }

        /* renamed from: c */
        int m3791c(T t) {
            return t.getTotalScrollRange();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.AbstractC4523a
        /* renamed from: c */
        /* synthetic */ boolean mo3759c(View view) {
            return m3796a((BaseBehavior<T>) ((AppBarLayout) view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
        /* renamed from: d */
        public /* synthetic */ Parcelable mo3542d(CoordinatorLayout coordinatorLayout, View view) {
            return mo3777b(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.AbstractC4523a
        /* renamed from: e */
        /* synthetic */ void mo3757e(CoordinatorLayout coordinatorLayout, View view) {
            m3803a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$Behavior.class */
    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo3782a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            super.mo3782a(coordinatorLayout, (CoordinatorLayout) appBarLayout, parcelable);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo3781a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
            super.mo3781a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo3780a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            super.mo3780a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, i3, i4, i5, iArr);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo3779a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
            super.mo3779a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, iArr, i3);
        }

        @Override // com.google.android.material.appbar.C4526c
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo3746a(int i) {
            return super.mo3746a(i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo3784a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            return super.mo3784a(coordinatorLayout, (CoordinatorLayout) appBarLayout, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo3783a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3, int i4) {
            return super.mo3783a(coordinatorLayout, (CoordinatorLayout) appBarLayout, i, i2, i3, i4);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo3778a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i, int i2) {
            return super.mo3778a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, view2, i, i2);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: b */
        public /* bridge */ /* synthetic */ Parcelable mo3777b(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            return super.mo3777b(coordinatorLayout, (CoordinatorLayout) appBarLayout);
        }

        @Override // com.google.android.material.appbar.C4526c
        /* renamed from: c */
        public /* bridge */ /* synthetic */ int mo3744c() {
            return super.mo3744c();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior.class */
    public static class ScrollingViewBehavior extends AbstractC4525b {
        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C4492a.C4504l.ScrollingViewBehavior_Layout);
            m3753b(obtainStyledAttributes.getDimensionPixelSize(C4492a.C4504l.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        private static int m3774a(AppBarLayout appBarLayout) {
            CoordinatorLayout.AbstractC0423b m20929b = ((CoordinatorLayout.C0426e) appBarLayout.getLayoutParams()).m20929b();
            return m20929b instanceof BaseBehavior ? ((BaseBehavior) m20929b).mo3762b() : 0;
        }

        /* renamed from: a */
        private void m3776a(View view, View view2) {
            CoordinatorLayout.AbstractC0423b m20929b = ((CoordinatorLayout.C0426e) view2.getLayoutParams()).m20929b();
            if (m20929b instanceof BaseBehavior) {
                C0595u.m20323e(view, ((((BaseBehavior) m20929b).f19611b + (view2.getBottom() - view.getTop())) + m3748d()) - m3749c(view2));
            }
        }

        /* renamed from: b */
        private void m3772b(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (!appBarLayout.m3813d()) {
                    return;
                }
                appBarLayout.m3820a(appBarLayout.m3823a(view));
            }
        }

        @Override // com.google.android.material.appbar.AbstractC4525b
        /* renamed from: a */
        float mo3756a(View view) {
            float f = 0.0f;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int m3774a = m3774a(appBarLayout);
                if (downNestedPreScrollRange == 0 || totalScrollRange + m3774a > downNestedPreScrollRange) {
                    int i = totalScrollRange - downNestedPreScrollRange;
                    f = 0.0f;
                    if (i != 0) {
                        f = 1.0f + (m3774a / i);
                    }
                } else {
                    f = 0.0f;
                }
            }
            return f;
        }

        /* renamed from: a */
        public AppBarLayout mo3751b(List<View> list) {
            AppBarLayout appBarLayout;
            int size = list.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    appBarLayout = null;
                    break;
                }
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    appBarLayout = (AppBarLayout) view;
                    break;
                }
                i++;
            }
            return appBarLayout;
        }

        @Override // com.google.android.material.appbar.C4526c
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo3746a(int i) {
            return super.mo3746a(i);
        }

        @Override // com.google.android.material.appbar.C4526c, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo2219a(CoordinatorLayout coordinatorLayout, View view, int i) {
            return super.mo2219a(coordinatorLayout, (CoordinatorLayout) view, i);
        }

        @Override // com.google.android.material.appbar.AbstractC4525b, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo3755a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return super.mo3755a(coordinatorLayout, view, i, i2, i3, i4);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
        /* renamed from: a */
        public boolean mo3775a(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            boolean z2;
            AppBarLayout mo3751b = mo3751b(coordinatorLayout.m20965c(view));
            if (mo3751b != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.f19638a;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    mo3751b.m3819a(false, !z);
                    z2 = true;
                    return z2;
                }
            }
            z2 = false;
            return z2;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
        /* renamed from: a */
        public boolean mo2190a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.AbstractC4525b
        /* renamed from: b */
        public int mo3752b(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : super.mo3752b(view);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
        /* renamed from: b */
        public boolean mo2216b(CoordinatorLayout coordinatorLayout, View view, View view2) {
            m3776a(view, view2);
            m3772b(view, view2);
            return false;
        }

        @Override // com.google.android.material.appbar.C4526c
        /* renamed from: c */
        public /* bridge */ /* synthetic */ int mo3744c() {
            return super.mo3744c();
        }
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$a.class */
    public interface AbstractC4521a<T extends AppBarLayout> {
        /* renamed from: a */
        void m3771a(T t, int i);
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$b.class */
    public static class C4522b extends LinearLayout.LayoutParams {

        /* renamed from: a */
        int f19625a;

        /* renamed from: b */
        Interpolator f19626b;

        public C4522b(int i, int i2) {
            super(i, i2);
            this.f19625a = 1;
        }

        public C4522b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f19625a = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C4492a.C4504l.AppBarLayout_Layout);
            this.f19625a = obtainStyledAttributes.getInt(C4492a.C4504l.AppBarLayout_Layout_layout_scrollFlags, 0);
            if (obtainStyledAttributes.hasValue(C4492a.C4504l.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.f19626b = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(C4492a.C4504l.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public C4522b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f19625a = 1;
        }

        public C4522b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f19625a = 1;
        }

        public C4522b(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f19625a = 1;
        }

        /* renamed from: a */
        public int m3770a() {
            return this.f19625a;
        }

        /* renamed from: b */
        public Interpolator m3769b() {
            return this.f19626b;
        }

        /* renamed from: c */
        boolean m3768c() {
            boolean z = true;
            if ((this.f19625a & 1) != 1 || (this.f19625a & 10) == 0) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: a */
    private void m3821a(final C4736g c4736g, boolean z) {
        float dimension = getResources().getDimension(C4492a.C4496d.design_appbar_elevation);
        float f = z ? 0.0f : dimension;
        if (!z) {
            dimension = 0.0f;
        }
        if (this.f19606o != null) {
            this.f19606o.cancel();
        }
        this.f19606o = ValueAnimator.ofFloat(f, dimension);
        this.f19606o.setDuration(getResources().getInteger(C4492a.C4499g.app_bar_elevation_anim_duration));
        this.f19606o.setInterpolator(C4505a.f19569a);
        this.f19606o.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.AppBarLayout.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                c4736g.m2687r(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        this.f19606o.start();
    }

    /* renamed from: a */
    private void m3818a(boolean z, boolean z2, boolean z3) {
        int i = 0;
        int i2 = z ? 1 : 2;
        int i3 = z2 ? 4 : 0;
        if (z3) {
            i = 8;
        }
        this.f19597f = i | i3 | i2;
        requestLayout();
    }

    /* renamed from: b */
    private View m3816b(View view) {
        if (this.f19605n == null && this.f19604m != -1) {
            View findViewById = view != null ? view.findViewById(this.f19604m) : null;
            View view2 = findViewById;
            if (findViewById == null) {
                view2 = findViewById;
                if (getParent() instanceof ViewGroup) {
                    view2 = ((ViewGroup) getParent()).findViewById(this.f19604m);
                }
            }
            if (view2 != null) {
                this.f19605n = new WeakReference<>(view2);
            }
        }
        return this.f19605n != null ? this.f19605n.get() : null;
    }

    /* renamed from: b */
    private boolean m3815b(boolean z) {
        boolean z2;
        if (this.f19601j != z) {
            this.f19601j = z;
            refreshDrawableState();
            z2 = true;
        } else {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: f */
    private void m3811f() {
        setWillNotDraw(!m3810g());
    }

    /* renamed from: g */
    private boolean m3810g() {
        return this.f19608q != null && getTopInset() > 0;
    }

    /* renamed from: h */
    private boolean m3809h() {
        boolean z;
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                z = false;
                break;
            } else if (((C4522b) getChildAt(i).getLayoutParams()).m3768c()) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* renamed from: i */
    private void m3808i() {
        this.f19593b = -1;
        this.f19594c = -1;
        this.f19595d = -1;
    }

    /* renamed from: j */
    private void m3807j() {
        if (this.f19605n != null) {
            this.f19605n.clear();
        }
        this.f19605n = null;
    }

    /* renamed from: k */
    private boolean m3806k() {
        boolean z = false;
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            z = false;
            if (childAt.getVisibility() != 8) {
                z = false;
                if (!C0595u.m20306r(childAt)) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public C4522b generateDefaultLayoutParams() {
        return new C4522b(-1, -2);
    }

    /* renamed from: a */
    public C4522b generateLayoutParams(AttributeSet attributeSet) {
        return new C4522b(getContext(), attributeSet);
    }

    /* renamed from: a */
    public C4522b generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (Build.VERSION.SDK_INT < 19 || !(layoutParams instanceof LinearLayout.LayoutParams)) ? layoutParams instanceof ViewGroup.MarginLayoutParams ? new C4522b((ViewGroup.MarginLayoutParams) layoutParams) : new C4522b(layoutParams) : new C4522b((LinearLayout.LayoutParams) layoutParams);
    }

    /* renamed from: a */
    void m3825a(int i) {
        this.f19592a = i;
        if (!willNotDraw()) {
            C0595u.m20324e(this);
        }
        if (this.f19599h != null) {
            int size = this.f19599h.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC4521a abstractC4521a = this.f19599h.get(i2);
                if (abstractC4521a != null) {
                    abstractC4521a.m3771a(this, i);
                }
            }
        }
    }

    /* renamed from: a */
    public void m3819a(boolean z, boolean z2) {
        m3818a(z, z2, true);
    }

    /* renamed from: a */
    boolean m3823a(View view) {
        View m3816b = m3816b(view);
        if (m3816b != null) {
            view = m3816b;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }

    /* renamed from: a */
    boolean m3820a(boolean z) {
        boolean z2;
        if (this.f19602k != z) {
            this.f19602k = z;
            refreshDrawableState();
            if (this.f19603l && (getBackground() instanceof C4736g)) {
                m3821a((C4736g) getBackground(), z);
            }
            z2 = true;
        } else {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: b */
    boolean m3817b() {
        return this.f19596e;
    }

    /* renamed from: c */
    boolean m3814c() {
        return getTotalScrollRange() != 0;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C4522b;
    }

    /* renamed from: d */
    public boolean m3813d() {
        return this.f19603l;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (m3810g()) {
            int save = canvas.save();
            canvas.translate(0.0f, -this.f19592a);
            this.f19608q.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f19608q;
        if (drawable == null || !drawable.isStateful() || !drawable.setState(drawableState)) {
            return;
        }
        invalidateDrawable(drawable);
    }

    /* renamed from: e */
    void m3812e() {
        this.f19597f = 0;
    }

    int getDownNestedPreScrollRange() {
        int i;
        int max;
        int i2;
        if (this.f19594c != -1) {
            max = this.f19594c;
        } else {
            int childCount = getChildCount() - 1;
            int i3 = 0;
            while (true) {
                i = i3;
                if (childCount < 0) {
                    break;
                }
                View childAt = getChildAt(childCount);
                C4522b c4522b = (C4522b) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i4 = c4522b.f19625a;
                if ((i4 & 5) == 5) {
                    int i5 = c4522b.bottomMargin + c4522b.topMargin;
                    int m20312l = (i4 & 8) != 0 ? i5 + C0595u.m20312l(childAt) : (i4 & 2) != 0 ? i5 + (measuredHeight - C0595u.m20312l(childAt)) : i5 + measuredHeight;
                    int i6 = m20312l;
                    if (childCount == 0) {
                        i6 = m20312l;
                        if (C0595u.m20306r(childAt)) {
                            i6 = Math.min(m20312l, measuredHeight - getTopInset());
                        }
                    }
                    i2 = i6 + i;
                } else if (i > 0) {
                    break;
                } else {
                    i2 = i;
                }
                childCount--;
                i3 = i2;
            }
            max = Math.max(0, i);
            this.f19594c = max;
        }
        return max;
    }

    int getDownNestedScrollRange() {
        int max;
        if (this.f19595d != -1) {
            max = this.f19595d;
        } else {
            int childCount = getChildCount();
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                View childAt = getChildAt(i);
                C4522b c4522b = (C4522b) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i3 = c4522b.topMargin;
                int i4 = c4522b.bottomMargin;
                int i5 = c4522b.f19625a;
                if ((i5 & 1) == 0) {
                    break;
                }
                i2 += measuredHeight + i3 + i4;
                if ((i5 & 2) != 0) {
                    i2 -= C0595u.m20312l(childAt);
                    break;
                }
                i++;
            }
            max = Math.max(0, i2);
            this.f19595d = max;
        }
        return max;
    }

    public int getLiftOnScrollTargetViewId() {
        return this.f19604m;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int height;
        int topInset = getTopInset();
        int m20312l = C0595u.m20312l(this);
        if (m20312l != 0) {
            height = (m20312l * 2) + topInset;
        } else {
            int childCount = getChildCount();
            int m20312l2 = childCount >= 1 ? C0595u.m20312l(getChildAt(childCount - 1)) : 0;
            height = m20312l2 != 0 ? (m20312l2 * 2) + topInset : getHeight() / 3;
        }
        return height;
    }

    int getPendingAction() {
        return this.f19597f;
    }

    public Drawable getStatusBarForeground() {
        return this.f19608q;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    final int getTopInset() {
        return this.f19598g != null ? this.f19598g.m20438b() : 0;
    }

    public final int getTotalScrollRange() {
        int max;
        if (this.f19593b != -1) {
            max = this.f19593b;
        } else {
            int childCount = getChildCount();
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                View childAt = getChildAt(i);
                C4522b c4522b = (C4522b) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i3 = c4522b.f19625a;
                if ((i3 & 1) == 0) {
                    break;
                }
                int i4 = c4522b.bottomMargin + measuredHeight + c4522b.topMargin + i2;
                i2 = i4;
                if (i == 0) {
                    i2 = i4;
                    if (C0595u.m20306r(childAt)) {
                        i2 = i4 - getTopInset();
                    }
                }
                if ((i3 & 2) != 0) {
                    i2 -= C0595u.m20312l(childAt);
                    break;
                }
                i++;
            }
            max = Math.max(0, i2);
            this.f19593b = max;
        }
        return max;
    }

    int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C4740h.m2684a(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        if (this.f19607p == null) {
            this.f19607p = new int[4];
        }
        int[] iArr = this.f19607p;
        int[] onCreateDrawableState = super.onCreateDrawableState(iArr.length + i);
        iArr[0] = this.f19601j ? C4492a.C4494b.state_liftable : -C4492a.C4494b.state_liftable;
        iArr[1] = (!this.f19601j || !this.f19602k) ? -C4492a.C4494b.state_lifted : C4492a.C4494b.state_lifted;
        iArr[2] = this.f19601j ? C4492a.C4494b.state_collapsible : -C4492a.C4494b.state_collapsible;
        iArr[3] = (!this.f19601j || !this.f19602k) ? -C4492a.C4494b.state_collapsed : C4492a.C4494b.state_collapsed;
        return mergeDrawableStates(onCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m3807j();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (C0595u.m20306r(this) && m3806k()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                C0595u.m20323e(getChildAt(childCount), topInset);
            }
        }
        m3808i();
        this.f19596e = false;
        int childCount2 = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount2) {
                break;
            } else if (((C4522b) getChildAt(i5).getLayoutParams()).m3769b() != null) {
                this.f19596e = true;
                break;
            } else {
                i5++;
            }
        }
        if (this.f19608q != null) {
            this.f19608q.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (!this.f19600i) {
            m3815b(this.f19603l || m3809h());
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824 && C0595u.m20306r(this) && m3806k()) {
            int measuredHeight = getMeasuredHeight();
            switch (mode) {
                case RecyclerView.UNDEFINED_DURATION /* -2147483648 */:
                    measuredHeight = C0486a.m20726a(getMeasuredHeight() + getTopInset(), 0, View.MeasureSpec.getSize(i2));
                    break;
                case 0:
                    measuredHeight += getTopInset();
                    break;
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
        m3808i();
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C4740h.m2683a(this, f);
    }

    public void setExpanded(boolean z) {
        m3819a(z, C0595u.m20299y(this));
    }

    public void setLiftOnScroll(boolean z) {
        this.f19603l = z;
    }

    public void setLiftOnScrollTargetViewId(int i) {
        this.f19604m = i;
        m3807j();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i);
    }

    public void setStatusBarForeground(Drawable drawable) {
        Drawable drawable2 = null;
        if (this.f19608q != drawable) {
            if (this.f19608q != null) {
                this.f19608q.setCallback(null);
            }
            if (drawable != null) {
                drawable2 = drawable.mutate();
            }
            this.f19608q = drawable2;
            if (this.f19608q != null) {
                if (this.f19608q.isStateful()) {
                    this.f19608q.setState(getDrawableState());
                }
                C0535a.m20589b(this.f19608q, C0595u.m20320g(this));
                this.f19608q.setVisible(getVisibility() == 0, false);
                this.f19608q.setCallback(this);
            }
            m3811f();
            C0595u.m20324e(this);
        }
    }

    public void setStatusBarForegroundColor(int i) {
        setStatusBarForeground(new ColorDrawable(i));
    }

    public void setStatusBarForegroundResource(int i) {
        setStatusBarForeground(C0094a.m22275b(getContext(), i));
    }

    @Deprecated
    public void setTargetElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            C4528e.m3738a(this, f);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        if (this.f19608q != null) {
            this.f19608q.setVisible(z, false);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f19608q;
    }
}
