package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.view.Surface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rs2.class */
public final class rs2 {

    /* renamed from: a */
    private final Handler f8405a;

    /* renamed from: b */
    private final ss2 f8406b;

    public rs2(Handler handler, ss2 ss2Var) {
        handler.getClass();
        this.f8405a = handler;
        this.f8406b = ss2Var;
    }

    /* renamed from: a */
    public final void m5868a(rm2 rm2Var) {
        this.f8405a.post(new js2(this, rm2Var));
    }

    /* renamed from: b */
    public final void m5867b(String str, long j, long j2) {
        this.f8405a.post(new ks2(this, str, j, j2));
    }

    /* renamed from: c */
    public final void m5866c(zzit zzitVar) {
        this.f8405a.post(new ls2(this, zzitVar));
    }

    /* renamed from: d */
    public final void m5865d(int i, long j) {
        this.f8405a.post(new ms2(this, i, j));
    }

    /* renamed from: e */
    public final void m5864e(int i, int i2, int i3, float f) {
        this.f8405a.post(new ns2(this, i, i2, i3, f));
    }

    /* renamed from: f */
    public final void m5863f(Surface surface) {
        this.f8405a.post(new ps2(this, surface));
    }

    /* renamed from: g */
    public final void m5862g(rm2 rm2Var) {
        this.f8405a.post(new qs2(this, rm2Var));
    }
}
