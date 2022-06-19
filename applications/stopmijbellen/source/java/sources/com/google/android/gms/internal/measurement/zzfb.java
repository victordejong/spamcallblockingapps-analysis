package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfb.class */
public final class zzfb extends zzjz<zzfc, zzfb> implements zzlj {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzfb() {
        /*
            r3 = this;
            r0 = r3
            com.google.android.gms.internal.measurement.zzfc r1 = com.google.android.gms.internal.measurement.zzfc.zzo()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzfb.<init>():void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ zzfb(com.google.android.gms.internal.measurement.zzey r4) {
        /*
            r3 = this;
            r0 = r3
            com.google.android.gms.internal.measurement.zzfc r1 = com.google.android.gms.internal.measurement.zzfc.zzo()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzfb.<init>(com.google.android.gms.internal.measurement.zzey):void");
    }

    public final int zza() {
        return ((zzfc) this.zza).zzf();
    }

    public final zzfa zzb(int i) {
        return ((zzfc) this.zza).zzg(i);
    }

    public final zzfb zzc(int i, zzez zzezVar) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzfc.zzp((zzfc) this.zza, i, zzezVar.zzaA());
        return this;
    }

    public final List<zzeh> zzd() {
        return Collections.unmodifiableList(((zzfc) this.zza).zzh());
    }

    public final zzfb zze() {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        ((zzfc) this.zza).zzj = zzkd.zzbE();
        return this;
    }
}
