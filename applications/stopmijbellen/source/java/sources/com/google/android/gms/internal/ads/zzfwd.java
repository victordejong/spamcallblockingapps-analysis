package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfwd.class */
public final class zzfwd<V> extends zzfvp<Object, V> {
    @CheckForNull
    private zzfwc<?> zza;

    public zzfwd(zzfsn<? extends zzfxa<?>> zzfsnVar, boolean z, Executor executor, Callable<V> callable) {
        super(zzfsnVar, z, false);
        this.zza = new zzfwb(this, callable, executor);
        zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzfvp
    public final void zzA(int i) {
        super.zzA(i);
        if (i == 1) {
            this.zza = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfvp
    public final void zzb(int i, @CheckForNull Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzfvg
    public final void zzp() {
        zzfwc<?> zzfwcVar = this.zza;
        if (zzfwcVar != null) {
            zzfwcVar.zzh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfvp
    public final void zzw() {
        zzfwc<?> zzfwcVar = this.zza;
        if (zzfwcVar != null) {
            zzfwcVar.zzf();
        }
    }
}
