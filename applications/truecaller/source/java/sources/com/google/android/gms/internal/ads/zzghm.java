package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzghm.class */
public final class zzghm<T> implements zzghz<T> {
    private final zzghi zza;
    private final zzgio<?, ?> zzb;
    private final boolean zzc;
    private final zzgfn<?> zzd;

    private zzghm(zzgio<?, ?> zzgioVar, zzgfn<?> zzgfnVar, zzghi zzghiVar) {
        this.zzb = zzgioVar;
        this.zzc = zzgfnVar.zza(zzghiVar);
        this.zzd = zzgfnVar;
        this.zza = zzghiVar;
    }

    public static <T> zzghm<T> zzg(zzgio<?, ?> zzgioVar, zzgfn<?> zzgfnVar, zzghi zzghiVar) {
        return new zzghm<>(zzgioVar, zzgfnVar, zzghiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final T zza() {
        return (T) this.zza.zzaM().zzak();
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final boolean zzb(T t, T t2) {
        if (!this.zzb.zzj(t).equals(this.zzb.zzj(t2))) {
            return false;
        }
        if (!this.zzc) {
            return true;
        }
        this.zzd.zzb(t);
        this.zzd.zzb(t2);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final int zzc(T t) {
        int hashCode = this.zzb.zzj(t).hashCode();
        if (!this.zzc) {
            return hashCode;
        }
        this.zzd.zzb(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final void zzd(T t, T t2) {
        zzgib.zzF(this.zzb, t, t2);
        if (this.zzc) {
            zzgib.zzE(this.zzd, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final int zze(T t) {
        zzgio<?, ?> zzgioVar = this.zzb;
        int zzp = zzgioVar.zzp(zzgioVar.zzj(t));
        if (!this.zzc) {
            return zzp;
        }
        this.zzd.zzb(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final void zzf(T t, zzght zzghtVar, zzgfm zzgfmVar) throws IOException {
        boolean zzd;
        zzgio<?, ?> zzgioVar = this.zzb;
        zzgfn<?> zzgfnVar = this.zzd;
        Object zzk = zzgioVar.zzk(t);
        zzgfr<?> zzc = zzgfnVar.zzc(t);
        while (zzghtVar.zzb() != Integer.MAX_VALUE) {
            try {
                int zzc2 = zzghtVar.zzc();
                if (zzc2 != 11) {
                    if ((zzc2 & 7) == 2) {
                        Object zzf = zzgfnVar.zzf(zzgfmVar, this.zza, zzc2 >>> 3);
                        if (zzf != null) {
                            zzgfnVar.zzg(zzghtVar, zzf, zzgfmVar, zzc);
                        } else {
                            zzd = zzgioVar.zzn(zzk, zzghtVar);
                        }
                    } else {
                        zzd = zzghtVar.zzd();
                    }
                    if (!zzd) {
                        return;
                    }
                } else {
                    int i = 0;
                    Object obj = null;
                    zzgex zzgexVar = null;
                    while (zzghtVar.zzb() != Integer.MAX_VALUE) {
                        int zzc3 = zzghtVar.zzc();
                        if (zzc3 == 16) {
                            i = zzghtVar.zzr();
                            obj = zzgfnVar.zzf(zzgfmVar, this.zza, i);
                        } else if (zzc3 == 26) {
                            if (obj != null) {
                                zzgfnVar.zzg(zzghtVar, obj, zzgfmVar, zzc);
                            } else {
                                zzgexVar = zzghtVar.zzq();
                            }
                        } else if (!zzghtVar.zzd()) {
                            break;
                        }
                    }
                    if (zzghtVar.zzc() != 12) {
                        throw zzggm.zzh();
                    } else if (zzgexVar != null) {
                        if (obj != null) {
                            zzgfnVar.zzh(zzgexVar, obj, zzgfmVar, zzc);
                        } else {
                            zzgioVar.zze(zzk, i, zzgexVar);
                        }
                    }
                }
            } finally {
                zzgioVar.zzl(t, zzk);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final void zzi(T t, byte[] bArr, int i, int i2, zzgej zzgejVar) throws IOException {
        zzgga zzggaVar = (zzgga) t;
        if (zzggaVar.zzc == zzgip.zza()) {
            zzggaVar.zzc = zzgip.zzb();
        }
        zzgfx zzgfxVar = (zzgfx) t;
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final void zzj(T t) {
        this.zzb.zzm(t);
        this.zzd.zzd(t);
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final boolean zzk(T t) {
        this.zzd.zzb(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final void zzn(T t, zzgfi zzgfiVar) throws IOException {
        this.zzd.zzb(t);
        throw null;
    }
}
