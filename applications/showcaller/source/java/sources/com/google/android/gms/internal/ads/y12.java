package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.AbstractC5629f;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y12.class */
public final class y12 implements AbstractC5629f {

    /* renamed from: a */
    private final w21 f32392a;

    /* renamed from: b */
    private final q31 f32393b;

    /* renamed from: c */
    private final sa1 f32394c;

    /* renamed from: d */
    private final la1 f32395d;

    /* renamed from: e */
    private final ev0 f32396e;

    /* renamed from: f */
    final AtomicBoolean f32397f = new AtomicBoolean(false);

    public y12(w21 w21Var, q31 q31Var, sa1 sa1Var, la1 la1Var, ev0 ev0Var) {
        this.f32392a = w21Var;
        this.f32393b = q31Var;
        this.f32394c = sa1Var;
        this.f32395d = la1Var;
        this.f32396e = ev0Var;
    }

    @Override // com.google.android.gms.ads.internal.AbstractC5629f
    /* renamed from: b */
    public final void mo8992b() {
        if (this.f32397f.get()) {
            this.f32392a.mo7877z0();
        }
    }

    @Override // com.google.android.gms.ads.internal.AbstractC5629f
    /* renamed from: c */
    public final void mo8991c() {
        if (this.f32397f.get()) {
            this.f32393b.zza();
            this.f32394c.zza();
        }
    }

    @Override // com.google.android.gms.ads.internal.AbstractC5629f
    /* renamed from: d */
    public final void mo8990d(View view) {
        synchronized (this) {
            if (!this.f32397f.compareAndSet(false, true)) {
                return;
            }
            this.f32396e.zzg();
            this.f32395d.m13619S0(view);
        }
    }
}
