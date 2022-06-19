package com.google.android.gms.internal.ads;

import android.os.Handler;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yl2.class */
public final class yl2 {

    /* renamed from: a */
    private final Handler f9227a;

    /* renamed from: b */
    private final zl2 f9228b;

    public yl2(Handler handler, zl2 zl2Var) {
        handler.getClass();
        this.f9227a = handler;
        this.f9228b = zl2Var;
    }

    /* renamed from: a */
    public final void m4744a(rm2 rm2Var) {
        this.f9227a.post(new sl2(this, rm2Var));
    }

    /* renamed from: b */
    public final void m4743b(String str, long j, long j2) {
        this.f9227a.post(new tl2(this, str, j, j2));
    }

    /* renamed from: c */
    public final void m4742c(zzit zzitVar) {
        this.f9227a.post(new ul2(this, zzitVar));
    }

    /* renamed from: d */
    public final void m4741d(int i, long j, long j2) {
        this.f9227a.post(new vl2(this, i, j, j2));
    }

    /* renamed from: e */
    public final void m4740e(rm2 rm2Var) {
        this.f9227a.post(new wl2(this, rm2Var));
    }

    /* renamed from: f */
    public final void m4739f(int i) {
        this.f9227a.post(new xl2(this, i));
    }
}
