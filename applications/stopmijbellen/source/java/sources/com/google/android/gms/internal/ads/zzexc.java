package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzexc.class */
public final class zzexc implements zzevn<zzexd> {
    public final zzfxb zza;
    public final String zzb;
    public final zzchz zzc;

    public zzexc(zzchz zzchzVar, zzfxb zzfxbVar, String str, byte[] bArr) {
        this.zzc = zzchzVar;
        this.zza = zzfxbVar;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzexd> zzb() {
        new zzcjr();
        zzfxa zzi = zzfwq.zzi(null);
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzel)).booleanValue()) {
            zzi = zzfwq.zzi(null);
        }
        final zzfxa zzi2 = zzfwq.zzi(null);
        final zzfxa zzfxaVar = zzi;
        return zzfwq.zzd(zzi, zzi2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzexb
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzexd((String) zzfxa.this.get(), (String) zzi2.get());
            }
        }, zzcjm.zza);
    }
}
