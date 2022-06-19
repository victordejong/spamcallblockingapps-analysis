package com.google.android.material.appbar;

import android.view.View;
import androidx.core.p026h.C0595u;
/* renamed from: com.google.android.material.appbar.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/d.class */
class C4527d {

    /* renamed from: a */
    private final View f19645a;

    /* renamed from: b */
    private int f19646b;

    /* renamed from: c */
    private int f19647c;

    /* renamed from: d */
    private int f19648d;

    /* renamed from: e */
    private int f19649e;

    /* renamed from: f */
    private boolean f19650f = true;

    /* renamed from: g */
    private boolean f19651g = true;

    public C4527d(View view) {
        this.f19645a = view;
    }

    /* renamed from: a */
    public void m3743a() {
        this.f19646b = this.f19645a.getTop();
        this.f19647c = this.f19645a.getLeft();
    }

    /* renamed from: a */
    public boolean m3742a(int i) {
        boolean z;
        if (!this.f19650f || this.f19648d == i) {
            z = false;
        } else {
            this.f19648d = i;
            m3741b();
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public void m3741b() {
        C0595u.m20323e(this.f19645a, this.f19648d - (this.f19645a.getTop() - this.f19646b));
        C0595u.m20321f(this.f19645a, this.f19649e - (this.f19645a.getLeft() - this.f19647c));
    }

    /* renamed from: b */
    public boolean m3740b(int i) {
        boolean z;
        if (!this.f19651g || this.f19649e == i) {
            z = false;
        } else {
            this.f19649e = i;
            m3741b();
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public int m3739c() {
        return this.f19648d;
    }
}
