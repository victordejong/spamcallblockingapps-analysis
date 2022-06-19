package com.google.android.material.appbar;

import android.view.View;
import p020b.p041h.p050l.C1679w;
/* renamed from: com.google.android.material.appbar.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/a.class */
class C8000a {

    /* renamed from: a */
    private final View f36087a;

    /* renamed from: b */
    private int f36088b;

    /* renamed from: c */
    private int f36089c;

    /* renamed from: d */
    private int f36090d;

    /* renamed from: e */
    private int f36091e;

    /* renamed from: f */
    private boolean f36092f = true;

    /* renamed from: g */
    private boolean f36093g = true;

    public C8000a(View view) {
        this.f36087a = view;
    }

    /* renamed from: a */
    public void m5667a() {
        View view = this.f36087a;
        C1679w.m29305b0(view, this.f36090d - (view.getTop() - this.f36088b));
        View view2 = this.f36087a;
        C1679w.m29307a0(view2, this.f36091e - (view2.getLeft() - this.f36089c));
    }

    /* renamed from: b */
    public int m5666b() {
        return this.f36088b;
    }

    /* renamed from: c */
    public int m5665c() {
        return this.f36090d;
    }

    /* renamed from: d */
    public void m5664d() {
        this.f36088b = this.f36087a.getTop();
        this.f36089c = this.f36087a.getLeft();
    }

    /* renamed from: e */
    public boolean m5663e(int i) {
        if (!this.f36093g || this.f36091e == i) {
            return false;
        }
        this.f36091e = i;
        m5667a();
        return true;
    }

    /* renamed from: f */
    public boolean m5662f(int i) {
        if (!this.f36092f || this.f36090d == i) {
            return false;
        }
        this.f36090d = i;
        m5667a();
        return true;
    }
}
