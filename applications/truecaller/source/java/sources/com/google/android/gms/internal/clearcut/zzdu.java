package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzdu.class */
public final class zzdu<T> implements zzef<T> {
    private final zzdo zzmn;
    private final boolean zzmo;
    private final zzex<?, ?> zzmx;
    private final zzbu<?> zzmy;

    private zzdu(zzex<?, ?> zzexVar, zzbu<?> zzbuVar, zzdo zzdoVar) {
        this.zzmx = zzexVar;
        this.zzmo = zzbuVar.zze(zzdoVar);
        this.zzmy = zzbuVar;
        this.zzmn = zzdoVar;
    }

    public static <T> zzdu<T> zza(zzex<?, ?> zzexVar, zzbu<?> zzbuVar, zzdo zzdoVar) {
        return new zzdu<>(zzexVar, zzbuVar, zzdoVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final boolean equals(T t, T t2) {
        if (!this.zzmx.zzq(t).equals(this.zzmx.zzq(t2))) {
            return false;
        }
        if (!this.zzmo) {
            return true;
        }
        return this.zzmy.zza(t).equals(this.zzmy.zza(t2));
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final int hashCode(T t) {
        int hashCode = this.zzmx.zzq(t).hashCode();
        int i = hashCode;
        if (this.zzmo) {
            i = (hashCode * 53) + this.zzmy.zza(t).hashCode();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final T newInstance() {
        return (T) this.zzmn.zzbd().zzbi();
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void zza(T t, zzfr zzfrVar) throws IOException {
        Iterator<Map.Entry<?, Object>> it = this.zzmy.zza(t).iterator();
        while (it.hasNext()) {
            Map.Entry<?, Object> next = it.next();
            zzca zzcaVar = (zzca) next.getKey();
            if (zzcaVar.zzav() != zzfq.MESSAGE || zzcaVar.zzaw() || zzcaVar.zzax()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            zzfrVar.zza(zzcaVar.zzc(), next instanceof zzct ? ((zzct) next).zzbs().zzr() : next.getValue());
        }
        zzex<?, ?> zzexVar = this.zzmx;
        zzexVar.zzc(zzexVar.zzq(t), zzfrVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00eb A[EDGE_INSN: B:55:0x00eb->B:29:0x00eb ?: BREAK  , SYNTHETIC] */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r8, byte[] r9, int r10, int r11, com.google.android.gms.internal.clearcut.zzay r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzdu.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.clearcut.zzay):void");
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void zzc(T t) {
        this.zzmx.zzc(t);
        this.zzmy.zzc(t);
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void zzc(T t, T t2) {
        zzeh.zza(this.zzmx, t, t2);
        if (this.zzmo) {
            zzeh.zza(this.zzmy, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final int zzm(T t) {
        zzex<?, ?> zzexVar = this.zzmx;
        int zzr = zzexVar.zzr(zzexVar.zzq(t)) + 0;
        int i = zzr;
        if (this.zzmo) {
            i = zzr + this.zzmy.zza(t).zzat();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final boolean zzo(T t) {
        return this.zzmy.zza(t).isInitialized();
    }
}
