package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfho.class */
public final class zzfho {
    public static final <O> zzfhv<O> zza(Callable<O> callable, Object obj, zzfhw zzfhwVar) {
        zzfxb zzfxbVar;
        zzfxbVar = zzfhwVar.zzb;
        return zzb(callable, zzfxbVar, obj, zzfhwVar);
    }

    public static final <O> zzfhv<O> zzb(Callable<O> callable, zzfxb zzfxbVar, Object obj, zzfhw zzfhwVar) {
        zzfxa zzfxaVar;
        zzfxaVar = zzfhw.zza;
        return new zzfhv<>(zzfhwVar, obj, zzfxaVar, Collections.emptyList(), zzfxbVar.zzb(callable));
    }

    public static final <O> zzfhv<O> zzc(zzfxa<O> zzfxaVar, Object obj, zzfhw zzfhwVar) {
        zzfxa zzfxaVar2;
        zzfxaVar2 = zzfhw.zza;
        return new zzfhv<>(zzfhwVar, obj, zzfxaVar2, Collections.emptyList(), zzfxaVar);
    }

    public static final zzfhv zzd(final zzfhi zzfhiVar, zzfxb zzfxbVar, Object obj, zzfhw zzfhwVar) {
        return zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzfhn
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzfhi.this.zza();
                return null;
            }
        }, zzfxbVar, obj, zzfhwVar);
    }
}
