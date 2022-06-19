package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfn.class */
public final class zzfn extends zzjz<zzfo, zzfn> implements zzlj {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzfn() {
        /*
            r3 = this;
            r0 = r3
            com.google.android.gms.internal.measurement.zzfo r1 = com.google.android.gms.internal.measurement.zzfo.zzm()
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
            com.google.android.gms.internal.measurement.zzfo r1 = com.google.android.gms.internal.measurement.zzfo.zzm()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzfn.<init>(com.google.android.gms.internal.measurement.zzff):void");
    }

    public final List<zzfs> zza() {
        return Collections.unmodifiableList(((zzfo) this.zza).zza());
    }

    public final int zzb() {
        return ((zzfo) this.zza).zzb();
    }

    public final zzfs zzc(int i) {
        return ((zzfo) this.zza).zzc(i);
    }

    public final zzfn zzd(int i, zzfs zzfsVar) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzfo.zzn((zzfo) this.zza, i, zzfsVar);
        return this;
    }

    public final zzfn zze(int i, zzfr zzfrVar) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzfo.zzn((zzfo) this.zza, i, zzfrVar.zzaA());
        return this;
    }

    public final zzfn zzf(zzfs zzfsVar) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzfo.zzo((zzfo) this.zza, zzfsVar);
        return this;
    }

    public final zzfn zzg(zzfr zzfrVar) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzfo.zzo((zzfo) this.zza, zzfrVar.zzaA());
        return this;
    }

    public final zzfn zzh(Iterable<? extends zzfs> iterable) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzfo.zzp((zzfo) this.zza, iterable);
        return this;
    }

    public final zzfn zzi() {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        ((zzfo) this.zza).zze = zzkd.zzbE();
        return this;
    }

    public final zzfn zzj(int i) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzfo.zzr((zzfo) this.zza, i);
        return this;
    }

    public final String zzk() {
        return ((zzfo) this.zza).zzd();
    }

    public final zzfn zzl(String str) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzfo.zzs((zzfo) this.zza, str);
        return this;
    }

    public final boolean zzm() {
        return ((zzfo) this.zza).zze();
    }

    public final long zzn() {
        return ((zzfo) this.zza).zzf();
    }

    public final zzfn zzo(long j) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzfo.zzt((zzfo) this.zza, j);
        return this;
    }

    public final long zzp() {
        return ((zzfo) this.zza).zzh();
    }

    public final zzfn zzq(long j) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzfo.zzu((zzfo) this.zza, j);
        return this;
    }
}
