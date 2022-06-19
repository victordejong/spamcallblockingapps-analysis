package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzglz.class */
final class zzglz<T> implements zzgmo<T> {
    private final zzglv zza;
    private final zzgnf<?, ?> zzb;
    private final boolean zzc;
    private final zzgjy<?> zzd;

    private zzglz(zzgnf<?, ?> zzgnfVar, zzgjy<?> zzgjyVar, zzglv zzglvVar) {
        this.zzb = zzgnfVar;
        this.zzc = zzgjyVar.zzh(zzglvVar);
        this.zzd = zzgjyVar;
        this.zza = zzglvVar;
    }

    public static <T> zzglz<T> zzc(zzgnf<?, ?> zzgnfVar, zzgjy<?> zzgjyVar, zzglv zzglvVar) {
        return new zzglz<>(zzgnfVar, zzgjyVar, zzglvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgmo
    public final int zza(T t) {
        zzgnf<?, ?> zzgnfVar = this.zzb;
        int zzb = zzgnfVar.zzb(zzgnfVar.zzd(t));
        if (!this.zzc) {
            return zzb;
        }
        this.zzd.zza(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgmo
    public final int zzb(T t) {
        int hashCode = this.zzb.zzd(t).hashCode();
        if (!this.zzc) {
            return hashCode;
        }
        this.zzd.zza(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgmo
    public final T zze() {
        return (T) this.zza.zzaG().zzaj();
    }

    @Override // com.google.android.gms.internal.ads.zzgmo
    public final void zzf(T t) {
        this.zzb.zzm(t);
        this.zzd.zze(t);
    }

    @Override // com.google.android.gms.internal.ads.zzgmo
    public final void zzg(T t, T t2) {
        zzgmq.zzF(this.zzb, t, t2);
        if (this.zzc) {
            zzgmq.zzE(this.zzd, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgmo
    public final void zzh(T t, zzgmg zzgmgVar, zzgjx zzgjxVar) throws IOException {
        boolean zzO;
        zzgnf<?, ?> zzgnfVar = this.zzb;
        zzgjy<?> zzgjyVar = this.zzd;
        Object zzc = zzgnfVar.zzc(t);
        zzgkc<?> zzb = zzgjyVar.zzb(t);
        while (zzgmgVar.zzc() != Integer.MAX_VALUE) {
            try {
                int zzd = zzgmgVar.zzd();
                if (zzd != 11) {
                    if ((zzd & 7) == 2) {
                        Object zzc2 = zzgjyVar.zzc(zzgjxVar, this.zza, zzd >>> 3);
                        if (zzc2 != null) {
                            zzgjyVar.zzf(zzgmgVar, zzc2, zzgjxVar, zzb);
                        } else {
                            zzO = zzgnfVar.zzp(zzc, zzgmgVar);
                        }
                    } else {
                        zzO = zzgmgVar.zzO();
                    }
                    if (!zzO) {
                        return;
                    }
                } else {
                    int i = 0;
                    Object obj = null;
                    zzgjf zzgjfVar = null;
                    while (zzgmgVar.zzc() != Integer.MAX_VALUE) {
                        int zzd2 = zzgmgVar.zzd();
                        if (zzd2 == 16) {
                            i = zzgmgVar.zzj();
                            obj = zzgjyVar.zzc(zzgjxVar, this.zza, i);
                        } else if (zzd2 == 26) {
                            if (obj != null) {
                                zzgjyVar.zzf(zzgmgVar, obj, zzgjxVar, zzb);
                            } else {
                                zzgjfVar = zzgmgVar.zzp();
                            }
                        } else if (!zzgmgVar.zzO()) {
                            break;
                        }
                    }
                    if (zzgmgVar.zzd() != 12) {
                        throw zzgkx.zzb();
                    } else if (zzgjfVar != null) {
                        if (obj != null) {
                            zzgjyVar.zzg(zzgjfVar, obj, zzgjxVar, zzb);
                        } else {
                            zzgnfVar.zzk(zzc, i, zzgjfVar);
                        }
                    }
                }
            } finally {
                zzgnfVar.zzn(t, zzc);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgmo
    public final void zzi(T t, byte[] bArr, int i, int i2, zzgiq zzgiqVar) throws IOException {
        zzgkl zzgklVar = (zzgkl) t;
        if (zzgklVar.zzc == zzgng.zzc()) {
            zzgklVar.zzc = zzgng.zze();
        }
        zzgki zzgkiVar = (zzgki) t;
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgmo
    public final boolean zzj(T t, T t2) {
        if (!this.zzb.zzd(t).equals(this.zzb.zzd(t2))) {
            return false;
        }
        if (!this.zzc) {
            return true;
        }
        this.zzd.zza(t);
        this.zzd.zza(t2);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgmo
    public final boolean zzk(T t) {
        this.zzd.zza(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgmo
    public final void zzn(T t, zzgjt zzgjtVar) throws IOException {
        this.zzd.zza(t);
        throw null;
    }
}
