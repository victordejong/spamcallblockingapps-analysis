package com.google.android.material.appbar;

import android.view.View;
import androidx.core.view.C0926v;
/* renamed from: com.google.android.material.appbar.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/a.class */
public final class C14414a {

    /* renamed from: a */
    int f52481a;

    /* renamed from: b */
    int f52482b;

    /* renamed from: c */
    int f52483c;

    /* renamed from: e */
    private final View f52485e;

    /* renamed from: f */
    private int f52486f;

    /* renamed from: g */
    private boolean f52487g = true;

    /* renamed from: d */
    boolean f52484d = true;

    public C14414a(View view) {
        this.f52485e = view;
    }

    /* renamed from: a */
    public final void m11248a() {
        this.f52481a = this.f52485e.getTop();
        this.f52486f = this.f52485e.getLeft();
    }

    /* renamed from: a */
    public final boolean m11247a(int i) {
        if (!this.f52487g || this.f52482b == i) {
            return false;
        }
        this.f52482b = i;
        m11246b();
        return true;
    }

    /* renamed from: b */
    public final void m11246b() {
        View view = this.f52485e;
        C0926v.m44098e(view, this.f52482b - (view.getTop() - this.f52481a));
        View view2 = this.f52485e;
        C0926v.m44096f(view2, this.f52483c - (view2.getLeft() - this.f52486f));
    }
}
