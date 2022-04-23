package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.v;
import com.google.android.material.f.b;
import java.util.List;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/google/android/material/transformation/ExpandableBehavior.class */
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {

    /* renamed from: a  reason: collision with root package name */
    private int f30996a = 0;

    public ExpandableBehavior() {
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private boolean a(boolean z) {
        if (!z) {
            return this.f30996a == 1;
        }
        int i = this.f30996a;
        return i == 0 || i == 2;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public abstract boolean a(View view, View view2);

    protected abstract boolean a(View view, View view2, boolean z, boolean z2);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean a(CoordinatorLayout coordinatorLayout, final View view, int i) {
        final b bVar;
        if (v.B(view)) {
            return false;
        }
        List<View> b2 = coordinatorLayout.b(view);
        int size = b2.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                bVar = null;
                break;
            }
            View view2 = b2.get(i2);
            if (a(view, view2)) {
                bVar = (b) view2;
                break;
            }
            i2++;
        }
        if (bVar == null || !a(bVar.b())) {
            return false;
        }
        final int i3 = bVar.b() ? 1 : 2;
        this.f30996a = i3;
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.material.transformation.ExpandableBehavior.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                view.getViewTreeObserver().removeOnPreDrawListener(this);
                if (ExpandableBehavior.this.f30996a != i3) {
                    return false;
                }
                ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                b bVar2 = bVar;
                expandableBehavior.a((View) bVar2, view, bVar2.b(), false);
                return false;
            }
        });
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean a(CoordinatorLayout coordinatorLayout, View view, View view2) {
        b bVar = (b) view2;
        if (!a(bVar.b())) {
            return false;
        }
        this.f30996a = bVar.b() ? 1 : 2;
        return a((View) bVar, view, bVar.b(), true);
    }
}
