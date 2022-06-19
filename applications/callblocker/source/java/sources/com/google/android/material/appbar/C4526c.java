package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* renamed from: com.google.android.material.appbar.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/c.class */
class C4526c<V extends View> extends CoordinatorLayout.AbstractC0423b<V> {

    /* renamed from: a */
    private C4527d f19642a;

    /* renamed from: b */
    private int f19643b = 0;

    /* renamed from: c */
    private int f19644c = 0;

    public C4526c() {
    }

    public C4526c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public boolean mo3746a(int i) {
        boolean z;
        if (this.f19642a != null) {
            z = this.f19642a.m3742a(i);
        } else {
            this.f19643b = i;
            z = false;
        }
        return z;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    public boolean mo2219a(CoordinatorLayout coordinatorLayout, V v, int i) {
        mo3745b(coordinatorLayout, (CoordinatorLayout) v, i);
        if (this.f19642a == null) {
            this.f19642a = new C4527d(v);
        }
        this.f19642a.m3743a();
        this.f19642a.m3741b();
        if (this.f19643b != 0) {
            this.f19642a.m3742a(this.f19643b);
            this.f19643b = 0;
        }
        if (this.f19644c != 0) {
            this.f19642a.m3740b(this.f19644c);
            this.f19644c = 0;
            return true;
        }
        return true;
    }

    /* renamed from: b */
    public void mo3745b(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.m20971b(v, i);
    }

    /* renamed from: c */
    public int mo3744c() {
        return this.f19642a != null ? this.f19642a.m3739c() : 0;
    }
}
