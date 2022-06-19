package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaux.class */
public final class zzaux implements zzars {
    private zzauv zze;
    private zzauv zzf;
    private zzapg zzg;
    private zzapg zzh;
    private long zzi;
    private zzauw zzk;
    private final zzavz zzl;
    private final zzauu zza = new zzauu();
    private final zzaut zzb = new zzaut();
    private final zzawu zzc = new zzawu(32);
    private final AtomicInteger zzd = new AtomicInteger();
    private int zzj = 65536;

    public zzaux(zzavz zzavzVar, byte[] bArr) {
        this.zzl = zzavzVar;
        zzauv zzauvVar = new zzauv(0L, 65536);
        this.zze = zzauvVar;
        this.zzf = zzauvVar;
    }

    private final int zzo(int i) {
        if (this.zzj == 65536) {
            this.zzj = 0;
            zzauv zzauvVar = this.zzf;
            if (zzauvVar.zzc) {
                this.zzf = zzauvVar.zze;
            }
            zzauv zzauvVar2 = this.zzf;
            zzavt zzb = this.zzl.zzb();
            zzauv zzauvVar3 = new zzauv(this.zzf.zzb, 65536);
            zzauvVar2.zzd = zzb;
            zzauvVar2.zze = zzauvVar3;
            zzauvVar2.zzc = true;
        }
        return Math.min(i, 65536 - this.zzj);
    }

    private final void zzp() {
        this.zza.zzg();
        zzauv zzauvVar = this.zze;
        if (zzauvVar.zzc) {
            zzauv zzauvVar2 = this.zzf;
            int i = (((int) (zzauvVar2.zza - zzauvVar.zza)) / 65536) + (zzauvVar2.zzc ? 1 : 0);
            zzavt[] zzavtVarArr = new zzavt[i];
            for (int i2 = 0; i2 < i; i2++) {
                zzavtVarArr[i2] = zzauvVar.zzd;
                zzauvVar.zzd = null;
                zzauvVar = zzauvVar.zze;
            }
            this.zzl.zzd(zzavtVarArr);
        }
        zzauv zzauvVar3 = new zzauv(0L, 65536);
        this.zze = zzauvVar3;
        this.zzf = zzauvVar3;
        this.zzi = 0L;
        this.zzj = 65536;
        this.zzl.zzg();
    }

    private final void zzq(long j) {
        while (true) {
            zzauv zzauvVar = this.zze;
            if (j >= zzauvVar.zzb) {
                this.zzl.zzc(zzauvVar.zzd);
                zzauv zzauvVar2 = this.zze;
                zzauvVar2.zzd = null;
                this.zze = zzauvVar2.zze;
            } else {
                return;
            }
        }
    }

    private final void zzr() {
        if (!this.zzd.compareAndSet(1, 0)) {
            zzp();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    private final void zzs(long j, byte[] bArr, int i) {
        zzq(j);
        int i2 = 0;
        while (i2 < i) {
            int i3 = (int) (j - this.zze.zza);
            int min = Math.min(i - i2, 65536 - i3);
            zzavt zzavtVar = this.zze.zzd;
            System.arraycopy(zzavtVar.zza, i3, bArr, i2, min);
            ?? r0 = j + min;
            int i4 = i2 + min;
            i2 = i4;
            j = r0;
            if (r0 == this.zze.zzb) {
                this.zzl.zzc(zzavtVar);
                zzauv zzauvVar = this.zze;
                zzauvVar.zzd = null;
                this.zze = zzauvVar.zze;
                i2 = i4;
                j = r0;
            }
        }
    }

    private final boolean zzt() {
        return this.zzd.compareAndSet(0, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzars
    public final void zza(zzapg zzapgVar) {
        zzapg zzapgVar2 = zzapgVar == null ? null : zzapgVar;
        boolean zzk = this.zza.zzk(zzapgVar2);
        this.zzh = zzapgVar;
        zzauw zzauwVar = this.zzk;
        if (zzauwVar == null || !zzk) {
            return;
        }
        zzauwVar.zzv(zzapgVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzars
    public final void zzb(zzawu zzawuVar, int i) {
        if (!zzt()) {
            zzawuVar.zzw(i);
            return;
        }
        while (i > 0) {
            int zzo = zzo(i);
            zzawuVar.zzq(this.zzf.zzd.zza, this.zzj, zzo);
            this.zzj += zzo;
            this.zzi += zzo;
            i -= zzo;
        }
        zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzars
    public final void zzc(long j, int i, int i2, int i3, zzarr zzarrVar) {
        if (!zzt()) {
            this.zza.zzi(j);
            return;
        }
        try {
            this.zza.zzh(j, i, this.zzi - i2, i2, zzarrVar);
        } finally {
            zzr();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzars
    public final int zzd(zzari zzariVar, int i, boolean z) throws IOException, InterruptedException {
        if (!zzt()) {
            int zzb = zzariVar.zzb(i);
            if (zzb == -1) {
                throw new EOFException();
            }
            return zzb;
        }
        try {
            int zza = zzariVar.zza(this.zzf.zzd.zza, this.zzj, zzo(i));
            if (zza == -1) {
                throw new EOFException();
            }
            this.zzj += zza;
            this.zzi += zza;
            return zza;
        } finally {
            zzr();
        }
    }

    public final int zze() {
        return this.zza.zza();
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0101, code lost:
        if (r0.length < r15) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x011e, code lost:
        if (r0.length < r15) goto L30;
     */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v132, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzf(com.google.android.gms.internal.ads.zzaph r9, com.google.android.gms.internal.ads.zzarb r10, boolean r11, boolean r12, long r13) {
        /*
            Method dump skipped, instructions count: 674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaux.zzf(com.google.android.gms.internal.ads.zzaph, com.google.android.gms.internal.ads.zzarb, boolean, boolean, long):int");
    }

    public final long zzg() {
        return this.zza.zzc();
    }

    public final zzapg zzh() {
        return this.zza.zzf();
    }

    public final void zzi() {
        if (this.zzd.getAndSet(2) == 0) {
            zzp();
        }
    }

    public final void zzj(boolean z) {
        int andSet = this.zzd.getAndSet(true != z ? 2 : 0);
        zzp();
        this.zza.zzj();
        if (andSet == 2) {
            this.zzg = null;
        }
    }

    public final void zzk(zzauw zzauwVar) {
        this.zzk = zzauwVar;
    }

    public final void zzl() {
        long zzd = this.zza.zzd();
        if (zzd != -1) {
            zzq(zzd);
        }
    }

    public final boolean zzm() {
        return this.zza.zzl();
    }

    public final boolean zzn(long j, boolean z) {
        long zze = this.zza.zze(j, z);
        if (zze == -1) {
            return false;
        }
        zzq(zze);
        return true;
    }
}
