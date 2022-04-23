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
import androidx.core.view.a.c;
import androidx.core.view.a.f;
import androidx.core.view.ac;
import androidx.core.view.j;
import androidx.core.view.v;
import androidx.customview.view.AbsSavedState;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.k.h;
import com.google.android.material.k.i;
import java.lang.ref.WeakReference;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/AppBarLayout.class */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.a {
    private static final int f = a.k.Widget_Design_AppBarLayout;

    /* renamed from: a  reason: collision with root package name */
    boolean f30194a;

    /* renamed from: b  reason: collision with root package name */
    int f30195b;

    /* renamed from: c  reason: collision with root package name */
    ac f30196c;

    /* renamed from: d  reason: collision with root package name */
    List<a> f30197d;
    boolean e;
    private int g;
    private int h;
    private int i;
    private int j;
    private boolean k;
    private boolean l;
    private boolean m;
    private int n;
    private WeakReference<View> o;
    private ValueAnimator p;
    private int[] q;
    private Drawable r;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior.class */
    public static class BaseBehavior<T extends AppBarLayout> extends HeaderBehavior<T> {

        /* renamed from: b  reason: collision with root package name */
        private int f30201b;

        /* renamed from: c  reason: collision with root package name */
        private int f30202c;

        /* renamed from: d  reason: collision with root package name */
        private ValueAnimator f30203d;
        private int e = -1;
        private boolean f;
        private float g;
        private WeakReference<View> h;
        private a i;

        /* JADX INFO: Access modifiers changed from: protected */
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

        /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$a.class */
        public static abstract class a<T extends AppBarLayout> {
            public abstract boolean a();
        }

        public BaseBehavior() {
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        private static int a(T t, int i) {
            int childCount = t.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = t.getChildAt(i2);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int i3 = top;
                int i4 = bottom;
                if (a(layoutParams.f30214a, 32)) {
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

        private static View a(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if ((childAt instanceof j) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x004d, code lost:
            if ((-r6) >= ((r0.getBottom() - r0) - r5.g())) goto L_0x0050;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0050, code lost:
            r12 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0074, code lost:
            if ((-r6) >= ((r0.getBottom() - r0) - r5.g())) goto L_0x0050;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static void a(androidx.coordinatorlayout.widget.CoordinatorLayout r4, T r5, int r6, int r7, boolean r8) {
            /*
                r0 = r5
                r1 = r6
                android.view.View r0 = b(r0, r1)
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L_0x00a9
                r0 = r9
                android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$LayoutParams r0 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r0
                int r0 = r0.f30214a
                r10 = r0
                r0 = 0
                r11 = r0
                r0 = r11
                r12 = r0
                r0 = r10
                r1 = 1
                r0 = r0 & r1
                if (r0 == 0) goto L_0x007a
                r0 = r9
                int r0 = androidx.core.view.v.l(r0)
                r13 = r0
                r0 = r7
                if (r0 <= 0) goto L_0x0056
                r0 = r10
                r1 = 12
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0056
                r0 = r11
                r12 = r0
                r0 = r6
                int r0 = -r0
                r1 = r9
                int r1 = r1.getBottom()
                r2 = r13
                int r1 = r1 - r2
                r2 = r5
                int r2 = r2.g()
                int r1 = r1 - r2
                if (r0 < r1) goto L_0x007a
            L_0x0050:
                r0 = 1
                r12 = r0
                goto L_0x007a
            L_0x0056:
                r0 = r11
                r12 = r0
                r0 = r10
                r1 = 2
                r0 = r0 & r1
                if (r0 == 0) goto L_0x007a
                r0 = r11
                r12 = r0
                r0 = r6
                int r0 = -r0
                r1 = r9
                int r1 = r1.getBottom()
                r2 = r13
                int r1 = r1 - r2
                r2 = r5
                int r2 = r2.g()
                int r1 = r1 - r2
                if (r0 < r1) goto L_0x007a
                goto L_0x0050
            L_0x007a:
                r0 = r5
                boolean r0 = r0.e
                if (r0 == 0) goto L_0x008b
                r0 = r5
                r1 = r4
                android.view.View r1 = a(r1)
                boolean r0 = r0.a(r1)
                r12 = r0
            L_0x008b:
                r0 = r5
                r1 = r12
                boolean r0 = r0.a(r1)
                r12 = r0
                r0 = r8
                if (r0 != 0) goto L_0x00a5
                r0 = r12
                if (r0 == 0) goto L_0x00a9
                r0 = r4
                r1 = r5
                boolean r0 = d(r0, r1)
                if (r0 == 0) goto L_0x00a9
            L_0x00a5:
                r0 = r5
                r0.jumpDrawablesToCurrentState()
            L_0x00a9:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.a(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, int, int, boolean):void");
        }

        private void a(final CoordinatorLayout coordinatorLayout, final T t, final View view) {
            if (getTopBottomOffsetForScrollingSibling() != (-t.c()) && view.canScrollVertically(1)) {
                a(coordinatorLayout, (CoordinatorLayout) t, c.a.m, false);
            }
            if (getTopBottomOffsetForScrollingSibling() == 0) {
                return;
            }
            if (view.canScrollVertically(-1)) {
                final int i = -t.d();
                if (i != 0) {
                    v.a(coordinatorLayout, c.a.n, new f() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.2
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // androidx.core.view.a.f
                        public final boolean a(View view2) {
                            BaseBehavior.this.a(coordinatorLayout, (CoordinatorLayout) t, view, 0, i, new int[]{0, 0}, 1);
                            return true;
                        }
                    });
                    return;
                }
                return;
            }
            a(coordinatorLayout, (CoordinatorLayout) t, c.a.n, true);
        }

        private void a(CoordinatorLayout coordinatorLayout, final T t, c.a aVar, final boolean z) {
            v.a(coordinatorLayout, aVar, new f() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.3
                @Override // androidx.core.view.a.f
                public final boolean a(View view) {
                    t.setExpanded(z);
                    return true;
                }
            });
        }

        private static boolean a(int i, int i2) {
            return (i & i2) == i2;
        }

        private static View b(AppBarLayout appBarLayout, int i) {
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

        private void b(CoordinatorLayout coordinatorLayout, T t) {
            int i;
            int i2;
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            int a2 = a(t, topBottomOffsetForScrollingSibling);
            if (a2 >= 0) {
                View childAt = t.getChildAt(a2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int i3 = layoutParams.f30214a;
                if ((i3 & 17) == 17) {
                    int i4 = -childAt.getTop();
                    int i5 = -childAt.getBottom();
                    int i6 = i5;
                    if (a2 == t.getChildCount() - 1) {
                        i6 = i5 + t.g();
                    }
                    if (a(i3, 2)) {
                        i = i6 + v.l(childAt);
                        i2 = i4;
                    } else {
                        i2 = i4;
                        i = i6;
                        if (a(i3, 5)) {
                            i = v.l(childAt) + i6;
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
                    if (a(i3, 32)) {
                        i7 = i2 + layoutParams.topMargin;
                        i8 = i - layoutParams.bottomMargin;
                    }
                    int i9 = i7;
                    if (topBottomOffsetForScrollingSibling < (i8 + i7) / 2) {
                        i9 = i8;
                    }
                    b(coordinatorLayout, (CoordinatorLayout) t, androidx.core.b.a.a(i9, -t.c(), 0));
                }
            }
        }

        private void b(final CoordinatorLayout coordinatorLayout, final T t, int i) {
            int abs = Math.abs(getTopBottomOffsetForScrollingSibling() - i);
            float abs2 = Math.abs((float) BitmapDescriptorFactory.HUE_RED);
            int round = abs2 > BitmapDescriptorFactory.HUE_RED ? Math.round((abs / abs2) * 1000.0f) * 3 : (int) (((abs / t.getHeight()) + 1.0f) * 150.0f);
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            if (topBottomOffsetForScrollingSibling == i) {
                ValueAnimator valueAnimator = this.f30203d;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.f30203d.cancel();
                    return;
                }
                return;
            }
            ValueAnimator valueAnimator2 = this.f30203d;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.f30203d = valueAnimator3;
                valueAnimator3.setInterpolator(com.google.android.material.a.a.e);
                this.f30203d.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator4) {
                        BaseBehavior.this.a_(coordinatorLayout, t, ((Integer) valueAnimator4.getAnimatedValue()).intValue());
                    }
                });
            } else {
                valueAnimator2.cancel();
            }
            this.f30203d.setDuration(Math.min(round, 600));
            this.f30203d.setIntValues(topBottomOffsetForScrollingSibling, i);
            this.f30203d.start();
        }

        private void c(CoordinatorLayout coordinatorLayout, T t) {
            v.d(coordinatorLayout, c.a.m.a());
            v.d(coordinatorLayout, c.a.n.a());
            View a2 = a(coordinatorLayout);
            if (a2 != null && t.c() != 0 && (((CoordinatorLayout.d) a2.getLayoutParams()).f1663a instanceof ScrollingViewBehavior)) {
                a(coordinatorLayout, (CoordinatorLayout) t, a2);
            }
        }

        private static boolean d(CoordinatorLayout coordinatorLayout, T t) {
            List<View> c2 = coordinatorLayout.c(t);
            int size = c2.size();
            for (int i = 0; i < size; i++) {
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.d) c2.get(i).getLayoutParams()).f1663a;
                if (behavior instanceof ScrollingViewBehavior) {
                    return ((HeaderScrollingViewBehavior) ((ScrollingViewBehavior) behavior)).f30234c != 0;
                }
            }
            return false;
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        final /* synthetic */ int a(View view) {
            return ((AppBarLayout) view).c();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0144  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0149  */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final /* synthetic */ int a(androidx.coordinatorlayout.widget.CoordinatorLayout r7, android.view.View r8, int r9, int r10, int r11) {
            /*
                Method dump skipped, instructions count: 367
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.a(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, int, int, int):int");
        }

        public Parcelable a(CoordinatorLayout coordinatorLayout, T t) {
            Parcelable b2 = super.b(coordinatorLayout, (CoordinatorLayout) t);
            int topAndBottomOffset = getTopAndBottomOffset();
            int childCount = t.getChildCount();
            boolean z = false;
            for (int i = 0; i < childCount; i++) {
                View childAt = t.getChildAt(i);
                int bottom = childAt.getBottom() + topAndBottomOffset;
                if (childAt.getTop() + topAndBottomOffset <= 0 && bottom >= 0) {
                    SavedState savedState = new SavedState(b2);
                    savedState.firstVisibleChildIndex = i;
                    if (bottom == v.l(childAt) + t.g()) {
                        z = true;
                    }
                    savedState.firstVisibleChildAtMinimumHeight = z;
                    savedState.firstVisibleChildPercentageShown = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return b2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final /* bridge */ /* synthetic */ void a(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
            a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), parcelable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void a(CoordinatorLayout coordinatorLayout, View view, View view2, int i) {
            a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final /* bridge */ /* synthetic */ void a(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i, i2, i3, i4, i5, iArr);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void a(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
            a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i, i2, iArr, i3);
        }

        public void a(CoordinatorLayout coordinatorLayout, T t, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                SavedState savedState = (SavedState) parcelable;
                super.a(coordinatorLayout, (CoordinatorLayout) t, savedState.getSuperState());
                this.e = savedState.firstVisibleChildIndex;
                this.g = savedState.firstVisibleChildPercentageShown;
                this.f = savedState.firstVisibleChildAtMinimumHeight;
                return;
            }
            super.a(coordinatorLayout, (CoordinatorLayout) t, parcelable);
            this.e = -1;
        }

        public void a(CoordinatorLayout coordinatorLayout, T t, View view, int i) {
            if (this.f30202c == 0 || i == 1) {
                b(coordinatorLayout, (CoordinatorLayout) t);
                if (t.e) {
                    t.a(t.a(view));
                }
            }
            this.h = new WeakReference<>(view);
        }

        public void a(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            if (i4 < 0) {
                iArr[1] = b(coordinatorLayout, t, i4, -t.e(), 0);
            }
            if (i4 == 0) {
                c(coordinatorLayout, (CoordinatorLayout) t);
            }
        }

        public void a(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int[] iArr, int i3) {
            int i4;
            int i5;
            if (i2 != 0) {
                if (i2 < 0) {
                    int i6 = -t.c();
                    i5 = i6;
                    i4 = t.d() + i6;
                } else {
                    i5 = -t.c();
                    i4 = 0;
                }
                if (i5 != i4) {
                    iArr[1] = b(coordinatorLayout, t, i2, i5, i4);
                }
            }
            if (t.e) {
                t.a(t.a(view));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, View view, int i) {
            return a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i, i2, i3, i4);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            return a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, view3, i, i2);
        }

        public boolean a(CoordinatorLayout coordinatorLayout, T t, int i) {
            boolean a2 = super.a(coordinatorLayout, (CoordinatorLayout) t, i);
            int i2 = t.f30195b;
            int i3 = this.e;
            if (i3 >= 0 && (i2 & 8) == 0) {
                View childAt = t.getChildAt(i3);
                a_(coordinatorLayout, t, (-childAt.getBottom()) + (this.f ? v.l(childAt) + t.g() : Math.round(childAt.getHeight() * this.g)));
            } else if (i2 != 0) {
                boolean z = (i2 & 4) != 0;
                if ((i2 & 2) != 0) {
                    int i4 = -t.c();
                    if (z) {
                        b(coordinatorLayout, (CoordinatorLayout) t, i4);
                    } else {
                        a_(coordinatorLayout, t, i4);
                    }
                } else if ((i2 & 1) != 0) {
                    if (z) {
                        b(coordinatorLayout, (CoordinatorLayout) t, 0);
                    } else {
                        a_(coordinatorLayout, t, 0);
                    }
                }
            }
            t.f30195b = 0;
            this.e = -1;
            b(androidx.core.b.a.a(getTopAndBottomOffset(), -t.c(), 0));
            a(coordinatorLayout, (AppBarLayout) t, getTopAndBottomOffset(), 0, true);
            t.a(getTopAndBottomOffset());
            c(coordinatorLayout, (CoordinatorLayout) t);
            return a2;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3, int i4) {
            if (((CoordinatorLayout.d) t.getLayoutParams()).height != -2) {
                return super.a(coordinatorLayout, (CoordinatorLayout) t, i, i2, i3, i4);
            }
            coordinatorLayout.a(t, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
            return true;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, T t, View view, View view2, int i, int i2) {
            boolean z;
            ValueAnimator valueAnimator;
            if ((i & 2) != 0) {
                z = true;
                if (!t.e) {
                    if ((t.c() != 0) && coordinatorLayout.getHeight() - view.getHeight() <= t.getHeight()) {
                        z = true;
                    }
                }
                if (z && (valueAnimator = this.f30203d) != null) {
                    valueAnimator.cancel();
                }
                this.h = null;
                this.f30202c = i2;
                return z;
            }
            z = false;
            if (z) {
                valueAnimator.cancel();
            }
            this.h = null;
            this.f30202c = i2;
            return z;
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        final /* synthetic */ int b(View view) {
            return -((AppBarLayout) view).e();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final /* synthetic */ Parcelable b(CoordinatorLayout coordinatorLayout, View view) {
            return a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        final /* synthetic */ void c(CoordinatorLayout coordinatorLayout, View view) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            b(coordinatorLayout, (CoordinatorLayout) appBarLayout);
            if (appBarLayout.e) {
                appBarLayout.a(appBarLayout.a(a(coordinatorLayout)));
            }
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        final /* synthetic */ boolean c(View view) {
            a aVar = this.i;
            if (aVar != null) {
                return aVar.a();
            }
            WeakReference<View> weakReference = this.h;
            if (weakReference == null) {
                return true;
            }
            View view2 = weakReference.get();
            return view2 != null && view2.isShown() && !view2.canScrollVertically(-1);
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        int getTopBottomOffsetForScrollingSibling() {
            return getTopAndBottomOffset() + this.f30201b;
        }

        public void setDragCallback(a aVar) {
            this.i = aVar;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$Behavior.class */
    public static class Behavior extends BaseBehavior<AppBarLayout> {

        /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$Behavior$a.class */
        public static abstract class a extends BaseBehavior.a<AppBarLayout> {
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public final /* bridge */ /* synthetic */ Parcelable a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            return super.a(coordinatorLayout, (CoordinatorLayout) appBarLayout);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public final /* bridge */ /* synthetic */ void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            super.a(coordinatorLayout, (CoordinatorLayout) appBarLayout, parcelable);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
            super.a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public final /* bridge */ /* synthetic */ void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            super.a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, i3, i4, i5, iArr);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
            super.a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, iArr, i3);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public final /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            return super.a(coordinatorLayout, (CoordinatorLayout) appBarLayout, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public final /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3, int i4) {
            return super.a(coordinatorLayout, (CoordinatorLayout) appBarLayout, i, i2, i3, i4);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i, int i2) {
            return super.a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, view2, i, i2);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public final /* bridge */ /* synthetic */ boolean b(int i) {
            return super.b(i);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void setDragCallback(BaseBehavior.a aVar) {
            super.setDragCallback(aVar);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$LayoutParams.class */
    public static class LayoutParams extends LinearLayout.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public int f30214a;

        /* renamed from: b  reason: collision with root package name */
        Interpolator f30215b;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f30214a = 1;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2, f);
            this.f30214a = 1;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f30214a = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.l.AppBarLayout_Layout);
            this.f30214a = obtainStyledAttributes.getInt(a.l.AppBarLayout_Layout_layout_scrollFlags, 0);
            if (obtainStyledAttributes.hasValue(a.l.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.f30215b = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(a.l.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f30214a = 1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f30214a = 1;
        }

        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f30214a = 1;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((LinearLayout.LayoutParams) layoutParams);
            this.f30214a = 1;
            this.f30214a = layoutParams.f30214a;
            this.f30215b = layoutParams.f30215b;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior.class */
    public static class ScrollingViewBehavior extends HeaderScrollingViewBehavior {
        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.l.ScrollingViewBehavior_Layout);
            ((HeaderScrollingViewBehavior) this).f30234c = obtainStyledAttributes.getDimensionPixelSize(a.l.ScrollingViewBehavior_Layout_behavior_overlapTop, 0);
            obtainStyledAttributes.recycle();
        }

        private static AppBarLayout b(List<View> list) {
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
        final float a(View view) {
            int i;
            if (!(view instanceof AppBarLayout)) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int c2 = appBarLayout.c();
            int d2 = appBarLayout.d();
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.d) appBarLayout.getLayoutParams()).f1663a;
            int topBottomOffsetForScrollingSibling = behavior instanceof BaseBehavior ? ((BaseBehavior) behavior).getTopBottomOffsetForScrollingSibling() : 0;
            return ((d2 == 0 || c2 + topBottomOffsetForScrollingSibling > d2) && (i = c2 - d2) != 0) ? (topBottomOffsetForScrollingSibling / i) + 1.0f : BitmapDescriptorFactory.HUE_RED;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        final /* synthetic */ View a(List list) {
            return b(list);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void a(CoordinatorLayout coordinatorLayout, View view) {
            if (view instanceof AppBarLayout) {
                v.d(coordinatorLayout, c.a.m.a());
                v.d(coordinatorLayout, c.a.n.a());
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean a(View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, View view, int i) {
            return super.a(coordinatorLayout, (CoordinatorLayout) view, i);
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return super.a(coordinatorLayout, view, i, i2, i3, i4);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean a(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout b2 = b(coordinatorLayout.b(view));
            if (b2 == null) {
                return false;
            }
            rect.offset(view.getLeft(), view.getTop());
            Rect rect2 = this.f30232a;
            rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
            if (rect2.contains(rect)) {
                return false;
            }
            b2.setExpanded(false, !z);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.d) view2.getLayoutParams()).f1663a;
            if (behavior instanceof BaseBehavior) {
                v.e(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) behavior).f30201b) + b()) - c(view2));
            }
            if (!(view2 instanceof AppBarLayout)) {
                return false;
            }
            AppBarLayout appBarLayout = (AppBarLayout) view2;
            if (!appBarLayout.e) {
                return false;
            }
            appBarLayout.a(appBarLayout.a(view));
            return false;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        final int b(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).c() : super.b(view);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public final /* bridge */ /* synthetic */ boolean b(int i) {
            return super.b(i);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$a.class */
    public interface a<T extends AppBarLayout> {
        void a(int i);
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$b.class */
    public interface b extends a<AppBarLayout> {
    }

    public AppBarLayout(Context context) {
        this(context, null);
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.appBarLayoutStyle);
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    private static LayoutParams a(ViewGroup.LayoutParams layoutParams) {
        return (Build.VERSION.SDK_INT < 19 || !(layoutParams instanceof LinearLayout.LayoutParams)) ? layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams) : new LayoutParams((LinearLayout.LayoutParams) layoutParams);
    }

    private void a(boolean z, boolean z2, boolean z3) {
        int i = z ? 1 : 2;
        int i2 = 0;
        int i3 = z2 ? 4 : 0;
        if (z3) {
            i2 = 8;
        }
        this.f30195b = i | i3 | i2;
        requestLayout();
    }

    private boolean h() {
        return this.r != null && g() > 0;
    }

    private void i() {
        this.h = -1;
        this.i = -1;
        this.j = -1;
    }

    private static LayoutParams j() {
        return new LayoutParams(-1, -2);
    }

    private void k() {
        WeakReference<View> weakReference = this.o;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.o = null;
    }

    private boolean l() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        return childAt.getVisibility() != 8 && !v.s(childAt);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.a
    public final CoordinatorLayout.Behavior<AppBarLayout> a() {
        return new Behavior();
    }

    final void a(int i) {
        this.g = i;
        if (!willNotDraw()) {
            v.d(this);
        }
        List<a> list = this.f30197d;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                a aVar = this.f30197d.get(i2);
                if (aVar != null) {
                    aVar.a(i);
                }
            }
        }
    }

    final boolean a(View view) {
        int i;
        View view2 = null;
        if (this.o == null && (i = this.n) != -1) {
            View findViewById = view != null ? view.findViewById(i) : null;
            View view3 = findViewById;
            if (findViewById == null) {
                view3 = findViewById;
                if (getParent() instanceof ViewGroup) {
                    view3 = ((ViewGroup) getParent()).findViewById(this.n);
                }
            }
            if (view3 != null) {
                this.o = new WeakReference<>(view3);
            }
        }
        WeakReference<View> weakReference = this.o;
        if (weakReference != null) {
            view2 = weakReference.get();
        }
        if (view2 != null) {
            view = view2;
        }
        if (view != null) {
            return view.canScrollVertically(-1) || view.getScrollY() > 0;
        }
        return false;
    }

    final boolean a(boolean z) {
        if (this.m == z) {
            return false;
        }
        this.m = z;
        refreshDrawableState();
        if (!this.e || !(getBackground() instanceof h)) {
            return true;
        }
        final h hVar = (h) getBackground();
        float dimension = getResources().getDimension(a.d.design_appbar_elevation);
        float f2 = z ? BitmapDescriptorFactory.HUE_RED : dimension;
        if (!z) {
            dimension = BitmapDescriptorFactory.HUE_RED;
        }
        ValueAnimator valueAnimator = this.p;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f2, dimension);
        this.p = ofFloat;
        ofFloat.setDuration(getResources().getInteger(a.g.app_bar_elevation_anim_duration));
        this.p.setInterpolator(com.google.android.material.a.a.f30173a);
        this.p.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.AppBarLayout.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                hVar.r(((Float) valueAnimator2.getAnimatedValue()).floatValue());
            }
        });
        this.p.start();
        return true;
    }

    final void b() {
        setWillNotDraw(!h());
    }

    public final int c() {
        int i;
        int i2 = this.h;
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
            int i5 = layoutParams.f30214a;
            i = i4;
            if ((i5 & 1) == 0) {
                break;
            }
            int i6 = i4 + measuredHeight + layoutParams.topMargin + layoutParams.bottomMargin;
            i4 = i6;
            if (i3 == 0) {
                i4 = i6;
                if (v.s(childAt)) {
                    i4 = i6 - g();
                }
            }
            if ((i5 & 2) != 0) {
                i = i4 - v.l(childAt);
                break;
            }
            i3++;
        }
        int max = Math.max(0, i);
        this.h = max;
        return max;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int d() {
        /*
            Method dump skipped, instructions count: 182
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.d():int");
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (h()) {
            int save = canvas.save();
            canvas.translate(BitmapDescriptorFactory.HUE_RED, -this.g);
            this.r.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.r;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    final int e() {
        int i;
        int i2 = this.j;
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
            int i7 = layoutParams.f30214a;
            i = i4;
            if ((i7 & 1) == 0) {
                break;
            }
            i4 += measuredHeight + i5 + i6;
            if ((i7 & 2) != 0) {
                i = i4 - v.l(childAt);
                break;
            }
            i3++;
        }
        int max = Math.max(0, i);
        this.j = max;
        return max;
    }

    public final int f() {
        int g = g();
        int l = v.l(this);
        if (l == 0) {
            int childCount = getChildCount();
            l = childCount > 0 ? v.l(getChildAt(childCount - 1)) : 0;
            if (l == 0) {
                return getHeight() / 3;
            }
        }
        return (l * 2) + g;
    }

    final int g() {
        ac acVar = this.f30196c;
        if (acVar != null) {
            return acVar.b();
        }
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        i.a(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        if (this.q == null) {
            this.q = new int[4];
        }
        int[] iArr = this.q;
        int[] onCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        iArr[0] = this.l ? a.b.state_liftable : -a.b.state_liftable;
        iArr[1] = (!this.l || !this.m) ? -a.b.state_lifted : a.b.state_lifted;
        iArr[2] = this.l ? a.b.state_collapsible : -a.b.state_collapsible;
        iArr[3] = (!this.l || !this.m) ? -a.b.state_collapsed : a.b.state_collapsed;
        return mergeDrawableStates(onCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        k();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        super.onLayout(z, i, i2, i3, i4);
        if (v.s(this) && l()) {
            int g = g();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                v.e(getChildAt(childCount), g);
            }
        }
        i();
        this.f30194a = false;
        int childCount2 = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount2) {
                break;
            } else if (((LayoutParams) getChildAt(i5).getLayoutParams()).f30215b != null) {
                this.f30194a = true;
                break;
            } else {
                i5++;
            }
        }
        Drawable drawable = this.r;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), g());
        }
        if (!this.k) {
            boolean z3 = true;
            if (!this.e) {
                int childCount3 = getChildCount();
                int i6 = 0;
                while (true) {
                    if (i6 >= childCount3) {
                        z2 = false;
                        break;
                    }
                    LayoutParams layoutParams = (LayoutParams) getChildAt(i6).getLayoutParams();
                    if ((layoutParams.f30214a & 1) == 1 && (layoutParams.f30214a & 10) != 0) {
                        z2 = true;
                        break;
                    }
                    i6++;
                }
                z3 = z2;
            }
            if (this.l != z3) {
                this.l = z3;
                refreshDrawableState();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824 && v.s(this) && l()) {
            int measuredHeight = getMeasuredHeight();
            if (mode == Integer.MIN_VALUE) {
                measuredHeight = androidx.core.b.a.a(getMeasuredHeight() + g(), 0, View.MeasureSpec.getSize(i2));
            } else if (mode == 0) {
                measuredHeight += g();
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
        i();
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        super.setElevation(f2);
        i.a(this, f2);
    }

    public void setExpanded(boolean z) {
        setExpanded(z, v.B(this));
    }

    public void setExpanded(boolean z, boolean z2) {
        a(z, z2, true);
    }

    public void setLiftOnScroll(boolean z) {
        this.e = z;
    }

    public void setLiftOnScrollTargetViewId(int i) {
        this.n = i;
        k();
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
        Drawable drawable2 = this.r;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.r = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.r.setState(getDrawableState());
                }
                androidx.core.graphics.drawable.a.b(this.r, v.f(this));
                this.r.setVisible(getVisibility() == 0, false);
                this.r.setCallback(this);
            }
            b();
            v.d(this);
        }
    }

    public void setStatusBarForegroundColor(int i) {
        setStatusBarForeground(new ColorDrawable(i));
    }

    public void setStatusBarForegroundResource(int i) {
        setStatusBarForeground(androidx.appcompat.a.a.a.b(getContext(), i));
    }

    @Deprecated
    public void setTargetElevation(float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            com.google.android.material.appbar.b.a(this, f2);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.r;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.r;
    }
}
