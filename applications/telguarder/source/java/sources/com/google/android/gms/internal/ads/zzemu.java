package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzemu.class */
final class zzemu<T> implements zzenj<T> {
    private final zzemo zzisv;
    private final boolean zzisw;
    private final zzeob<?, ?> zzitf;
    private final zzekq<?> zzitg;

    private zzemu(zzeob<?, ?> zzeobVar, zzekq<?> zzekqVar, zzemo zzemoVar) {
        this.zzitf = zzeobVar;
        this.zzisw = zzekqVar.zzj(zzemoVar);
        this.zzitg = zzekqVar;
        this.zzisv = zzemoVar;
    }

    public static <T> zzemu<T> zza(zzeob<?, ?> zzeobVar, zzekq<?> zzekqVar, zzemo zzemoVar) {
        return new zzemu<>(zzeobVar, zzekqVar, zzemoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final boolean equals(T t, T t2) {
        if (!this.zzitf.zzay(t).equals(this.zzitf.zzay(t2))) {
            return false;
        }
        if (!this.zzisw) {
            return true;
        }
        return this.zzitg.zzai(t).equals(this.zzitg.zzai(t2));
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final int hashCode(T t) {
        int hashCode = this.zzitf.zzay(t).hashCode();
        int i = hashCode;
        if (this.zzisw) {
            i = (hashCode * 53) + this.zzitg.zzai(t).hashCode();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final T newInstance() {
        return (T) this.zzisv.zzbip().zzbiv();
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final void zza(T t, zzend zzendVar, zzeko zzekoVar) throws IOException {
        boolean z;
        zzeob<?, ?> zzeobVar = this.zzitf;
        zzekq<?> zzekqVar = this.zzitg;
        Object zzaz = zzeobVar.zzaz(t);
        zzeku<?> zzaj = zzekqVar.zzaj(t);
        do {
            try {
                if (zzendVar.zzbhq() == Integer.MAX_VALUE) {
                    return;
                }
                int tag = zzendVar.getTag();
                if (tag == 11) {
                    int i = 0;
                    Object obj = null;
                    zzejr zzejrVar = null;
                    while (zzendVar.zzbhq() != Integer.MAX_VALUE) {
                        int tag2 = zzendVar.getTag();
                        if (tag2 == 16) {
                            i = zzendVar.zzbhb();
                            obj = zzekqVar.zza(zzekoVar, this.zzisv, i);
                        } else if (tag2 == 26) {
                            if (obj != null) {
                                zzekqVar.zza(zzendVar, obj, zzekoVar, zzaj);
                            } else {
                                zzejrVar = zzendVar.zzbha();
                            }
                        } else if (!zzendVar.zzbhr()) {
                            break;
                        }
                    }
                    if (zzendVar.getTag() != 12) {
                        throw zzelo.zzbje();
                    } else if (zzejrVar != null) {
                        if (obj != null) {
                            zzekqVar.zza(zzejrVar, obj, zzekoVar, zzaj);
                        } else {
                            zzeobVar.zza((zzeob<?, ?>) zzaz, i, zzejrVar);
                        }
                    }
                } else if ((tag & 7) == 2) {
                    Object zza = zzekqVar.zza(zzekoVar, this.zzisv, tag >>> 3);
                    if (zza != null) {
                        zzekqVar.zza(zzendVar, zza, zzekoVar, zzaj);
                    } else {
                        z = zzeobVar.zza((zzeob<?, ?>) zzaz, zzendVar);
                    }
                } else {
                    z = zzendVar.zzbhr();
                }
                z = true;
            } finally {
                zzeobVar.zzj(t, zzaz);
            }
        } while (z);
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final void zza(T t, zzeoy zzeoyVar) throws IOException {
        Iterator<Map.Entry<?, Object>> it = this.zzitg.zzai(t).iterator();
        while (it.hasNext()) {
            Map.Entry<?, Object> next = it.next();
            zzekw zzekwVar = (zzekw) next.getKey();
            if (zzekwVar.zzbie() != zzeov.MESSAGE || zzekwVar.zzbif() || zzekwVar.zzbig()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (next instanceof zzelr) {
                zzeoyVar.zzc(zzekwVar.zzv(), ((zzelr) next).zzbjl().zzbfz());
            } else {
                zzeoyVar.zzc(zzekwVar.zzv(), next.getValue());
            }
        }
        zzeob<?, ?> zzeobVar = this.zzitf;
        zzeobVar.zzc(zzeobVar.zzay(t), zzeoyVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0147 A[EDGE_INSN: B:65:0x0147->B:38:0x0147 ?: BREAK  , SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzenj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r8, byte[] r9, int r10, int r11, com.google.android.gms.internal.ads.zzejm r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzemu.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.zzejm):void");
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final void zzak(T t) {
        this.zzitf.zzak(t);
        this.zzitg.zzak(t);
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final int zzau(T t) {
        zzeob<?, ?> zzeobVar = this.zzitf;
        int zzba = zzeobVar.zzba(zzeobVar.zzay(t)) + 0;
        int i = zzba;
        if (this.zzisw) {
            i = zzba + this.zzitg.zzai(t).zzbic();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final boolean zzaw(T t) {
        return this.zzitg.zzai(t).isInitialized();
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final void zzg(T t, T t2) {
        zzenl.zza(this.zzitf, t, t2);
        if (this.zzisw) {
            zzenl.zza(this.zzitg, t, t2);
        }
    }
}
