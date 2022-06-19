package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzach.class */
public final class zzach implements Callable {
    private final zzabr zza;
    private final zzyj zzb;

    public zzach(zzabr zzabrVar, zzyj zzyjVar) {
        this.zza = zzabrVar;
        this.zzb = zzyjVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        if (this.zza.zzo() != null) {
            this.zza.zzo().get();
        }
        zzyz zzn = this.zza.zzn();
        if (zzn != null) {
            try {
                synchronized (this.zzb) {
                    zzyj zzyjVar = this.zzb;
                    byte[] zzao = zzn.zzao();
                    zzyjVar.zzaj(zzao, 0, zzao.length, zzgfm.zza());
                }
                return null;
            } catch (zzggm | NullPointerException e) {
                return null;
            }
        }
        return null;
    }
}
