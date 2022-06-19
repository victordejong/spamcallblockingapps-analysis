package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzco.class */
public final class zzco extends zzho<zzcp, zzco> implements zziy {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzco() {
        /*
            r3 = this;
            r0 = r3
            com.google.android.gms.internal.measurement.zzcp r1 = com.google.android.gms.internal.measurement.zzcp.zzm()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzco.<init>():void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ zzco(com.google.android.gms.internal.measurement.zzcl r4) {
        /*
            r3 = this;
            r0 = r3
            com.google.android.gms.internal.measurement.zzcp r1 = com.google.android.gms.internal.measurement.zzcp.zzm()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzco.<init>(com.google.android.gms.internal.measurement.zzcl):void");
    }

    public final int zza() {
        return ((zzcp) this.zza).zzf();
    }

    public final zzcn zzb(int i) {
        return ((zzcp) this.zza).zzg(i);
    }

    public final zzco zzc(int i, zzcm zzcmVar) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzcp.zzn((zzcp) this.zza, i, zzcmVar.zzaA());
        return this;
    }

    public final List<zzbu> zzd() {
        return Collections.unmodifiableList(((zzcp) this.zza).zzh());
    }

    public final zzco zze() {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        ((zzcp) this.zza).zzj = zzcp.zzbE();
        return this;
    }
}
