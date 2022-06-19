package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zznm.class */
public final class zznm implements zzkh {
    private final zzol zzbdp;
    private final int zzbge;
    private zznl zzbgi;
    private zznl zzbgj;
    private zzht zzbgk;
    private boolean zzbgl;
    private zzht zzbgm;
    private long zzbgn;
    private int zzbgo;
    private zzno zzbgp;
    private final zznk zzbgf = new zznk();
    private final zznj zzbgg = new zznj();
    private final zzpn zzapt = new zzpn(32);
    private final AtomicInteger zzbgh = new AtomicInteger();

    public zznm(zzol zzolVar) {
        this.zzbdp = zzolVar;
        int zzio = zzolVar.zzio();
        this.zzbge = zzio;
        this.zzbgo = zzio;
        zznl zznlVar = new zznl(0L, zzio);
        this.zzbgi = zznlVar;
        this.zzbgj = zznlVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    private final void zza(long j, byte[] bArr, int i) {
        zzej(j);
        int i2 = 0;
        while (i2 < i) {
            int i3 = (int) (j - this.zzbgi.zzbga);
            int min = Math.min(i - i2, this.zzbge - i3);
            zzom zzomVar = this.zzbgi.zzbgc;
            System.arraycopy(zzomVar.data, i3 + 0, bArr, i2, min);
            ?? r0 = j + min;
            int i4 = i2 + min;
            i2 = i4;
            j = r0;
            if (r0 == this.zzbgi.zzasu) {
                this.zzbdp.zza(zzomVar);
                this.zzbgi = this.zzbgi.zzih();
                i2 = i4;
                j = r0;
            }
        }
    }

    private final int zzba(int i) {
        if (this.zzbgo == this.zzbge) {
            this.zzbgo = 0;
            if (this.zzbgj.zzbgb) {
                this.zzbgj = this.zzbgj.zzbgd;
            }
            zznl zznlVar = this.zzbgj;
            zzom zzin = this.zzbdp.zzin();
            zznl zznlVar2 = new zznl(this.zzbgj.zzasu, this.zzbge);
            zznlVar.zzbgc = zzin;
            zznlVar.zzbgd = zznlVar2;
            zznlVar.zzbgb = true;
        }
        return Math.min(i, this.zzbge - this.zzbgo);
    }

    private final void zzej(long j) {
        while (j >= this.zzbgi.zzasu) {
            this.zzbdp.zza(this.zzbgi.zzbgc);
            this.zzbgi = this.zzbgi.zzih();
        }
    }

    private final void zzib() {
        this.zzbgf.zzib();
        zznl zznlVar = this.zzbgi;
        if (zznlVar.zzbgb) {
            int i = (this.zzbgj.zzbgb ? 1 : 0) + (((int) (this.zzbgj.zzbga - zznlVar.zzbga)) / this.zzbge);
            zzom[] zzomVarArr = new zzom[i];
            for (int i2 = 0; i2 < i; i2++) {
                zzomVarArr[i2] = zznlVar.zzbgc;
                zznlVar = zznlVar.zzih();
            }
            this.zzbdp.zza(zzomVarArr);
        }
        zznl zznlVar2 = new zznl(0L, this.zzbge);
        this.zzbgi = zznlVar2;
        this.zzbgj = zznlVar2;
        this.zzbgn = 0L;
        this.zzbgo = this.zzbge;
        this.zzbdp.zzn();
    }

    private final boolean zzij() {
        return this.zzbgh.compareAndSet(0, 1);
    }

    private final void zzik() {
        if (!this.zzbgh.compareAndSet(1, 0)) {
            zzib();
        }
    }

    public final void disable() {
        if (this.zzbgh.getAndSet(2) == 0) {
            zzib();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0115, code lost:
        if (r0.length < r15) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0134, code lost:
        if (r0.length < r15) goto L38;
     */
    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r0v124, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzhv r9, com.google.android.gms.internal.ads.zzjp r10, boolean r11, boolean r12, long r13) {
        /*
            Method dump skipped, instructions count: 697
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zznm.zza(com.google.android.gms.internal.ads.zzhv, com.google.android.gms.internal.ads.zzjp, boolean, boolean, long):int");
    }

    @Override // com.google.android.gms.internal.ads.zzkh
    public final int zza(zzjz zzjzVar, int i, boolean z) throws IOException, InterruptedException {
        if (!zzij()) {
            int zzaf = zzjzVar.zzaf(i);
            if (zzaf == -1) {
                throw new EOFException();
            }
            return zzaf;
        }
        try {
            int read = zzjzVar.read(this.zzbgj.zzbgc.data, this.zzbgo + 0, zzba(i));
            if (read == -1) {
                throw new EOFException();
            }
            this.zzbgo += read;
            this.zzbgn += read;
            return read;
        } finally {
            zzik();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkh
    public final void zza(long j, int i, int i2, int i3, zzkk zzkkVar) {
        if (!zzij()) {
            this.zzbgf.zzei(j);
            return;
        }
        try {
            this.zzbgf.zza(j, i, (this.zzbgn - i2) - i3, i2, zzkkVar);
        } finally {
            zzik();
        }
    }

    public final void zza(zzno zznoVar) {
        this.zzbgp = zznoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzkh
    public final void zza(zzpn zzpnVar, int i) {
        int i2 = i;
        if (!zzij()) {
            zzpnVar.zzbj(i);
            return;
        }
        while (i2 > 0) {
            int zzba = zzba(i2);
            zzpnVar.zze(this.zzbgj.zzbgc.data, this.zzbgo + 0, zzba);
            this.zzbgo += zzba;
            this.zzbgn += zzba;
            i2 -= zzba;
        }
        zzik();
    }

    @Override // com.google.android.gms.internal.ads.zzkh
    public final void zze(zzht zzhtVar) {
        zzht zzhtVar2 = zzhtVar == null ? null : zzhtVar;
        boolean zzg = this.zzbgf.zzg(zzhtVar2);
        this.zzbgm = zzhtVar;
        this.zzbgl = false;
        zzno zznoVar = this.zzbgp;
        if (zznoVar == null || !zzg) {
            return;
        }
        zznoVar.zzf(zzhtVar2);
    }

    public final boolean zze(long j, boolean z) {
        long zzd = this.zzbgf.zzd(j, z);
        if (zzd == -1) {
            return false;
        }
        zzej(zzd);
        return true;
    }

    public final long zzhv() {
        return this.zzbgf.zzhv();
    }

    public final int zzid() {
        return this.zzbgf.zzid();
    }

    public final boolean zzie() {
        return this.zzbgf.zzie();
    }

    public final zzht zzif() {
        return this.zzbgf.zzif();
    }

    public final void zzii() {
        long zzig = this.zzbgf.zzig();
        if (zzig != -1) {
            zzej(zzig);
        }
    }

    public final void zzk(boolean z) {
        int andSet = this.zzbgh.getAndSet(z ? 0 : 2);
        zzib();
        this.zzbgf.zzic();
        if (andSet == 2) {
            this.zzbgk = null;
        }
    }
}
