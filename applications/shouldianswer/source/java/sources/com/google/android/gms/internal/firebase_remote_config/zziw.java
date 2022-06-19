package com.google.android.gms.internal.firebase_remote_config;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zziw.class */
final class zziw<T> implements zzjf<T> {
    private final zziq zzvv;
    private final boolean zzvw;
    private final zzjx<?, ?> zzwf;
    private final zzgz<?> zzwg;

    private zziw(zzjx<?, ?> zzjxVar, zzgz<?> zzgzVar, zziq zziqVar) {
        this.zzwf = zzjxVar;
        this.zzvw = zzgzVar.zze(zziqVar);
        this.zzwg = zzgzVar;
        this.zzvv = zziqVar;
    }

    public static <T> zziw<T> zza(zzjx<?, ?> zzjxVar, zzgz<?> zzgzVar, zziq zziqVar) {
        return new zziw<>(zzjxVar, zzgzVar, zziqVar);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    public final boolean equals(T t, T t2) {
        if (!this.zzwf.zzaa(t).equals(this.zzwf.zzaa(t2))) {
            return false;
        }
        if (!this.zzvw) {
            return true;
        }
        return this.zzwg.zzk(t).equals(this.zzwg.zzk(t2));
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    public final int hashCode(T t) {
        int hashCode = this.zzwf.zzaa(t).hashCode();
        int i = hashCode;
        if (this.zzvw) {
            i = (hashCode * 53) + this.zzwg.zzk(t).hashCode();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    public final T newInstance() {
        return (T) this.zzvv.zzgv().zzha();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    public final void zza(T t, zzjg zzjgVar, zzgx zzgxVar) {
        boolean z;
        zzjx<?, ?> zzjxVar = this.zzwf;
        zzgz<?> zzgzVar = this.zzwg;
        Object zzab = zzjxVar.zzab(t);
        zzha<?> zzl = zzgzVar.zzl(t);
        do {
            try {
                if (zzjgVar.zzfz() == Integer.MAX_VALUE) {
                    return;
                }
                int tag = zzjgVar.getTag();
                if (tag == 11) {
                    int i = 0;
                    Object obj = null;
                    zzfx zzfxVar = null;
                    while (zzjgVar.zzfz() != Integer.MAX_VALUE) {
                        int tag2 = zzjgVar.getTag();
                        if (tag2 == 16) {
                            i = zzjgVar.zzfk();
                            obj = zzgzVar.zza(zzgxVar, this.zzvv, i);
                        } else if (tag2 == 26) {
                            if (obj != null) {
                                zzgzVar.zza(zzjgVar, obj, zzgxVar, zzl);
                            } else {
                                zzfxVar = zzjgVar.zzfj();
                            }
                        } else if (!zzjgVar.zzga()) {
                            break;
                        }
                    }
                    if (zzjgVar.getTag() != 12) {
                        throw zzhq.zzhi();
                    } else if (zzfxVar != null) {
                        if (obj != null) {
                            zzgzVar.zza(zzfxVar, obj, zzgxVar, zzl);
                        } else {
                            zzjxVar.zza((zzjx<?, ?>) zzab, i, zzfxVar);
                        }
                    }
                } else if ((tag & 7) == 2) {
                    Object zza = zzgzVar.zza(zzgxVar, this.zzvv, tag >>> 3);
                    if (zza != null) {
                        zzgzVar.zza(zzjgVar, zza, zzgxVar, zzl);
                    } else {
                        z = zzjxVar.zza((zzjx<?, ?>) zzab, zzjgVar);
                    }
                } else {
                    z = zzjgVar.zzga();
                }
                z = true;
            } finally {
                zzjxVar.zzh(t, zzab);
            }
        } while (z);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    public final void zza(T t, zzku zzkuVar) {
        Iterator<Map.Entry<?, Object>> it = this.zzwg.zzk(t).iterator();
        while (it.hasNext()) {
            Map.Entry<?, Object> next = it.next();
            zzhc zzhcVar = (zzhc) next.getKey();
            if (zzhcVar.zzgp() != zzkr.MESSAGE || zzhcVar.zzgq() || zzhcVar.zzgr()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (next instanceof zzht) {
                zzkuVar.zza(zzhcVar.zzgn(), (Object) ((zzht) next).zzhp().zzep());
            } else {
                zzkuVar.zza(zzhcVar.zzgn(), next.getValue());
            }
        }
        zzjx<?, ?> zzjxVar = this.zzwf;
        zzjxVar.zzc(zzjxVar.zzaa(t), zzkuVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0147 A[EDGE_INSN: B:65:0x0147->B:38:0x0147 ?: BREAK  , SYNTHETIC] */
    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r8, byte[] r9, int r10, int r11, com.google.android.gms.internal.firebase_remote_config.zzfw r12) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zziw.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.firebase_remote_config.zzfw):void");
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    public final void zze(T t, T t2) {
        zzjh.zza(this.zzwf, t, t2);
        if (this.zzvw) {
            zzjh.zza(this.zzwg, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    public final void zzm(T t) {
        this.zzwf.zzm(t);
        this.zzwg.zzm(t);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    public final int zzw(T t) {
        zzjx<?, ?> zzjxVar = this.zzwf;
        int zzac = zzjxVar.zzac(zzjxVar.zzaa(t)) + 0;
        int i = zzac;
        if (this.zzvw) {
            i = zzac + this.zzwg.zzk(t).zzgj();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    public final boolean zzy(T t) {
        return this.zzwg.zzk(t).isInitialized();
    }
}
