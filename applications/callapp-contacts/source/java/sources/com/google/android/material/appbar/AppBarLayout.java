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
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.p032b.C0770a;
import androidx.core.view.AbstractC0914j;
import androidx.core.view.C0889ac;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.AbstractC0878f;
import androidx.core.view.p038a.C0869c;
import androidx.customview.view.AbsSavedState;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.p364a.C14389a;
import com.google.android.material.p374k.C14670h;
import com.google.android.material.p374k.C14674i;
import java.lang.ref.WeakReference;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/AppBarLayout.class */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.AbstractC0699a {

    /* renamed from: f */
    private static final int f52391f = C14376a.C14387k.Widget_Design_AppBarLayout;

    /* renamed from: a */
    boolean f52392a;

    /* renamed from: b */
    int f52393b;

    /* renamed from: c */
    C0889ac f52394c;

    /* renamed from: d */
    List<AbstractC14408a> f52395d;

    /* renamed from: e */
    boolean f52396e;

    /* renamed from: g */
    private int f52397g;

    /* renamed from: h */
    private int f52398h;

    /* renamed from: i */
    private int f52399i;

    /* renamed from: j */
    private int f52400j;

    /* renamed from: k */
    private boolean f52401k;

    /* renamed from: l */
    private boolean f52402l;

    /* renamed from: m */
    private boolean f52403m;

    /* renamed from: n */
    private int f52404n;

    /* renamed from: o */
    private WeakReference<View> f52405o;

    /* renamed from: p */
    private ValueAnimator f52406p;

    /* renamed from: q */
    private int[] f52407q;

    /* renamed from: r */
    private Drawable f52408r;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior.class */
    public static class BaseBehavior<T extends AppBarLayout> extends HeaderBehavior<T> {

        /* renamed from: b */
        private int f52412b;

        /* renamed from: c */
        private int f52413c;

        /* renamed from: d */
        private ValueAnimator f52414d;

        /* renamed from: e */
        private int f52415e = -1;

        /* renamed from: f */
        private boolean f52416f;

        /* renamed from: g */
        private float f52417g;

        /* renamed from: h */
        private WeakReference<View> f52418h;

        /* renamed from: i */
        private AbstractC14406a f52419i;

        /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState.class */
        public static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.SavedState.1
                @Override // android.os.Parcelable.Creator
                public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                    return new SavedState(parcel, null);
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
            boolean firstVisibleChildAtMinimumHeight;
            int firstVisibleChildIndex;
            float firstVisibleChildPercentageShown;

            public SavedState(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.firstVisibleChildIndex = parcel.readInt();
                this.firstVisibleChildPercentageShown = parcel.readFloat();
                this.firstVisibleChildAtMinimumHeight = parcel.readByte() != 0;
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.firstVisibleChildIndex);
                parcel.writeFloat(this.firstVisibleChildPercentageShown);
                parcel.writeByte(this.firstVisibleChildAtMinimumHeight ? (byte) 1 : (byte) 0);
            }
        }

        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$a */
        /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$a.class */
        public static abstract class AbstractC14406a<T extends AppBarLayout> {
            /* renamed from: a */
            public abstract boolean mo11289a();
        }

        public BaseBehavior() {
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /* renamed from: a */
        private static int m11295a(T t, int i) {
            int childCount = t.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = t.getChildAt(i2);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int i3 = top;
                int i4 = bottom;
                if (m11301a(layoutParams.f52431a, 32)) {
                    i3 = top - layoutParams.topMargin;
                    i4 = bottom + layoutParams.bottomMargin;
                }
                int i5 = -i;
                if (i3 <= i5 && i4 >= i5) {
                    return i2;
                }
            }
            return -1;
        }

        /* renamed from: a */
        private static View m11300a(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if ((childAt instanceof AbstractC0914j) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x004d, code lost:
            if ((-r6) >= ((r0.getBottom() - r0) - r5.m11307g())) goto L12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0050, code lost:
            r12 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0074, code lost:
            if ((-r6) >= ((r0.getBottom() - r0) - r5.m11307g())) goto L12;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static void m11299a(androidx.coordinatorlayout.widget.CoordinatorLayout r4, T r5, int r6, int r7, boolean r8) {
            /*
                r0 = r5
                r1 = r6
                android.view.View r0 = m11292b(r0, r1)
                r9 = r0
                r0 = r9
                if (r0 == 0) goto La9
                r0 = r9
                android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$LayoutParams r0 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r0
                int r0 = r0.f52431a
                r10 = r0
                r0 = 0
                r11 = r0
                r0 = r11
                r12 = r0
                r0 = r10
                r1 = 1
                r0 = r0 & r1
                if (r0 == 0) goto L7a
                r0 = r9
                int r0 = androidx.core.view.C0926v.m44087l(r0)
                r13 = r0
                r0 = r7
                if (r0 <= 0) goto L56
                r0 = r10
                r1 = 12
                r0 = r0 & r1
                if (r0 == 0) goto L56
                r0 = r11
                r12 = r0
                r0 = r6
                int r0 = -r0
                r1 = r9
                int r1 = r1.getBottom()
                r2 = r13
                int r1 = r1 - r2
                r2 = r5
                int r2 = r2.m11307g()
                int r1 = r1 - r2
                if (r0 < r1) goto L7a
            L50:
                r0 = 1
                r12 = r0
                goto L7a
            L56:
                r0 = r11
                r12 = r0
                r0 = r10
                r1 = 2
                r0 = r0 & r1
                if (r0 == 0) goto L7a
                r0 = r11
                r12 = r0
                r0 = r6
                int r0 = -r0
                r1 = r9
                int r1 = r1.getBottom()
                r2 = r13
                int r1 = r1 - r2
                r2 = r5
                int r2 = r2.m11307g()
                int r1 = r1 - r2
                if (r0 < r1) goto L7a
                goto L50
            L7a:
                r0 = r5
                boolean r0 = r0.f52396e
                if (r0 == 0) goto L8b
                r0 = r5
                r1 = r4
                android.view.View r1 = m11300a(r1)
                boolean r0 = r0.m11316a(r1)
                r12 = r0
            L8b:
                r0 = r5
                r1 = r12
                boolean r0 = r0.m11314a(r1)
                r12 = r0
                r0 = r8
                if (r0 != 0) goto La5
                r0 = r12
                if (r0 == 0) goto La9
                r0 = r4
                r1 = r5
                boolean r0 = m11290d(r0, r1)
                if (r0 == 0) goto La9
            La5:
                r0 = r5
                r0.jumpDrawablesToCurrentState()
            La9:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.m11299a(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, int, int, boolean):void");
        }

        /* renamed from: a */
        private void m11298a(final CoordinatorLayout coordinatorLayout, final T t, final View view) {
            if (getTopBottomOffsetForScrollingSibling() != (-t.m11311c()) && view.canScrollVertically(1)) {
                m11297a(coordinatorLayout, (CoordinatorLayout) t, C0869c.C0870a.f3670m, false);
            }
            if (getTopBottomOffsetForScrollingSibling() != 0) {
                if (!view.canScrollVertically(-1)) {
                    m11297a(coordinatorLayout, (CoordinatorLayout) t, C0869c.C0870a.f3671n, true);
                    return;
                }
                final int i = -t.m11310d();
                if (i == 0) {
                    return;
                }
                C0926v.m44125a(coordinatorLayout, C0869c.C0870a.f3671n, new AbstractC0878f() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.2
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // androidx.core.view.p038a.AbstractC0878f
                    /* renamed from: a */
                    public final boolean mo11089a(View view2) {
                        BaseBehavior.this.mo11282a(coordinatorLayout, (CoordinatorLayout) t, view, 0, i, new int[]{0, 0}, 1);
                        return true;
                    }
                });
            }
        }

        /* renamed from: a */
        private void m11297a(CoordinatorLayout coordinatorLayout, final T t, C0869c.C0870a c0870a, final boolean z) {
            C0926v.m44125a(coordinatorLayout, c0870a, new AbstractC0878f() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.3
                @Override // androidx.core.view.p038a.AbstractC0878f
                /* renamed from: a */
                public final boolean mo11089a(View view) {
                    t.setExpanded(z);
                    return true;
                }
            });
        }

        /* renamed from: a */
        private static boolean m11301a(int i, int i2) {
            return (i & i2) == i2;
        }

        /* renamed from: b */
        private static View m11292b(AppBarLayout appBarLayout, int i) {
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

        /* renamed from: b */
        private void m11294b(CoordinatorLayout coordinatorLayout, T t) {
            int i;
            int i2;
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            int m11295a = m11295a(t, topBottomOffsetForScrollingSibling);
            if (m11295a >= 0) {
                View childAt = t.getChildAt(m11295a);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int i3 = layoutParams.f52431a;
                if ((i3 & 17) != 17) {
                    return;
                }
                int i4 = -childAt.getTop();
                int i5 = -childAt.getBottom();
                int i6 = i5;
                if (m11295a == t.getChildCount() - 1) {
                    i6 = i5 + t.m11307g();
                }
                if (m11301a(i3, 2)) {
                    i = i6 + C0926v.m44087l(childAt);
                    i2 = i4;
                } else {
                    i2 = i4;
                    i = i6;
                    if (m11301a(i3, 5)) {
                        i = C0926v.m44087l(childAt) + i6;
                        if (topBottomOffsetForScrollingSibling < i) {
                            i2 = i;
                            i = i6;
                        } else {
                            i2 = i4;
                        }
                    }
                }
                int i7 = i2;
                int i8 = i;
                if (m11301a(i3, 32)) {
                    i7 = i2 + layoutParams.topMargin;
                    i8 = i - layoutParams.bottomMargin;
                }
                int i9 = i7;
                if (topBottomOffsetForScrollingSibling < (i8 + i7) / 2) {
                    i9 = i8;
                }
                m11293b(coordinatorLayout, (CoordinatorLayout) t, C0770a.m44521a(i9, -t.m11311c(), 0));
            }
        }

        /* renamed from: b */
        private void m11293b(final CoordinatorLayout coordinatorLayout, final T t, int i) {
            int abs = Math.abs(getTopBottomOffsetForScrollingSibling() - i);
            float abs2 = Math.abs((float) BitmapDescriptorFactory.HUE_RED);
            int round = abs2 > BitmapDescriptorFactory.HUE_RED ? Math.round((abs / abs2) * 1000.0f) * 3 : (int) (((abs / t.getHeight()) + 1.0f) * 150.0f);
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            if (topBottomOffsetForScrollingSibling == i) {
                ValueAnimator valueAnimator = this.f52414d;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.f52414d.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.f52414d;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.f52414d = valueAnimator3;
                valueAnimator3.setInterpolator(C14389a.f52372e);
                this.f52414d.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator4) {
                        BaseBehavior.this.m11261a_(coordinatorLayout, t, ((Integer) valueAnimator4.getAnimatedValue()).intValue());
                    }
                });
            } else {
                valueAnimator2.cancel();
            }
            this.f52414d.setDuration(Math.min(round, 600));
            this.f52414d.setIntValues(topBottomOffsetForScrollingSibling, i);
            this.f52414d.start();
        }

        /* renamed from: c */
        private void m11291c(CoordinatorLayout coordinatorLayout, T t) {
            C0926v.m44100d(coordinatorLayout, C0869c.C0870a.f3670m.m44238a());
            C0926v.m44100d(coordinatorLayout, C0869c.C0870a.f3671n.m44238a());
            View m11300a = m11300a(coordinatorLayout);
            if (m11300a == null || t.m11311c() == 0 || !(((CoordinatorLayout.C0702d) m11300a.getLayoutParams()).f3200a instanceof ScrollingViewBehavior)) {
                return;
            }
            m11298a(coordinatorLayout, (CoordinatorLayout) t, m11300a);
        }

        /* renamed from: d */
        private static boolean m11290d(CoordinatorLayout coordinatorLayout, T t) {
            List<View> m44652c = coordinatorLayout.m44652c(t);
            int size = m44652c.size();
            for (int i = 0; i < size; i++) {
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.C0702d) m44652c.get(i).getLayoutParams()).f3200a;
                if (behavior instanceof ScrollingViewBehavior) {
                    return ((HeaderScrollingViewBehavior) ((ScrollingViewBehavior) behavior)).f52474c != 0;
                }
            }
            return false;
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: a */
        final /* synthetic */ int mo11263a(View view) {
            return ((AppBarLayout) view).m11311c();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0144  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0149  */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final /* synthetic */ int mo11262a(androidx.coordinatorlayout.widget.CoordinatorLayout r7, android.view.View r8, int r9, int r10, int r11) {
            /*
                Method dump skipped, instructions count: 367
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.mo11262a(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, int, int, int):int");
        }

        /* renamed from: a */
        public Parcelable mo11288a(CoordinatorLayout coordinatorLayout, T t) {
            Parcelable b = super.mo11116b(coordinatorLayout, (CoordinatorLayout) t);
            int topAndBottomOffset = getTopAndBottomOffset();
            int childCount = t.getChildCount();
            boolean z = false;
            for (int i = 0; i < childCount; i++) {
                View childAt = t.getChildAt(i);
                int bottom = childAt.getBottom() + topAndBottomOffset;
                if (childAt.getTop() + topAndBottomOffset <= 0 && bottom >= 0) {
                    SavedState savedState = new SavedState(b);
                    savedState.firstVisibleChildIndex = i;
                    if (bottom == C0926v.m44087l(childAt) + t.m11307g()) {
                        z = true;
                    }
                    savedState.firstVisibleChildAtMinimumHeight = z;
                    savedState.firstVisibleChildPercentageShown = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo11130a(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
            mo11285a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), parcelable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo11128a(CoordinatorLayout coordinatorLayout, View view, View view2, int i) {
            mo11284a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo11127a(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            mo11283a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i, i2, i3, i4, i5, iArr);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo11126a(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
            mo11282a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i, i2, iArr, i3);
        }

        /* renamed from: a */
        public void mo11285a(CoordinatorLayout coordinatorLayout, T t, Parcelable parcelable) {
            if (!(parcelable instanceof SavedState)) {
                super.mo11130a(coordinatorLayout, (CoordinatorLayout) t, parcelable);
                this.f52415e = -1;
                return;
            }
            SavedState savedState = (SavedState) parcelable;
            super.mo11130a(coordinatorLayout, (CoordinatorLayout) t, savedState.getSuperState());
            this.f52415e = savedState.firstVisibleChildIndex;
            this.f52417g = savedState.firstVisibleChildPercentageShown;
            this.f52416f = savedState.firstVisibleChildAtMinimumHeight;
        }

        /* renamed from: a */
        public void mo11284a(CoordinatorLayout coordinatorLayout, T t, View view, int i) {
            if (this.f52413c == 0 || i == 1) {
                m11294b(coordinatorLayout, (CoordinatorLayout) t);
                if (t.f52396e) {
                    t.m11314a(t.m11316a(view));
                }
            }
            this.f52418h = new WeakReference<>(view);
        }

        /* renamed from: a */
        public void mo11283a(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            if (i4 < 0) {
                iArr[1] = m11259b(coordinatorLayout, t, i4, -t.m11309e(), 0);
            }
            if (i4 == 0) {
                m11291c(coordinatorLayout, (CoordinatorLayout) t);
            }
        }

        /* renamed from: a */
        public void mo11282a(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int[] iArr, int i3) {
            int i4;
            int i5;
            if (i2 != 0) {
                if (i2 < 0) {
                    int i6 = -t.m11311c();
                    i5 = i6;
                    i4 = t.m11310d() + i6;
                } else {
                    i5 = -t.m11311c();
                    i4 = 0;
                }
                if (i5 != i4) {
                    iArr[1] = m11259b(coordinatorLayout, t, i2, i5, i4);
                }
            }
            if (t.f52396e) {
                t.m11314a(t.m11316a(view));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo9852a(CoordinatorLayout coordinatorLayout, View view, int i) {
            return mo11287a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo11255a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return mo11286a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i, i2, i3, i4);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo11125a(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            return mo11281a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, view3, i, i2);
        }

        /* renamed from: a */
        public boolean mo11287a(CoordinatorLayout coordinatorLayout, T t, int i) {
            boolean a = super.mo9852a(coordinatorLayout, (CoordinatorLayout) t, i);
            int i2 = t.f52393b;
            int i3 = this.f52415e;
            if (i3 >= 0 && (i2 & 8) == 0) {
                View childAt = t.getChildAt(i3);
                m11261a_(coordinatorLayout, t, (-childAt.getBottom()) + (this.f52416f ? C0926v.m44087l(childAt) + t.m11307g() : Math.round(childAt.getHeight() * this.f52417g)));
            } else if (i2 != 0) {
                boolean z = (i2 & 4) != 0;
                if ((i2 & 2) != 0) {
                    int i4 = -t.m11311c();
                    if (z) {
                        m11293b(coordinatorLayout, (CoordinatorLayout) t, i4);
                    } else {
                        m11261a_(coordinatorLayout, t, i4);
                    }
                } else if ((i2 & 1) != 0) {
                    if (z) {
                        m11293b(coordinatorLayout, (CoordinatorLayout) t, 0);
                    } else {
                        m11261a_(coordinatorLayout, t, 0);
                    }
                }
            }
            t.f52393b = 0;
            this.f52415e = -1;
            mo11250b(C0770a.m44521a(getTopAndBottomOffset(), -t.m11311c(), 0));
            m11299a(coordinatorLayout, (AppBarLayout) t, getTopAndBottomOffset(), 0, true);
            t.m11318a(getTopAndBottomOffset());
            m11291c(coordinatorLayout, (CoordinatorLayout) t);
            return a;
        }

        /* renamed from: a */
        public boolean mo11286a(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3, int i4) {
            if (((CoordinatorLayout.C0702d) t.getLayoutParams()).height == -2) {
                coordinatorLayout.m44662a(t, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
                return true;
            }
            return super.mo11255a(coordinatorLayout, (CoordinatorLayout) t, i, i2, i3, i4);
        }

        /* renamed from: a */
        public boolean mo11281a(CoordinatorLayout coordinatorLayout, T t, View view, View view2, int i, int i2) {
            boolean z;
            ValueAnimator valueAnimator;
            if ((i & 2) != 0) {
                z = true;
                if (!t.f52396e) {
                    if ((t.m11311c() != 0) && coordinatorLayout.getHeight() - view.getHeight() <= t.getHeight()) {
                        z = true;
                    }
                }
                if (z && (valueAnimator = this.f52414d) != null) {
                    valueAnimator.cancel();
                }
                this.f52418h = null;
                this.f52413c = i2;
                return z;
            }
            z = false;
            if (z) {
                valueAnimator.cancel();
            }
            this.f52418h = null;
            this.f52413c = i2;
            return z;
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: b */
        final /* synthetic */ int mo11260b(View view) {
            return -((AppBarLayout) view).m11309e();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: b */
        public final /* synthetic */ Parcelable mo11116b(CoordinatorLayout coordinatorLayout, View view) {
            return mo11288a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: c */
        final /* synthetic */ void mo11257c(CoordinatorLayout coordinatorLayout, View view) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            m11294b(coordinatorLayout, (CoordinatorLayout) appBarLayout);
            if (appBarLayout.f52396e) {
                appBarLayout.m11314a(appBarLayout.m11316a(m11300a(coordinatorLayout)));
            }
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: c */
        final /* synthetic */ boolean mo11258c(View view) {
            AbstractC14406a abstractC14406a = this.f52419i;
            if (abstractC14406a != null) {
                return abstractC14406a.mo11289a();
            }
            WeakReference<View> weakReference = this.f52418h;
            if (weakReference == null) {
                return true;
            }
            View view2 = weakReference.get();
            return view2 != null && view2.isShown() && !view2.canScrollVertically(-1);
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        int getTopBottomOffsetForScrollingSibling() {
            return getTopAndBottomOffset() + this.f52412b;
        }

        public void setDragCallback(AbstractC14406a abstractC14406a) {
            this.f52419i = abstractC14406a;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$Behavior.class */
    public static class Behavior extends BaseBehavior<AppBarLayout> {

        /* renamed from: com.google.android.material.appbar.AppBarLayout$Behavior$a */
        /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$Behavior$a.class */
        public static abstract class AbstractC14407a extends BaseBehavior.AbstractC14406a<AppBarLayout> {
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ Parcelable mo11288a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            return super.mo11288a(coordinatorLayout, (CoordinatorLayout) appBarLayout);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo11285a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            super.mo11285a(coordinatorLayout, (CoordinatorLayout) appBarLayout, parcelable);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo11284a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
            super.mo11284a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo11283a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            super.mo11283a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, i3, i4, i5, iArr);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo11282a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
            super.mo11282a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, iArr, i3);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo11287a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            return super.mo11287a(coordinatorLayout, (CoordinatorLayout) appBarLayout, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo11286a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3, int i4) {
            return super.mo11286a(coordinatorLayout, (CoordinatorLayout) appBarLayout, i, i2, i3, i4);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo11281a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i, int i2) {
            return super.mo11281a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, view2, i, i2);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        /* renamed from: b */
        public final /* bridge */ /* synthetic */ boolean mo11250b(int i) {
            return super.mo11250b(i);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void setDragCallback(BaseBehavior.AbstractC14406a abstractC14406a) {
            super.setDragCallback(abstractC14406a);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$LayoutParams.class */
    public static class LayoutParams extends LinearLayout.LayoutParams {

        /* renamed from: a */
        public int f52431a;

        /* renamed from: b */
        Interpolator f52432b;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f52431a = 1;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2, f);
            this.f52431a = 1;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f52431a = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C14376a.C14388l.AppBarLayout_Layout);
            this.f52431a = obtainStyledAttributes.getInt(C14376a.C14388l.AppBarLayout_Layout_layout_scrollFlags, 0);
            if (obtainStyledAttributes.hasValue(C14376a.C14388l.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.f52432b = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(C14376a.C14388l.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f52431a = 1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f52431a = 1;
        }

        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f52431a = 1;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((LinearLayout.LayoutParams) layoutParams);
            this.f52431a = 1;
            this.f52431a = layoutParams.f52431a;
            this.f52432b = layoutParams.f52432b;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior.class */
    public static class ScrollingViewBehavior extends HeaderScrollingViewBehavior {
        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C14376a.C14388l.ScrollingViewBehavior_Layout);
            ((HeaderScrollingViewBehavior) this).f52474c = obtainStyledAttributes.getDimensionPixelSize(C14376a.C14388l.ScrollingViewBehavior_Layout_behavior_overlapTop, 0);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: b */
        private static AppBarLayout m11278b(List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        /* renamed from: a */
        final float mo11256a(View view) {
            int i;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int m11311c = appBarLayout.m11311c();
                int m11310d = appBarLayout.m11310d();
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.C0702d) appBarLayout.getLayoutParams()).f3200a;
                int topBottomOffsetForScrollingSibling = behavior instanceof BaseBehavior ? ((BaseBehavior) behavior).getTopBottomOffsetForScrollingSibling() : 0;
                return ((m11310d == 0 || m11311c + topBottomOffsetForScrollingSibling > m11310d) && (i = m11311c - m11310d) != 0) ? (topBottomOffsetForScrollingSibling / i) + 1.0f : BitmapDescriptorFactory.HUE_RED;
            }
            return BitmapDescriptorFactory.HUE_RED;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        /* renamed from: a */
        final /* synthetic */ View mo11254a(List list) {
            return m11278b(list);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final void mo11280a(CoordinatorLayout coordinatorLayout, View view) {
            if (view instanceof AppBarLayout) {
                C0926v.m44100d(coordinatorLayout, C0869c.C0870a.f3670m.m44238a());
                C0926v.m44100d(coordinatorLayout, C0869c.C0870a.f3671n.m44238a());
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final boolean mo9838a(View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo9852a(CoordinatorLayout coordinatorLayout, View view, int i) {
            return super.mo9852a(coordinatorLayout, (CoordinatorLayout) view, i);
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo11255a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return super.mo11255a(coordinatorLayout, view, i, i2, i3, i4);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final boolean mo11279a(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout m11278b = m11278b(coordinatorLayout.m44656b(view));
            if (m11278b != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.f52472a;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (rect2.contains(rect)) {
                    return false;
                }
                m11278b.setExpanded(false, !z);
                return true;
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final boolean mo9851a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.C0702d) view2.getLayoutParams()).f3200a;
            if (behavior instanceof BaseBehavior) {
                C0926v.m44098e(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) behavior).f52412b) + m11253b()) - m11251c(view2));
            }
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (!appBarLayout.f52396e) {
                    return false;
                }
                appBarLayout.m11314a(appBarLayout.m11316a(view));
                return false;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        /* renamed from: b */
        public final int mo11252b(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).m11311c() : super.mo11252b(view);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        /* renamed from: b */
        public final /* bridge */ /* synthetic */ boolean mo11250b(int i) {
            return super.mo11250b(i);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$a.class */
    public interface AbstractC14408a<T extends AppBarLayout> {
        /* renamed from: a */
        void mo11264a(int i);
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$b.class */
    public interface AbstractC14409b extends AbstractC14408a<AppBarLayout> {
    }

    public AppBarLayout(Context context) {
        this(context, null);
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.appBarLayoutStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppBarLayout(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: a */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* renamed from: a */
    private static LayoutParams m11315a(ViewGroup.LayoutParams layoutParams) {
        return (Build.VERSION.SDK_INT < 19 || !(layoutParams instanceof LinearLayout.LayoutParams)) ? layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams) : new LayoutParams((LinearLayout.LayoutParams) layoutParams);
    }

    /* renamed from: a */
    private void m11313a(boolean z, boolean z2, boolean z3) {
        int i = z ? 1 : 2;
        int i2 = 0;
        int i3 = z2 ? 4 : 0;
        if (z3) {
            i2 = 8;
        }
        this.f52393b = i | i3 | i2;
        requestLayout();
    }

    /* renamed from: h */
    private boolean m11306h() {
        return this.f52408r != null && m11307g() > 0;
    }

    /* renamed from: i */
    private void m11305i() {
        this.f52398h = -1;
        this.f52399i = -1;
        this.f52400j = -1;
    }

    /* renamed from: j */
    private static LayoutParams m11304j() {
        return new LayoutParams(-1, -2);
    }

    /* renamed from: k */
    private void m11303k() {
        WeakReference<View> weakReference = this.f52405o;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f52405o = null;
    }

    /* renamed from: l */
    private boolean m11302l() {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            return childAt.getVisibility() != 8 && !C0926v.m44080s(childAt);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0699a
    /* renamed from: a */
    public final CoordinatorLayout.Behavior<AppBarLayout> mo10748a() {
        return new Behavior();
    }

    /* renamed from: a */
    final void m11318a(int i) {
        this.f52397g = i;
        if (!willNotDraw()) {
            C0926v.m44101d(this);
        }
        List<AbstractC14408a> list = this.f52395d;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC14408a abstractC14408a = this.f52395d.get(i2);
                if (abstractC14408a != null) {
                    abstractC14408a.mo11264a(i);
                }
            }
        }
    }

    /* renamed from: a */
    final boolean m11316a(View view) {
        int i;
        if (this.f52405o == null && (i = this.f52404n) != -1) {
            View findViewById = view != null ? view.findViewById(i) : null;
            View view2 = findViewById;
            if (findViewById == null) {
                view2 = findViewById;
                if (getParent() instanceof ViewGroup) {
                    view2 = ((ViewGroup) getParent()).findViewById(this.f52404n);
                }
            }
            if (view2 != null) {
                this.f52405o = new WeakReference<>(view2);
            }
        }
        WeakReference<View> weakReference = this.f52405o;
        View view3 = null;
        if (weakReference != null) {
            view3 = weakReference.get();
        }
        if (view3 != null) {
            view = view3;
        }
        if (view != null) {
            return view.canScrollVertically(-1) || view.getScrollY() > 0;
        }
        return false;
    }

    /* renamed from: a */
    final boolean m11314a(boolean z) {
        if (this.f52403m != z) {
            this.f52403m = z;
            refreshDrawableState();
            if (!this.f52396e || !(getBackground() instanceof C14670h)) {
                return true;
            }
            final C14670h c14670h = (C14670h) getBackground();
            float dimension = getResources().getDimension(C14376a.C14380d.design_appbar_elevation);
            float f = z ? 0.0f : dimension;
            if (!z) {
                dimension = 0.0f;
            }
            ValueAnimator valueAnimator = this.f52406p;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, dimension);
            this.f52406p = ofFloat;
            ofFloat.setDuration(getResources().getInteger(C14376a.C14383g.app_bar_elevation_anim_duration));
            this.f52406p.setInterpolator(C14389a.f52368a);
            this.f52406p.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.AppBarLayout.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    c14670h.m10439r(((Float) valueAnimator2.getAnimatedValue()).floatValue());
                }
            });
            this.f52406p.start();
            return true;
        }
        return false;
    }

    /* renamed from: b */
    final void m11312b() {
        setWillNotDraw(!m11306h());
    }

    /* renamed from: c */
    public final int m11311c() {
        int i;
        int i2 = this.f52398h;
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
            int i5 = layoutParams.f52431a;
            i = i4;
            if ((i5 & 1) == 0) {
                break;
            }
            int i6 = i4 + measuredHeight + layoutParams.topMargin + layoutParams.bottomMargin;
            i4 = i6;
            if (i3 == 0) {
                i4 = i6;
                if (C0926v.m44080s(childAt)) {
                    i4 = i6 - m11307g();
                }
            }
            if ((i5 & 2) != 0) {
                i = i4 - C0926v.m44087l(childAt);
                break;
            }
            i3++;
        }
        int max = Math.max(0, i);
        this.f52398h = max;
        return max;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007f  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int m11310d() {
        /*
            Method dump skipped, instructions count: 182
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.m11310d():int");
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (m11306h()) {
            int save = canvas.save();
            canvas.translate(BitmapDescriptorFactory.HUE_RED, -this.f52397g);
            this.f52408r.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f52408r;
        if (drawable == null || !drawable.isStateful() || !drawable.setState(drawableState)) {
            return;
        }
        invalidateDrawable(drawable);
    }

    /* renamed from: e */
    final int m11309e() {
        int i;
        int i2 = this.f52400j;
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
            int i5 = layoutParams.topMargin;
            int i6 = layoutParams.bottomMargin;
            int i7 = layoutParams.f52431a;
            i = i4;
            if ((i7 & 1) == 0) {
                break;
            }
            i4 += measuredHeight + i5 + i6;
            if ((i7 & 2) != 0) {
                i = i4 - C0926v.m44087l(childAt);
                break;
            }
            i3++;
        }
        int max = Math.max(0, i);
        this.f52400j = max;
        return max;
    }

    /* renamed from: f */
    public final int m11308f() {
        int m11307g = m11307g();
        int m44087l = C0926v.m44087l(this);
        if (m44087l == 0) {
            int childCount = getChildCount();
            m44087l = childCount > 0 ? C0926v.m44087l(getChildAt(childCount - 1)) : 0;
            if (m44087l == 0) {
                return getHeight() / 3;
            }
        }
        return (m44087l * 2) + m11307g;
    }

    /* renamed from: g */
    final int m11307g() {
        C0889ac c0889ac = this.f52394c;
        if (c0889ac != null) {
            return c0889ac.m44227b();
        }
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C14674i.m10437a(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        if (this.f52407q == null) {
            this.f52407q = new int[4];
        }
        int[] iArr = this.f52407q;
        int[] onCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        iArr[0] = this.f52402l ? C14376a.C14378b.state_liftable : -C14376a.C14378b.state_liftable;
        iArr[1] = (!this.f52402l || !this.f52403m) ? -C14376a.C14378b.state_lifted : C14376a.C14378b.state_lifted;
        iArr[2] = this.f52402l ? C14376a.C14378b.state_collapsible : -C14376a.C14378b.state_collapsible;
        iArr[3] = (!this.f52402l || !this.f52403m) ? -C14376a.C14378b.state_collapsed : C14376a.C14378b.state_collapsed;
        return mergeDrawableStates(onCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m11303k();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        super.onLayout(z, i, i2, i3, i4);
        if (C0926v.m44080s(this) && m11302l()) {
            int m11307g = m11307g();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                C0926v.m44098e(getChildAt(childCount), m11307g);
            }
        }
        m11305i();
        this.f52392a = false;
        int childCount2 = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount2) {
                break;
            } else if (((LayoutParams) getChildAt(i5).getLayoutParams()).f52432b != null) {
                this.f52392a = true;
                break;
            } else {
                i5++;
            }
        }
        Drawable drawable = this.f52408r;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), m11307g());
        }
        if (!this.f52401k) {
            boolean z3 = true;
            if (!this.f52396e) {
                int childCount3 = getChildCount();
                int i6 = 0;
                while (true) {
                    if (i6 >= childCount3) {
                        z2 = false;
                        break;
                    }
                    LayoutParams layoutParams = (LayoutParams) getChildAt(i6).getLayoutParams();
                    if ((layoutParams.f52431a & 1) == 1 && (layoutParams.f52431a & 10) != 0) {
                        z2 = true;
                        break;
                    }
                    i6++;
                }
                z3 = z2;
            }
            if (this.f52402l == z3) {
                return;
            }
            this.f52402l = z3;
            refreshDrawableState();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824 && C0926v.m44080s(this) && m11302l()) {
            int measuredHeight = getMeasuredHeight();
            if (mode == Integer.MIN_VALUE) {
                measuredHeight = C0770a.m44521a(getMeasuredHeight() + m11307g(), 0, View.MeasureSpec.getSize(i2));
            } else if (mode == 0) {
                measuredHeight += m11307g();
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
        m11305i();
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C14674i.m10436a(this, f);
    }

    public void setExpanded(boolean z) {
        setExpanded(z, C0926v.m44157B(this));
    }

    public void setExpanded(boolean z, boolean z2) {
        m11313a(z, z2, true);
    }

    public void setLiftOnScroll(boolean z) {
        this.f52396e = z;
    }

    public void setLiftOnScrollTargetViewId(int i) {
        this.f52404n = i;
        m11303k();
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
        Drawable drawable2 = this.f52408r;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f52408r = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f52408r.setState(getDrawableState());
                }
                C0840a.m44349b(this.f52408r, C0926v.m44097f(this));
                this.f52408r.setVisible(getVisibility() == 0, false);
                this.f52408r.setCallback(this);
            }
            m11312b();
            C0926v.m44101d(this);
        }
    }

    public void setStatusBarForegroundColor(int i) {
        setStatusBarForeground(new ColorDrawable(i));
    }

    public void setStatusBarForegroundResource(int i) {
        setStatusBarForeground(C0153a.m46374b(getContext(), i));
    }

    @Deprecated
    public void setTargetElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            C14415b.m11244a(this, f);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f52408r;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f52408r;
    }
}
