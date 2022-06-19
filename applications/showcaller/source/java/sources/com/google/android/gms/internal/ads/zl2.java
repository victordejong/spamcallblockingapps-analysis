package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zl2.class */
public final class zl2 implements f03<Void> {

    /* renamed from: a */
    final /* synthetic */ cm2 f32978a;

    /* renamed from: b */
    final /* synthetic */ dm2 f32979b;

    public zl2(dm2 dm2Var, cm2 cm2Var) {
        this.f32979b = dm2Var;
        this.f32978a = cm2Var;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        synchronized (this.f32979b) {
            this.f32979b.f21692e = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(Void r4) {
        ArrayDeque arrayDeque;
        int i;
        synchronized (this.f32979b) {
            this.f32979b.f21692e = null;
            arrayDeque = this.f32979b.f21691d;
            arrayDeque.addFirst(this.f32978a);
            i = this.f32979b.f21693f;
            if (i == 1) {
                this.f32979b.m15761h();
            }
        }
    }
}
