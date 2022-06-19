package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yz2.class */
public final class yz2<V> extends nz2<Object, V> {

    /* renamed from: s */
    private zzfrp<?> f32733s;

    public yz2(zzfoe<? extends r03<?>> zzfoeVar, boolean z, Executor executor, Callable<V> callable) {
        super(zzfoeVar, z, false);
        this.f32733s = new zzfro(this, callable, executor);
        m12770T();
    }

    @Override // com.google.android.gms.internal.ads.nz2
    /* renamed from: M */
    final void mo8645M() {
        zzfrp<?> zzfrpVar = this.f32733s;
        if (zzfrpVar != null) {
            zzfrpVar.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.nz2
    /* renamed from: N */
    public final void mo8644N(int i) {
        super.mo8644N(i);
        if (i == 1) {
            this.f32733s = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.nz2
    /* renamed from: W */
    final void mo8643W(int i, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.fz2
    /* renamed from: s */
    protected final void mo8641s() {
        zzfrp<?> zzfrpVar = this.f32733s;
        if (zzfrpVar != null) {
            zzfrpVar.zzh();
        }
    }
}
