package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfb.class */
public final class zzfb extends zzjt implements zzld {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzfb() {
        /*
            r3 = this;
            r0 = r3
            com.google.android.gms.internal.measurement.zzfc r1 = com.google.android.gms.internal.measurement.zzfc.zzf()
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
            com.google.android.gms.internal.measurement.zzfc r1 = com.google.android.gms.internal.measurement.zzfc.zzf()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzfb.<init>(com.google.android.gms.internal.measurement.zzey):void");
    }

    public final int zza() {
        return ((zzfc) this.zza).zzb();
    }

    public final zzfa zzb(int i) {
        return ((zzfc) this.zza).zzd(i);
    }

    public final zzfb zzc() {
        if (this.zzb) {
            zzaC();
            this.zzb = false;
        }
        ((zzfc) this.zza).zzk = zzjx.zzby();
        return this;
    }

    public final zzfb zzd(int i, zzez zzezVar) {
        if (this.zzb) {
            zzaC();
            this.zzb = false;
        }
        zzfc.zzm((zzfc) this.zza, i, (zzfa) zzezVar.zzay());
        return this;
    }

    public final List zze() {
        return Collections.unmodifiableList(((zzfc) this.zza).zzi());
    }
}
