package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oy0.class */
public final class oy0 implements n41, AbstractC6888qj {

    /* renamed from: d */
    private final ej2 f27780d;

    /* renamed from: e */
    private final q31 f27781e;

    /* renamed from: f */
    private final w41 f27782f;

    /* renamed from: g */
    private final AtomicBoolean f27783g = new AtomicBoolean();

    /* renamed from: h */
    private final AtomicBoolean f27784h = new AtomicBoolean();

    public oy0(ej2 ej2Var, q31 q31Var, w41 w41Var) {
        this.f27780d = ej2Var;
        this.f27781e = q31Var;
        this.f27782f = w41Var;
    }

    /* renamed from: a */
    private final void m12474a() {
        if (this.f27783g.compareAndSet(false, true)) {
            this.f27781e.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6888qj
    /* renamed from: Y */
    public final void mo7924Y(C6851pj c6851pj) {
        if (this.f27780d.f22229f == 1 && c6851pj.f28023j) {
            m12474a();
        }
        if (!c6851pj.f28023j || !this.f27784h.compareAndSet(false, true)) {
            return;
        }
        this.f27782f.zza();
    }

    @Override // com.google.android.gms.internal.ads.n41
    /* renamed from: d */
    public final void mo10505d() {
        synchronized (this) {
            if (this.f27780d.f22229f != 1) {
                m12474a();
            }
        }
    }
}
