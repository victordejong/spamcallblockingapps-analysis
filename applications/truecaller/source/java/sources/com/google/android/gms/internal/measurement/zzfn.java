package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfn.class */
public final class zzfn extends zzjt implements zzld {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzfn() {
        /*
            r3 = this;
            r0 = r3
            com.google.android.gms.internal.measurement.zzfo r1 = com.google.android.gms.internal.measurement.zzfo.zzf()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzfn.<init>():void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ zzfn(com.google.android.gms.internal.measurement.zzff r4) {
        /*
            r3 = this;
            r0 = r3
            com.google.android.gms.internal.measurement.zzfo r1 = com.google.android.gms.internal.measurement.zzfo.zzf()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzfn.<init>(com.google.android.gms.internal.measurement.zzff):void");
    }

    public final int zza() {
        return ((zzfo) this.zza).zzb();
    }

    public final long zzb() {
        return ((zzfo) this.zza).zzc();
    }

    public final long zzc() {
        return ((zzfo) this.zza).zzd();
    }

    public final zzfn zzd(Iterable iterable) {
        if (this.zzb) {
            zzaC();
            this.zzb = false;
        }
        zzfo.zzm((zzfo) this.zza, iterable);
        return this;
    }

    public final zzfn zze(zzfr zzfrVar) {
        if (this.zzb) {
            zzaC();
            this.zzb = false;
        }
        zzfo.zzk((zzfo) this.zza, (zzfs) zzfrVar.zzay());
        return this;
    }

    public final zzfn zzf(zzfs zzfsVar) {
        if (this.zzb) {
            zzaC();
            this.zzb = false;
        }
        zzfo.zzk((zzfo) this.zza, zzfsVar);
        return this;
    }

    public final zzfn zzg() {
        if (this.zzb) {
            zzaC();
            this.zzb = false;
        }
        ((zzfo) this.zza).zzf = zzjx.zzby();
        return this;
    }

    public final zzfn zzh(int i) {
        if (this.zzb) {
            zzaC();
            this.zzb = false;
        }
        zzfo.zzo((zzfo) this.zza, i);
        return this;
    }

    public final zzfn zzi(String str) {
        if (this.zzb) {
            zzaC();
            this.zzb = false;
        }
        zzfo.zzp((zzfo) this.zza, str);
        return this;
    }

    public final zzfn zzj(int i, zzfr zzfrVar) {
        if (this.zzb) {
            zzaC();
            this.zzb = false;
        }
        zzfo.zzj((zzfo) this.zza, i, (zzfs) zzfrVar.zzay());
        return this;
    }

    public final zzfn zzk(int i, zzfs zzfsVar) {
        if (this.zzb) {
            zzaC();
            this.zzb = false;
        }
        zzfo.zzj((zzfo) this.zza, i, zzfsVar);
        return this;
    }

    public final zzfn zzl(long j) {
        if (this.zzb) {
            zzaC();
            this.zzb = false;
        }
        zzfo.zzr((zzfo) this.zza, j);
        return this;
    }

    public final zzfn zzm(long j) {
        if (this.zzb) {
            zzaC();
            this.zzb = false;
        }
        zzfo.zzq((zzfo) this.zza, j);
        return this;
    }

    public final zzfs zzn(int i) {
        return ((zzfo) this.zza).zzg(i);
    }

    public final String zzo() {
        return ((zzfo) this.zza).zzh();
    }

    public final List zzp() {
        return Collections.unmodifiableList(((zzfo) this.zza).zzi());
    }

    public final boolean zzq() {
        return ((zzfo) this.zza).zzu();
    }
}
