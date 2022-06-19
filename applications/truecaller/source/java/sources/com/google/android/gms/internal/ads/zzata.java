package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzata.class */
public final class zzata implements zzapx {
    private zzasy zze;
    private zzasy zzf;
    private zzanm zzg;
    private zzanm zzh;
    private long zzi;
    private zzasz zzk;
    private final zzauc zzl;
    private final zzasx zza = new zzasx();
    private final zzasw zzb = new zzasw();
    private final zzaux zzc = new zzaux(32);
    private final AtomicInteger zzd = new AtomicInteger();
    private int zzj = 65536;

    public zzata(zzauc zzaucVar, byte[] bArr) {
        this.zzl = zzaucVar;
        zzasy zzasyVar = new zzasy(0L, 65536);
        this.zze = zzasyVar;
        this.zzf = zzasyVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    private final void zzo(long j, byte[] bArr, int i) {
        zzp(j);
        int i2 = 0;
        while (i2 < i) {
            int i3 = (int) (j - this.zze.zza);
            int min = Math.min(i - i2, 65536 - i3);
            zzatw zzatwVar = this.zze.zzd;
            System.arraycopy(zzatwVar.zza, i3, bArr, i2, min);
            ?? r0 = j + min;
            int i4 = i2 + min;
            i2 = i4;
            j = r0;
            if (r0 == this.zze.zzb) {
                this.zzl.zzd(zzatwVar);
                zzasy zzasyVar = this.zze;
                zzasyVar.zzd = null;
                this.zze = zzasyVar.zze;
                i2 = i4;
                j = r0;
            }
        }
    }

    private final void zzp(long j) {
        while (true) {
            zzasy zzasyVar = this.zze;
            if (j >= zzasyVar.zzb) {
                this.zzl.zzd(zzasyVar.zzd);
                zzasy zzasyVar2 = this.zze;
                zzasyVar2.zzd = null;
                this.zze = zzasyVar2.zze;
            } else {
                return;
            }
        }
    }

    private final boolean zzq() {
        return this.zzd.compareAndSet(0, 1);
    }

    private final void zzr() {
        if (!this.zzd.compareAndSet(1, 0)) {
            zzs();
        }
    }

    private final void zzs() {
        this.zza.zza();
        zzasy zzasyVar = this.zze;
        if (zzasyVar.zzc) {
            zzasy zzasyVar2 = this.zzf;
            int i = (((int) (zzasyVar2.zza - zzasyVar.zza)) / 65536) + (zzasyVar2.zzc ? 1 : 0);
            zzatw[] zzatwVarArr = new zzatw[i];
            for (int i2 = 0; i2 < i; i2++) {
                zzatwVarArr[i2] = zzasyVar.zzd;
                zzasyVar.zzd = null;
                zzasyVar = zzasyVar.zze;
            }
            this.zzl.zze(zzatwVarArr);
        }
        zzasy zzasyVar3 = new zzasy(0L, 65536);
        this.zze = zzasyVar3;
        this.zzf = zzasyVar3;
        this.zzi = 0L;
        this.zzj = 65536;
        this.zzl.zzf();
    }

    private final int zzt(int i) {
        if (this.zzj == 65536) {
            this.zzj = 0;
            zzasy zzasyVar = this.zzf;
            if (zzasyVar.zzc) {
                this.zzf = zzasyVar.zze;
            }
            zzasy zzasyVar2 = this.zzf;
            zzatw zzc = this.zzl.zzc();
            zzasy zzasyVar3 = new zzasy(this.zzf.zzb, 65536);
            zzasyVar2.zzd = zzc;
            zzasyVar2.zze = zzasyVar3;
            zzasyVar2.zzc = true;
        }
        return Math.min(i, 65536 - this.zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzapx
    public final void zza(zzanm zzanmVar) {
        zzanm zzanmVar2 = zzanmVar == null ? null : zzanmVar;
        boolean zzj = this.zza.zzj(zzanmVar2);
        this.zzh = zzanmVar;
        zzasz zzaszVar = this.zzk;
        if (zzaszVar == null || !zzj) {
            return;
        }
        zzaszVar.zzw(zzanmVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzapx
    public final void zzb(zzaux zzauxVar, int i) {
        if (!zzq()) {
            zzauxVar.zzj(i);
            return;
        }
        while (i > 0) {
            int zzt = zzt(i);
            zzauxVar.zzk(this.zzf.zzd.zza, this.zzj, zzt);
            this.zzj += zzt;
            this.zzi += zzt;
            i -= zzt;
        }
        zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzapx
    public final void zzc(long j, int i, int i2, int i3, zzapw zzapwVar) {
        if (!zzq()) {
            this.zza.zzl(j);
            return;
        }
        try {
            this.zza.zzk(j, i, this.zzi - i2, i2, zzapwVar);
        } finally {
            zzr();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapx
    public final int zzd(zzapn zzapnVar, int i, boolean z) throws IOException, InterruptedException {
        if (!zzq()) {
            int zzc = zzapnVar.zzc(i);
            if (zzc == -1) {
                throw new EOFException();
            }
            return zzc;
        }
        try {
            int zza = zzapnVar.zza(this.zzf.zzd.zza, this.zzj, zzt(i));
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

    public final void zze(boolean z) {
        int andSet = this.zzd.getAndSet(true != z ? 2 : 0);
        zzs();
        this.zza.zzb();
        if (andSet == 2) {
            this.zzg = null;
        }
    }

    public final int zzf() {
        return this.zza.zzc();
    }

    public final void zzg() {
        if (this.zzd.getAndSet(2) == 0) {
            zzs();
        }
    }

    public final boolean zzh() {
        return this.zza.zzd();
    }

    public final zzanm zzi() {
        return this.zza.zze();
    }

    public final long zzj() {
        return this.zza.zzf();
    }

    public final void zzk() {
        long zzh = this.zza.zzh();
        if (zzh != -1) {
            zzp(zzh);
        }
    }

    public final boolean zzl(long j, boolean z) {
        long zzi = this.zza.zzi(j, z);
        if (zzi == -1) {
            return false;
        }
        zzp(zzi);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0104, code lost:
        if (r0.length < r15) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0121, code lost:
        if (r0.length < r15) goto L29;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* JADX WARN: Type inference failed for: r0v134, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v81, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzm(com.google.android.gms.internal.ads.zzann r9, com.google.android.gms.internal.ads.zzapg r10, boolean r11, boolean r12, long r13) {
        /*
            Method dump skipped, instructions count: 677
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzata.zzm(com.google.android.gms.internal.ads.zzann, com.google.android.gms.internal.ads.zzapg, boolean, boolean, long):int");
    }

    public final void zzn(zzasz zzaszVar) {
        this.zzk = zzaszVar;
    }
}
