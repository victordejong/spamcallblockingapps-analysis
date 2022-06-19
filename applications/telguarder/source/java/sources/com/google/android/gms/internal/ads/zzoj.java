package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzoj.class */
public final class zzoj {
    public final zznu zzbhx;
    public final zzoi zzbhy;
    public final Object zzbhz;
    public final zzia[] zzbia;

    public zzoj(zznu zznuVar, zzoi zzoiVar, Object obj, zzia[] zziaVarArr) {
        this.zzbhx = zznuVar;
        this.zzbhy = zzoiVar;
        this.zzbhz = obj;
        this.zzbia = zziaVarArr;
    }

    public final boolean zza(zzoj zzojVar, int i) {
        return zzojVar != null && zzpt.zza(this.zzbhy.zzbe(i), zzojVar.zzbhy.zzbe(i)) && zzpt.zza(this.zzbia[i], zzojVar.zzbia[i]);
    }
}
