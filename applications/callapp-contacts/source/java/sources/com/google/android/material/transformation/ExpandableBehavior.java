package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.C0926v;
import com.google.android.material.p369f.AbstractC14554b;
import java.util.List;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/google/android/material/transformation/ExpandableBehavior.class */
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {

    /* renamed from: a */
    private int f54265a = 0;

    public ExpandableBehavior() {
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    private boolean m9849a(boolean z) {
        if (!z) {
            return this.f54265a == 1;
        }
        int i = this.f54265a;
        return i == 0 || i == 2;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public abstract boolean mo9838a(View view, View view2);

    /* renamed from: a */
    protected abstract boolean mo9834a(View view, View view2, boolean z, boolean z2);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo9852a(CoordinatorLayout coordinatorLayout, final View view, int i) {
        AbstractC14554b abstractC14554b;
        if (!C0926v.m44157B(view)) {
            List<View> m44656b = coordinatorLayout.m44656b(view);
            int size = m44656b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    abstractC14554b = null;
                    break;
                }
                View view2 = m44656b.get(i2);
                if (mo9838a(view, view2)) {
                    abstractC14554b = (AbstractC14554b) view2;
                    break;
                }
                i2++;
            }
            if (abstractC14554b == null || !m9849a(abstractC14554b.mo10740b())) {
                return false;
            }
            int i3 = abstractC14554b.mo10740b() ? 1 : 2;
            this.f54265a = i3;
            final int i4 = i3;
            final AbstractC14554b abstractC14554b2 = abstractC14554b;
            view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.material.transformation.ExpandableBehavior.1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    view.getViewTreeObserver().removeOnPreDrawListener(this);
                    if (ExpandableBehavior.this.f54265a == i4) {
                        ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                        AbstractC14554b abstractC14554b3 = abstractC14554b2;
                        expandableBehavior.mo9834a((View) abstractC14554b3, view, abstractC14554b3.mo10740b(), false);
                        return false;
                    }
                    return false;
                }
            });
            return false;
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo9851a(CoordinatorLayout coordinatorLayout, View view, View view2) {
        AbstractC14554b abstractC14554b = (AbstractC14554b) view2;
        if (m9849a(abstractC14554b.mo10740b())) {
            this.f54265a = abstractC14554b.mo10740b() ? 1 : 2;
            return mo9834a((View) abstractC14554b, view, abstractC14554b.mo10740b(), true);
        }
        return false;
    }
}
