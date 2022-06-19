package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfrq.class */
public final class zzfrq<V> extends zzfrd<Object, V> {
    private zzfrp<?> zza;

    public zzfrq(zzfoe<? extends zzfsm<?>> zzfoeVar, boolean z, Executor executor, Callable<V> callable) {
        super(zzfoeVar, z, false);
        this.zza = new zzfro(this, callable, executor);
        zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzfrd
    public final void zzA() {
        zzfrp<?> zzfrpVar = this.zza;
        if (zzfrpVar != null) {
            zzfrpVar.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfrd
    public final void zzB(int i) {
        super.zzB(i);
        if (i == 1) {
            this.zza = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfqw
    public final void zzn() {
        zzfrp<?> zzfrpVar = this.zza;
        if (zzfrpVar != null) {
            zzfrpVar.zzh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfrd
    public final void zzz(int i, Object obj) {
    }
}
