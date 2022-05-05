package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import java.util.List;
import p081h.p203i.p204a.p294f.p306l.AbstractC9205b;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/ExpandableBehavior.class */
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {

    /* renamed from: a */
    public int f7680a = 0;

    /* renamed from: com.google.android.material.transformation.ExpandableBehavior$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/ExpandableBehavior$a.class */
    public class ViewTreeObserver$OnPreDrawListenerC3655a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a */
        public final /* synthetic */ View f7681a;

        /* renamed from: b */
        public final /* synthetic */ int f7682b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC9205b f7683c;

        public ViewTreeObserver$OnPreDrawListenerC3655a(View view, int i, AbstractC9205b bVar) {
            this.f7681a = view;
            this.f7682b = i;
            this.f7683c = bVar;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.f7681a.getViewTreeObserver().removeOnPreDrawListener(this);
            if (ExpandableBehavior.this.f7680a != this.f7682b) {
                return false;
            }
            ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
            AbstractC9205b bVar = this.f7683c;
            expandableBehavior.mo31143a((View) bVar, this.f7681a, bVar.mo15776a(), false);
            return false;
        }
    }

    public ExpandableBehavior() {
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Nullable
    /* renamed from: a */
    public AbstractC9205b m31168a(CoordinatorLayout coordinatorLayout, View view) {
        List<View> dependencies = coordinatorLayout.getDependencies(view);
        int size = dependencies.size();
        for (int i = 0; i < size; i++) {
            View view2 = dependencies.get(i);
            if (layoutDependsOn(coordinatorLayout, view, view2)) {
                return (AbstractC9205b) view2;
            }
        }
        return null;
    }

    /* renamed from: a */
    public abstract boolean mo31143a(View view, View view2, boolean z, boolean z2);

    /* renamed from: a */
    public final boolean m31166a(boolean z) {
        boolean z2 = false;
        boolean z3 = false;
        if (z) {
            int i = this.f7680a;
            if (i == 0 || i == 2) {
                z3 = true;
            }
            return z3;
        }
        if (this.f7680a == 1) {
            z2 = true;
        }
        return z2;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        AbstractC9205b bVar = (AbstractC9205b) view2;
        if (!m31166a(bVar.mo15776a())) {
            return false;
        }
        this.f7680a = bVar.mo15776a() ? 1 : 2;
        return mo31143a((View) bVar, view, bVar.mo15776a(), true);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
        AbstractC9205b a;
        if (ViewCompat.isLaidOut(view) || (a = m31168a(coordinatorLayout, view)) == null || !m31166a(a.mo15776a())) {
            return false;
        }
        this.f7680a = a.mo15776a() ? 1 : 2;
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC3655a(view, this.f7680a, a));
        return false;
    }
}
