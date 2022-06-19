package com.google.android.material.p153k;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* renamed from: com.google.android.material.k.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/k/c.class */
public final class C4712c {

    /* renamed from: a */
    private final View f20403a;

    /* renamed from: b */
    private boolean f20404b = false;

    /* renamed from: c */
    private int f20405c = 0;

    public C4712c(AbstractC4711b abstractC4711b) {
        this.f20403a = (View) abstractC4711b;
    }

    /* renamed from: d */
    private void m2797d() {
        ViewParent parent = this.f20403a.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).m20972b(this.f20403a);
        }
    }

    /* renamed from: a */
    public void m2801a(int i) {
        this.f20405c = i;
    }

    /* renamed from: a */
    public void m2800a(Bundle bundle) {
        this.f20404b = bundle.getBoolean("expanded", false);
        this.f20405c = bundle.getInt("expandedComponentIdHint", 0);
        if (this.f20404b) {
            m2797d();
        }
    }

    /* renamed from: a */
    public boolean m2802a() {
        return this.f20404b;
    }

    /* renamed from: b */
    public Bundle m2799b() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.f20404b);
        bundle.putInt("expandedComponentIdHint", this.f20405c);
        return bundle;
    }

    /* renamed from: c */
    public int m2798c() {
        return this.f20405c;
    }
}
