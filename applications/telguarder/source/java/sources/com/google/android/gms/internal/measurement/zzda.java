package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzda.class */
public final class zzda extends zzho<zzdb, zzda> implements zziy {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzda() {
        /*
            r3 = this;
            r0 = r3
            com.google.android.gms.internal.measurement.zzdb r1 = com.google.android.gms.internal.measurement.zzdb.zzm()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzda.<init>():void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ zzda(com.google.android.gms.internal.measurement.zzcs r4) {
        /*
            r3 = this;
            r0 = r3
            com.google.android.gms.internal.measurement.zzdb r1 = com.google.android.gms.internal.measurement.zzdb.zzm()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzda.<init>(com.google.android.gms.internal.measurement.zzcs):void");
    }

    public final List<zzdf> zza() {
        return Collections.unmodifiableList(((zzdb) this.zza).zza());
    }

    public final int zzb() {
        return ((zzdb) this.zza).zzb();
    }

    public final zzdf zzc(int i) {
        return ((zzdb) this.zza).zzc(i);
    }

    public final zzda zzd(int i, zzdf zzdfVar) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzdb.zzn((zzdb) this.zza, i, zzdfVar);
        return this;
    }

    public final zzda zze(int i, zzde zzdeVar) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzdb.zzn((zzdb) this.zza, i, zzdeVar.zzaA());
        return this;
    }

    public final zzda zzf(zzdf zzdfVar) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzdb.zzo((zzdb) this.zza, zzdfVar);
        return this;
    }

    public final zzda zzg(zzde zzdeVar) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzdb.zzo((zzdb) this.zza, zzdeVar.zzaA());
        return this;
    }

    public final zzda zzh(Iterable<? extends zzdf> iterable) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzdb.zzp((zzdb) this.zza, iterable);
        return this;
    }

    public final zzda zzi() {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        ((zzdb) this.zza).zze = zzdb.zzbE();
        return this;
    }

    public final zzda zzj(int i) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzdb.zzr((zzdb) this.zza, i);
        return this;
    }

    public final String zzk() {
        return ((zzdb) this.zza).zzd();
    }

    public final zzda zzl(String str) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzdb.zzs((zzdb) this.zza, str);
        return this;
    }

    public final boolean zzm() {
        return ((zzdb) this.zza).zze();
    }

    public final long zzn() {
        return ((zzdb) this.zza).zzf();
    }

    public final zzda zzo(long j) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzdb.zzt((zzdb) this.zza, j);
        return this;
    }

    public final long zzp() {
        return ((zzdb) this.zza).zzh();
    }

    public final zzda zzq(long j) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zzdb.zzu((zzdb) this.zza, j);
        return this;
    }
}
