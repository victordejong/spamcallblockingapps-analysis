package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzafe.class */
public final class zzafe extends zzadu {
    private zzahd zzA;
    private long zzC;
    public final zzka zzb;
    public final zzahi zzc;
    private final zzahv[] zzd;
    private final zzjz zze;
    private final zzalg zzf;
    private final zzafn zzg;
    private final zzafp zzh;
    private final zzalm<zzahj> zzi;
    private final zzhq zzn;
    private final zzcy zzo;
    private final Looper zzp;
    private final zzki zzq;
    private final zzaku zzr;
    private int zzs;
    private int zzt;
    private boolean zzu;
    private int zzv;
    private zzahz zzw;
    private zzahi zzx;
    private zzago zzy;
    private zzago zzz;
    private final boolean zzm = true;
    private final CopyOnWriteArraySet<zzaeh> zzj = new CopyOnWriteArraySet<>();
    private final List<zzafd> zzl = new ArrayList();
    private zzix zzD = new zzix(0);
    private final zzain zzk = new zzain();
    private int zzB = -1;

    public zzafe(zzahv[] zzahvVarArr, zzjz zzjzVar, zzhq zzhqVar, zzafy zzafyVar, zzki zzkiVar, zzcy zzcyVar, boolean z, zzahz zzahzVar, long j, long j2, zzadz zzadzVar, long j3, boolean z2, zzaku zzakuVar, Looper looper, zzahp zzahpVar, zzahi zzahiVar, byte[] bArr) {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = zzamq.zze;
        String.valueOf(hexString).length();
        String.valueOf(str).length();
        int length = zzahvVarArr.length;
        this.zzd = zzahvVarArr;
        Objects.requireNonNull(zzjzVar);
        this.zze = zzjzVar;
        this.zzn = zzhqVar;
        this.zzq = zzkiVar;
        this.zzo = zzcyVar;
        this.zzw = zzahzVar;
        this.zzp = looper;
        this.zzr = zzakuVar;
        zzalm<zzahj> zzalmVar = new zzalm<>(looper, zzakuVar, new zzalk(zzahpVar) { // from class: com.google.android.gms.internal.ads.zzaej
            private final zzahp zza;

            {
                this.zza = zzahpVar;
            }

            @Override // com.google.android.gms.internal.ads.zzalk
            public final void zza(Object obj, zzale zzaleVar) {
                zzahj zzahjVar = (zzahj) obj;
                new zzahk(zzaleVar);
            }
        });
        this.zzi = zzalmVar;
        zzka zzkaVar = new zzka(new zzahx[2], new zzjg[2], null, null);
        this.zzb = zzkaVar;
        zzahh zzahhVar = new zzahh();
        zzahhVar.zzc(1, 2, 12, 13, 14, 15, 16, 17, 18, 19);
        zzahhVar.zzb(28, true);
        zzahhVar.zzd(zzahiVar);
        zzahi zze = zzahhVar.zze();
        this.zzc = zze;
        zzahh zzahhVar2 = new zzahh();
        zzahhVar2.zzd(zze);
        zzahhVar2.zza(3);
        zzahhVar2.zza(9);
        this.zzx = zzahhVar2.zze();
        zzago zzagoVar = zzago.zza;
        this.zzy = zzagoVar;
        this.zzz = zzagoVar;
        this.zzf = zzakuVar.zza(looper, null);
        zzafn zzafnVar = new zzafn(this) { // from class: com.google.android.gms.internal.ads.zzaeu
            private final zzafe zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzafn
            public final void zza(zzafm zzafmVar) {
                this.zza.zzI(zzafmVar);
            }
        };
        this.zzg = zzafnVar;
        this.zzA = zzahd.zza(zzkaVar);
        zzcyVar.zzc(zzahpVar, looper);
        zzalmVar.zzb(zzcyVar);
        zzkiVar.zze(new Handler(looper), zzcyVar);
        this.zzh = new zzafp(zzahvVarArr, zzjzVar, zzkaVar, zzafyVar, zzkiVar, 0, false, zzcyVar, zzahzVar, zzadzVar, 500L, false, looper, zzakuVar, zzafnVar, null);
    }

    private final int zzK() {
        if (this.zzA.zza.zzt()) {
            return this.zzB;
        }
        zzahd zzahdVar = this.zzA;
        return zzahdVar.zza.zzy(zzahdVar.zzb.zza, this.zzk).zzc;
    }

    private final long zzL(zzahd zzahdVar) {
        if (zzahdVar.zza.zzt()) {
            return zzadx.zzb(this.zzC);
        }
        if (zzahdVar.zzb.zzb()) {
            return zzahdVar.zzs;
        }
        zzaiq zzaiqVar = zzahdVar.zza;
        zzhf zzhfVar = zzahdVar.zzb;
        long j = zzahdVar.zzs;
        zzQ(zzaiqVar, zzhfVar, j);
        return j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:171:0x0719, code lost:
        if (r0.zzf(zzv(), r14.zza, 0).zzh != false) goto L172;
     */
    /* JADX WARN: Removed duplicated region for block: B:190:0x07ad  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x07d1  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0806  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x082f A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0402  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0430  */
    /* JADX WARN: Type inference failed for: r0v240, types: [long] */
    /* JADX WARN: Type inference failed for: r0v255, types: [long] */
    /* JADX WARN: Type inference failed for: r0v285, types: [long] */
    /* JADX WARN: Type inference failed for: r0v287, types: [long] */
    /* JADX WARN: Type inference failed for: r0v289, types: [long] */
    /* JADX WARN: Type inference failed for: r0v291, types: [long] */
    /* JADX WARN: Type inference failed for: r0v306, types: [long] */
    /* JADX WARN: Type inference failed for: r0v310, types: [long] */
    /* JADX WARN: Type inference failed for: r0v312, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzM(com.google.android.gms.internal.ads.zzahd r15, int r16, int r17, boolean r18, boolean r19, int r20, long r21, int r23) {
        /*
            Method dump skipped, instructions count: 2096
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafe.zzM(com.google.android.gms.internal.ads.zzahd, int, int, boolean, boolean, int, long, int):void");
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    private static long zzN(zzahd zzahdVar) {
        zzaip zzaipVar = new zzaip();
        zzain zzainVar = new zzain();
        zzahdVar.zza.zzy(zzahdVar.zzb.zza, zzainVar);
        ?? r0 = zzahdVar.zzc;
        char c = r0;
        if (r0 == -9223372036854775807L) {
            c = 0;
            long j = zzahdVar.zza.zzf(zzainVar.zzc, zzaipVar, 0L).zzl;
        }
        return c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x010f, code lost:
        if (r16.zzh(r0, r14.zzk, false).zzc != r16.zzy(r15.zza, r14.zzk).zzc) goto L29;
     */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v81, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.ads.zzahd zzO(com.google.android.gms.internal.ads.zzahd r15, com.google.android.gms.internal.ads.zzaiq r16, android.util.Pair<java.lang.Object, java.lang.Long> r17) {
        /*
            Method dump skipped, instructions count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafe.zzO(com.google.android.gms.internal.ads.zzahd, com.google.android.gms.internal.ads.zzaiq, android.util.Pair):com.google.android.gms.internal.ads.zzahd");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
        if (r9 >= r8.zza()) goto L13;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.util.Pair<java.lang.Object, java.lang.Long> zzP(com.google.android.gms.internal.ads.zzaiq r8, int r9, long r10) {
        /*
            r7 = this;
            r0 = r8
            boolean r0 = r0.zzt()
            if (r0 == 0) goto L22
            r0 = r7
            r1 = r9
            r0.zzB = r1
            r0 = r10
            r12 = r0
            r0 = r10
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L1a
            r0 = 0
            r12 = r0
        L1a:
            r0 = r7
            r1 = r12
            r0.zzC = r1
            r0 = 0
            return r0
        L22:
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L32
            r0 = r9
            r14 = r0
            r0 = r9
            r1 = r8
            int r1 = r1.zza()
            if (r0 < r1) goto L4d
        L32:
            r0 = r8
            r1 = 0
            int r0 = r0.zze(r1)
            r14 = r0
            r0 = r8
            r1 = r14
            r2 = r7
            com.google.android.gms.internal.ads.zzaip r2 = r2.zza
            r3 = 0
            com.google.android.gms.internal.ads.zzaip r0 = r0.zzf(r1, r2, r3)
            long r0 = r0.zzl
            r10 = r0
            r0 = 0
            long r0 = com.google.android.gms.internal.ads.zzadx.zza(r0)
            r10 = r0
        L4d:
            r0 = r8
            r1 = r7
            com.google.android.gms.internal.ads.zzaip r1 = r1.zza
            r2 = r7
            com.google.android.gms.internal.ads.zzain r2 = r2.zzk
            r3 = r14
            r4 = r10
            long r4 = com.google.android.gms.internal.ads.zzadx.zzb(r4)
            android.util.Pair r0 = r0.zzv(r1, r2, r3, r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafe.zzP(com.google.android.gms.internal.ads.zzaiq, int, long):android.util.Pair");
    }

    private final long zzQ(zzaiq zzaiqVar, zzhf zzhfVar, long j) {
        zzaiqVar.zzy(zzhfVar.zza, this.zzk);
        return j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzR(zzahd zzahdVar) {
        return zzahdVar.zze == 3 && zzahdVar.zzl && zzahdVar.zzm == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final boolean zzA() {
        return this.zzA.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final int zzB() {
        if (zzA()) {
            return this.zzA.zzb.zzb;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final int zzC() {
        if (zzA()) {
            return this.zzA.zzb.zzc;
        }
        return -1;
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzahp
    public final long zzD() {
        char c;
        if (zzA()) {
            zzahd zzahdVar = this.zzA;
            zzahdVar.zza.zzy(zzahdVar.zzb.zza, this.zzk);
            zzahd zzahdVar2 = this.zzA;
            if (zzahdVar2.zzc == -9223372036854775807L) {
                long j = zzahdVar2.zza.zzf(zzv(), this.zza, 0L).zzl;
                c = zzadx.zza(0L);
            } else {
                c = zzadx.zza(0L) + zzadx.zza(this.zzA.zzc);
            }
            return c;
        }
        return zzx();
    }

    public final int zzE() {
        int length = this.zzd.length;
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final zzaiq zzF() {
        return this.zzA.zza;
    }

    public final /* synthetic */ void zzG(zzahj zzahjVar) {
        zzahjVar.zzL(this.zzx);
    }

    public final /* synthetic */ void zzI(zzafm zzafmVar) {
        this.zzf.zzj(new Runnable(this, zzafmVar) { // from class: com.google.android.gms.internal.ads.zzaez
            private final zzafe zza;
            private final zzafm zzb;

            {
                this.zza = this;
                this.zzb = zzafmVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzJ(this.zzb);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    public final /* synthetic */ void zzJ(zzafm zzafmVar) {
        char c;
        boolean z;
        int i = this.zzs - zzafmVar.zzb;
        this.zzs = i;
        if (zzafmVar.zzc) {
            this.zzt = zzafmVar.zzd;
            this.zzu = true;
        }
        if (zzafmVar.zze) {
            this.zzv = zzafmVar.zzf;
        }
        if (i == 0) {
            zzaiq zzaiqVar = zzafmVar.zza.zza;
            if (!this.zzA.zza.zzt() && zzaiqVar.zzt()) {
                this.zzB = -1;
                this.zzC = 0L;
            }
            if (!zzaiqVar.zzt()) {
                List<zzaiq> zzs = ((zzaht) zzaiqVar).zzs();
                zzakt.zzd(zzs.size() == this.zzl.size());
                for (int i2 = 0; i2 < zzs.size(); i2++) {
                    this.zzl.get(i2).zzb = zzs.get(i2);
                }
            }
            if (this.zzu) {
                z = true;
                if (zzafmVar.zza.zzb.equals(this.zzA.zzb)) {
                    z = zzafmVar.zza.zzd != this.zzA.zzs;
                }
                if (!z) {
                    c = 1;
                } else if (zzaiqVar.zzt() || zzafmVar.zza.zzb.zzb()) {
                    c = zzafmVar.zza.zzd;
                } else {
                    zzahd zzahdVar = zzafmVar.zza;
                    zzhf zzhfVar = zzahdVar.zzb;
                    c = zzahdVar.zzd;
                    zzQ(zzaiqVar, zzhfVar, c);
                }
            } else {
                c = 1;
                z = false;
            }
            this.zzu = false;
            zzM(zzafmVar.zza, 1, this.zzv, false, z, this.zzt, c, -1);
        }
    }

    public final boolean zze() {
        return this.zzA.zzp;
    }

    public final Looper zzf() {
        return this.zzp;
    }

    public final void zzg(zzahj zzahjVar) {
        this.zzi.zzb(zzahjVar);
    }

    public final void zzh(zzaeh zzaehVar) {
        this.zzj.add(zzaehVar);
    }

    public final int zzi() {
        return this.zzA.zze;
    }

    public final void zzj() {
        zzahd zzahdVar = this.zzA;
        if (zzahdVar.zze != 1) {
            return;
        }
        zzahd zzf = zzahdVar.zzf(null);
        zzahd zze = zzf.zze(true != zzf.zza.zzt() ? 2 : 4);
        this.zzs++;
        this.zzh.zze();
        zzM(zze, 1, 1, false, false, 5, -9223372036854775807L, -1);
    }

    public final void zzk(List<zzhh> list, boolean z) {
        zzK();
        zzx();
        this.zzs++;
        if (!this.zzl.isEmpty()) {
            int size = this.zzl.size();
            for (int i = size - 1; i >= 0; i--) {
                this.zzl.remove(i);
            }
            this.zzD = this.zzD.zzg(0, size);
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzagx zzagxVar = new zzagx(list.get(i2), this.zzm);
            arrayList.add(zzagxVar);
            this.zzl.add(i2, new zzafd(zzagxVar.zzb, zzagxVar.zza.zzy()));
        }
        this.zzD = this.zzD.zzf(0, arrayList.size());
        zzaht zzahtVar = new zzaht(this.zzl, this.zzD, null);
        if (zzahtVar.zzt() || zzahtVar.zza() >= 0) {
            int zze = zzahtVar.zze(false);
            zzahd zzO = zzO(this.zzA, zzahtVar, zzP(zzahtVar, zze, -9223372036854775807L));
            int i3 = zzO.zze;
            int i4 = i3;
            if (zze != -1) {
                i4 = i3;
                if (i3 != 1) {
                    i4 = (zzahtVar.zzt() || zze >= zzahtVar.zza()) ? 4 : 2;
                }
            }
            zzahd zze2 = zzO.zze(i4);
            this.zzh.zzq(arrayList, zze, zzadx.zzb(-9223372036854775807L), this.zzD);
            zzM(zze2, 0, 1, false, !this.zzA.zzb.zza.equals(zze2.zzb.zza) && !this.zzA.zza.zzt(), 4, zzL(zze2), -1);
            return;
        }
        throw new zzafx(zzahtVar, -1, -9223372036854775807L);
    }

    public final void zzl(boolean z, int i, int i2) {
        zzahd zzahdVar = this.zzA;
        if (zzahdVar.zzl == z && zzahdVar.zzm == i) {
            return;
        }
        this.zzs++;
        zzahd zzh = zzahdVar.zzh(z, i);
        this.zzh.zzf(z, i);
        zzM(zzh, 0, i2, false, false, 5, -9223372036854775807L, -1);
    }

    public final boolean zzm() {
        return this.zzA.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final int zzn() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final boolean zzo() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final void zzp(int i, long j) {
        zzaiq zzaiqVar = this.zzA.zza;
        if (i < 0 || (!zzaiqVar.zzt() && i >= zzaiqVar.zza())) {
            throw new zzafx(zzaiqVar, i, j);
        }
        int i2 = 1;
        this.zzs++;
        if (zzA()) {
            zzafm zzafmVar = new zzafm(this.zzA);
            zzafmVar.zzb(1);
            this.zzg.zza(zzafmVar);
            return;
        }
        if (this.zzA.zze != 1) {
            i2 = 2;
        }
        int zzv = zzv();
        zzahd zzO = zzO(this.zzA.zze(i2), zzaiqVar, zzP(zzaiqVar, i, j));
        this.zzh.zzg(zzaiqVar, i, zzadx.zzb(j));
        zzM(zzO, 0, 1, true, true, 1, zzL(zzO), zzv);
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final void zzq(boolean z) {
        throw null;
    }

    public final void zzr(boolean z, zzaeg zzaegVar) {
        zzahd zzahdVar = this.zzA;
        zzahd zzg = zzahdVar.zzg(zzahdVar.zzb);
        zzg.zzq = zzg.zzs;
        zzg.zzr = 0L;
        zzahd zze = zzg.zze(1);
        zzahd zzahdVar2 = zze;
        if (zzaegVar != null) {
            zzahdVar2 = zze.zzf(zzaegVar);
        }
        this.zzs++;
        this.zzh.zzh();
        zzM(zzahdVar2, 0, 1, false, zzahdVar2.zza.zzt() && !this.zzA.zza.zzt(), 4, zzL(zzahdVar2), -1);
    }

    public final void zzs() {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = zzamq.zze;
        String zza = zzafq.zza();
        String.valueOf(hexString).length();
        String.valueOf(str).length();
        String.valueOf(zza).length();
        if (!this.zzh.zzj()) {
            zzalm<zzahj> zzalmVar = this.zzi;
            zzalmVar.zzd(10, zzafa.zza);
            zzalmVar.zze();
        }
        this.zzi.zzf();
        this.zzf.zzi(null);
        zzcy zzcyVar = this.zzo;
        if (zzcyVar != null) {
            this.zzq.zzf(zzcyVar);
        }
        zzahd zze = this.zzA.zze(1);
        this.zzA = zze;
        zzahd zzg = zze.zzg(zze.zzb);
        this.zzA = zzg;
        zzg.zzq = zzg.zzs;
        this.zzA.zzr = 0L;
    }

    public final zzahs zzt(zzahr zzahrVar) {
        return new zzahs(this.zzh, zzahrVar, this.zzA.zza, zzv(), this.zzr, this.zzh.zzk());
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final int zzu() {
        if (this.zzA.zza.zzt()) {
            return 0;
        }
        zzahd zzahdVar = this.zzA;
        return zzahdVar.zza.zzi(zzahdVar.zzb.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final int zzv() {
        int zzK = zzK();
        int i = zzK;
        if (zzK == -1) {
            i = 0;
        }
        return i;
    }

    public final long zzw() {
        if (!zzA()) {
            zzaiq zzaiqVar = this.zzA.zza;
            if (!zzaiqVar.zzt()) {
                return zzadx.zza(zzaiqVar.zzf(zzv(), this.zza, 0L).zzm);
            }
            return -9223372036854775807L;
        }
        zzahd zzahdVar = this.zzA;
        zzhf zzhfVar = zzahdVar.zzb;
        zzahdVar.zza.zzy(zzhfVar.zza, this.zzk);
        return zzadx.zza(this.zzk.zzh(zzhfVar.zzb, zzhfVar.zzc));
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final long zzx() {
        return zzadx.zza(zzL(this.zzA));
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    public final long zzy() {
        char c;
        if (zzA()) {
            zzahd zzahdVar = this.zzA;
            return zzahdVar.zzk.equals(zzahdVar.zzb) ? zzadx.zza(this.zzA.zzq) : zzw();
        }
        if (this.zzA.zza.zzt()) {
            c = this.zzC;
        } else {
            zzahd zzahdVar2 = this.zzA;
            char c2 = 0;
            if (zzahdVar2.zzk.zzd != zzahdVar2.zzb.zzd) {
                c = zzadx.zza(zzahdVar2.zza.zzf(zzv(), this.zza, 0L).zzm);
            } else {
                ?? r0 = zzahdVar2.zzq;
                if (this.zzA.zzk.zzb()) {
                    zzahd zzahdVar3 = this.zzA;
                    zzahdVar3.zza.zzy(zzahdVar3.zzk.zza, this.zzk).zzb(this.zzA.zzk.zzb);
                } else {
                    c2 = r0;
                }
                zzahd zzahdVar4 = this.zzA;
                zzQ(zzahdVar4.zza, zzahdVar4.zzk, c2);
                c = zzadx.zza(c2);
            }
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final long zzz() {
        return zzadx.zza(this.zzA.zzr);
    }
}
