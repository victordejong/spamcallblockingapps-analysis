package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/ViewOffsetBehavior.class */
class ViewOffsetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a */
    private C8000a f36084a;

    /* renamed from: b */
    private int f36085b = 0;

    /* renamed from: c */
    private int f36086c = 0;

    public ViewOffsetBehavior() {
    }

    public ViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: E */
    public int mo5670E() {
        C8000a c8000a = this.f36084a;
        return c8000a != null ? c8000a.m5665c() : 0;
    }

    /* renamed from: F */
    public void mo5669F(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.m33586M(v, i);
    }

    /* renamed from: G */
    public boolean mo5668G(int i) {
        C8000a c8000a = this.f36084a;
        if (c8000a != null) {
            return c8000a.m5662f(i);
        }
        this.f36085b = i;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: l */
    public boolean mo3828l(CoordinatorLayout coordinatorLayout, V v, int i) {
        mo5669F(coordinatorLayout, v, i);
        if (this.f36084a == null) {
            this.f36084a = new C8000a(v);
        }
        this.f36084a.m5664d();
        this.f36084a.m5667a();
        int i2 = this.f36085b;
        if (i2 != 0) {
            this.f36084a.m5662f(i2);
            this.f36085b = 0;
        }
        int i3 = this.f36086c;
        if (i3 != 0) {
            this.f36084a.m5663e(i3);
            this.f36086c = 0;
            return true;
        }
        return true;
    }
}
