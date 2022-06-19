package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzetn.class */
public final class zzetn implements zzery<zzeto> {
    public final zzfsn zza;
    public final String zzb;
    public final zzcft zzc;

    public zzetn(zzcft zzcftVar, zzfsn zzfsnVar, String str, byte[] bArr) {
        this.zzc = zzcftVar;
        this.zza = zzfsnVar;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzeto> zza() {
        new zzchl();
        zzfsm zza = zzfsd.zza(null);
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzee)).booleanValue()) {
            zza = zzfsd.zza(null);
        }
        zzfsm zza2 = zzfsd.zza(null);
        return zzfsd.zzn(zza, zza2).zza(new Callable(zza, zza2) { // from class: com.google.android.gms.internal.ads.zzetm
            private final zzfsm zza;
            private final zzfsm zzb;

            {
                this.zza = zza;
                this.zzb = zza2;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzeto((String) this.zza.get(), (String) this.zzb.get());
            }
        }, zzchg.zza);
    }
}
