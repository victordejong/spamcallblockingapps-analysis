package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqz.class */
public final class zzqz implements zzpy, zzws, zztv, zzua, zzrl {
    private static final Map<String, String> zzb;
    private static final zzab zzc;
    private boolean zzA;
    private boolean zzC;
    private boolean zzD;
    private int zzE;
    private long zzG;
    private boolean zzI;
    private int zzJ;
    private boolean zzK;
    private boolean zzL;
    private final zztq zzM;
    private final zztk zzN;
    private final Uri zzd;
    private final zzdi zze;
    private final zznk zzf;
    private final zzqi zzg;
    private final zzne zzh;
    private final zzqv zzi;
    private final long zzj;
    private final zzqq zzl;
    private zzpx zzq;
    private zzzd zzr;
    private boolean zzu;
    private boolean zzv;
    private boolean zzw;
    private zzqy zzx;
    private zzxp zzy;
    private final zzud zzk = new zzud("ProgressiveMediaPeriod");
    private final zzeb zzm = new zzeb(zzdz.zza);
    private final Runnable zzn = new Runnable() { // from class: com.google.android.gms.internal.ads.zzqs
        @Override // java.lang.Runnable
        public final void run() {
            zzqz.this.zzS();
        }
    };
    private final Runnable zzo = new Runnable() { // from class: com.google.android.gms.internal.ads.zzqr
        @Override // java.lang.Runnable
        public final void run() {
            zzqz.this.zzC();
        }
    };
    private final Handler zzp = zzfn.zzz(null);
    private zzqx[] zzt = new zzqx[0];
    private zzrm[] zzs = new zzrm[0];
    private long zzH = -9223372036854775807L;
    private long zzF = -1;
    private long zzz = -9223372036854775807L;
    private int zzB = 1;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("Icy-MetaData", "1");
        zzb = Collections.unmodifiableMap(hashMap);
        zzz zzzVar = new zzz();
        zzzVar.zzH("icy");
        zzzVar.zzS("application/x-icy");
        zzc = zzzVar.zzY();
    }

    public zzqz(Uri uri, zzdi zzdiVar, zzqq zzqqVar, zznk zznkVar, zzne zzneVar, zztq zztqVar, zzqi zzqiVar, zzqv zzqvVar, zztk zztkVar, String str, int i, byte[] bArr) {
        this.zzd = uri;
        this.zze = zzdiVar;
        this.zzf = zznkVar;
        this.zzh = zzneVar;
        this.zzM = zztqVar;
        this.zzg = zzqiVar;
        this.zzi = zzqvVar;
        this.zzN = zztkVar;
        this.zzj = i;
        this.zzl = zzqqVar;
    }

    private final int zzN() {
        int i = 0;
        for (zzrm zzrmVar : this.zzs) {
            i += zzrmVar.zzc();
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    public final long zzO() {
        char c = 0;
        for (zzrm zzrmVar : this.zzs) {
            c = Math.max((long) c, zzrmVar.zzg());
        }
        return c;
    }

    private final zzxt zzP(zzqx zzqxVar) {
        int length = this.zzs.length;
        for (int i = 0; i < length; i++) {
            if (zzqxVar.equals(this.zzt[i])) {
                return this.zzs[i];
            }
        }
        zztk zztkVar = this.zzN;
        Looper looper = this.zzp.getLooper();
        zznk zznkVar = this.zzf;
        zzne zzneVar = this.zzh;
        Objects.requireNonNull(looper);
        Objects.requireNonNull(zznkVar);
        zzrm zzrmVar = new zzrm(zztkVar, looper, zznkVar, zzneVar, null);
        zzrmVar.zzu(this);
        int i2 = length + 1;
        zzqx[] zzqxVarArr = (zzqx[]) Arrays.copyOf(this.zzt, i2);
        zzqxVarArr[length] = zzqxVar;
        this.zzt = (zzqx[]) zzfn.zzY(zzqxVarArr);
        zzrm[] zzrmVarArr = (zzrm[]) Arrays.copyOf(this.zzs, i2);
        zzrmVarArr[length] = zzrmVar;
        this.zzs = (zzrm[]) zzfn.zzY(zzrmVarArr);
        return zzrmVar;
    }

    @EnsuresNonNull({"trackState", "seekMap"})
    private final void zzQ() {
        zzdy.zzf(this.zzv);
        Objects.requireNonNull(this.zzx);
        Objects.requireNonNull(this.zzy);
    }

    private final void zzR(zzqu zzquVar) {
        long j;
        if (this.zzF == -1) {
            j = zzquVar.zzm;
            this.zzF = j;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c4, code lost:
        if (r11.zzt[r14].zzb != false) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzS() {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqz.zzS():void");
    }

    private final void zzT(int i) {
        zzQ();
        zzqy zzqyVar = this.zzx;
        boolean[] zArr = zzqyVar.zzd;
        if (!zArr[i]) {
            zzab zzb2 = zzqyVar.zza.zzb(i).zzb(0);
            this.zzg.zzd(zzbi.zza(zzb2.zzm), zzb2, 0, null, this.zzG);
            zArr[i] = true;
        }
    }

    private final void zzU(int i) {
        zzQ();
        boolean[] zArr = this.zzx.zzb;
        if (!this.zzI || !zArr[i] || this.zzs[i].zzx(false)) {
            return;
        }
        this.zzH = 0L;
        this.zzI = false;
        this.zzD = true;
        this.zzG = 0L;
        this.zzJ = 0;
        for (zzrm zzrmVar : this.zzs) {
            zzrmVar.zzp(false);
        }
        zzpx zzpxVar = this.zzq;
        Objects.requireNonNull(zzpxVar);
        zzpxVar.zzg(this);
    }

    private final void zzV() {
        zzdm zzdmVar;
        long j;
        long j2;
        zzqu zzquVar = new zzqu(this, this.zzd, this.zze, this.zzl, this, this.zzm);
        if (this.zzv) {
            zzdy.zzf(zzW());
            long j3 = this.zzz;
            if (j3 != -9223372036854775807L && this.zzH > j3) {
                this.zzK = true;
                this.zzH = -9223372036854775807L;
                return;
            }
            zzxp zzxpVar = this.zzy;
            Objects.requireNonNull(zzxpVar);
            zzqu.zzg(zzquVar, zzxpVar.zzg(this.zzH).zza.zzc, this.zzH);
            for (zzrm zzrmVar : this.zzs) {
                zzrmVar.zzt(this.zzH);
            }
            this.zzH = -9223372036854775807L;
        }
        this.zzJ = zzN();
        long zza = this.zzk.zza(zzquVar, this, zztq.zza(this.zzB));
        zzdmVar = zzquVar.zzl;
        zzqi zzqiVar = this.zzg;
        j = zzquVar.zzb;
        zzpr zzprVar = new zzpr(j, zzdmVar, zzdmVar.zza, Collections.emptyMap(), zza, 0L, 0L);
        j2 = zzquVar.zzk;
        zzqiVar.zzl(zzprVar, 1, -1, null, 0, null, j2, this.zzz);
    }

    private final boolean zzW() {
        return this.zzH != -9223372036854775807L;
    }

    private final boolean zzX() {
        return this.zzD || zzW();
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final void zzB() {
        this.zzu = true;
        this.zzp.post(this.zzn);
    }

    public final /* synthetic */ void zzC() {
        if (!this.zzL) {
            zzpx zzpxVar = this.zzq;
            Objects.requireNonNull(zzpxVar);
            zzpxVar.zzg(this);
        }
    }

    public final /* synthetic */ void zzD(zzxp zzxpVar) {
        this.zzy = this.zzr == null ? zzxpVar : new zzxo(-9223372036854775807L, 0L);
        this.zzz = zzxpVar.zze();
        int i = 1;
        boolean z = false;
        if (this.zzF == -1) {
            z = false;
            if (zzxpVar.zze() == -9223372036854775807L) {
                z = true;
            }
        }
        this.zzA = z;
        if (true == z) {
            i = 7;
        }
        this.zzB = i;
        this.zzi.zza(this.zzz, zzxpVar.zzh(), this.zzA);
        if (!this.zzv) {
            zzS();
        }
    }

    public final void zzE() throws IOException {
        this.zzk.zzi(zztq.zza(this.zzB));
    }

    public final void zzF(int i) throws IOException {
        this.zzs[i].zzm();
        zzE();
    }

    @Override // com.google.android.gms.internal.ads.zztv
    public final /* bridge */ /* synthetic */ void zzG(zztz zztzVar, long j, long j2, boolean z) {
        zzul zzulVar;
        long j3;
        zzdm zzdmVar;
        long j4;
        long unused;
        zzqu zzquVar = (zzqu) zztzVar;
        zzulVar = zzquVar.zzd;
        j3 = zzquVar.zzb;
        zzdmVar = zzquVar.zzl;
        zzpr zzprVar = new zzpr(j3, zzdmVar, zzulVar.zzd(), zzulVar.zze(), j, j2, zzulVar.zzc());
        unused = zzquVar.zzb;
        zzqi zzqiVar = this.zzg;
        j4 = zzquVar.zzk;
        zzqiVar.zzf(zzprVar, 1, -1, null, 0, null, j4, this.zzz);
        if (!z) {
            zzR(zzquVar);
            for (zzrm zzrmVar : this.zzs) {
                zzrmVar.zzp(false);
            }
            if (this.zzE <= 0) {
                return;
            }
            zzpx zzpxVar = this.zzq;
            Objects.requireNonNull(zzpxVar);
            zzpxVar.zzg(this);
        }
    }

    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    @Override // com.google.android.gms.internal.ads.zztv
    public final /* bridge */ /* synthetic */ void zzH(zztz zztzVar, long j, long j2) {
        zzul zzulVar;
        long j3;
        zzdm zzdmVar;
        long j4;
        zzxp zzxpVar;
        long unused;
        if (this.zzz == -9223372036854775807L && (zzxpVar = this.zzy) != null) {
            boolean zzh = zzxpVar.zzh();
            long zzO = zzO();
            char c = zzO == Long.MIN_VALUE ? (char) 0 : zzO + 10000;
            this.zzz = c;
            this.zzi.zza(c, zzh, this.zzA);
        }
        zzqu zzquVar = (zzqu) zztzVar;
        zzulVar = zzquVar.zzd;
        j3 = zzquVar.zzb;
        zzdmVar = zzquVar.zzl;
        zzpr zzprVar = new zzpr(j3, zzdmVar, zzulVar.zzd(), zzulVar.zze(), j, j2, zzulVar.zzc());
        unused = zzquVar.zzb;
        zzqi zzqiVar = this.zzg;
        j4 = zzquVar.zzk;
        zzqiVar.zzh(zzprVar, 1, -1, null, 0, null, j4, this.zzz);
        zzR(zzquVar);
        this.zzK = true;
        zzpx zzpxVar = this.zzq;
        Objects.requireNonNull(zzpxVar);
        zzpxVar.zzg(this);
    }

    @Override // com.google.android.gms.internal.ads.zzua
    public final void zzI() {
        for (zzrm zzrmVar : this.zzs) {
            zzrmVar.zzo();
        }
        this.zzl.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzrl
    public final void zzJ(zzab zzabVar) {
        this.zzp.post(this.zzn);
    }

    public final void zzK() {
        if (this.zzv) {
            for (zzrm zzrmVar : this.zzs) {
                zzrmVar.zzn();
            }
        }
        this.zzk.zzj(this);
        this.zzp.removeCallbacksAndMessages(null);
        this.zzq = null;
        this.zzL = true;
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final void zzL(final zzxp zzxpVar) {
        this.zzp.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqt
            @Override // java.lang.Runnable
            public final void run() {
                zzqz.this.zzD(zzxpVar);
            }
        });
    }

    public final boolean zzM(int i) {
        return !zzX() && this.zzs[i].zzx(this.zzK);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0045, code lost:
        if (r10.zzg == 0) goto L34;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r8v4 */
    @Override // com.google.android.gms.internal.ads.zzpy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zza(long r8, com.google.android.gms.internal.ads.zzio r10) {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqz.zza(long, com.google.android.gms.internal.ads.zzio):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final long zzb() {
        char c;
        zzQ();
        boolean[] zArr = this.zzx.zzb;
        if (this.zzK) {
            return Long.MIN_VALUE;
        }
        if (zzW()) {
            return this.zzH;
        }
        if (this.zzw) {
            int length = this.zzs.length;
            int i = 0;
            ?? r0 = 9223372036854775807;
            while (true) {
                char c2 = r0;
                c = c2;
                if (i >= length) {
                    break;
                }
                char c3 = c2;
                if (zArr[i]) {
                    c3 = c2;
                    if (!this.zzs[i].zzw()) {
                        c3 = Math.min((long) c2, this.zzs[i].zzg());
                    }
                }
                i++;
                r0 = c3;
            }
        } else {
            c = 65535;
        }
        char c4 = c;
        if (c == Long.MAX_VALUE) {
            c4 = zzO();
        }
        return c4 == Long.MIN_VALUE ? this.zzG : c4;
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final long zzc() {
        if (this.zzE == 0) {
            return Long.MIN_VALUE;
        }
        return zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final long zzd() {
        if (this.zzD) {
            if (!this.zzK && zzN() <= this.zzJ) {
                return -9223372036854775807L;
            }
            this.zzD = false;
            return this.zzG;
        }
        return -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v46, types: [com.google.android.gms.internal.ads.zzrm[]] */
    /* JADX WARN: Type inference failed for: r0v47, types: [com.google.android.gms.internal.ads.zzrm] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.google.android.gms.internal.ads.zzpy
    public final long zze(long j) {
        zzQ();
        boolean[] zArr = this.zzx.zzb;
        ?? r6 = j;
        if (true != this.zzy.zzh()) {
            r6 = 0;
        }
        this.zzD = false;
        this.zzG = r6;
        if (zzW()) {
            this.zzH = r6;
            return r6;
        }
        if (this.zzB != 7) {
            int length = this.zzs.length;
            for (int i = 0; i < length; i++) {
                if (this.zzs[i].zzy(r6, false) || (!zArr[i] && this.zzw)) {
                }
            }
            return r6;
        }
        this.zzI = false;
        this.zzH = r6;
        this.zzK = false;
        if (this.zzk.zzl()) {
            for (zzrm zzrmVar : this.zzs) {
                zzrmVar.zzj();
            }
            this.zzk.zzg();
        } else {
            this.zzk.zzh();
            for (zzrm zzrmVar2 : this.zzs) {
                zzrmVar2.zzp(false);
            }
        }
        return r6;
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final zzch zzf() {
        zzQ();
        return this.zzx.zza;
    }

    public final int zzg(int i, zzhr zzhrVar, zzda zzdaVar, int i2) {
        if (zzX()) {
            return -3;
        }
        zzT(i);
        int zzd = this.zzs[i].zzd(zzhrVar, zzdaVar, i2, this.zzK);
        if (zzd == -3) {
            zzU(i);
        }
        return zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final void zzh(long j, boolean z) {
        zzQ();
        if (zzW()) {
            return;
        }
        boolean[] zArr = this.zzx.zzc;
        int length = this.zzs.length;
        for (int i = 0; i < length; i++) {
            this.zzs[i].zzi(j, false, zArr[i]);
        }
    }

    public final int zzi(int i, long j) {
        if (zzX()) {
            return 0;
        }
        zzT(i);
        zzrm zzrmVar = this.zzs[i];
        int zzb2 = zzrmVar.zzb(j, this.zzK);
        zzrmVar.zzv(zzb2);
        if (zzb2 != 0) {
            return zzb2;
        }
        zzU(i);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final void zzj() throws IOException {
        zzE();
        if (!this.zzK || this.zzv) {
            return;
        }
        throw zzbj.zza("Loading finished before preparation is complete.", null);
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final void zzk(zzpx zzpxVar, long j) {
        this.zzq = zzpxVar;
        this.zzm.zze();
        zzV();
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final void zzl(long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final boolean zzn(long j) {
        if (this.zzK || this.zzk.zzk() || this.zzI) {
            return false;
        }
        if (this.zzv && this.zzE == 0) {
            return false;
        }
        boolean zze = this.zzm.zze();
        if (!this.zzk.zzl()) {
            zzV();
            zze = true;
        }
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final boolean zzo() {
        return this.zzk.zzl() && this.zzm.zzd();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzpy
    public final long zzq(zzsb[] zzsbVarArr, boolean[] zArr, zzrn[] zzrnVarArr, boolean[] zArr2, long j) {
        boolean z;
        char c;
        int i;
        zzQ();
        zzqy zzqyVar = this.zzx;
        zzch zzchVar = zzqyVar.zza;
        boolean[] zArr3 = zzqyVar.zzc;
        int i2 = this.zzE;
        for (int i3 = 0; i3 < zzsbVarArr.length; i3++) {
            zzrn zzrnVar = zzrnVarArr[i3];
            if (zzrnVar != null && (zzsbVarArr[i3] == null || !zArr[i3])) {
                i = ((zzqw) zzrnVar).zzb;
                zzdy.zzf(zArr3[i]);
                this.zzE--;
                zArr3[i] = false;
                zzrnVarArr[i3] = null;
            }
        }
        boolean z2 = !this.zzC ? j != 0 : i2 == 0;
        int i4 = 0;
        while (true) {
            z = z2;
            if (i4 >= zzsbVarArr.length) {
                break;
            }
            z2 = z;
            if (zzrnVarArr[i4] == null) {
                zzsb zzsbVar = zzsbVarArr[i4];
                z2 = z;
                if (zzsbVar != null) {
                    zzdy.zzf(zzsbVar.zzc() == 1);
                    zzdy.zzf(zzsbVar.zzb(0) == 0);
                    int zza = zzchVar.zza(zzsbVar.zze());
                    zzdy.zzf(!zArr3[zza]);
                    this.zzE++;
                    zArr3[zza] = true;
                    zzrnVarArr[i4] = new zzqw(this, zza);
                    zArr2[i4] = true;
                    z2 = z;
                    if (!z) {
                        zzrm zzrmVar = this.zzs[zza];
                        z2 = !zzrmVar.zzy(j, true) && zzrmVar.zza() != 0;
                    }
                }
            }
            i4++;
        }
        if (this.zzE == 0) {
            this.zzI = false;
            this.zzD = false;
            if (!this.zzk.zzl()) {
                zzrm[] zzrmVarArr = this.zzs;
                int length = zzrmVarArr.length;
                int i5 = 0;
                while (true) {
                    c = j;
                    if (i5 >= length) {
                        break;
                    }
                    zzrmVarArr[i5].zzp(false);
                    i5++;
                }
            } else {
                for (zzrm zzrmVar2 : this.zzs) {
                    zzrmVar2.zzj();
                }
                this.zzk.zzg();
                c = j;
            }
        } else {
            c = j;
            if (z) {
                ?? zze = zze(j);
                int i6 = 0;
                while (true) {
                    c = zze;
                    if (i6 >= zzrnVarArr.length) {
                        break;
                    }
                    if (zzrnVarArr[i6] != null) {
                        zArr2[i6] = true;
                    }
                    i6++;
                }
            }
        }
        this.zzC = true;
        return c;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0194  */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    @Override // com.google.android.gms.internal.ads.zztv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ com.google.android.gms.internal.ads.zztx zzt(com.google.android.gms.internal.ads.zztz r16, long r17, long r19, java.io.IOException r21, int r22) {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqz.zzt(com.google.android.gms.internal.ads.zztz, long, long, java.io.IOException, int):com.google.android.gms.internal.ads.zztx");
    }

    public final zzxt zzu() {
        return zzP(new zzqx(0, true));
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final zzxt zzv(int i, int i2) {
        return zzP(new zzqx(i, false));
    }
}
