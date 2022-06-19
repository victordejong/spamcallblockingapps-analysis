package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.List;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
import p240t3.AbstractC4388a;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/ExpandableBehavior.class */
public abstract class ExpandableBehavior extends CoordinatorLayout.AbstractC0321c<View> {

    /* renamed from: a */
    public int f6941a = 0;

    /* renamed from: com.google.android.material.transformation.ExpandableBehavior$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/ExpandableBehavior$a.class */
    public class ViewTreeObserver$OnPreDrawListenerC1843a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a */
        public final /* synthetic */ View f6942a;

        /* renamed from: b */
        public final /* synthetic */ int f6943b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC4388a f6944c;

        public ViewTreeObserver$OnPreDrawListenerC1843a(View view, int i, AbstractC4388a abstractC4388a) {
            ExpandableBehavior.this = r4;
            this.f6942a = view;
            this.f6943b = i;
            this.f6944c = abstractC4388a;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.f6942a.getViewTreeObserver().removeOnPreDrawListener(this);
            ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
            if (expandableBehavior.f6941a == this.f6943b) {
                AbstractC4388a abstractC4388a = this.f6944c;
                expandableBehavior.mo4478t((View) abstractC4388a, this.f6942a, abstractC4388a.mo975a(), false);
                return false;
            }
            return false;
        }
    }

    public ExpandableBehavior() {
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: d */
    public boolean mo4490d(CoordinatorLayout coordinatorLayout, View view, View view2) {
        AbstractC4388a abstractC4388a = (AbstractC4388a) view2;
        if (m4489s(abstractC4388a.mo975a())) {
            this.f6941a = abstractC4388a.mo975a() ? 1 : 2;
            return mo4478t((View) abstractC4388a, view, abstractC4388a.mo975a(), true);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: h */
    public boolean mo2976h(CoordinatorLayout coordinatorLayout, View view, int i) {
        AbstractC4388a abstractC4388a;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        if (!C3589v.C3596g.m2058c(view)) {
            List<View> m8336e = coordinatorLayout.m8336e(view);
            int size = m8336e.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    abstractC4388a = null;
                    break;
                }
                View view2 = m8336e.get(i2);
                if (mo4481b(coordinatorLayout, view, view2)) {
                    abstractC4388a = (AbstractC4388a) view2;
                    break;
                }
                i2++;
            }
            if (abstractC4388a == null || !m4489s(abstractC4388a.mo975a())) {
                return false;
            }
            int i3 = abstractC4388a.mo975a() ? 1 : 2;
            this.f6941a = i3;
            view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC1843a(view, i3, abstractC4388a));
            return false;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (r0 == 2) goto L8;
     */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4489s(boolean r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L1f
            r0 = r3
            int r0 = r0.f6941a
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L1b
            r0 = r6
            r4 = r0
            r0 = r7
            r1 = 2
            if (r0 != r1) goto L1d
        L1b:
            r0 = 1
            r4 = r0
        L1d:
            r0 = r4
            return r0
        L1f:
            r0 = r5
            r4 = r0
            r0 = r3
            int r0 = r0.f6941a
            r1 = 1
            if (r0 != r1) goto L2b
            r0 = 1
            r4 = r0
        L2b:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.transformation.ExpandableBehavior.m4489s(boolean):boolean");
    }

    /* renamed from: t */
    public abstract boolean mo4478t(View view, View view2, boolean z, boolean z2);
}
