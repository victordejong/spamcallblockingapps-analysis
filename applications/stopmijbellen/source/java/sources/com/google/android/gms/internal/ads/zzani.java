package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzani.class */
public final class zzani implements Callable {
    private final zzams zza;
    private final zzaiz zzb;

    public zzani(zzams zzamsVar, zzaiz zzaizVar) {
        this.zza = zzamsVar;
        this.zzb = zzaizVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        if (this.zza.zzl() != null) {
            this.zza.zzl().get();
        }
        zzajp zzc = this.zza.zzc();
        if (zzc != null) {
            try {
                synchronized (this.zzb) {
                    zzaiz zzaizVar = this.zzb;
                    byte[] zzar = zzc.zzar();
                    zzaizVar.zzag(zzar, 0, zzar.length, zzgjx.zza());
                }
                return null;
            } catch (zzgkx | NullPointerException e) {
                return null;
            }
        }
        return null;
    }
}
