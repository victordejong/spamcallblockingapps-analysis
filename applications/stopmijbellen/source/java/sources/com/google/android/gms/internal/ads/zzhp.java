package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzhp.class */
public final class zzhp implements Handler.Callback, zzpx, zzsu, zzid, zzgd, zzig {
    private boolean zzC;
    private boolean zzD;
    private boolean zzE;
    private int zzF;
    private zzho zzG;
    private long zzH;
    private int zzI;
    private boolean zzJ;
    private zzgg zzK;
    private final zzgx zzL;
    private final zzgb zzM;
    private final zzil[] zza;
    private final Set<zzil> zzb;
    private final zzsv zzd;
    private final zzsw zze;
    private final zzhs zzf;
    private final zzte zzg;
    private final zzei zzh;
    private final HandlerThread zzi;
    private final Looper zzj;
    private final zzcc zzk;
    private final zzca zzl;
    private final long zzm;
    private final zzge zzn;
    private final ArrayList<zzhm> zzo;
    private final zzdz zzp;
    private final zzhx zzq;
    private final zzie zzr;
    private zzio zzs;
    private zzif zzt;
    private zzhn zzu;
    private boolean zzv;
    private boolean zzx;
    private boolean zzy;
    private boolean zzz;
    private int zzA = 0;
    private boolean zzB = false;
    private boolean zzw = false;
    private final zzim[] zzc = new zzim[2];

    public zzhp(zzil[] zzilVarArr, zzsv zzsvVar, zzsw zzswVar, zzhs zzhsVar, zzte zzteVar, int i, boolean z, zzlb zzlbVar, zzio zzioVar, zzgb zzgbVar, long j, boolean z2, Looper looper, zzdz zzdzVar, zzgx zzgxVar, byte[] bArr) {
        this.zzL = zzgxVar;
        this.zza = zzilVarArr;
        this.zzd = zzsvVar;
        this.zze = zzswVar;
        this.zzf = zzhsVar;
        this.zzg = zzteVar;
        this.zzs = zzioVar;
        this.zzM = zzgbVar;
        this.zzp = zzdzVar;
        this.zzm = zzhsVar.zza();
        zzhsVar.zze();
        zzif zzh = zzif.zzh(zzswVar);
        this.zzt = zzh;
        this.zzu = new zzhn(zzh);
        for (int i2 = 0; i2 < 2; i2++) {
            zzilVarArr[i2].zzB(i2);
            this.zzc[i2] = zzilVarArr[i2].zzj();
        }
        this.zzn = new zzge(this, zzdzVar);
        this.zzo = new ArrayList<>();
        this.zzb = Collections.newSetFromMap(new IdentityHashMap());
        this.zzk = new zzcc();
        this.zzl = new zzca();
        zzsvVar.zzl(this, zzteVar);
        this.zzJ = true;
        Handler handler = new Handler(looper);
        this.zzq = new zzhx(zzlbVar, handler);
        this.zzr = new zzie(this, zzlbVar, handler);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.zzi = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.zzj = looper2;
        this.zzh = zzdzVar.zza(looper2, this);
    }

    private final void zzA(zzil zzilVar) throws zzgg {
        if (!zzab(zzilVar)) {
            return;
        }
        this.zzn.zzd(zzilVar);
        zzah(zzilVar);
        zzilVar.zzm();
        this.zzF--;
    }

    private final void zzB() throws zzgg {
        zzC(new boolean[2]);
    }

    private final void zzC(boolean[] zArr) throws zzgg {
        zzhu zze = this.zzq.zze();
        zzsw zzi = zze.zzi();
        for (int i = 0; i < 2; i++) {
            if (!zzi.zzb(i) && this.zzb.remove(this.zza[i])) {
                this.zza[i].zzy();
            }
        }
        for (int i2 = 0; i2 < 2; i2++) {
            if (zzi.zzb(i2)) {
                boolean z = zArr[i2];
                zzil zzilVar = this.zza[i2];
                if (!zzab(zzilVar)) {
                    zzhu zze2 = this.zzq.zze();
                    boolean z2 = zze2 == this.zzq.zzd();
                    zzsw zzi2 = zze2.zzi();
                    zzin zzinVar = zzi2.zzb[i2];
                    zzab[] zzaj = zzaj(zzi2.zze[i2]);
                    boolean z3 = zzae() && this.zzt.zze == 3;
                    boolean z4 = !z && z3;
                    this.zzF++;
                    this.zzb.add(zzilVar);
                    zzilVar.zzn(zzinVar, zzaj, zze2.zzc[i2], this.zzH, z4, z2, zze2.zzf(), zze2.zze());
                    zzilVar.zzo(11, new zzhi(this));
                    this.zzn.zze(zzilVar);
                    if (z3) {
                        zzilVar.zzD();
                    }
                }
            }
        }
        zze.zzg = true;
    }

    private final void zzD(IOException iOException, int i) {
        zzgg zzc = zzgg.zzc(iOException, i);
        zzhu zzd = this.zzq.zzd();
        zzgg zzggVar = zzc;
        if (zzd != null) {
            zzggVar = zzc.zza(zzd.zzf.zza);
        }
        zzep.zza("ExoPlayerImplInternal", "Playback error", zzggVar);
        zzT(false, false);
        this.zzt = this.zzt.zze(zzggVar);
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    private final void zzE(boolean z) {
        zzhu zzc = this.zzq.zzc();
        zzpz zzpzVar = zzc == null ? this.zzt.zzb : zzc.zzf.zza;
        boolean z2 = !this.zzt.zzk.equals(zzpzVar);
        if (z2) {
            this.zzt = this.zzt.zza(zzpzVar);
        }
        zzif zzifVar = this.zzt;
        zzifVar.zzq = zzc == null ? zzifVar.zzs : zzc.zzc();
        this.zzt.zzr = zzt();
        if ((z2 || z) && zzc != null && zzc.zzd) {
            zzX(zzc.zzg(), zzc.zzi());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:187:0x05ad, code lost:
        if ((r42 ? 1 : 0) != r12.zzt.zzc) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x069d, code lost:
        if ((r36 ? 1 : 0) != r12.zzt.zzc) goto L218;
     */
    /* JADX WARN: Not initialized variable reg: 40, insn: 0x0654: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r40 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:209:0x0654 */
    /* JADX WARN: Removed duplicated region for block: B:104:0x03ac  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x03e7  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x04ee  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0585  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x058d  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x05a2  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0601  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0607  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0645  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0675  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x067d  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0692  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x06f4  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x06fa  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0738  */
    /* JADX WARN: Type inference failed for: r0v129, types: [long] */
    /* JADX WARN: Type inference failed for: r0v164, types: [long] */
    /* JADX WARN: Type inference failed for: r0v196, types: [long] */
    /* JADX WARN: Type inference failed for: r0v256, types: [long] */
    /* JADX WARN: Type inference failed for: r0v292, types: [long] */
    /* JADX WARN: Type inference failed for: r0v323, types: [long] */
    /* JADX WARN: Type inference failed for: r0v367, types: [long] */
    /* JADX WARN: Type inference failed for: r0v382, types: [long] */
    /* JADX WARN: Type inference failed for: r0v385, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzF(com.google.android.gms.internal.ads.zzcd r13, boolean r14) throws com.google.android.gms.internal.ads.zzgg {
        /*
            Method dump skipped, instructions count: 1863
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhp.zzF(com.google.android.gms.internal.ads.zzcd, boolean):void");
    }

    private final void zzG(zzbn zzbnVar, boolean z) throws zzgg {
        zzH(zzbnVar, zzbnVar.zzc, true, z);
    }

    private final void zzH(zzbn zzbnVar, float f, boolean z, boolean z2) throws zzgg {
        zzsb[] zzsbVarArr;
        if (z) {
            if (z2) {
                this.zzu.zza(1);
            }
            zzif zzifVar = this.zzt;
            this.zzt = new zzif(zzifVar.zza, zzifVar.zzb, zzifVar.zzc, zzifVar.zzd, zzifVar.zze, zzifVar.zzf, zzifVar.zzg, zzifVar.zzh, zzifVar.zzi, zzifVar.zzj, zzifVar.zzk, zzifVar.zzl, zzifVar.zzm, zzbnVar, zzifVar.zzq, zzifVar.zzr, zzifVar.zzs, zzifVar.zzo, zzifVar.zzp);
        }
        float f2 = zzbnVar.zzc;
        zzhu zzd = this.zzq.zzd();
        while (true) {
            zzhu zzhuVar = zzd;
            if (zzhuVar == null) {
                break;
            }
            for (zzsb zzsbVar : zzhuVar.zzi().zze) {
            }
            zzd = zzhuVar.zzh();
        }
        zzil[] zzilVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzil zzilVar = zzilVarArr[i];
            if (zzilVar != null) {
                zzilVar.zzC(f, zzbnVar.zzc);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    private final void zzI() {
        boolean z;
        char c;
        char c2;
        if (!zzaa()) {
            z = false;
        } else {
            zzhu zzc = this.zzq.zzc();
            long zzu = zzu(zzc.zzd());
            if (zzc == this.zzq.zzd()) {
                c2 = this.zzH;
                c = zzc.zze();
            } else {
                c2 = this.zzH - zzc.zze();
                c = zzc.zzf.zzb;
            }
            z = this.zzf.zzf(c2 - c, zzu, this.zzn.zzc().zzc);
        }
        this.zzz = z;
        if (z) {
            this.zzq.zzc().zzk(this.zzH);
        }
        zzV();
    }

    private final void zzJ() {
        boolean z;
        this.zzu.zzc(this.zzt);
        z = this.zzu.zzg;
        if (z) {
            zzgx zzgxVar = this.zzL;
            zzgxVar.zza.zzz(this.zzu);
            this.zzu = new zzhn(this.zzt);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzK(boolean r29, boolean r30, boolean r31, boolean r32) {
        /*
            Method dump skipped, instructions count: 500
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhp.zzK(boolean, boolean, boolean, boolean):void");
    }

    private final void zzL() {
        zzhu zzd = this.zzq.zzd();
        boolean z = false;
        if (zzd != null) {
            z = false;
            if (zzd.zzf.zzh) {
                z = false;
                if (this.zzw) {
                    z = true;
                }
            }
        }
        this.zzx = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.android.gms.internal.ads.zzge] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    private final void zzM(long j) throws zzgg {
        zzsb[] zzsbVarArr;
        zzhu zzd = this.zzq.zzd();
        ?? r6 = j;
        if (zzd != null) {
            r6 = j + zzd.zze();
        }
        this.zzH = r6;
        this.zzn.zzf(r6);
        zzil[] zzilVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzil zzilVar = zzilVarArr[i];
            if (zzab(zzilVar)) {
                zzilVar.zzz(this.zzH);
            }
        }
        zzhu zzd2 = this.zzq.zzd();
        while (true) {
            zzhu zzhuVar = zzd2;
            if (zzhuVar != null) {
                for (zzsb zzsbVar : zzhuVar.zzi().zze) {
                }
                zzd2 = zzhuVar.zzh();
            } else {
                return;
            }
        }
    }

    private final void zzN(zzcd zzcdVar, zzcd zzcdVar2) {
        if (!zzcdVar.zzo() || !zzcdVar2.zzo()) {
            int size = this.zzo.size() - 1;
            if (size < 0) {
                Collections.sort(this.zzo);
                return;
            }
            Object obj = this.zzo.get(size).zzb;
            zzk.zzc(-9223372036854775807L);
            throw null;
        }
    }

    private final void zzO(long j, long j2) {
        this.zzh.zze(2);
        this.zzh.zzi(2, j + j2);
    }

    private final void zzP(boolean z) throws zzgg {
        zzpz zzpzVar = this.zzq.zzd().zzf.zza;
        long zzw = zzw(zzpzVar, this.zzt.zzs, true, false);
        if (zzw != this.zzt.zzs) {
            zzif zzifVar = this.zzt;
            this.zzt = zzz(zzpzVar, zzw, zzifVar.zzc, zzifVar.zzd, z, 5);
        }
    }

    private final void zzQ(boolean z, int i, boolean z2, int i2) throws zzgg {
        zzsb[] zzsbVarArr;
        this.zzu.zza(z2 ? 1 : 0);
        this.zzu.zzb(i2);
        this.zzt = this.zzt.zzd(z, i);
        this.zzy = false;
        zzhu zzd = this.zzq.zzd();
        while (true) {
            zzhu zzhuVar = zzd;
            if (zzhuVar == null) {
                break;
            }
            for (zzsb zzsbVar : zzhuVar.zzi().zze) {
            }
            zzd = zzhuVar.zzh();
        }
        if (!zzae()) {
            zzU();
            zzY();
            return;
        }
        int i3 = this.zzt.zze;
        if (i3 == 3) {
            zzS();
            this.zzh.zzh(2);
        } else if (i3 == 2) {
            this.zzh.zzh(2);
        }
    }

    private final void zzR(int i) {
        zzif zzifVar = this.zzt;
        if (zzifVar.zze != i) {
            this.zzt = zzifVar.zzf(i);
        }
    }

    private final void zzS() throws zzgg {
        this.zzy = false;
        this.zzn.zzh();
        zzil[] zzilVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzil zzilVar = zzilVarArr[i];
            if (zzab(zzilVar)) {
                zzilVar.zzD();
            }
        }
    }

    private final void zzT(boolean z, boolean z2) {
        zzK(z || !this.zzC, false, true, false);
        this.zzu.zza(z2 ? 1 : 0);
        this.zzf.zzd();
        zzR(1);
    }

    private final void zzU() throws zzgg {
        this.zzn.zzi();
        zzil[] zzilVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzil zzilVar = zzilVarArr[i];
            if (zzab(zzilVar)) {
                zzah(zzilVar);
            }
        }
    }

    private final void zzV() {
        zzhu zzc = this.zzq.zzc();
        boolean z = this.zzz || (zzc != null && zzc.zza.zzo());
        zzif zzifVar = this.zzt;
        if (z != zzifVar.zzg) {
            this.zzt = new zzif(zzifVar.zza, zzifVar.zzb, zzifVar.zzc, zzifVar.zzd, zzifVar.zze, zzifVar.zzf, z, zzifVar.zzh, zzifVar.zzi, zzifVar.zzj, zzifVar.zzk, zzifVar.zzl, zzifVar.zzm, zzifVar.zzn, zzifVar.zzq, zzifVar.zzr, zzifVar.zzs, zzifVar.zzo, zzifVar.zzp);
        }
    }

    private final void zzW(zzcd zzcdVar, zzpz zzpzVar, zzcd zzcdVar2, zzpz zzpzVar2, long j) {
        if (zzcdVar.zzo() || !zzaf(zzcdVar, zzpzVar)) {
            float f = this.zzn.zzc().zzc;
            zzbn zzbnVar = this.zzt.zzn;
            if (f == zzbnVar.zzc) {
                return;
            }
            this.zzn.zzg(zzbnVar);
            return;
        }
        zzcdVar.zze(zzcdVar.zzn(zzpzVar.zza, this.zzl).zzd, this.zzk, 0L);
        zzgb zzgbVar = this.zzM;
        zzas zzasVar = this.zzk.zzk;
        int i = zzfn.zza;
        zzgbVar.zzd(zzasVar);
        if (j != -9223372036854775807L) {
            this.zzM.zze(zzs(zzcdVar, zzpzVar.zza, j));
            return;
        }
        if (zzfn.zzP(!zzcdVar2.zzo() ? zzcdVar2.zze(zzcdVar2.zzn(zzpzVar2.zza, this.zzl).zzd, this.zzk, 0L).zzc : null, this.zzk.zzc)) {
            return;
        }
        this.zzM.zze(-9223372036854775807L);
    }

    private final void zzX(zzch zzchVar, zzsw zzswVar) {
        this.zzf.zzi(this.zza, zzchVar, zzswVar.zze);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x013b A[LOOP:0: B:29:0x0114->B:39:0x013b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x010e A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v116, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x010e -> B:29:0x0114). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzY() throws com.google.android.gms.internal.ads.zzgg {
        /*
            Method dump skipped, instructions count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhp.zzY():void");
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    private final void zzZ(zzfqs<Boolean> zzfqsVar, long j) {
        synchronized (this) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            boolean z = false;
            for (char c = 500; !Boolean.valueOf(((zzhg) zzfqsVar).zza.zzv).booleanValue() && c > 0; c = (elapsedRealtime + 500) - SystemClock.elapsedRealtime()) {
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

    private final boolean zzaa() {
        zzhu zzc = this.zzq.zzc();
        return (zzc == null || zzc.zzd() == Long.MIN_VALUE) ? false : true;
    }

    private static boolean zzab(zzil zzilVar) {
        return zzilVar.zzbm() != 0;
    }

    private final boolean zzac() {
        zzhu zzd = this.zzq.zzd();
        long j = zzd.zzf.zze;
        boolean z = false;
        if (zzd.zzd) {
            if (j == -9223372036854775807L || this.zzt.zzs < j) {
                z = true;
            } else if (!zzae()) {
                return true;
            } else {
                z = false;
            }
        }
        return z;
    }

    private static boolean zzad(zzif zzifVar, zzca zzcaVar) {
        zzpz zzpzVar = zzifVar.zzb;
        zzcd zzcdVar = zzifVar.zza;
        return zzcdVar.zzo() || zzcdVar.zzn(zzpzVar.zza, zzcaVar).zzg;
    }

    private final boolean zzae() {
        zzif zzifVar = this.zzt;
        return zzifVar.zzl && zzifVar.zzm == 0;
    }

    private final boolean zzaf(zzcd zzcdVar, zzpz zzpzVar) {
        if (zzpzVar.zzb() || zzcdVar.zzo()) {
            return false;
        }
        zzcdVar.zze(zzcdVar.zzn(zzpzVar.zza, this.zzl).zzd, this.zzk, 0L);
        if (!this.zzk.zzb()) {
            return false;
        }
        zzcc zzccVar = this.zzk;
        return zzccVar.zzi && zzccVar.zzf != -9223372036854775807L;
    }

    private static final void zzag(zzii zziiVar) throws zzgg {
        zziiVar.zzj();
        try {
            zziiVar.zzc().zzo(zziiVar.zza(), zziiVar.zzg());
        } finally {
            zziiVar.zzh(true);
        }
    }

    private static final void zzah(zzil zzilVar) throws zzgg {
        if (zzilVar.zzbm() == 2) {
            zzilVar.zzE();
        }
    }

    private static final void zzai(zzil zzilVar, long j) {
        zzilVar.zzA();
        if (!(zzilVar instanceof zzrw)) {
            return;
        }
        zzrw zzrwVar = (zzrw) zzilVar;
        throw null;
    }

    private static zzab[] zzaj(zzsb zzsbVar) {
        int zzc = zzsbVar != null ? zzsbVar.zzc() : 0;
        zzab[] zzabVarArr = new zzab[zzc];
        for (int i = 0; i < zzc; i++) {
            zzabVarArr[i] = zzsbVar.zzd(i);
        }
        return zzabVarArr;
    }

    public static Object zze(zzcc zzccVar, zzca zzcaVar, int i, boolean z, Object obj, zzcd zzcdVar, zzcd zzcdVar2) {
        int i2;
        int zza = zzcdVar.zza(obj);
        int zzb = zzcdVar.zzb();
        int i3 = 0;
        int i4 = -1;
        while (true) {
            i2 = i4;
            if (i3 >= zzb) {
                break;
            }
            i2 = i4;
            if (i4 != -1) {
                break;
            }
            zza = zzcdVar.zzi(zza, zzcaVar, zzccVar, i, z);
            if (zza == -1) {
                i2 = -1;
                break;
            }
            i4 = zzcdVar2.zza(zzcdVar.zzf(zza));
            i3++;
        }
        if (i2 == -1) {
            return null;
        }
        return zzcdVar2.zzf(i2);
    }

    public static final /* synthetic */ void zzr(zzii zziiVar) {
        try {
            zzag(zziiVar);
        } catch (zzgg e) {
            zzep.zza("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e);
            throw new RuntimeException(e);
        }
    }

    private final long zzs(zzcd zzcdVar, Object obj, long j) {
        zzcdVar.zze(zzcdVar.zzn(obj, this.zzl).zzd, this.zzk, 0L);
        zzcc zzccVar = this.zzk;
        if (zzccVar.zzf == -9223372036854775807L || !zzccVar.zzb()) {
            return -9223372036854775807L;
        }
        zzcc zzccVar2 = this.zzk;
        if (zzccVar2.zzi) {
            return zzk.zzc(zzfn.zzq(zzccVar2.zzg) - this.zzk.zzf) - j;
        }
        return -9223372036854775807L;
    }

    private final long zzt() {
        return zzu(this.zzt.zzq);
    }

    private final long zzu(long j) {
        zzhu zzc = this.zzq.zzc();
        if (zzc == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.zzH - zzc.zze()));
    }

    private final long zzv(zzpz zzpzVar, long j, boolean z) throws zzgg {
        return zzw(zzpzVar, j, this.zzq.zzd() != this.zzq.zze(), z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    private final long zzw(zzpz zzpzVar, long j, boolean z, boolean z2) throws zzgg {
        zzhu zzhuVar;
        char c;
        char c2;
        zzU();
        this.zzy = false;
        if (z2 || this.zzt.zze == 3) {
            zzR(2);
        }
        zzhu zzd = this.zzq.zzd();
        zzhu zzhuVar2 = zzd;
        while (true) {
            zzhuVar = zzhuVar2;
            if (zzhuVar == null || zzpzVar.equals(zzhuVar.zzf.zza)) {
                break;
            }
            zzhuVar2 = zzhuVar.zzh();
        }
        if (z || zzd != zzhuVar || (zzhuVar != null && zzhuVar.zze() + j < 0)) {
            zzil[] zzilVarArr = this.zza;
            for (int i = 0; i < 2; i++) {
                zzA(zzilVarArr[i]);
            }
            if (zzhuVar != null) {
                while (this.zzq.zzd() != zzhuVar) {
                    this.zzq.zza();
                }
                this.zzq.zzm(zzhuVar);
                zzhuVar.zzp(0L);
                zzB();
            }
        }
        if (zzhuVar != null) {
            this.zzq.zzm(zzhuVar);
            if (!zzhuVar.zzd) {
                zzhuVar.zzf = zzhuVar.zzf.zzb(j);
                c2 = j;
            } else {
                c2 = j;
                if (zzhuVar.zze) {
                    c2 = zzhuVar.zza.zze(j);
                    zzhuVar.zza.zzh(c2 - this.zzm, false);
                }
            }
            zzM(c2);
            zzI();
            c = c2;
        } else {
            this.zzq.zzi();
            zzM(j);
            c = j;
        }
        zzE(false);
        this.zzh.zzh(2);
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    private final Pair<zzpz, Long> zzx(zzcd zzcdVar) {
        if (zzcdVar.zzo()) {
            return Pair.create(zzif.zzi(), 0L);
        }
        Pair<Object, Long> zzl = zzcdVar.zzl(this.zzk, this.zzl, zzcdVar.zzg(this.zzB), -9223372036854775807L);
        zzpz zzh = this.zzq.zzh(zzcdVar, zzl.first, 0L);
        char longValue = ((Long) zzl.second).longValue();
        if (zzh.zzb()) {
            zzcdVar.zzn(zzh.zza, this.zzl);
            longValue = 0;
            if (zzh.zzc == this.zzl.zzd(zzh.zzb)) {
                this.zzl.zzh();
                longValue = 0;
            }
        }
        return Pair.create(zzh, Long.valueOf(longValue));
    }

    private static Pair<Object, Long> zzy(zzcd zzcdVar, zzho zzhoVar, boolean z, int i, boolean z2, zzcc zzccVar, zzca zzcaVar) {
        zzcd zzcdVar2 = zzhoVar.zza;
        if (zzcdVar.zzo()) {
            return null;
        }
        if (true == zzcdVar2.zzo()) {
            zzcdVar2 = zzcdVar;
        }
        try {
            Pair<Object, Long> zzl = zzcdVar2.zzl(zzccVar, zzcaVar, zzhoVar.zzb, zzhoVar.zzc);
            if (zzcdVar.equals(zzcdVar2)) {
                return zzl;
            }
            if (zzcdVar.zza(zzl.first) != -1) {
                return (!zzcdVar2.zzn(zzl.first, zzcaVar).zzg || zzcdVar2.zze(zzcaVar.zzd, zzccVar, 0L).zzo != zzcdVar2.zza(zzl.first)) ? zzl : zzcdVar.zzl(zzccVar, zzcaVar, zzcdVar.zzn(zzl.first, zzcaVar).zzd, zzhoVar.zzc);
            }
            Object zze = zze(zzccVar, zzcaVar, i, z2, zzl.first, zzcdVar2, zzcdVar);
            if (zze == null) {
                return null;
            }
            return zzcdVar.zzl(zzccVar, zzcaVar, zzcdVar.zzn(zze, zzcaVar).zzd, -9223372036854775807L);
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0175  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.ads.zzif zzz(com.google.android.gms.internal.ads.zzpz r15, long r16, long r18, long r20, boolean r22, int r23) {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhp.zzz(com.google.android.gms.internal.ads.zzpz, long, long, long, boolean, int):com.google.android.gms.internal.ads.zzif");
    }

    /* JADX WARN: Code restructure failed: missing block: B:249:0x0868, code lost:
        if (r0 == 3) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:521:0x0f11, code lost:
        if (zzac() != false) goto L522;
     */
    /* JADX WARN: Code restructure failed: missing block: B:565:0x0fe9, code lost:
        if (r46 == false) goto L566;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:222:0x07cd A[Catch: all -> 0x08f6, TRY_LEAVE, TryCatch #3 {all -> 0x08f6, blocks: (B:220:0x07c0, B:222:0x07cd, B:225:0x07db, B:227:0x07e6, B:229:0x07ec, B:231:0x07f6, B:233:0x0804, B:235:0x0812, B:240:0x0821, B:243:0x083e, B:245:0x0851, B:250:0x086b, B:256:0x088c, B:261:0x08a0), top: B:696:0x07c0 }] */
    /* JADX WARN: Removed duplicated region for block: B:223:0x07d6  */
    /* JADX WARN: Removed duplicated region for block: B:494:0x0e70 A[Catch: RuntimeException -> 0x1228, IOException -> 0x126a, zzpd -> 0x1276, zzdj -> 0x1282, zzbj -> 0x128f, zznc -> 0x12bb, zzgg -> 0x12c8, TRY_ENTER, TRY_LEAVE, TryCatch #6 {zzbj -> 0x128f, zzdj -> 0x1282, zzgg -> 0x12c8, zznc -> 0x12bb, zzpd -> 0x1276, IOException -> 0x126a, RuntimeException -> 0x1228, blocks: (B:2:0x0000, B:6:0x0082, B:7:0x008a, B:12:0x009b, B:14:0x00a4, B:20:0x00c6, B:21:0x00d4, B:22:0x00e1, B:27:0x00f1, B:29:0x0102, B:31:0x0113, B:32:0x0120, B:33:0x012f, B:34:0x014f, B:35:0x017d, B:36:0x01a9, B:39:0x01ce, B:41:0x01d4, B:42:0x01ea, B:44:0x0202, B:46:0x0230, B:47:0x0246, B:48:0x0255, B:50:0x026e, B:51:0x0280, B:52:0x02a7, B:54:0x02ba, B:59:0x02d0, B:60:0x02de, B:61:0x02f2, B:66:0x0302, B:68:0x0314, B:70:0x031f, B:75:0x0330, B:77:0x0338, B:79:0x0346, B:80:0x034d, B:84:0x0359, B:93:0x036d, B:95:0x036f, B:100:0x037e, B:102:0x0397, B:104:0x039d, B:105:0x03a4, B:107:0x03c0, B:109:0x03c6, B:110:0x03cd, B:114:0x03f0, B:116:0x03f7, B:118:0x0411, B:122:0x0426, B:124:0x0431, B:126:0x043d, B:132:0x0457, B:135:0x0463, B:137:0x049b, B:142:0x04ae, B:144:0x04ca, B:146:0x04e0, B:148:0x04e6, B:150:0x04ec, B:154:0x04fd, B:156:0x050a, B:158:0x0517, B:160:0x0523, B:163:0x0533, B:164:0x053e, B:165:0x0544, B:166:0x054d, B:168:0x055d, B:170:0x0579, B:172:0x0588, B:173:0x059e, B:175:0x05b1, B:176:0x05c3, B:178:0x05d6, B:180:0x060f, B:182:0x064a, B:183:0x0650, B:184:0x066f, B:193:0x0681, B:195:0x0683, B:196:0x068b, B:197:0x0699, B:198:0x06b8, B:200:0x06ed, B:203:0x0729, B:208:0x0754, B:210:0x076d, B:212:0x0792, B:215:0x07a6, B:252:0x0873, B:254:0x0881, B:269:0x08e0, B:273:0x08fc, B:274:0x090f, B:275:0x0910, B:275:0x0910, B:278:0x0919, B:280:0x0926, B:284:0x0937, B:286:0x094c, B:288:0x0960, B:290:0x099e, B:292:0x09a8, B:294:0x09ad, B:296:0x09b3, B:297:0x09c2, B:299:0x09c7, B:301:0x09d5, B:303:0x09dc, B:306:0x09e6, B:310:0x09f9, B:314:0x0a0a, B:318:0x0a24, B:320:0x0a2e, B:322:0x0a47, B:324:0x0a51, B:327:0x0a61, B:329:0x0a7d, B:331:0x0a8e, B:336:0x0aa6, B:338:0x0ab0, B:339:0x0ab7, B:343:0x0ac4, B:345:0x0ad8, B:347:0x0ae6, B:349:0x0b08, B:352:0x0b13, B:353:0x0b20, B:354:0x0b26, B:356:0x0b30, B:360:0x0b39, B:364:0x0b4a, B:366:0x0b57, B:368:0x0b63, B:370:0x0b6d, B:375:0x0b88, B:377:0x0b9e, B:378:0x0ba5, B:379:0x0bab, B:381:0x0bb7, B:383:0x0bc2, B:386:0x0bcc, B:388:0x0bdf, B:392:0x0bf4, B:394:0x0bfc, B:400:0x0c24, B:402:0x0c2e, B:404:0x0c54, B:406:0x0c5e, B:412:0x0c7d, B:415:0x0c87, B:419:0x0c92, B:421:0x0c99, B:424:0x0ca9, B:428:0x0cba, B:432:0x0cca, B:436:0x0cd5, B:438:0x0cda, B:440:0x0d46, B:445:0x0d5b, B:447:0x0d69, B:448:0x0d75, B:450:0x0d87, B:452:0x0dab, B:456:0x0dc3, B:460:0x0dd5, B:462:0x0deb, B:467:0x0dfe, B:470:0x0e16, B:479:0x0e34, B:481:0x0e3e, B:494:0x0e70, B:497:0x0e8b, B:499:0x0e9b, B:501:0x0eaa, B:506:0x0ebb, B:509:0x0ec9, B:511:0x0ecf, B:513:0x0ee4, B:515:0x0eed, B:516:0x0ef9, B:518:0x0f06, B:520:0x0f0d, B:525:0x0f1f, B:529:0x0f29, B:531:0x0f41, B:533:0x0f4b, B:535:0x0f59, B:540:0x0f6a, B:542:0x0f77, B:551:0x0f90, B:554:0x0fb3, B:556:0x0fc4, B:557:0x0fcb, B:559:0x0fd6, B:561:0x0fdd, B:566:0x0fec, B:568:0x1000, B:571:0x100c, B:576:0x102e, B:577:0x1036, B:579:0x103e, B:581:0x1042, B:585:0x104e, B:588:0x1058, B:590:0x1061, B:592:0x1076, B:593:0x1081, B:594:0x1087, B:596:0x1093, B:598:0x109e, B:601:0x10a8, B:602:0x10b4, B:604:0x10b6, B:606:0x10c9, B:608:0x10d4, B:610:0x10da, B:613:0x10e6, B:616:0x10f2, B:618:0x10f9, B:622:0x1105, B:625:0x1118, B:630:0x1124, B:631:0x1130, B:634:0x113d, B:636:0x114b, B:638:0x11a6, B:639:0x11b0, B:640:0x11bd, B:645:0x11cd, B:646:0x11dc, B:651:0x120a), top: B:701:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:583:0x104c  */
    /* JADX WARN: Removed duplicated region for block: B:606:0x10c9 A[Catch: RuntimeException -> 0x1228, IOException -> 0x126a, zzpd -> 0x1276, zzdj -> 0x1282, zzbj -> 0x128f, zznc -> 0x12bb, zzgg -> 0x12c8, TryCatch #6 {zzbj -> 0x128f, zzdj -> 0x1282, zzgg -> 0x12c8, zznc -> 0x12bb, zzpd -> 0x1276, IOException -> 0x126a, RuntimeException -> 0x1228, blocks: (B:2:0x0000, B:6:0x0082, B:7:0x008a, B:12:0x009b, B:14:0x00a4, B:20:0x00c6, B:21:0x00d4, B:22:0x00e1, B:27:0x00f1, B:29:0x0102, B:31:0x0113, B:32:0x0120, B:33:0x012f, B:34:0x014f, B:35:0x017d, B:36:0x01a9, B:39:0x01ce, B:41:0x01d4, B:42:0x01ea, B:44:0x0202, B:46:0x0230, B:47:0x0246, B:48:0x0255, B:50:0x026e, B:51:0x0280, B:52:0x02a7, B:54:0x02ba, B:59:0x02d0, B:60:0x02de, B:61:0x02f2, B:66:0x0302, B:68:0x0314, B:70:0x031f, B:75:0x0330, B:77:0x0338, B:79:0x0346, B:80:0x034d, B:84:0x0359, B:93:0x036d, B:95:0x036f, B:100:0x037e, B:102:0x0397, B:104:0x039d, B:105:0x03a4, B:107:0x03c0, B:109:0x03c6, B:110:0x03cd, B:114:0x03f0, B:116:0x03f7, B:118:0x0411, B:122:0x0426, B:124:0x0431, B:126:0x043d, B:132:0x0457, B:135:0x0463, B:137:0x049b, B:142:0x04ae, B:144:0x04ca, B:146:0x04e0, B:148:0x04e6, B:150:0x04ec, B:154:0x04fd, B:156:0x050a, B:158:0x0517, B:160:0x0523, B:163:0x0533, B:164:0x053e, B:165:0x0544, B:166:0x054d, B:168:0x055d, B:170:0x0579, B:172:0x0588, B:173:0x059e, B:175:0x05b1, B:176:0x05c3, B:178:0x05d6, B:180:0x060f, B:182:0x064a, B:183:0x0650, B:184:0x066f, B:193:0x0681, B:195:0x0683, B:196:0x068b, B:197:0x0699, B:198:0x06b8, B:200:0x06ed, B:203:0x0729, B:208:0x0754, B:210:0x076d, B:212:0x0792, B:215:0x07a6, B:252:0x0873, B:254:0x0881, B:269:0x08e0, B:273:0x08fc, B:274:0x090f, B:275:0x0910, B:275:0x0910, B:278:0x0919, B:280:0x0926, B:284:0x0937, B:286:0x094c, B:288:0x0960, B:290:0x099e, B:292:0x09a8, B:294:0x09ad, B:296:0x09b3, B:297:0x09c2, B:299:0x09c7, B:301:0x09d5, B:303:0x09dc, B:306:0x09e6, B:310:0x09f9, B:314:0x0a0a, B:318:0x0a24, B:320:0x0a2e, B:322:0x0a47, B:324:0x0a51, B:327:0x0a61, B:329:0x0a7d, B:331:0x0a8e, B:336:0x0aa6, B:338:0x0ab0, B:339:0x0ab7, B:343:0x0ac4, B:345:0x0ad8, B:347:0x0ae6, B:349:0x0b08, B:352:0x0b13, B:353:0x0b20, B:354:0x0b26, B:356:0x0b30, B:360:0x0b39, B:364:0x0b4a, B:366:0x0b57, B:368:0x0b63, B:370:0x0b6d, B:375:0x0b88, B:377:0x0b9e, B:378:0x0ba5, B:379:0x0bab, B:381:0x0bb7, B:383:0x0bc2, B:386:0x0bcc, B:388:0x0bdf, B:392:0x0bf4, B:394:0x0bfc, B:400:0x0c24, B:402:0x0c2e, B:404:0x0c54, B:406:0x0c5e, B:412:0x0c7d, B:415:0x0c87, B:419:0x0c92, B:421:0x0c99, B:424:0x0ca9, B:428:0x0cba, B:432:0x0cca, B:436:0x0cd5, B:438:0x0cda, B:440:0x0d46, B:445:0x0d5b, B:447:0x0d69, B:448:0x0d75, B:450:0x0d87, B:452:0x0dab, B:456:0x0dc3, B:460:0x0dd5, B:462:0x0deb, B:467:0x0dfe, B:470:0x0e16, B:479:0x0e34, B:481:0x0e3e, B:494:0x0e70, B:497:0x0e8b, B:499:0x0e9b, B:501:0x0eaa, B:506:0x0ebb, B:509:0x0ec9, B:511:0x0ecf, B:513:0x0ee4, B:515:0x0eed, B:516:0x0ef9, B:518:0x0f06, B:520:0x0f0d, B:525:0x0f1f, B:529:0x0f29, B:531:0x0f41, B:533:0x0f4b, B:535:0x0f59, B:540:0x0f6a, B:542:0x0f77, B:551:0x0f90, B:554:0x0fb3, B:556:0x0fc4, B:557:0x0fcb, B:559:0x0fd6, B:561:0x0fdd, B:566:0x0fec, B:568:0x1000, B:571:0x100c, B:576:0x102e, B:577:0x1036, B:579:0x103e, B:581:0x1042, B:585:0x104e, B:588:0x1058, B:590:0x1061, B:592:0x1076, B:593:0x1081, B:594:0x1087, B:596:0x1093, B:598:0x109e, B:601:0x10a8, B:602:0x10b4, B:604:0x10b6, B:606:0x10c9, B:608:0x10d4, B:610:0x10da, B:613:0x10e6, B:616:0x10f2, B:618:0x10f9, B:622:0x1105, B:625:0x1118, B:630:0x1124, B:631:0x1130, B:634:0x113d, B:636:0x114b, B:638:0x11a6, B:639:0x11b0, B:640:0x11bd, B:645:0x11cd, B:646:0x11dc, B:651:0x120a), top: B:701:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:610:0x10da A[Catch: RuntimeException -> 0x1228, IOException -> 0x126a, zzpd -> 0x1276, zzdj -> 0x1282, zzbj -> 0x128f, zznc -> 0x12bb, zzgg -> 0x12c8, TryCatch #6 {zzbj -> 0x128f, zzdj -> 0x1282, zzgg -> 0x12c8, zznc -> 0x12bb, zzpd -> 0x1276, IOException -> 0x126a, RuntimeException -> 0x1228, blocks: (B:2:0x0000, B:6:0x0082, B:7:0x008a, B:12:0x009b, B:14:0x00a4, B:20:0x00c6, B:21:0x00d4, B:22:0x00e1, B:27:0x00f1, B:29:0x0102, B:31:0x0113, B:32:0x0120, B:33:0x012f, B:34:0x014f, B:35:0x017d, B:36:0x01a9, B:39:0x01ce, B:41:0x01d4, B:42:0x01ea, B:44:0x0202, B:46:0x0230, B:47:0x0246, B:48:0x0255, B:50:0x026e, B:51:0x0280, B:52:0x02a7, B:54:0x02ba, B:59:0x02d0, B:60:0x02de, B:61:0x02f2, B:66:0x0302, B:68:0x0314, B:70:0x031f, B:75:0x0330, B:77:0x0338, B:79:0x0346, B:80:0x034d, B:84:0x0359, B:93:0x036d, B:95:0x036f, B:100:0x037e, B:102:0x0397, B:104:0x039d, B:105:0x03a4, B:107:0x03c0, B:109:0x03c6, B:110:0x03cd, B:114:0x03f0, B:116:0x03f7, B:118:0x0411, B:122:0x0426, B:124:0x0431, B:126:0x043d, B:132:0x0457, B:135:0x0463, B:137:0x049b, B:142:0x04ae, B:144:0x04ca, B:146:0x04e0, B:148:0x04e6, B:150:0x04ec, B:154:0x04fd, B:156:0x050a, B:158:0x0517, B:160:0x0523, B:163:0x0533, B:164:0x053e, B:165:0x0544, B:166:0x054d, B:168:0x055d, B:170:0x0579, B:172:0x0588, B:173:0x059e, B:175:0x05b1, B:176:0x05c3, B:178:0x05d6, B:180:0x060f, B:182:0x064a, B:183:0x0650, B:184:0x066f, B:193:0x0681, B:195:0x0683, B:196:0x068b, B:197:0x0699, B:198:0x06b8, B:200:0x06ed, B:203:0x0729, B:208:0x0754, B:210:0x076d, B:212:0x0792, B:215:0x07a6, B:252:0x0873, B:254:0x0881, B:269:0x08e0, B:273:0x08fc, B:274:0x090f, B:275:0x0910, B:275:0x0910, B:278:0x0919, B:280:0x0926, B:284:0x0937, B:286:0x094c, B:288:0x0960, B:290:0x099e, B:292:0x09a8, B:294:0x09ad, B:296:0x09b3, B:297:0x09c2, B:299:0x09c7, B:301:0x09d5, B:303:0x09dc, B:306:0x09e6, B:310:0x09f9, B:314:0x0a0a, B:318:0x0a24, B:320:0x0a2e, B:322:0x0a47, B:324:0x0a51, B:327:0x0a61, B:329:0x0a7d, B:331:0x0a8e, B:336:0x0aa6, B:338:0x0ab0, B:339:0x0ab7, B:343:0x0ac4, B:345:0x0ad8, B:347:0x0ae6, B:349:0x0b08, B:352:0x0b13, B:353:0x0b20, B:354:0x0b26, B:356:0x0b30, B:360:0x0b39, B:364:0x0b4a, B:366:0x0b57, B:368:0x0b63, B:370:0x0b6d, B:375:0x0b88, B:377:0x0b9e, B:378:0x0ba5, B:379:0x0bab, B:381:0x0bb7, B:383:0x0bc2, B:386:0x0bcc, B:388:0x0bdf, B:392:0x0bf4, B:394:0x0bfc, B:400:0x0c24, B:402:0x0c2e, B:404:0x0c54, B:406:0x0c5e, B:412:0x0c7d, B:415:0x0c87, B:419:0x0c92, B:421:0x0c99, B:424:0x0ca9, B:428:0x0cba, B:432:0x0cca, B:436:0x0cd5, B:438:0x0cda, B:440:0x0d46, B:445:0x0d5b, B:447:0x0d69, B:448:0x0d75, B:450:0x0d87, B:452:0x0dab, B:456:0x0dc3, B:460:0x0dd5, B:462:0x0deb, B:467:0x0dfe, B:470:0x0e16, B:479:0x0e34, B:481:0x0e3e, B:494:0x0e70, B:497:0x0e8b, B:499:0x0e9b, B:501:0x0eaa, B:506:0x0ebb, B:509:0x0ec9, B:511:0x0ecf, B:513:0x0ee4, B:515:0x0eed, B:516:0x0ef9, B:518:0x0f06, B:520:0x0f0d, B:525:0x0f1f, B:529:0x0f29, B:531:0x0f41, B:533:0x0f4b, B:535:0x0f59, B:540:0x0f6a, B:542:0x0f77, B:551:0x0f90, B:554:0x0fb3, B:556:0x0fc4, B:557:0x0fcb, B:559:0x0fd6, B:561:0x0fdd, B:566:0x0fec, B:568:0x1000, B:571:0x100c, B:576:0x102e, B:577:0x1036, B:579:0x103e, B:581:0x1042, B:585:0x104e, B:588:0x1058, B:590:0x1061, B:592:0x1076, B:593:0x1081, B:594:0x1087, B:596:0x1093, B:598:0x109e, B:601:0x10a8, B:602:0x10b4, B:604:0x10b6, B:606:0x10c9, B:608:0x10d4, B:610:0x10da, B:613:0x10e6, B:616:0x10f2, B:618:0x10f9, B:622:0x1105, B:625:0x1118, B:630:0x1124, B:631:0x1130, B:634:0x113d, B:636:0x114b, B:638:0x11a6, B:639:0x11b0, B:640:0x11bd, B:645:0x11cd, B:646:0x11dc, B:651:0x120a), top: B:701:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:618:0x10f9 A[Catch: RuntimeException -> 0x1228, IOException -> 0x126a, zzpd -> 0x1276, zzdj -> 0x1282, zzbj -> 0x128f, zznc -> 0x12bb, zzgg -> 0x12c8, TryCatch #6 {zzbj -> 0x128f, zzdj -> 0x1282, zzgg -> 0x12c8, zznc -> 0x12bb, zzpd -> 0x1276, IOException -> 0x126a, RuntimeException -> 0x1228, blocks: (B:2:0x0000, B:6:0x0082, B:7:0x008a, B:12:0x009b, B:14:0x00a4, B:20:0x00c6, B:21:0x00d4, B:22:0x00e1, B:27:0x00f1, B:29:0x0102, B:31:0x0113, B:32:0x0120, B:33:0x012f, B:34:0x014f, B:35:0x017d, B:36:0x01a9, B:39:0x01ce, B:41:0x01d4, B:42:0x01ea, B:44:0x0202, B:46:0x0230, B:47:0x0246, B:48:0x0255, B:50:0x026e, B:51:0x0280, B:52:0x02a7, B:54:0x02ba, B:59:0x02d0, B:60:0x02de, B:61:0x02f2, B:66:0x0302, B:68:0x0314, B:70:0x031f, B:75:0x0330, B:77:0x0338, B:79:0x0346, B:80:0x034d, B:84:0x0359, B:93:0x036d, B:95:0x036f, B:100:0x037e, B:102:0x0397, B:104:0x039d, B:105:0x03a4, B:107:0x03c0, B:109:0x03c6, B:110:0x03cd, B:114:0x03f0, B:116:0x03f7, B:118:0x0411, B:122:0x0426, B:124:0x0431, B:126:0x043d, B:132:0x0457, B:135:0x0463, B:137:0x049b, B:142:0x04ae, B:144:0x04ca, B:146:0x04e0, B:148:0x04e6, B:150:0x04ec, B:154:0x04fd, B:156:0x050a, B:158:0x0517, B:160:0x0523, B:163:0x0533, B:164:0x053e, B:165:0x0544, B:166:0x054d, B:168:0x055d, B:170:0x0579, B:172:0x0588, B:173:0x059e, B:175:0x05b1, B:176:0x05c3, B:178:0x05d6, B:180:0x060f, B:182:0x064a, B:183:0x0650, B:184:0x066f, B:193:0x0681, B:195:0x0683, B:196:0x068b, B:197:0x0699, B:198:0x06b8, B:200:0x06ed, B:203:0x0729, B:208:0x0754, B:210:0x076d, B:212:0x0792, B:215:0x07a6, B:252:0x0873, B:254:0x0881, B:269:0x08e0, B:273:0x08fc, B:274:0x090f, B:275:0x0910, B:275:0x0910, B:278:0x0919, B:280:0x0926, B:284:0x0937, B:286:0x094c, B:288:0x0960, B:290:0x099e, B:292:0x09a8, B:294:0x09ad, B:296:0x09b3, B:297:0x09c2, B:299:0x09c7, B:301:0x09d5, B:303:0x09dc, B:306:0x09e6, B:310:0x09f9, B:314:0x0a0a, B:318:0x0a24, B:320:0x0a2e, B:322:0x0a47, B:324:0x0a51, B:327:0x0a61, B:329:0x0a7d, B:331:0x0a8e, B:336:0x0aa6, B:338:0x0ab0, B:339:0x0ab7, B:343:0x0ac4, B:345:0x0ad8, B:347:0x0ae6, B:349:0x0b08, B:352:0x0b13, B:353:0x0b20, B:354:0x0b26, B:356:0x0b30, B:360:0x0b39, B:364:0x0b4a, B:366:0x0b57, B:368:0x0b63, B:370:0x0b6d, B:375:0x0b88, B:377:0x0b9e, B:378:0x0ba5, B:379:0x0bab, B:381:0x0bb7, B:383:0x0bc2, B:386:0x0bcc, B:388:0x0bdf, B:392:0x0bf4, B:394:0x0bfc, B:400:0x0c24, B:402:0x0c2e, B:404:0x0c54, B:406:0x0c5e, B:412:0x0c7d, B:415:0x0c87, B:419:0x0c92, B:421:0x0c99, B:424:0x0ca9, B:428:0x0cba, B:432:0x0cca, B:436:0x0cd5, B:438:0x0cda, B:440:0x0d46, B:445:0x0d5b, B:447:0x0d69, B:448:0x0d75, B:450:0x0d87, B:452:0x0dab, B:456:0x0dc3, B:460:0x0dd5, B:462:0x0deb, B:467:0x0dfe, B:470:0x0e16, B:479:0x0e34, B:481:0x0e3e, B:494:0x0e70, B:497:0x0e8b, B:499:0x0e9b, B:501:0x0eaa, B:506:0x0ebb, B:509:0x0ec9, B:511:0x0ecf, B:513:0x0ee4, B:515:0x0eed, B:516:0x0ef9, B:518:0x0f06, B:520:0x0f0d, B:525:0x0f1f, B:529:0x0f29, B:531:0x0f41, B:533:0x0f4b, B:535:0x0f59, B:540:0x0f6a, B:542:0x0f77, B:551:0x0f90, B:554:0x0fb3, B:556:0x0fc4, B:557:0x0fcb, B:559:0x0fd6, B:561:0x0fdd, B:566:0x0fec, B:568:0x1000, B:571:0x100c, B:576:0x102e, B:577:0x1036, B:579:0x103e, B:581:0x1042, B:585:0x104e, B:588:0x1058, B:590:0x1061, B:592:0x1076, B:593:0x1081, B:594:0x1087, B:596:0x1093, B:598:0x109e, B:601:0x10a8, B:602:0x10b4, B:604:0x10b6, B:606:0x10c9, B:608:0x10d4, B:610:0x10da, B:613:0x10e6, B:616:0x10f2, B:618:0x10f9, B:622:0x1105, B:625:0x1118, B:630:0x1124, B:631:0x1130, B:634:0x113d, B:636:0x114b, B:638:0x11a6, B:639:0x11b0, B:640:0x11bd, B:645:0x11cd, B:646:0x11dc, B:651:0x120a), top: B:701:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:625:0x1118 A[Catch: RuntimeException -> 0x1228, IOException -> 0x126a, zzpd -> 0x1276, zzdj -> 0x1282, zzbj -> 0x128f, zznc -> 0x12bb, zzgg -> 0x12c8, TRY_ENTER, TryCatch #6 {zzbj -> 0x128f, zzdj -> 0x1282, zzgg -> 0x12c8, zznc -> 0x12bb, zzpd -> 0x1276, IOException -> 0x126a, RuntimeException -> 0x1228, blocks: (B:2:0x0000, B:6:0x0082, B:7:0x008a, B:12:0x009b, B:14:0x00a4, B:20:0x00c6, B:21:0x00d4, B:22:0x00e1, B:27:0x00f1, B:29:0x0102, B:31:0x0113, B:32:0x0120, B:33:0x012f, B:34:0x014f, B:35:0x017d, B:36:0x01a9, B:39:0x01ce, B:41:0x01d4, B:42:0x01ea, B:44:0x0202, B:46:0x0230, B:47:0x0246, B:48:0x0255, B:50:0x026e, B:51:0x0280, B:52:0x02a7, B:54:0x02ba, B:59:0x02d0, B:60:0x02de, B:61:0x02f2, B:66:0x0302, B:68:0x0314, B:70:0x031f, B:75:0x0330, B:77:0x0338, B:79:0x0346, B:80:0x034d, B:84:0x0359, B:93:0x036d, B:95:0x036f, B:100:0x037e, B:102:0x0397, B:104:0x039d, B:105:0x03a4, B:107:0x03c0, B:109:0x03c6, B:110:0x03cd, B:114:0x03f0, B:116:0x03f7, B:118:0x0411, B:122:0x0426, B:124:0x0431, B:126:0x043d, B:132:0x0457, B:135:0x0463, B:137:0x049b, B:142:0x04ae, B:144:0x04ca, B:146:0x04e0, B:148:0x04e6, B:150:0x04ec, B:154:0x04fd, B:156:0x050a, B:158:0x0517, B:160:0x0523, B:163:0x0533, B:164:0x053e, B:165:0x0544, B:166:0x054d, B:168:0x055d, B:170:0x0579, B:172:0x0588, B:173:0x059e, B:175:0x05b1, B:176:0x05c3, B:178:0x05d6, B:180:0x060f, B:182:0x064a, B:183:0x0650, B:184:0x066f, B:193:0x0681, B:195:0x0683, B:196:0x068b, B:197:0x0699, B:198:0x06b8, B:200:0x06ed, B:203:0x0729, B:208:0x0754, B:210:0x076d, B:212:0x0792, B:215:0x07a6, B:252:0x0873, B:254:0x0881, B:269:0x08e0, B:273:0x08fc, B:274:0x090f, B:275:0x0910, B:275:0x0910, B:278:0x0919, B:280:0x0926, B:284:0x0937, B:286:0x094c, B:288:0x0960, B:290:0x099e, B:292:0x09a8, B:294:0x09ad, B:296:0x09b3, B:297:0x09c2, B:299:0x09c7, B:301:0x09d5, B:303:0x09dc, B:306:0x09e6, B:310:0x09f9, B:314:0x0a0a, B:318:0x0a24, B:320:0x0a2e, B:322:0x0a47, B:324:0x0a51, B:327:0x0a61, B:329:0x0a7d, B:331:0x0a8e, B:336:0x0aa6, B:338:0x0ab0, B:339:0x0ab7, B:343:0x0ac4, B:345:0x0ad8, B:347:0x0ae6, B:349:0x0b08, B:352:0x0b13, B:353:0x0b20, B:354:0x0b26, B:356:0x0b30, B:360:0x0b39, B:364:0x0b4a, B:366:0x0b57, B:368:0x0b63, B:370:0x0b6d, B:375:0x0b88, B:377:0x0b9e, B:378:0x0ba5, B:379:0x0bab, B:381:0x0bb7, B:383:0x0bc2, B:386:0x0bcc, B:388:0x0bdf, B:392:0x0bf4, B:394:0x0bfc, B:400:0x0c24, B:402:0x0c2e, B:404:0x0c54, B:406:0x0c5e, B:412:0x0c7d, B:415:0x0c87, B:419:0x0c92, B:421:0x0c99, B:424:0x0ca9, B:428:0x0cba, B:432:0x0cca, B:436:0x0cd5, B:438:0x0cda, B:440:0x0d46, B:445:0x0d5b, B:447:0x0d69, B:448:0x0d75, B:450:0x0d87, B:452:0x0dab, B:456:0x0dc3, B:460:0x0dd5, B:462:0x0deb, B:467:0x0dfe, B:470:0x0e16, B:479:0x0e34, B:481:0x0e3e, B:494:0x0e70, B:497:0x0e8b, B:499:0x0e9b, B:501:0x0eaa, B:506:0x0ebb, B:509:0x0ec9, B:511:0x0ecf, B:513:0x0ee4, B:515:0x0eed, B:516:0x0ef9, B:518:0x0f06, B:520:0x0f0d, B:525:0x0f1f, B:529:0x0f29, B:531:0x0f41, B:533:0x0f4b, B:535:0x0f59, B:540:0x0f6a, B:542:0x0f77, B:551:0x0f90, B:554:0x0fb3, B:556:0x0fc4, B:557:0x0fcb, B:559:0x0fd6, B:561:0x0fdd, B:566:0x0fec, B:568:0x1000, B:571:0x100c, B:576:0x102e, B:577:0x1036, B:579:0x103e, B:581:0x1042, B:585:0x104e, B:588:0x1058, B:590:0x1061, B:592:0x1076, B:593:0x1081, B:594:0x1087, B:596:0x1093, B:598:0x109e, B:601:0x10a8, B:602:0x10b4, B:604:0x10b6, B:606:0x10c9, B:608:0x10d4, B:610:0x10da, B:613:0x10e6, B:616:0x10f2, B:618:0x10f9, B:622:0x1105, B:625:0x1118, B:630:0x1124, B:631:0x1130, B:634:0x113d, B:636:0x114b, B:638:0x11a6, B:639:0x11b0, B:640:0x11bd, B:645:0x11cd, B:646:0x11dc, B:651:0x120a), top: B:701:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:636:0x114b A[Catch: RuntimeException -> 0x1228, IOException -> 0x126a, zzpd -> 0x1276, zzdj -> 0x1282, zzbj -> 0x128f, zznc -> 0x12bb, zzgg -> 0x12c8, TryCatch #6 {zzbj -> 0x128f, zzdj -> 0x1282, zzgg -> 0x12c8, zznc -> 0x12bb, zzpd -> 0x1276, IOException -> 0x126a, RuntimeException -> 0x1228, blocks: (B:2:0x0000, B:6:0x0082, B:7:0x008a, B:12:0x009b, B:14:0x00a4, B:20:0x00c6, B:21:0x00d4, B:22:0x00e1, B:27:0x00f1, B:29:0x0102, B:31:0x0113, B:32:0x0120, B:33:0x012f, B:34:0x014f, B:35:0x017d, B:36:0x01a9, B:39:0x01ce, B:41:0x01d4, B:42:0x01ea, B:44:0x0202, B:46:0x0230, B:47:0x0246, B:48:0x0255, B:50:0x026e, B:51:0x0280, B:52:0x02a7, B:54:0x02ba, B:59:0x02d0, B:60:0x02de, B:61:0x02f2, B:66:0x0302, B:68:0x0314, B:70:0x031f, B:75:0x0330, B:77:0x0338, B:79:0x0346, B:80:0x034d, B:84:0x0359, B:93:0x036d, B:95:0x036f, B:100:0x037e, B:102:0x0397, B:104:0x039d, B:105:0x03a4, B:107:0x03c0, B:109:0x03c6, B:110:0x03cd, B:114:0x03f0, B:116:0x03f7, B:118:0x0411, B:122:0x0426, B:124:0x0431, B:126:0x043d, B:132:0x0457, B:135:0x0463, B:137:0x049b, B:142:0x04ae, B:144:0x04ca, B:146:0x04e0, B:148:0x04e6, B:150:0x04ec, B:154:0x04fd, B:156:0x050a, B:158:0x0517, B:160:0x0523, B:163:0x0533, B:164:0x053e, B:165:0x0544, B:166:0x054d, B:168:0x055d, B:170:0x0579, B:172:0x0588, B:173:0x059e, B:175:0x05b1, B:176:0x05c3, B:178:0x05d6, B:180:0x060f, B:182:0x064a, B:183:0x0650, B:184:0x066f, B:193:0x0681, B:195:0x0683, B:196:0x068b, B:197:0x0699, B:198:0x06b8, B:200:0x06ed, B:203:0x0729, B:208:0x0754, B:210:0x076d, B:212:0x0792, B:215:0x07a6, B:252:0x0873, B:254:0x0881, B:269:0x08e0, B:273:0x08fc, B:274:0x090f, B:275:0x0910, B:275:0x0910, B:278:0x0919, B:280:0x0926, B:284:0x0937, B:286:0x094c, B:288:0x0960, B:290:0x099e, B:292:0x09a8, B:294:0x09ad, B:296:0x09b3, B:297:0x09c2, B:299:0x09c7, B:301:0x09d5, B:303:0x09dc, B:306:0x09e6, B:310:0x09f9, B:314:0x0a0a, B:318:0x0a24, B:320:0x0a2e, B:322:0x0a47, B:324:0x0a51, B:327:0x0a61, B:329:0x0a7d, B:331:0x0a8e, B:336:0x0aa6, B:338:0x0ab0, B:339:0x0ab7, B:343:0x0ac4, B:345:0x0ad8, B:347:0x0ae6, B:349:0x0b08, B:352:0x0b13, B:353:0x0b20, B:354:0x0b26, B:356:0x0b30, B:360:0x0b39, B:364:0x0b4a, B:366:0x0b57, B:368:0x0b63, B:370:0x0b6d, B:375:0x0b88, B:377:0x0b9e, B:378:0x0ba5, B:379:0x0bab, B:381:0x0bb7, B:383:0x0bc2, B:386:0x0bcc, B:388:0x0bdf, B:392:0x0bf4, B:394:0x0bfc, B:400:0x0c24, B:402:0x0c2e, B:404:0x0c54, B:406:0x0c5e, B:412:0x0c7d, B:415:0x0c87, B:419:0x0c92, B:421:0x0c99, B:424:0x0ca9, B:428:0x0cba, B:432:0x0cca, B:436:0x0cd5, B:438:0x0cda, B:440:0x0d46, B:445:0x0d5b, B:447:0x0d69, B:448:0x0d75, B:450:0x0d87, B:452:0x0dab, B:456:0x0dc3, B:460:0x0dd5, B:462:0x0deb, B:467:0x0dfe, B:470:0x0e16, B:479:0x0e34, B:481:0x0e3e, B:494:0x0e70, B:497:0x0e8b, B:499:0x0e9b, B:501:0x0eaa, B:506:0x0ebb, B:509:0x0ec9, B:511:0x0ecf, B:513:0x0ee4, B:515:0x0eed, B:516:0x0ef9, B:518:0x0f06, B:520:0x0f0d, B:525:0x0f1f, B:529:0x0f29, B:531:0x0f41, B:533:0x0f4b, B:535:0x0f59, B:540:0x0f6a, B:542:0x0f77, B:551:0x0f90, B:554:0x0fb3, B:556:0x0fc4, B:557:0x0fcb, B:559:0x0fd6, B:561:0x0fdd, B:566:0x0fec, B:568:0x1000, B:571:0x100c, B:576:0x102e, B:577:0x1036, B:579:0x103e, B:581:0x1042, B:585:0x104e, B:588:0x1058, B:590:0x1061, B:592:0x1076, B:593:0x1081, B:594:0x1087, B:596:0x1093, B:598:0x109e, B:601:0x10a8, B:602:0x10b4, B:604:0x10b6, B:606:0x10c9, B:608:0x10d4, B:610:0x10da, B:613:0x10e6, B:616:0x10f2, B:618:0x10f9, B:622:0x1105, B:625:0x1118, B:630:0x1124, B:631:0x1130, B:634:0x113d, B:636:0x114b, B:638:0x11a6, B:639:0x11b0, B:640:0x11bd, B:645:0x11cd, B:646:0x11dc, B:651:0x120a), top: B:701:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:750:0x0e7e A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v234, types: [long] */
    /* JADX WARN: Type inference failed for: r0v452, types: [long] */
    /* JADX WARN: Type inference failed for: r0v583, types: [long] */
    /* JADX WARN: Type inference failed for: r0v625, types: [long] */
    /* JADX WARN: Type inference failed for: r0v637, types: [long] */
    /* JADX WARN: Type inference failed for: r0v676, types: [long] */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* JADX WARN: Type inference failed for: r1v35, types: [com.google.android.gms.internal.ads.zzdx, com.google.android.gms.internal.ads.zzte] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r27) {
        /*
            Method dump skipped, instructions count: 4957
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhp.handleMessage(android.os.Message):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zza(zzbn zzbnVar) {
        this.zzh.zzb(16, zzbnVar).zza();
    }

    public final Looper zzb() {
        return this.zzj;
    }

    public final /* synthetic */ Boolean zzd() {
        return Boolean.valueOf(this.zzv);
    }

    @Override // com.google.android.gms.internal.ads.zzro
    public final /* bridge */ /* synthetic */ void zzg(zzpy zzpyVar) {
        this.zzh.zzb(9, zzpyVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzid
    public final void zzh() {
        this.zzh.zzh(22);
    }

    @Override // com.google.android.gms.internal.ads.zzpx
    public final void zzi(zzpy zzpyVar) {
        this.zzh.zzb(8, zzpyVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    public final void zzj() {
        this.zzh.zzh(10);
    }

    public final void zzk() {
        this.zzh.zza(0).zza();
    }

    public final void zzl(zzcd zzcdVar, int i, long j) {
        this.zzh.zzb(3, new zzho(zzcdVar, i, j)).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzig
    public final void zzm(zzii zziiVar) {
        synchronized (this) {
            if (!this.zzv && this.zzi.isAlive()) {
                this.zzh.zzb(14, zziiVar).zza();
                return;
            }
            Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            zziiVar.zzh(false);
        }
    }

    public final void zzn(boolean z, int i) {
        this.zzh.zzc(1, z ? 1 : 0, i).zza();
    }

    public final void zzo() {
        this.zzh.zza(6).zza();
    }

    public final boolean zzp() {
        synchronized (this) {
            if (!this.zzv && this.zzi.isAlive()) {
                this.zzh.zzh(7);
                zzZ(new zzhg(this), 500L);
                return this.zzv;
            }
            return true;
        }
    }

    public final void zzq(List<zzic> list, int i, long j, zzrq zzrqVar) {
        this.zzh.zzb(17, new zzhk(list, zzrqVar, i, j, null, null)).zza();
    }
}
