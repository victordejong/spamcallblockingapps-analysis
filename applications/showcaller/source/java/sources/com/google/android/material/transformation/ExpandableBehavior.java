package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.List;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.p103s.AbstractC1913a;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/ExpandableBehavior.class */
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {

    /* renamed from: a */
    private int f37613a = 0;

    /* renamed from: com.google.android.material.transformation.ExpandableBehavior$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/ExpandableBehavior$a.class */
    class ViewTreeObserver$OnPreDrawListenerC8347a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: d */
        final /* synthetic */ View f37614d;

        /* renamed from: e */
        final /* synthetic */ int f37615e;

        /* renamed from: f */
        final /* synthetic */ AbstractC1913a f37616f;

        ViewTreeObserver$OnPreDrawListenerC8347a(View view, int i, AbstractC1913a abstractC1913a) {
            ExpandableBehavior.this = r4;
            this.f37614d = view;
            this.f37615e = i;
            this.f37616f = abstractC1913a;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.f37614d.getViewTreeObserver().removeOnPreDrawListener(this);
            if (ExpandableBehavior.this.f37613a == this.f37615e) {
                ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                AbstractC1913a abstractC1913a = this.f37616f;
                expandableBehavior.mo3800H((View) abstractC1913a, this.f37614d, abstractC1913a.mo4790a(), false);
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

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (r0 == 2) goto L8;
     */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m3831F(boolean r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L1f
            r0 = r3
            int r0 = r0.f37613a
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
            int r0 = r0.f37613a
            r1 = 1
            if (r0 != r1) goto L2b
            r0 = 1
            r4 = r0
        L2b:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.transformation.ExpandableBehavior.m3831F(boolean):boolean");
    }

    /* renamed from: G */
    protected AbstractC1913a m3830G(CoordinatorLayout coordinatorLayout, View view) {
        List<View> m33559v = coordinatorLayout.m33559v(view);
        int size = m33559v.size();
        for (int i = 0; i < size; i++) {
            View view2 = m33559v.get(i);
            if (mo3801e(coordinatorLayout, view, view2)) {
                return (AbstractC1913a) view2;
            }
        }
        return null;
    }

    /* renamed from: H */
    protected abstract boolean mo3800H(View view, View view2, boolean z, boolean z2);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: h */
    public boolean mo3829h(CoordinatorLayout coordinatorLayout, View view, View view2) {
        AbstractC1913a abstractC1913a = (AbstractC1913a) view2;
        if (m3831F(abstractC1913a.mo4790a())) {
            this.f37613a = abstractC1913a.mo4790a() ? 1 : 2;
            return mo3800H((View) abstractC1913a, view, abstractC1913a.mo4790a(), true);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: l */
    public boolean mo3828l(CoordinatorLayout coordinatorLayout, View view, int i) {
        AbstractC1913a m3830G;
        if (C1679w.m29313V(view) || (m3830G = m3830G(coordinatorLayout, view)) == null || !m3831F(m3830G.mo4790a())) {
            return false;
        }
        int i2 = m3830G.mo4790a() ? 1 : 2;
        this.f37613a = i2;
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC8347a(view, i2, m3830G));
        return false;
    }
}
