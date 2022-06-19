package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgu.class */
final class zzgu<T> implements zzhd<T> {
    private final zzgo zza;
    private final zzhv<?, ?> zzb;
    private final boolean zzc;
    private final zzes<?> zzd;

    private zzgu(zzhv<?, ?> zzhvVar, zzes<?> zzesVar, zzgo zzgoVar) {
        this.zzb = zzhvVar;
        this.zzc = zzesVar.zza(zzgoVar);
        this.zzd = zzesVar;
        this.zza = zzgoVar;
    }

    public static <T> zzgu<T> zza(zzhv<?, ?> zzhvVar, zzes<?> zzesVar, zzgo zzgoVar) {
        return new zzgu<>(zzhvVar, zzesVar, zzgoVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    public final int zza(T t) {
        int hashCode = this.zzb.zzb(t).hashCode();
        int i = hashCode;
        if (this.zzc) {
            i = (hashCode * 53) + this.zzd.zza(t).hashCode();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    public final T zza() {
        return (T) this.zza.zzbs().zzt();
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    public final void zza(T t, zzhe zzheVar, zzeq zzeqVar) {
        boolean z;
        zzhv<?, ?> zzhvVar = this.zzb;
        zzes<?> zzesVar = this.zzd;
        Object zzc = zzhvVar.zzc(t);
        zzew<?> zzb = zzesVar.zzb(t);
        do {
            try {
                if (zzheVar.zza() == Integer.MAX_VALUE) {
                    return;
                }
                int zzb2 = zzheVar.zzb();
                if (zzb2 == 11) {
                    int i = 0;
                    Object obj = null;
                    zzdu zzduVar = null;
                    while (zzheVar.zza() != Integer.MAX_VALUE) {
                        int zzb3 = zzheVar.zzb();
                        if (zzb3 == 16) {
                            i = zzheVar.zzo();
                            obj = zzesVar.zza(zzeqVar, this.zza, i);
                        } else if (zzb3 == 26) {
                            if (obj != null) {
                                zzesVar.zza(zzheVar, obj, zzeqVar, zzb);
                            } else {
                                zzduVar = zzheVar.zzn();
                            }
                        } else if (!zzheVar.zzc()) {
                            break;
                        }
                    }
                    if (zzheVar.zzb() != 12) {
                        throw zzfo.zze();
                    } else if (zzduVar != null) {
                        if (obj != null) {
                            zzesVar.zza(zzduVar, obj, zzeqVar, zzb);
                        } else {
                            zzhvVar.zza((zzhv<?, ?>) zzc, i, zzduVar);
                        }
                    }
                } else if ((zzb2 & 7) == 2) {
                    Object zza = zzesVar.zza(zzeqVar, this.zza, zzb2 >>> 3);
                    if (zza != null) {
                        zzesVar.zza(zzheVar, zza, zzeqVar, zzb);
                    } else {
                        z = zzhvVar.zza((zzhv<?, ?>) zzc, zzheVar);
                    }
                } else {
                    z = zzheVar.zzc();
                }
                z = true;
            } finally {
                zzhvVar.zzb((Object) t, (T) zzc);
            }
        } while (z);
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    public final void zza(T t, zzis zzisVar) {
        Iterator<Map.Entry<?, Object>> zzd = this.zzd.zza(t).zzd();
        while (zzd.hasNext()) {
            Map.Entry<?, Object> next = zzd.next();
            zzey zzeyVar = (zzey) next.getKey();
            if (zzeyVar.zzc() != zzip.MESSAGE || zzeyVar.zzd() || zzeyVar.zze()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (next instanceof zzfr) {
                zzisVar.zza(zzeyVar.zza(), (Object) ((zzfr) next).zza().zzc());
            } else {
                zzisVar.zza(zzeyVar.zza(), next.getValue());
            }
        }
        zzhv<?, ?> zzhvVar = this.zzb;
        zzhvVar.zzb((zzhv<?, ?>) zzhvVar.zzb(t), zzisVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0147 A[EDGE_INSN: B:65:0x0147->B:38:0x0147 ?: BREAK  , SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.zzhd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r8, byte[] r9, int r10, int r11, com.google.android.gms.internal.measurement.zzdt r12) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgu.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.zzdt):void");
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    public final boolean zza(T t, T t2) {
        if (!this.zzb.zzb(t).equals(this.zzb.zzb(t2))) {
            return false;
        }
        if (!this.zzc) {
            return true;
        }
        return this.zzd.zza(t).equals(this.zzd.zza(t2));
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    public final int zzb(T t) {
        zzhv<?, ?> zzhvVar = this.zzb;
        int zze = zzhvVar.zze(zzhvVar.zzb(t)) + 0;
        int i = zze;
        if (this.zzc) {
            i = zze + this.zzd.zza(t).zzg();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    public final void zzb(T t, T t2) {
        zzhf.zza(this.zzb, t, t2);
        if (this.zzc) {
            zzhf.zza(this.zzd, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    public final void zzc(T t) {
        this.zzb.zzd(t);
        this.zzd.zzc(t);
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    public final boolean zzd(T t) {
        return this.zzd.zza(t).zzf();
    }
}
