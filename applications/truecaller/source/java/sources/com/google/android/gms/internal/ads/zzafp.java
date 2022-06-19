package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzafp.class */
public final class zzafp implements Handler.Callback, zzhd, zzjy, zzagy, zzaeb, zzahq {
    private boolean zzA;
    private boolean zzD;
    private boolean zzE;
    private boolean zzF;
    private int zzG;
    private zzafo zzH;
    private long zzI;
    private int zzJ;
    private boolean zzK;
    private zzaeg zzL;
    private final zzadz zzM;
    private final zzahv[] zza;
    private final Set<zzahv> zzb;
    private final zzjz zzd;
    private final zzka zze;
    private final zzafy zzf;
    private final zzki zzg;
    private final zzalg zzh;
    private final HandlerThread zzi;
    private final Looper zzj;
    private final zzaip zzk;
    private final zzain zzl;
    private final long zzm;
    private final zzaec zzn;
    private final ArrayList<zzafl> zzo;
    private final zzaku zzp;
    private final zzafn zzq;
    private final zzags zzr;
    private final zzagz zzs;
    private zzahz zzt;
    private zzahd zzu;
    private zzafm zzv;
    private boolean zzw;
    private boolean zzy;
    private boolean zzz;
    private int zzB = 0;
    private boolean zzC = false;
    private boolean zzx = false;
    private final zzahw[] zzc = new zzahw[2];

    public zzafp(zzahv[] zzahvVarArr, zzjz zzjzVar, zzka zzkaVar, zzafy zzafyVar, zzki zzkiVar, int i, boolean z, zzcy zzcyVar, zzahz zzahzVar, zzadz zzadzVar, long j, boolean z2, Looper looper, zzaku zzakuVar, zzafn zzafnVar, byte[] bArr) {
        this.zzq = zzafnVar;
        this.zza = zzahvVarArr;
        this.zzd = zzjzVar;
        this.zze = zzkaVar;
        this.zzf = zzafyVar;
        this.zzg = zzkiVar;
        this.zzt = zzahzVar;
        this.zzM = zzadzVar;
        this.zzp = zzakuVar;
        this.zzm = zzafyVar.zzd();
        zzafyVar.zze();
        zzahd zza = zzahd.zza(zzkaVar);
        this.zzu = zza;
        this.zzv = new zzafm(zza);
        for (int i2 = 0; i2 < 2; i2++) {
            zzahvVarArr[i2].zzae(i2);
            this.zzc[i2] = zzahvVarArr[i2].zzad();
        }
        this.zzn = new zzaec(this, zzakuVar);
        this.zzo = new ArrayList<>();
        this.zzb = Collections.newSetFromMap(new IdentityHashMap());
        this.zzk = new zzaip();
        this.zzl = new zzain();
        zzjzVar.zzk(this, zzkiVar);
        this.zzK = true;
        Handler handler = new Handler(looper);
        this.zzr = new zzags(zzcyVar, handler);
        this.zzs = new zzagz(this, zzcyVar, handler);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.zzi = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.zzj = looper2;
        this.zzh = zzakuVar.zza(looper2, this);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0132 A[LOOP:0: B:29:0x010c->B:39:0x0132, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0107 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v116, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0107 -> B:29:0x010c). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzA() throws com.google.android.gms.internal.ads.zzaeg {
        /*
            Method dump skipped, instructions count: 551
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafp.zzA():void");
    }

    private final long zzB(zzaiq zzaiqVar, Object obj, long j) {
        zzaiqVar.zzf(zzaiqVar.zzy(obj, this.zzl).zzc, this.zzk, 0L);
        zzaip zzaipVar = this.zzk;
        if (zzaipVar.zze == -9223372036854775807L || !zzaipVar.zzb()) {
            return -9223372036854775807L;
        }
        zzaip zzaipVar2 = this.zzk;
        if (zzaipVar2.zzh) {
            return zzadx.zzb(zzamq.zzab(zzaipVar2.zzf) - this.zzk.zze) - j;
        }
        return -9223372036854775807L;
    }

    private final boolean zzC(zzaiq zzaiqVar, zzhf zzhfVar) {
        if (zzhfVar.zzb() || zzaiqVar.zzt()) {
            return false;
        }
        zzaiqVar.zzf(zzaiqVar.zzy(zzhfVar.zza, this.zzl).zzc, this.zzk, 0L);
        if (!this.zzk.zzb()) {
            return false;
        }
        zzaip zzaipVar = this.zzk;
        return zzaipVar.zzh && zzaipVar.zze != -9223372036854775807L;
    }

    private final void zzD(long j, long j2) {
        this.zzh.zzh(2);
        this.zzh.zzg(2, j + j2);
    }

    private final long zzE(zzhf zzhfVar, long j, boolean z) throws zzaeg {
        return zzF(zzhfVar, j, this.zzr.zzh() != this.zzr.zzi(), z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    private final long zzF(zzhf zzhfVar, long j, boolean z, boolean z2) throws zzaeg {
        zzagp zzagpVar;
        char c;
        char c2;
        zzz();
        this.zzz = false;
        if (z2 || this.zzu.zze == 3) {
            zzu(2);
        }
        zzagp zzh = this.zzr.zzh();
        zzagp zzagpVar2 = zzh;
        while (true) {
            zzagpVar = zzagpVar2;
            if (zzagpVar == null || zzhfVar.equals(zzagpVar.zzf.zza)) {
                break;
            }
            zzagpVar2 = zzagpVar.zzo();
        }
        if (z || zzh != zzagpVar || (zzagpVar != null && zzagpVar.zza() + j < 0)) {
            zzahv[] zzahvVarArr = this.zza;
            for (int i = 0; i < 2; i++) {
                zzL(zzahvVarArr[i]);
            }
            if (zzagpVar != null) {
                while (this.zzr.zzh() != zzagpVar) {
                    this.zzr.zzk();
                }
                this.zzr.zzl(zzagpVar);
                zzagpVar.zzb(0L);
                zzW();
            }
        }
        if (zzagpVar != null) {
            this.zzr.zzl(zzagpVar);
            if (!zzagpVar.zzd) {
                zzagpVar.zzf = zzagpVar.zzf.zza(j);
                c2 = j;
            } else {
                c2 = j;
                if (zzagpVar.zze) {
                    c2 = zzagpVar.zza.zzi(j);
                    zzagpVar.zza.zze(c2 - this.zzm, false);
                }
            }
            zzG(c2);
            zzS();
            c = c2;
        } else {
            this.zzr.zzm();
            zzG(j);
            c = j;
        }
        zzY(false);
        this.zzh.zzf(2);
        return c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.android.gms.internal.ads.zzaec] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    private final void zzG(long j) throws zzaeg {
        zzjg[] zzjgVarArr;
        zzagp zzh = this.zzr.zzh();
        ?? r6 = j;
        if (zzh != null) {
            r6 = j + zzh.zza();
        }
        this.zzI = r6;
        this.zzn.zzc(r6);
        zzahv[] zzahvVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzahv zzahvVar = zzahvVarArr[i];
            if (zzaf(zzahvVar)) {
                zzahvVar.zzap(this.zzI);
            }
        }
        zzagp zzh2 = this.zzr.zzh();
        while (true) {
            zzagp zzagpVar = zzh2;
            if (zzagpVar != null) {
                for (zzjg zzjgVar : zzagpVar.zzq().zzd) {
                }
                zzh2 = zzagpVar.zzo();
            } else {
                return;
            }
        }
    }

    private final void zzH(boolean z, boolean z2) {
        zzI(z || !this.zzD, false, true, false);
        this.zzv.zzb(z2 ? 1 : 0);
        this.zzf.zzb();
        zzu(1);
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    private final void zzI(boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        boolean z6;
        this.zzh.zzh(2);
        zzaeg zzaegVar = null;
        this.zzL = null;
        this.zzz = false;
        this.zzn.zzb();
        this.zzI = 0L;
        zzahv[] zzahvVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            try {
                zzL(zzahvVarArr[i]);
            } catch (zzaeg | RuntimeException e) {
                zzaln.zzb("ExoPlayerImplInternal", "Disable failed.", e);
            }
        }
        if (z) {
            zzahv[] zzahvVarArr2 = this.zza;
            for (int i2 = 0; i2 < 2; i2++) {
                zzahv zzahvVar = zzahvVarArr2[i2];
                if (this.zzb.remove(zzahvVar)) {
                    try {
                        zzahvVar.zzas();
                    } catch (RuntimeException e2) {
                        zzaln.zzb("ExoPlayerImplInternal", "Reset failed.", e2);
                    }
                }
            }
        }
        this.zzG = 0;
        zzahd zzahdVar = this.zzu;
        zzhf zzhfVar = zzahdVar.zzb;
        char c = zzahdVar.zzs;
        boolean z7 = (this.zzu.zzb.zzb() || zzad(this.zzu, this.zzl)) ? this.zzu.zzc : this.zzu.zzs;
        if (z2) {
            this.zzH = null;
            Pair<zzhf, Long> zzJ = zzJ(this.zzu.zza);
            zzhfVar = (zzhf) zzJ.first;
            z5 = true;
            c = ((Long) zzJ.second).longValue();
            z6 = !zzhfVar.equals(this.zzu.zzb);
        } else {
            z6 = false;
            z5 = z7;
        }
        this.zzr.zzm();
        this.zzA = false;
        zzahd zzahdVar2 = this.zzu;
        zzaiq zzaiqVar = zzahdVar2.zza;
        int i3 = zzahdVar2.zze;
        if (!z4) {
            zzaegVar = zzahdVar2.zzf;
        }
        zzs zzsVar = z6 ? zzs.zza : zzahdVar2.zzh;
        zzka zzkaVar = z6 ? this.zze : zzahdVar2.zzi;
        zzfoj zzi = z6 ? zzfoj.zzi() : zzahdVar2.zzj;
        zzahd zzahdVar3 = this.zzu;
        this.zzu = new zzahd(zzaiqVar, zzhfVar, z5 ? 1L : 0L, c, i3, zzaegVar, false, zzsVar, zzkaVar, zzi, zzhfVar, zzahdVar3.zzl, zzahdVar3.zzm, zzahdVar3.zzn, c, 0L, c, this.zzF, false);
        if (z3) {
            this.zzs.zzg();
        }
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    private final Pair<zzhf, Long> zzJ(zzaiq zzaiqVar) {
        if (zzaiqVar.zzt()) {
            return Pair.create(zzahd.zzb(), 0L);
        }
        Pair<Object, Long> zzv = zzaiqVar.zzv(this.zzk, this.zzl, zzaiqVar.zze(this.zzC), -9223372036854775807L);
        zzhf zzp = this.zzr.zzp(zzaiqVar, zzv.first, 0L);
        char longValue = ((Long) zzv.second).longValue();
        if (zzp.zzb()) {
            zzaiqVar.zzy(zzp.zza, this.zzl);
            longValue = 0;
            if (zzp.zzc == this.zzl.zzc(zzp.zzb)) {
                this.zzl.zzi();
                longValue = 0;
            }
        }
        return Pair.create(zzp, Long.valueOf(longValue));
    }

    private final void zzK(zzaiq zzaiqVar, zzaiq zzaiqVar2) {
        if (!zzaiqVar.zzt() || !zzaiqVar2.zzt()) {
            int size = this.zzo.size() - 1;
            if (size < 0) {
                Collections.sort(this.zzo);
                return;
            }
            Object obj = this.zzo.get(size).zzb;
            zzadx.zzb(-9223372036854775807L);
            throw null;
        }
    }

    private final void zzL(zzahv zzahvVar) throws zzaeg {
        if (!zzaf(zzahvVar)) {
            return;
        }
        this.zzn.zze(zzahvVar);
        zzah(zzahvVar);
        zzahvVar.zzar();
        this.zzG--;
    }

    private final boolean zzM() {
        zzagp zzh = this.zzr.zzh();
        long j = zzh.zzf.zze;
        boolean z = false;
        if (zzh.zzd) {
            if (j == -9223372036854775807L || this.zzu.zzs < j) {
                z = true;
            } else if (!zzac()) {
                return true;
            } else {
                z = false;
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:179:0x061f, code lost:
        if ((r43 ? 1 : 0) != r12.zzu.zzc) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x0711, code lost:
        if ((r37 ? 1 : 0) != r12.zzu.zzc) goto L209;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x03d1 A[Catch: all -> 0x04fa, TRY_ENTER, TryCatch #0 {all -> 0x04fa, blocks: (B:107:0x03b1, B:113:0x03d1), top: B:228:0x03b1 }] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0509  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x05f6  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x05fe  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0614  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0678  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x067e  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x06bd  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x06e9  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x06f1  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0706  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x072d  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0764  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x076a  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x07a9  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x039c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v145, types: [long] */
    /* JADX WARN: Type inference failed for: r0v198, types: [long] */
    /* JADX WARN: Type inference failed for: r0v233, types: [long] */
    /* JADX WARN: Type inference failed for: r0v286, types: [long] */
    /* JADX WARN: Type inference failed for: r0v322, types: [long] */
    /* JADX WARN: Type inference failed for: r0v353, types: [long] */
    /* JADX WARN: Type inference failed for: r0v393, types: [long] */
    /* JADX WARN: Type inference failed for: r0v408, types: [long] */
    /* JADX WARN: Type inference failed for: r0v411, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzN(com.google.android.gms.internal.ads.zzaiq r13, boolean r14) throws com.google.android.gms.internal.ads.zzaeg {
        /*
            Method dump skipped, instructions count: 1977
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafp.zzN(com.google.android.gms.internal.ads.zzaiq, boolean):void");
    }

    private final void zzO(zzaiq zzaiqVar, zzhf zzhfVar, zzaiq zzaiqVar2, zzhf zzhfVar2, long j) {
        if (zzaiqVar.zzt() || !zzC(zzaiqVar, zzhfVar)) {
            float f = this.zzn.zzA().zzb;
            zzahf zzahfVar = this.zzu.zzn;
            if (f == zzahfVar.zzb) {
                return;
            }
            this.zzn.zzz(zzahfVar);
            return;
        }
        zzaiqVar.zzf(zzaiqVar.zzy(zzhfVar.zza, this.zzl).zzc, this.zzk, 0L);
        zzadz zzadzVar = this.zzM;
        zzagh zzaghVar = this.zzk.zzj;
        int i = zzamq.zza;
        zzadzVar.zza(zzaghVar);
        if (j != -9223372036854775807L) {
            this.zzM.zzb(zzB(zzaiqVar, zzhfVar.zza, j));
            return;
        }
        if (zzamq.zzc(!zzaiqVar2.zzt() ? zzaiqVar2.zzf(zzaiqVar2.zzy(zzhfVar2.zza, this.zzl).zzc, this.zzk, 0L).zzb : null, this.zzk.zzb)) {
            return;
        }
        this.zzM.zzb(-9223372036854775807L);
    }

    private final void zzP() {
        zzagp zzh = this.zzr.zzh();
        boolean z = false;
        if (zzh != null) {
            z = false;
            if (zzh.zzf.zzh) {
                z = false;
                if (this.zzx) {
                    z = true;
                }
            }
        }
        this.zzy = z;
    }

    private final void zzQ(zzahf zzahfVar, boolean z) throws zzaeg {
        zzR(zzahfVar, zzahfVar.zzb, true, z);
    }

    private final void zzR(zzahf zzahfVar, float f, boolean z, boolean z2) throws zzaeg {
        zzjg[] zzjgVarArr;
        if (z) {
            if (z2) {
                this.zzv.zzb(1);
            }
            zzahd zzahdVar = this.zzu;
            this.zzu = new zzahd(zzahdVar.zza, zzahdVar.zzb, zzahdVar.zzc, zzahdVar.zzd, zzahdVar.zze, zzahdVar.zzf, zzahdVar.zzg, zzahdVar.zzh, zzahdVar.zzi, zzahdVar.zzj, zzahdVar.zzk, zzahdVar.zzl, zzahdVar.zzm, zzahfVar, zzahdVar.zzq, zzahdVar.zzr, zzahdVar.zzs, zzahdVar.zzo, zzahdVar.zzp);
        }
        float f2 = zzahfVar.zzb;
        zzagp zzh = this.zzr.zzh();
        while (true) {
            zzagp zzagpVar = zzh;
            if (zzagpVar == null) {
                break;
            }
            for (zzjg zzjgVar : zzagpVar.zzq().zzd) {
            }
            zzh = zzagpVar.zzo();
        }
        zzahv[] zzahvVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzahv zzahvVar = zzahvVarArr[i];
            if (zzahvVar != null) {
                zzahvVar.zzM(f, zzahfVar.zzb);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    private final void zzS() {
        boolean z;
        char c;
        char c2;
        if (!zzT()) {
            z = false;
        } else {
            zzagp zzg = this.zzr.zzg();
            long zzaa = zzaa(zzg.zzf());
            if (zzg == this.zzr.zzh()) {
                c2 = this.zzI;
                c = zzg.zza();
            } else {
                c2 = this.zzI - zzg.zza();
                c = zzg.zzf.zzb;
            }
            z = this.zzf.zzf(c2 - c, zzaa, this.zzn.zzA().zzb);
        }
        this.zzA = z;
        if (z) {
            this.zzr.zzg().zzi(this.zzI);
        }
        zzU();
    }

    private final boolean zzT() {
        zzagp zzg = this.zzr.zzg();
        return (zzg == null || zzg.zzf() == Long.MIN_VALUE) ? false : true;
    }

    private final void zzU() {
        zzagp zzg = this.zzr.zzg();
        boolean z = this.zzA || (zzg != null && zzg.zza.zzm());
        zzahd zzahdVar = this.zzu;
        if (z != zzahdVar.zzg) {
            this.zzu = new zzahd(zzahdVar.zza, zzahdVar.zzb, zzahdVar.zzc, zzahdVar.zzd, zzahdVar.zze, zzahdVar.zzf, z, zzahdVar.zzh, zzahdVar.zzi, zzahdVar.zzj, zzahdVar.zzk, zzahdVar.zzl, zzahdVar.zzm, zzahdVar.zzn, zzahdVar.zzq, zzahdVar.zzr, zzahdVar.zzs, zzahdVar.zzo, zzahdVar.zzp);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0176  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.ads.zzahd zzV(com.google.android.gms.internal.ads.zzhf r15, long r16, long r18, long r20, boolean r22, int r23) {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafp.zzV(com.google.android.gms.internal.ads.zzhf, long, long, long, boolean, int):com.google.android.gms.internal.ads.zzahd");
    }

    private final void zzW() throws zzaeg {
        zzX(new boolean[2]);
    }

    private final void zzX(boolean[] zArr) throws zzaeg {
        zzagp zzi = this.zzr.zzi();
        zzka zzq = zzi.zzq();
        for (int i = 0; i < 2; i++) {
            if (!zzq.zza(i) && this.zzb.remove(this.zza[i])) {
                this.zza[i].zzas();
            }
        }
        for (int i2 = 0; i2 < 2; i2++) {
            if (zzq.zza(i2)) {
                boolean z = zArr[i2];
                zzahv zzahvVar = this.zza[i2];
                if (!zzaf(zzahvVar)) {
                    zzagp zzi2 = this.zzr.zzi();
                    boolean z2 = zzi2 == this.zzr.zzh();
                    zzka zzq2 = zzi2.zzq();
                    zzahx zzahxVar = zzq2.zzb[i2];
                    zzafv[] zzaj = zzaj(zzq2.zzd[i2]);
                    boolean z3 = zzac() && this.zzu.zze == 3;
                    boolean z4 = !z && z3;
                    this.zzG++;
                    this.zzb.add(zzahvVar);
                    zzahvVar.zzag(zzahxVar, zzaj, zzi2.zzc[i2], this.zzI, z4, z2, zzi2.zzc(), zzi2.zza());
                    zzahvVar.zzE(11, new zzafh(this));
                    this.zzn.zzd(zzahvVar);
                    if (z3) {
                        zzahvVar.zzah();
                    }
                }
            }
        }
        zzi.zzg = true;
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    private final void zzY(boolean z) {
        zzagp zzg = this.zzr.zzg();
        zzhf zzhfVar = zzg == null ? this.zzu.zzb : zzg.zzf.zza;
        boolean z2 = !this.zzu.zzk.equals(zzhfVar);
        if (z2) {
            this.zzu = this.zzu.zzg(zzhfVar);
        }
        zzahd zzahdVar = this.zzu;
        zzahdVar.zzq = zzg == null ? zzahdVar.zzs : zzg.zze();
        this.zzu.zzr = zzZ();
        if ((z2 || z) && zzg != null && zzg.zzd) {
            zzab(zzg.zzp(), zzg.zzq());
        }
    }

    private final long zzZ() {
        return zzaa(this.zzu.zzq);
    }

    private final long zzaa(long j) {
        zzagp zzg = this.zzr.zzg();
        if (zzg == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.zzI - zzg.zza()));
    }

    private final void zzab(zzs zzsVar, zzka zzkaVar) {
        this.zzf.zzi(this.zza, zzsVar, zzkaVar.zzd);
    }

    private final boolean zzac() {
        zzahd zzahdVar = this.zzu;
        return zzahdVar.zzl && zzahdVar.zzm == 0;
    }

    private static boolean zzad(zzahd zzahdVar, zzain zzainVar) {
        zzhf zzhfVar = zzahdVar.zzb;
        zzaiq zzaiqVar = zzahdVar.zza;
        return zzaiqVar.zzt() || zzaiqVar.zzy(zzhfVar.zza, zzainVar).zzf;
    }

    private static Pair<Object, Long> zzae(zzaiq zzaiqVar, zzafo zzafoVar, boolean z, int i, boolean z2, zzaip zzaipVar, zzain zzainVar) {
        zzaiq zzaiqVar2 = zzafoVar.zza;
        if (zzaiqVar.zzt()) {
            return null;
        }
        if (true == zzaiqVar2.zzt()) {
            zzaiqVar2 = zzaiqVar;
        }
        try {
            Pair<Object, Long> zzv = zzaiqVar2.zzv(zzaipVar, zzainVar, zzafoVar.zzb, zzafoVar.zzc);
            if (zzaiqVar.equals(zzaiqVar2)) {
                return zzv;
            }
            if (zzaiqVar.zzi(zzv.first) != -1) {
                return (!zzaiqVar2.zzy(zzv.first, zzainVar).zzf || zzaiqVar2.zzf(zzainVar.zzc, zzaipVar, 0L).zzn != zzaiqVar2.zzi(zzv.first)) ? zzv : zzaiqVar.zzv(zzaipVar, zzainVar, zzaiqVar.zzy(zzv.first, zzainVar).zzc, zzafoVar.zzc);
            }
            Object zzm = zzm(zzaipVar, zzainVar, i, z2, zzv.first, zzaiqVar2, zzaiqVar);
            if (zzm == null) {
                return null;
            }
            return zzaiqVar.zzv(zzaipVar, zzainVar, zzaiqVar.zzy(zzm, zzainVar).zzc, -9223372036854775807L);
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    private static boolean zzaf(zzahv zzahvVar) {
        return zzahvVar.zzaf() != 0;
    }

    private static final void zzag(zzahs zzahsVar) throws zzaeg {
        zzahsVar.zzh();
        try {
            zzahsVar.zza().zzE(zzahsVar.zzc(), zzahsVar.zze());
        } finally {
            zzahsVar.zzi(true);
        }
    }

    private static final void zzah(zzahv zzahvVar) throws zzaeg {
        if (zzahvVar.zzaf() == 2) {
            zzahvVar.zzaq();
        }
    }

    private static final void zzai(zzahv zzahvVar, long j) {
        zzahvVar.zzam();
        if (!(zzahvVar instanceof zzaks)) {
            return;
        }
        zzaks zzaksVar = (zzaks) zzahvVar;
        throw null;
    }

    private static zzafv[] zzaj(zzjg zzjgVar) {
        int zzc = zzjgVar != null ? zzjgVar.zzc() : 0;
        zzafv[] zzafvVarArr = new zzafv[zzc];
        for (int i = 0; i < zzc; i++) {
            zzafvVarArr[i] = zzjgVar.zzd(i);
        }
        return zzafvVarArr;
    }

    public static Object zzm(zzaip zzaipVar, zzain zzainVar, int i, boolean z, Object obj, zzaiq zzaiqVar, zzaiq zzaiqVar2) {
        int i2;
        int zzi = zzaiqVar.zzi(obj);
        int zzg = zzaiqVar.zzg();
        int i3 = 0;
        int i4 = -1;
        while (true) {
            i2 = i4;
            if (i3 >= zzg) {
                break;
            }
            i2 = i4;
            if (i4 != -1) {
                break;
            }
            zzi = zzaiqVar.zzu(zzi, zzainVar, zzaipVar, i, z);
            if (zzi == -1) {
                i2 = -1;
                break;
            }
            i4 = zzaiqVar2.zzi(zzaiqVar.zzj(zzi));
            i3++;
        }
        if (i2 == -1) {
            return null;
        }
        return zzaiqVar2.zzj(i2);
    }

    public static final /* synthetic */ void zzr(zzahs zzahsVar) {
        try {
            zzag(zzahsVar);
        } catch (zzaeg e) {
            zzaln.zzb("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e);
            throw new RuntimeException(e);
        }
    }

    private final void zzs(IOException iOException, int i) {
        zzaeg zza = zzaeg.zza(iOException, i);
        zzagp zzh = this.zzr.zzh();
        zzaeg zzaegVar = zza;
        if (zzh != null) {
            zzaegVar = zza.zzd(zzh.zzf.zza);
        }
        zzaln.zzb("ExoPlayerImplInternal", "Playback error", zzaegVar);
        zzH(false, false);
        this.zzu = this.zzu.zzf(zzaegVar);
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    private final void zzt(zzfmj<Boolean> zzfmjVar, long j) {
        synchronized (this) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            boolean z = false;
            for (char c = 500; !zzfmjVar.zza().booleanValue() && c > 0; c = (elapsedRealtime + 500) - SystemClock.elapsedRealtime()) {
                try {
                    wait(c);
                } catch (InterruptedException e) {
                    z = true;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    private final void zzu(int i) {
        zzahd zzahdVar = this.zzu;
        if (zzahdVar.zze != i) {
            this.zzu = zzahdVar.zze(i);
        }
    }

    private final void zzv() {
        boolean z;
        this.zzv.zzc(this.zzu);
        z = this.zzv.zzg;
        if (z) {
            this.zzq.zza(this.zzv);
            this.zzv = new zzafm(this.zzu);
        }
    }

    private final void zzw(boolean z, int i, boolean z2, int i2) throws zzaeg {
        zzjg[] zzjgVarArr;
        this.zzv.zzb(z2 ? 1 : 0);
        this.zzv.zze(i2);
        this.zzu = this.zzu.zzh(z, i);
        this.zzz = false;
        zzagp zzh = this.zzr.zzh();
        while (true) {
            zzagp zzagpVar = zzh;
            if (zzagpVar == null) {
                break;
            }
            for (zzjg zzjgVar : zzagpVar.zzq().zzd) {
            }
            zzh = zzagpVar.zzo();
        }
        if (!zzac()) {
            zzz();
            zzA();
            return;
        }
        int i3 = this.zzu.zze;
        if (i3 == 3) {
            zzy();
            this.zzh.zzf(2);
        } else if (i3 == 2) {
            this.zzh.zzf(2);
        }
    }

    private final void zzx(boolean z) throws zzaeg {
        zzhf zzhfVar = this.zzr.zzh().zzf.zza;
        long zzF = zzF(zzhfVar, this.zzu.zzs, true, false);
        if (zzF != this.zzu.zzs) {
            zzahd zzahdVar = this.zzu;
            this.zzu = zzV(zzhfVar, zzF, zzahdVar.zzc, zzahdVar.zzd, z, 5);
        }
    }

    private final void zzy() throws zzaeg {
        this.zzz = false;
        this.zzn.zza();
        zzahv[] zzahvVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzahv zzahvVar = zzahvVarArr[i];
            if (zzaf(zzahvVar)) {
                zzahvVar.zzah();
            }
        }
    }

    private final void zzz() throws zzaeg {
        this.zzn.zzb();
        zzahv[] zzahvVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzahv zzahvVar = zzahvVarArr[i];
            if (zzaf(zzahvVar)) {
                zzah(zzahvVar);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:250:0x0863, code lost:
        if (r0 == 3) goto L251;
     */
    /* JADX WARN: Code restructure failed: missing block: B:522:0x0f1d, code lost:
        if (zzM() != false) goto L523;
     */
    /* JADX WARN: Code restructure failed: missing block: B:566:0x0ff3, code lost:
        if (r46 == false) goto L567;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:223:0x07c8 A[Catch: all -> 0x08f8, TRY_LEAVE, TryCatch #8 {all -> 0x08f8, blocks: (B:221:0x07bb, B:223:0x07c8, B:226:0x07d6, B:228:0x07e1, B:230:0x07e7, B:232:0x07f1, B:234:0x07ff, B:236:0x080d, B:241:0x081c, B:244:0x0839, B:246:0x084c, B:251:0x0866, B:257:0x0888, B:262:0x089c), top: B:699:0x07bb }] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x07d1  */
    /* JADX WARN: Removed duplicated region for block: B:495:0x0e7e A[Catch: RuntimeException -> 0x1241, IOException -> 0x1283, zzgj -> 0x128f, zzak -> 0x129b, zzaha -> 0x12a8, zzey -> 0x12d4, zzaeg -> 0x12e1, TRY_ENTER, TRY_LEAVE, TryCatch #6 {zzaeg -> 0x12e1, zzaha -> 0x12a8, zzak -> 0x129b, zzey -> 0x12d4, zzgj -> 0x128f, IOException -> 0x1283, RuntimeException -> 0x1241, blocks: (B:2:0x0000, B:6:0x0086, B:8:0x008e, B:13:0x009f, B:15:0x00a8, B:21:0x00ca, B:22:0x00d8, B:23:0x00e5, B:28:0x00f5, B:30:0x0106, B:32:0x0117, B:33:0x0124, B:34:0x0133, B:35:0x0153, B:36:0x017f, B:37:0x01ab, B:40:0x01cd, B:42:0x01d3, B:43:0x01e9, B:45:0x0203, B:47:0x0232, B:48:0x024a, B:49:0x0259, B:51:0x0272, B:52:0x027a, B:53:0x02a1, B:55:0x02b4, B:60:0x02ca, B:61:0x02d8, B:62:0x02ec, B:67:0x02fc, B:69:0x030e, B:71:0x0319, B:76:0x032a, B:78:0x0332, B:80:0x0340, B:81:0x0347, B:85:0x0353, B:94:0x0367, B:96:0x0369, B:101:0x0378, B:103:0x0391, B:105:0x0397, B:106:0x039e, B:108:0x03ba, B:110:0x03c0, B:111:0x03c7, B:115:0x03ea, B:117:0x03f1, B:119:0x040b, B:123:0x041f, B:125:0x0429, B:127:0x0434, B:133:0x044b, B:136:0x0457, B:138:0x0490, B:143:0x04a4, B:145:0x04c0, B:147:0x04d7, B:149:0x04de, B:151:0x04e4, B:155:0x04f5, B:157:0x0502, B:159:0x050f, B:161:0x051b, B:164:0x052b, B:165:0x0536, B:166:0x053c, B:167:0x0545, B:169:0x0555, B:171:0x0571, B:173:0x0580, B:174:0x0596, B:176:0x05a9, B:177:0x05bb, B:179:0x05ce, B:181:0x0607, B:183:0x0641, B:184:0x0647, B:185:0x0666, B:194:0x0678, B:196:0x067a, B:197:0x0682, B:198:0x0690, B:199:0x06af, B:201:0x06e4, B:204:0x0721, B:209:0x074c, B:211:0x0765, B:213:0x078a, B:216:0x079f, B:253:0x086e, B:255:0x087d, B:270:0x08dd, B:274:0x08fa, B:275:0x090e, B:276:0x090f, B:276:0x090f, B:279:0x091a, B:281:0x0927, B:285:0x093a, B:287:0x094f, B:289:0x0963, B:291:0x09a1, B:293:0x09ab, B:295:0x09b0, B:297:0x09b6, B:298:0x09c5, B:300:0x09ca, B:302:0x09d8, B:304:0x09df, B:307:0x09e9, B:311:0x09fc, B:315:0x0a0d, B:319:0x0a27, B:321:0x0a31, B:323:0x0a4a, B:325:0x0a54, B:328:0x0a64, B:330:0x0a80, B:332:0x0a91, B:337:0x0aa9, B:339:0x0ab3, B:340:0x0aba, B:344:0x0ac7, B:346:0x0adb, B:348:0x0ae9, B:350:0x0b0b, B:353:0x0b16, B:354:0x0b23, B:355:0x0b29, B:357:0x0b33, B:361:0x0b3c, B:365:0x0b4d, B:367:0x0b5a, B:369:0x0b66, B:371:0x0b70, B:376:0x0b8b, B:378:0x0ba1, B:379:0x0ba8, B:380:0x0bae, B:382:0x0bba, B:384:0x0bc5, B:387:0x0bcf, B:389:0x0be3, B:393:0x0bf9, B:395:0x0c01, B:401:0x0c2a, B:403:0x0c34, B:405:0x0c5d, B:407:0x0c67, B:413:0x0c83, B:416:0x0c90, B:420:0x0c9d, B:422:0x0ca4, B:425:0x0cb6, B:429:0x0ccb, B:433:0x0cdd, B:437:0x0ce9, B:439:0x0cee, B:441:0x0d5b, B:446:0x0d70, B:448:0x0d7e, B:449:0x0d8a, B:451:0x0d9c, B:453:0x0dbf, B:457:0x0dd6, B:461:0x0de7, B:463:0x0dfc, B:468:0x0e0d, B:471:0x0e25, B:480:0x0e43, B:482:0x0e4d, B:495:0x0e7e, B:498:0x0e97, B:500:0x0ea7, B:502:0x0eb6, B:507:0x0ec7, B:510:0x0ed5, B:512:0x0edb, B:514:0x0ef0, B:516:0x0ef9, B:517:0x0f05, B:519:0x0f12, B:521:0x0f19, B:526:0x0f2b, B:530:0x0f36, B:532:0x0f4e, B:534:0x0f58, B:536:0x0f66, B:541:0x0f77, B:543:0x0f84, B:552:0x0f9a, B:555:0x0fbd, B:557:0x0fce, B:558:0x0fd5, B:560:0x0fe0, B:562:0x0fe7, B:567:0x0ff6, B:569:0x100a, B:572:0x1016, B:577:0x1036, B:578:0x103e, B:580:0x1046, B:582:0x104a, B:586:0x1056, B:589:0x1060, B:591:0x1069, B:593:0x107e, B:594:0x1089, B:595:0x108f, B:597:0x109b, B:599:0x10a6, B:602:0x10b0, B:603:0x10bc, B:605:0x10be, B:607:0x10d1, B:609:0x10dc, B:611:0x10e2, B:614:0x10ee, B:617:0x10fa, B:619:0x1101, B:623:0x110d, B:626:0x1120, B:631:0x112c, B:632:0x1138, B:635:0x1145, B:637:0x1155, B:639:0x11bf, B:640:0x11c9, B:641:0x11d6, B:646:0x11e6, B:647:0x11f5, B:652:0x1223), top: B:702:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:584:0x1054  */
    /* JADX WARN: Removed duplicated region for block: B:607:0x10d1 A[Catch: RuntimeException -> 0x1241, IOException -> 0x1283, zzgj -> 0x128f, zzak -> 0x129b, zzaha -> 0x12a8, zzey -> 0x12d4, zzaeg -> 0x12e1, TryCatch #6 {zzaeg -> 0x12e1, zzaha -> 0x12a8, zzak -> 0x129b, zzey -> 0x12d4, zzgj -> 0x128f, IOException -> 0x1283, RuntimeException -> 0x1241, blocks: (B:2:0x0000, B:6:0x0086, B:8:0x008e, B:13:0x009f, B:15:0x00a8, B:21:0x00ca, B:22:0x00d8, B:23:0x00e5, B:28:0x00f5, B:30:0x0106, B:32:0x0117, B:33:0x0124, B:34:0x0133, B:35:0x0153, B:36:0x017f, B:37:0x01ab, B:40:0x01cd, B:42:0x01d3, B:43:0x01e9, B:45:0x0203, B:47:0x0232, B:48:0x024a, B:49:0x0259, B:51:0x0272, B:52:0x027a, B:53:0x02a1, B:55:0x02b4, B:60:0x02ca, B:61:0x02d8, B:62:0x02ec, B:67:0x02fc, B:69:0x030e, B:71:0x0319, B:76:0x032a, B:78:0x0332, B:80:0x0340, B:81:0x0347, B:85:0x0353, B:94:0x0367, B:96:0x0369, B:101:0x0378, B:103:0x0391, B:105:0x0397, B:106:0x039e, B:108:0x03ba, B:110:0x03c0, B:111:0x03c7, B:115:0x03ea, B:117:0x03f1, B:119:0x040b, B:123:0x041f, B:125:0x0429, B:127:0x0434, B:133:0x044b, B:136:0x0457, B:138:0x0490, B:143:0x04a4, B:145:0x04c0, B:147:0x04d7, B:149:0x04de, B:151:0x04e4, B:155:0x04f5, B:157:0x0502, B:159:0x050f, B:161:0x051b, B:164:0x052b, B:165:0x0536, B:166:0x053c, B:167:0x0545, B:169:0x0555, B:171:0x0571, B:173:0x0580, B:174:0x0596, B:176:0x05a9, B:177:0x05bb, B:179:0x05ce, B:181:0x0607, B:183:0x0641, B:184:0x0647, B:185:0x0666, B:194:0x0678, B:196:0x067a, B:197:0x0682, B:198:0x0690, B:199:0x06af, B:201:0x06e4, B:204:0x0721, B:209:0x074c, B:211:0x0765, B:213:0x078a, B:216:0x079f, B:253:0x086e, B:255:0x087d, B:270:0x08dd, B:274:0x08fa, B:275:0x090e, B:276:0x090f, B:276:0x090f, B:279:0x091a, B:281:0x0927, B:285:0x093a, B:287:0x094f, B:289:0x0963, B:291:0x09a1, B:293:0x09ab, B:295:0x09b0, B:297:0x09b6, B:298:0x09c5, B:300:0x09ca, B:302:0x09d8, B:304:0x09df, B:307:0x09e9, B:311:0x09fc, B:315:0x0a0d, B:319:0x0a27, B:321:0x0a31, B:323:0x0a4a, B:325:0x0a54, B:328:0x0a64, B:330:0x0a80, B:332:0x0a91, B:337:0x0aa9, B:339:0x0ab3, B:340:0x0aba, B:344:0x0ac7, B:346:0x0adb, B:348:0x0ae9, B:350:0x0b0b, B:353:0x0b16, B:354:0x0b23, B:355:0x0b29, B:357:0x0b33, B:361:0x0b3c, B:365:0x0b4d, B:367:0x0b5a, B:369:0x0b66, B:371:0x0b70, B:376:0x0b8b, B:378:0x0ba1, B:379:0x0ba8, B:380:0x0bae, B:382:0x0bba, B:384:0x0bc5, B:387:0x0bcf, B:389:0x0be3, B:393:0x0bf9, B:395:0x0c01, B:401:0x0c2a, B:403:0x0c34, B:405:0x0c5d, B:407:0x0c67, B:413:0x0c83, B:416:0x0c90, B:420:0x0c9d, B:422:0x0ca4, B:425:0x0cb6, B:429:0x0ccb, B:433:0x0cdd, B:437:0x0ce9, B:439:0x0cee, B:441:0x0d5b, B:446:0x0d70, B:448:0x0d7e, B:449:0x0d8a, B:451:0x0d9c, B:453:0x0dbf, B:457:0x0dd6, B:461:0x0de7, B:463:0x0dfc, B:468:0x0e0d, B:471:0x0e25, B:480:0x0e43, B:482:0x0e4d, B:495:0x0e7e, B:498:0x0e97, B:500:0x0ea7, B:502:0x0eb6, B:507:0x0ec7, B:510:0x0ed5, B:512:0x0edb, B:514:0x0ef0, B:516:0x0ef9, B:517:0x0f05, B:519:0x0f12, B:521:0x0f19, B:526:0x0f2b, B:530:0x0f36, B:532:0x0f4e, B:534:0x0f58, B:536:0x0f66, B:541:0x0f77, B:543:0x0f84, B:552:0x0f9a, B:555:0x0fbd, B:557:0x0fce, B:558:0x0fd5, B:560:0x0fe0, B:562:0x0fe7, B:567:0x0ff6, B:569:0x100a, B:572:0x1016, B:577:0x1036, B:578:0x103e, B:580:0x1046, B:582:0x104a, B:586:0x1056, B:589:0x1060, B:591:0x1069, B:593:0x107e, B:594:0x1089, B:595:0x108f, B:597:0x109b, B:599:0x10a6, B:602:0x10b0, B:603:0x10bc, B:605:0x10be, B:607:0x10d1, B:609:0x10dc, B:611:0x10e2, B:614:0x10ee, B:617:0x10fa, B:619:0x1101, B:623:0x110d, B:626:0x1120, B:631:0x112c, B:632:0x1138, B:635:0x1145, B:637:0x1155, B:639:0x11bf, B:640:0x11c9, B:641:0x11d6, B:646:0x11e6, B:647:0x11f5, B:652:0x1223), top: B:702:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:611:0x10e2 A[Catch: RuntimeException -> 0x1241, IOException -> 0x1283, zzgj -> 0x128f, zzak -> 0x129b, zzaha -> 0x12a8, zzey -> 0x12d4, zzaeg -> 0x12e1, TryCatch #6 {zzaeg -> 0x12e1, zzaha -> 0x12a8, zzak -> 0x129b, zzey -> 0x12d4, zzgj -> 0x128f, IOException -> 0x1283, RuntimeException -> 0x1241, blocks: (B:2:0x0000, B:6:0x0086, B:8:0x008e, B:13:0x009f, B:15:0x00a8, B:21:0x00ca, B:22:0x00d8, B:23:0x00e5, B:28:0x00f5, B:30:0x0106, B:32:0x0117, B:33:0x0124, B:34:0x0133, B:35:0x0153, B:36:0x017f, B:37:0x01ab, B:40:0x01cd, B:42:0x01d3, B:43:0x01e9, B:45:0x0203, B:47:0x0232, B:48:0x024a, B:49:0x0259, B:51:0x0272, B:52:0x027a, B:53:0x02a1, B:55:0x02b4, B:60:0x02ca, B:61:0x02d8, B:62:0x02ec, B:67:0x02fc, B:69:0x030e, B:71:0x0319, B:76:0x032a, B:78:0x0332, B:80:0x0340, B:81:0x0347, B:85:0x0353, B:94:0x0367, B:96:0x0369, B:101:0x0378, B:103:0x0391, B:105:0x0397, B:106:0x039e, B:108:0x03ba, B:110:0x03c0, B:111:0x03c7, B:115:0x03ea, B:117:0x03f1, B:119:0x040b, B:123:0x041f, B:125:0x0429, B:127:0x0434, B:133:0x044b, B:136:0x0457, B:138:0x0490, B:143:0x04a4, B:145:0x04c0, B:147:0x04d7, B:149:0x04de, B:151:0x04e4, B:155:0x04f5, B:157:0x0502, B:159:0x050f, B:161:0x051b, B:164:0x052b, B:165:0x0536, B:166:0x053c, B:167:0x0545, B:169:0x0555, B:171:0x0571, B:173:0x0580, B:174:0x0596, B:176:0x05a9, B:177:0x05bb, B:179:0x05ce, B:181:0x0607, B:183:0x0641, B:184:0x0647, B:185:0x0666, B:194:0x0678, B:196:0x067a, B:197:0x0682, B:198:0x0690, B:199:0x06af, B:201:0x06e4, B:204:0x0721, B:209:0x074c, B:211:0x0765, B:213:0x078a, B:216:0x079f, B:253:0x086e, B:255:0x087d, B:270:0x08dd, B:274:0x08fa, B:275:0x090e, B:276:0x090f, B:276:0x090f, B:279:0x091a, B:281:0x0927, B:285:0x093a, B:287:0x094f, B:289:0x0963, B:291:0x09a1, B:293:0x09ab, B:295:0x09b0, B:297:0x09b6, B:298:0x09c5, B:300:0x09ca, B:302:0x09d8, B:304:0x09df, B:307:0x09e9, B:311:0x09fc, B:315:0x0a0d, B:319:0x0a27, B:321:0x0a31, B:323:0x0a4a, B:325:0x0a54, B:328:0x0a64, B:330:0x0a80, B:332:0x0a91, B:337:0x0aa9, B:339:0x0ab3, B:340:0x0aba, B:344:0x0ac7, B:346:0x0adb, B:348:0x0ae9, B:350:0x0b0b, B:353:0x0b16, B:354:0x0b23, B:355:0x0b29, B:357:0x0b33, B:361:0x0b3c, B:365:0x0b4d, B:367:0x0b5a, B:369:0x0b66, B:371:0x0b70, B:376:0x0b8b, B:378:0x0ba1, B:379:0x0ba8, B:380:0x0bae, B:382:0x0bba, B:384:0x0bc5, B:387:0x0bcf, B:389:0x0be3, B:393:0x0bf9, B:395:0x0c01, B:401:0x0c2a, B:403:0x0c34, B:405:0x0c5d, B:407:0x0c67, B:413:0x0c83, B:416:0x0c90, B:420:0x0c9d, B:422:0x0ca4, B:425:0x0cb6, B:429:0x0ccb, B:433:0x0cdd, B:437:0x0ce9, B:439:0x0cee, B:441:0x0d5b, B:446:0x0d70, B:448:0x0d7e, B:449:0x0d8a, B:451:0x0d9c, B:453:0x0dbf, B:457:0x0dd6, B:461:0x0de7, B:463:0x0dfc, B:468:0x0e0d, B:471:0x0e25, B:480:0x0e43, B:482:0x0e4d, B:495:0x0e7e, B:498:0x0e97, B:500:0x0ea7, B:502:0x0eb6, B:507:0x0ec7, B:510:0x0ed5, B:512:0x0edb, B:514:0x0ef0, B:516:0x0ef9, B:517:0x0f05, B:519:0x0f12, B:521:0x0f19, B:526:0x0f2b, B:530:0x0f36, B:532:0x0f4e, B:534:0x0f58, B:536:0x0f66, B:541:0x0f77, B:543:0x0f84, B:552:0x0f9a, B:555:0x0fbd, B:557:0x0fce, B:558:0x0fd5, B:560:0x0fe0, B:562:0x0fe7, B:567:0x0ff6, B:569:0x100a, B:572:0x1016, B:577:0x1036, B:578:0x103e, B:580:0x1046, B:582:0x104a, B:586:0x1056, B:589:0x1060, B:591:0x1069, B:593:0x107e, B:594:0x1089, B:595:0x108f, B:597:0x109b, B:599:0x10a6, B:602:0x10b0, B:603:0x10bc, B:605:0x10be, B:607:0x10d1, B:609:0x10dc, B:611:0x10e2, B:614:0x10ee, B:617:0x10fa, B:619:0x1101, B:623:0x110d, B:626:0x1120, B:631:0x112c, B:632:0x1138, B:635:0x1145, B:637:0x1155, B:639:0x11bf, B:640:0x11c9, B:641:0x11d6, B:646:0x11e6, B:647:0x11f5, B:652:0x1223), top: B:702:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:619:0x1101 A[Catch: RuntimeException -> 0x1241, IOException -> 0x1283, zzgj -> 0x128f, zzak -> 0x129b, zzaha -> 0x12a8, zzey -> 0x12d4, zzaeg -> 0x12e1, TryCatch #6 {zzaeg -> 0x12e1, zzaha -> 0x12a8, zzak -> 0x129b, zzey -> 0x12d4, zzgj -> 0x128f, IOException -> 0x1283, RuntimeException -> 0x1241, blocks: (B:2:0x0000, B:6:0x0086, B:8:0x008e, B:13:0x009f, B:15:0x00a8, B:21:0x00ca, B:22:0x00d8, B:23:0x00e5, B:28:0x00f5, B:30:0x0106, B:32:0x0117, B:33:0x0124, B:34:0x0133, B:35:0x0153, B:36:0x017f, B:37:0x01ab, B:40:0x01cd, B:42:0x01d3, B:43:0x01e9, B:45:0x0203, B:47:0x0232, B:48:0x024a, B:49:0x0259, B:51:0x0272, B:52:0x027a, B:53:0x02a1, B:55:0x02b4, B:60:0x02ca, B:61:0x02d8, B:62:0x02ec, B:67:0x02fc, B:69:0x030e, B:71:0x0319, B:76:0x032a, B:78:0x0332, B:80:0x0340, B:81:0x0347, B:85:0x0353, B:94:0x0367, B:96:0x0369, B:101:0x0378, B:103:0x0391, B:105:0x0397, B:106:0x039e, B:108:0x03ba, B:110:0x03c0, B:111:0x03c7, B:115:0x03ea, B:117:0x03f1, B:119:0x040b, B:123:0x041f, B:125:0x0429, B:127:0x0434, B:133:0x044b, B:136:0x0457, B:138:0x0490, B:143:0x04a4, B:145:0x04c0, B:147:0x04d7, B:149:0x04de, B:151:0x04e4, B:155:0x04f5, B:157:0x0502, B:159:0x050f, B:161:0x051b, B:164:0x052b, B:165:0x0536, B:166:0x053c, B:167:0x0545, B:169:0x0555, B:171:0x0571, B:173:0x0580, B:174:0x0596, B:176:0x05a9, B:177:0x05bb, B:179:0x05ce, B:181:0x0607, B:183:0x0641, B:184:0x0647, B:185:0x0666, B:194:0x0678, B:196:0x067a, B:197:0x0682, B:198:0x0690, B:199:0x06af, B:201:0x06e4, B:204:0x0721, B:209:0x074c, B:211:0x0765, B:213:0x078a, B:216:0x079f, B:253:0x086e, B:255:0x087d, B:270:0x08dd, B:274:0x08fa, B:275:0x090e, B:276:0x090f, B:276:0x090f, B:279:0x091a, B:281:0x0927, B:285:0x093a, B:287:0x094f, B:289:0x0963, B:291:0x09a1, B:293:0x09ab, B:295:0x09b0, B:297:0x09b6, B:298:0x09c5, B:300:0x09ca, B:302:0x09d8, B:304:0x09df, B:307:0x09e9, B:311:0x09fc, B:315:0x0a0d, B:319:0x0a27, B:321:0x0a31, B:323:0x0a4a, B:325:0x0a54, B:328:0x0a64, B:330:0x0a80, B:332:0x0a91, B:337:0x0aa9, B:339:0x0ab3, B:340:0x0aba, B:344:0x0ac7, B:346:0x0adb, B:348:0x0ae9, B:350:0x0b0b, B:353:0x0b16, B:354:0x0b23, B:355:0x0b29, B:357:0x0b33, B:361:0x0b3c, B:365:0x0b4d, B:367:0x0b5a, B:369:0x0b66, B:371:0x0b70, B:376:0x0b8b, B:378:0x0ba1, B:379:0x0ba8, B:380:0x0bae, B:382:0x0bba, B:384:0x0bc5, B:387:0x0bcf, B:389:0x0be3, B:393:0x0bf9, B:395:0x0c01, B:401:0x0c2a, B:403:0x0c34, B:405:0x0c5d, B:407:0x0c67, B:413:0x0c83, B:416:0x0c90, B:420:0x0c9d, B:422:0x0ca4, B:425:0x0cb6, B:429:0x0ccb, B:433:0x0cdd, B:437:0x0ce9, B:439:0x0cee, B:441:0x0d5b, B:446:0x0d70, B:448:0x0d7e, B:449:0x0d8a, B:451:0x0d9c, B:453:0x0dbf, B:457:0x0dd6, B:461:0x0de7, B:463:0x0dfc, B:468:0x0e0d, B:471:0x0e25, B:480:0x0e43, B:482:0x0e4d, B:495:0x0e7e, B:498:0x0e97, B:500:0x0ea7, B:502:0x0eb6, B:507:0x0ec7, B:510:0x0ed5, B:512:0x0edb, B:514:0x0ef0, B:516:0x0ef9, B:517:0x0f05, B:519:0x0f12, B:521:0x0f19, B:526:0x0f2b, B:530:0x0f36, B:532:0x0f4e, B:534:0x0f58, B:536:0x0f66, B:541:0x0f77, B:543:0x0f84, B:552:0x0f9a, B:555:0x0fbd, B:557:0x0fce, B:558:0x0fd5, B:560:0x0fe0, B:562:0x0fe7, B:567:0x0ff6, B:569:0x100a, B:572:0x1016, B:577:0x1036, B:578:0x103e, B:580:0x1046, B:582:0x104a, B:586:0x1056, B:589:0x1060, B:591:0x1069, B:593:0x107e, B:594:0x1089, B:595:0x108f, B:597:0x109b, B:599:0x10a6, B:602:0x10b0, B:603:0x10bc, B:605:0x10be, B:607:0x10d1, B:609:0x10dc, B:611:0x10e2, B:614:0x10ee, B:617:0x10fa, B:619:0x1101, B:623:0x110d, B:626:0x1120, B:631:0x112c, B:632:0x1138, B:635:0x1145, B:637:0x1155, B:639:0x11bf, B:640:0x11c9, B:641:0x11d6, B:646:0x11e6, B:647:0x11f5, B:652:0x1223), top: B:702:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:626:0x1120 A[Catch: RuntimeException -> 0x1241, IOException -> 0x1283, zzgj -> 0x128f, zzak -> 0x129b, zzaha -> 0x12a8, zzey -> 0x12d4, zzaeg -> 0x12e1, TRY_ENTER, TryCatch #6 {zzaeg -> 0x12e1, zzaha -> 0x12a8, zzak -> 0x129b, zzey -> 0x12d4, zzgj -> 0x128f, IOException -> 0x1283, RuntimeException -> 0x1241, blocks: (B:2:0x0000, B:6:0x0086, B:8:0x008e, B:13:0x009f, B:15:0x00a8, B:21:0x00ca, B:22:0x00d8, B:23:0x00e5, B:28:0x00f5, B:30:0x0106, B:32:0x0117, B:33:0x0124, B:34:0x0133, B:35:0x0153, B:36:0x017f, B:37:0x01ab, B:40:0x01cd, B:42:0x01d3, B:43:0x01e9, B:45:0x0203, B:47:0x0232, B:48:0x024a, B:49:0x0259, B:51:0x0272, B:52:0x027a, B:53:0x02a1, B:55:0x02b4, B:60:0x02ca, B:61:0x02d8, B:62:0x02ec, B:67:0x02fc, B:69:0x030e, B:71:0x0319, B:76:0x032a, B:78:0x0332, B:80:0x0340, B:81:0x0347, B:85:0x0353, B:94:0x0367, B:96:0x0369, B:101:0x0378, B:103:0x0391, B:105:0x0397, B:106:0x039e, B:108:0x03ba, B:110:0x03c0, B:111:0x03c7, B:115:0x03ea, B:117:0x03f1, B:119:0x040b, B:123:0x041f, B:125:0x0429, B:127:0x0434, B:133:0x044b, B:136:0x0457, B:138:0x0490, B:143:0x04a4, B:145:0x04c0, B:147:0x04d7, B:149:0x04de, B:151:0x04e4, B:155:0x04f5, B:157:0x0502, B:159:0x050f, B:161:0x051b, B:164:0x052b, B:165:0x0536, B:166:0x053c, B:167:0x0545, B:169:0x0555, B:171:0x0571, B:173:0x0580, B:174:0x0596, B:176:0x05a9, B:177:0x05bb, B:179:0x05ce, B:181:0x0607, B:183:0x0641, B:184:0x0647, B:185:0x0666, B:194:0x0678, B:196:0x067a, B:197:0x0682, B:198:0x0690, B:199:0x06af, B:201:0x06e4, B:204:0x0721, B:209:0x074c, B:211:0x0765, B:213:0x078a, B:216:0x079f, B:253:0x086e, B:255:0x087d, B:270:0x08dd, B:274:0x08fa, B:275:0x090e, B:276:0x090f, B:276:0x090f, B:279:0x091a, B:281:0x0927, B:285:0x093a, B:287:0x094f, B:289:0x0963, B:291:0x09a1, B:293:0x09ab, B:295:0x09b0, B:297:0x09b6, B:298:0x09c5, B:300:0x09ca, B:302:0x09d8, B:304:0x09df, B:307:0x09e9, B:311:0x09fc, B:315:0x0a0d, B:319:0x0a27, B:321:0x0a31, B:323:0x0a4a, B:325:0x0a54, B:328:0x0a64, B:330:0x0a80, B:332:0x0a91, B:337:0x0aa9, B:339:0x0ab3, B:340:0x0aba, B:344:0x0ac7, B:346:0x0adb, B:348:0x0ae9, B:350:0x0b0b, B:353:0x0b16, B:354:0x0b23, B:355:0x0b29, B:357:0x0b33, B:361:0x0b3c, B:365:0x0b4d, B:367:0x0b5a, B:369:0x0b66, B:371:0x0b70, B:376:0x0b8b, B:378:0x0ba1, B:379:0x0ba8, B:380:0x0bae, B:382:0x0bba, B:384:0x0bc5, B:387:0x0bcf, B:389:0x0be3, B:393:0x0bf9, B:395:0x0c01, B:401:0x0c2a, B:403:0x0c34, B:405:0x0c5d, B:407:0x0c67, B:413:0x0c83, B:416:0x0c90, B:420:0x0c9d, B:422:0x0ca4, B:425:0x0cb6, B:429:0x0ccb, B:433:0x0cdd, B:437:0x0ce9, B:439:0x0cee, B:441:0x0d5b, B:446:0x0d70, B:448:0x0d7e, B:449:0x0d8a, B:451:0x0d9c, B:453:0x0dbf, B:457:0x0dd6, B:461:0x0de7, B:463:0x0dfc, B:468:0x0e0d, B:471:0x0e25, B:480:0x0e43, B:482:0x0e4d, B:495:0x0e7e, B:498:0x0e97, B:500:0x0ea7, B:502:0x0eb6, B:507:0x0ec7, B:510:0x0ed5, B:512:0x0edb, B:514:0x0ef0, B:516:0x0ef9, B:517:0x0f05, B:519:0x0f12, B:521:0x0f19, B:526:0x0f2b, B:530:0x0f36, B:532:0x0f4e, B:534:0x0f58, B:536:0x0f66, B:541:0x0f77, B:543:0x0f84, B:552:0x0f9a, B:555:0x0fbd, B:557:0x0fce, B:558:0x0fd5, B:560:0x0fe0, B:562:0x0fe7, B:567:0x0ff6, B:569:0x100a, B:572:0x1016, B:577:0x1036, B:578:0x103e, B:580:0x1046, B:582:0x104a, B:586:0x1056, B:589:0x1060, B:591:0x1069, B:593:0x107e, B:594:0x1089, B:595:0x108f, B:597:0x109b, B:599:0x10a6, B:602:0x10b0, B:603:0x10bc, B:605:0x10be, B:607:0x10d1, B:609:0x10dc, B:611:0x10e2, B:614:0x10ee, B:617:0x10fa, B:619:0x1101, B:623:0x110d, B:626:0x1120, B:631:0x112c, B:632:0x1138, B:635:0x1145, B:637:0x1155, B:639:0x11bf, B:640:0x11c9, B:641:0x11d6, B:646:0x11e6, B:647:0x11f5, B:652:0x1223), top: B:702:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:637:0x1155 A[Catch: RuntimeException -> 0x1241, IOException -> 0x1283, zzgj -> 0x128f, zzak -> 0x129b, zzaha -> 0x12a8, zzey -> 0x12d4, zzaeg -> 0x12e1, TryCatch #6 {zzaeg -> 0x12e1, zzaha -> 0x12a8, zzak -> 0x129b, zzey -> 0x12d4, zzgj -> 0x128f, IOException -> 0x1283, RuntimeException -> 0x1241, blocks: (B:2:0x0000, B:6:0x0086, B:8:0x008e, B:13:0x009f, B:15:0x00a8, B:21:0x00ca, B:22:0x00d8, B:23:0x00e5, B:28:0x00f5, B:30:0x0106, B:32:0x0117, B:33:0x0124, B:34:0x0133, B:35:0x0153, B:36:0x017f, B:37:0x01ab, B:40:0x01cd, B:42:0x01d3, B:43:0x01e9, B:45:0x0203, B:47:0x0232, B:48:0x024a, B:49:0x0259, B:51:0x0272, B:52:0x027a, B:53:0x02a1, B:55:0x02b4, B:60:0x02ca, B:61:0x02d8, B:62:0x02ec, B:67:0x02fc, B:69:0x030e, B:71:0x0319, B:76:0x032a, B:78:0x0332, B:80:0x0340, B:81:0x0347, B:85:0x0353, B:94:0x0367, B:96:0x0369, B:101:0x0378, B:103:0x0391, B:105:0x0397, B:106:0x039e, B:108:0x03ba, B:110:0x03c0, B:111:0x03c7, B:115:0x03ea, B:117:0x03f1, B:119:0x040b, B:123:0x041f, B:125:0x0429, B:127:0x0434, B:133:0x044b, B:136:0x0457, B:138:0x0490, B:143:0x04a4, B:145:0x04c0, B:147:0x04d7, B:149:0x04de, B:151:0x04e4, B:155:0x04f5, B:157:0x0502, B:159:0x050f, B:161:0x051b, B:164:0x052b, B:165:0x0536, B:166:0x053c, B:167:0x0545, B:169:0x0555, B:171:0x0571, B:173:0x0580, B:174:0x0596, B:176:0x05a9, B:177:0x05bb, B:179:0x05ce, B:181:0x0607, B:183:0x0641, B:184:0x0647, B:185:0x0666, B:194:0x0678, B:196:0x067a, B:197:0x0682, B:198:0x0690, B:199:0x06af, B:201:0x06e4, B:204:0x0721, B:209:0x074c, B:211:0x0765, B:213:0x078a, B:216:0x079f, B:253:0x086e, B:255:0x087d, B:270:0x08dd, B:274:0x08fa, B:275:0x090e, B:276:0x090f, B:276:0x090f, B:279:0x091a, B:281:0x0927, B:285:0x093a, B:287:0x094f, B:289:0x0963, B:291:0x09a1, B:293:0x09ab, B:295:0x09b0, B:297:0x09b6, B:298:0x09c5, B:300:0x09ca, B:302:0x09d8, B:304:0x09df, B:307:0x09e9, B:311:0x09fc, B:315:0x0a0d, B:319:0x0a27, B:321:0x0a31, B:323:0x0a4a, B:325:0x0a54, B:328:0x0a64, B:330:0x0a80, B:332:0x0a91, B:337:0x0aa9, B:339:0x0ab3, B:340:0x0aba, B:344:0x0ac7, B:346:0x0adb, B:348:0x0ae9, B:350:0x0b0b, B:353:0x0b16, B:354:0x0b23, B:355:0x0b29, B:357:0x0b33, B:361:0x0b3c, B:365:0x0b4d, B:367:0x0b5a, B:369:0x0b66, B:371:0x0b70, B:376:0x0b8b, B:378:0x0ba1, B:379:0x0ba8, B:380:0x0bae, B:382:0x0bba, B:384:0x0bc5, B:387:0x0bcf, B:389:0x0be3, B:393:0x0bf9, B:395:0x0c01, B:401:0x0c2a, B:403:0x0c34, B:405:0x0c5d, B:407:0x0c67, B:413:0x0c83, B:416:0x0c90, B:420:0x0c9d, B:422:0x0ca4, B:425:0x0cb6, B:429:0x0ccb, B:433:0x0cdd, B:437:0x0ce9, B:439:0x0cee, B:441:0x0d5b, B:446:0x0d70, B:448:0x0d7e, B:449:0x0d8a, B:451:0x0d9c, B:453:0x0dbf, B:457:0x0dd6, B:461:0x0de7, B:463:0x0dfc, B:468:0x0e0d, B:471:0x0e25, B:480:0x0e43, B:482:0x0e4d, B:495:0x0e7e, B:498:0x0e97, B:500:0x0ea7, B:502:0x0eb6, B:507:0x0ec7, B:510:0x0ed5, B:512:0x0edb, B:514:0x0ef0, B:516:0x0ef9, B:517:0x0f05, B:519:0x0f12, B:521:0x0f19, B:526:0x0f2b, B:530:0x0f36, B:532:0x0f4e, B:534:0x0f58, B:536:0x0f66, B:541:0x0f77, B:543:0x0f84, B:552:0x0f9a, B:555:0x0fbd, B:557:0x0fce, B:558:0x0fd5, B:560:0x0fe0, B:562:0x0fe7, B:567:0x0ff6, B:569:0x100a, B:572:0x1016, B:577:0x1036, B:578:0x103e, B:580:0x1046, B:582:0x104a, B:586:0x1056, B:589:0x1060, B:591:0x1069, B:593:0x107e, B:594:0x1089, B:595:0x108f, B:597:0x109b, B:599:0x10a6, B:602:0x10b0, B:603:0x10bc, B:605:0x10be, B:607:0x10d1, B:609:0x10dc, B:611:0x10e2, B:614:0x10ee, B:617:0x10fa, B:619:0x1101, B:623:0x110d, B:626:0x1120, B:631:0x112c, B:632:0x1138, B:635:0x1145, B:637:0x1155, B:639:0x11bf, B:640:0x11c9, B:641:0x11d6, B:646:0x11e6, B:647:0x11f5, B:652:0x1223), top: B:702:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:751:0x0e8b A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v239, types: [long] */
    /* JADX WARN: Type inference failed for: r0v463, types: [long] */
    /* JADX WARN: Type inference failed for: r0v594, types: [long] */
    /* JADX WARN: Type inference failed for: r0v637, types: [long] */
    /* JADX WARN: Type inference failed for: r0v649, types: [long] */
    /* JADX WARN: Type inference failed for: r0v688, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r1v36, types: [com.google.android.gms.internal.ads.zzki, com.google.android.gms.internal.ads.zzay] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r27) {
        /*
            Method dump skipped, instructions count: 4996
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafp.handleMessage(android.os.Message):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final void zza() {
        this.zzh.zzf(10);
    }

    @Override // com.google.android.gms.internal.ads.zzaeb
    public final void zzb(zzahf zzahfVar) {
        this.zzh.zzc(16, zzahfVar).zza();
    }

    public final void zze() {
        this.zzh.zzb(0).zza();
    }

    public final void zzf(boolean z, int i) {
        this.zzh.zzd(1, z ? 1 : 0, i).zza();
    }

    public final void zzg(zzaiq zzaiqVar, int i, long j) {
        this.zzh.zzc(3, new zzafo(zzaiqVar, i, j)).zza();
    }

    public final void zzh() {
        this.zzh.zzb(6).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    public final void zzi(zzahs zzahsVar) {
        synchronized (this) {
            if (!this.zzw && this.zzi.isAlive()) {
                this.zzh.zzc(14, zzahsVar).zza();
                return;
            }
            zzahsVar.zzi(false);
        }
    }

    public final boolean zzj() {
        synchronized (this) {
            if (!this.zzw && this.zzi.isAlive()) {
                this.zzh.zzf(7);
                zzt(new zzfmj(this) { // from class: com.google.android.gms.internal.ads.zzaff
                    private final zzafp zza;

                    {
                        this.zza = this;
                    }

                    @Override // com.google.android.gms.internal.ads.zzfmj
                    public final Object zza() {
                        return this.zza.zzo();
                    }
                }, 500L);
                return this.zzw;
            }
            return true;
        }
    }

    public final Looper zzk() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzagy
    public final void zzl() {
        this.zzh.zzf(22);
    }

    @Override // com.google.android.gms.internal.ads.zzhd
    public final void zzn(zzhe zzheVar) {
        this.zzh.zzc(8, zzheVar).zza();
    }

    public final /* synthetic */ Boolean zzo() {
        return Boolean.valueOf(this.zzw);
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final /* bridge */ /* synthetic */ void zzp(zzhe zzheVar) {
        this.zzh.zzc(9, zzheVar).zza();
    }

    public final void zzq(List<zzagx> list, int i, long j, zzix zzixVar) {
        this.zzh.zzc(17, new zzafi(list, zzixVar, i, j, null, null)).zza();
    }
}
