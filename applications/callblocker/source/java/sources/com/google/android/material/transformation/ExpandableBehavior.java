package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p026h.C0595u;
import com.google.android.material.p153k.AbstractC4711b;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/ExpandableBehavior.class */
public abstract class ExpandableBehavior extends CoordinatorLayout.AbstractC0423b<View> {

    /* renamed from: a */
    private int f20884a = 0;

    public ExpandableBehavior() {
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0016, code lost:
        if (r3.f20884a == 2) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m2217a(boolean r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L1d
            r0 = r3
            int r0 = r0.f20884a
            if (r0 == 0) goto L19
            r0 = r5
            r4 = r0
            r0 = r3
            int r0 = r0.f20884a
            r1 = 2
            if (r0 != r1) goto L1b
        L19:
            r0 = 1
            r4 = r0
        L1b:
            r0 = r4
            return r0
        L1d:
            r0 = r3
            int r0 = r0.f20884a
            r1 = 1
            if (r0 != r1) goto L2a
            r0 = r6
            r4 = r0
        L27:
            goto L1b
        L2a:
            r0 = 0
            r4 = r0
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.transformation.ExpandableBehavior.m2217a(boolean):boolean");
    }

    /* renamed from: a */
    protected abstract boolean mo2186a(View view, View view2, boolean z, boolean z2);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    public boolean mo2219a(CoordinatorLayout coordinatorLayout, final View view, int i) {
        final AbstractC4711b m2215e;
        if (C0595u.m20299y(view) || (m2215e = m2215e(coordinatorLayout, view)) == null || !m2217a(m2215e.mo2803a())) {
            return false;
        }
        this.f20884a = m2215e.mo2803a() ? 1 : 2;
        final int i2 = this.f20884a;
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.material.transformation.ExpandableBehavior.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                view.getViewTreeObserver().removeOnPreDrawListener(this);
                if (ExpandableBehavior.this.f20884a == i2) {
                    ExpandableBehavior.this.mo2186a((View) m2215e, view, m2215e.mo2803a(), false);
                    return false;
                }
                return false;
            }
        });
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    public abstract boolean mo2190a(CoordinatorLayout coordinatorLayout, View view, View view2);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: b */
    public boolean mo2216b(CoordinatorLayout coordinatorLayout, View view, View view2) {
        boolean z;
        AbstractC4711b abstractC4711b = (AbstractC4711b) view2;
        if (m2217a(abstractC4711b.mo2803a())) {
            this.f20884a = abstractC4711b.mo2803a() ? 1 : 2;
            z = mo2186a((View) abstractC4711b, view, abstractC4711b.mo2803a(), true);
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    protected AbstractC4711b m2215e(CoordinatorLayout coordinatorLayout, View view) {
        AbstractC4711b abstractC4711b;
        List<View> m20965c = coordinatorLayout.m20965c(view);
        int size = m20965c.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                abstractC4711b = null;
                break;
            }
            View view2 = m20965c.get(i);
            if (mo2190a(coordinatorLayout, view, view2)) {
                abstractC4711b = (AbstractC4711b) view2;
                break;
            }
            i++;
        }
        return abstractC4711b;
    }
}
