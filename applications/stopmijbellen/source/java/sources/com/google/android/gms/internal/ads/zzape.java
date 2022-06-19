package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzape.class */
public final class zzape implements Handler.Callback, zzaul, zzavq, zzaun {
    private zzapc zzA;
    private long zzB;
    private zzapa zzC;
    private zzapa zzD;
    private zzapa zzE;
    private zzapr zzF;
    private boolean zzG;
    private volatile int zzH;
    private volatile int zzI;
    private final zzcmd zzJ;
    private final zzapl[] zza;
    private final zzavr zzc;
    private final zzawx zzd;
    private final Handler zze;
    private final HandlerThread zzf;
    private final Handler zzg;
    private final zzaow zzh;
    private final zzapq zzi;
    private final zzapp zzj;
    private zzapb zzk;
    private zzapk zzl;
    private zzapl zzm;
    private zzawq zzn;
    private zzauo zzo;
    private zzapl[] zzp;
    private boolean zzq;
    private boolean zzr;
    private boolean zzs;
    private boolean zzt;
    private int zzw;
    private int zzx;
    private long zzy;
    private int zzz;
    private int zzv = 0;
    private int zzu = 1;
    private final zzapm[] zzb = new zzapm[2];

    public zzape(zzapl[] zzaplVarArr, zzavr zzavrVar, zzcmd zzcmdVar, boolean z, int i, Handler handler, zzapb zzapbVar, zzaow zzaowVar, byte[] bArr) {
        this.zza = zzaplVarArr;
        this.zzc = zzavrVar;
        this.zzJ = zzcmdVar;
        this.zzr = z;
        this.zzg = handler;
        this.zzk = zzapbVar;
        this.zzh = zzaowVar;
        for (int i2 = 0; i2 < 2; i2++) {
            zzaplVarArr[i2].zzw(i2);
            this.zzb[i2] = zzaplVarArr[i2].zzf();
        }
        this.zzd = new zzawx();
        this.zzp = new zzapl[0];
        this.zzi = new zzapq();
        this.zzj = new zzapp();
        zzavrVar.zzf(this);
        this.zzl = zzapk.zza;
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.zzf = handlerThread;
        handlerThread.start();
        this.zze = new Handler(handlerThread.getLooper(), this);
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    private final void zzA(long j) throws zzaos {
        zzapa zzapaVar = this.zzE;
        char c = zzapaVar == null ? j + 60000000 : j + (zzapaVar.zzf - zzapaVar.zzh);
        this.zzB = c;
        this.zzd.zza(c);
        for (zzapl zzaplVar : this.zzp) {
            zzaplVar.zzu(this.zzB);
        }
    }

    private final void zzB(long j, long j2) {
        this.zze.removeMessages(2);
        long elapsedRealtime = (j + j2) - SystemClock.elapsedRealtime();
        if (elapsedRealtime <= 0) {
            this.zze.sendEmptyMessage(2);
        } else {
            this.zze.sendEmptyMessageDelayed(2, elapsedRealtime);
        }
    }

    private final void zzC(boolean z) {
        if (this.zzt != z) {
            this.zzt = z;
            this.zzg.obtainMessage(2, z ? 1 : 0, 0).sendToTarget();
        }
    }

    private final void zzD(zzapa zzapaVar) throws zzaos {
        if (this.zzE == zzapaVar) {
            return;
        }
        boolean[] zArr = new boolean[2];
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= 2) {
                this.zzE = zzapaVar;
                this.zzg.obtainMessage(3, zzapaVar.zzm).sendToTarget();
                zzu(zArr, i3);
                return;
            }
            zzapl zzaplVar = this.zza[i];
            zArr[i] = zzaplVar.zzb() != 0;
            zzavh zza = zzapaVar.zzm.zzb.zza(i);
            int i4 = i3;
            if (zza != null) {
                i4 = i3 + 1;
            }
            if (zArr[i] && (zza == null || (zzaplVar.zzB() && zzaplVar.zzh() == this.zzE.zzd[i]))) {
                if (zzaplVar == this.zzm) {
                    this.zzd.zzd(this.zzn);
                    this.zzn = null;
                    this.zzm = null;
                }
                zzL(zzaplVar);
                zzaplVar.zzj();
            }
            i++;
            i2 = i4;
        }
    }

    private final void zzE(int i) {
        if (this.zzu != i) {
            this.zzu = i;
            this.zzg.obtainMessage(1, i, 0).sendToTarget();
        }
    }

    private final void zzF() throws zzaos {
        this.zzs = false;
        this.zzd.zzb();
        for (zzapl zzaplVar : this.zzp) {
            zzaplVar.zzy();
        }
    }

    private final void zzG() {
        zzz(true);
        this.zzJ.zzc();
        zzE(1);
    }

    private final void zzH() throws zzaos {
        this.zzd.zzc();
        for (zzapl zzaplVar : this.zzp) {
            zzL(zzaplVar);
        }
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    private final void zzI() throws zzaos {
        zzapa zzapaVar = this.zzE;
        if (zzapaVar == null) {
            return;
        }
        char zzh = zzapaVar.zza.zzh();
        if (zzh != -9223372036854775807L) {
            zzA(zzh);
        } else {
            zzapl zzaplVar = this.zzm;
            if (zzaplVar == null || zzaplVar.zzE()) {
                this.zzB = this.zzd.zzI();
            } else {
                long zzI = this.zzn.zzI();
                this.zzB = zzI;
                this.zzd.zza(zzI);
            }
            zzapa zzapaVar2 = this.zzE;
            zzh = this.zzB - (zzapaVar2.zzf - zzapaVar2.zzh);
        }
        this.zzk.zzc = zzh;
        this.zzy = SystemClock.elapsedRealtime() * 1000;
        char zzg = this.zzp.length == 0 ? (char) 0 : this.zzE.zza.zzg();
        zzapb zzapbVar = this.zzk;
        char c = zzg;
        if (zzg == Long.MIN_VALUE) {
            c = this.zzF.zzd(this.zzE.zzg, this.zzj, false).zzc;
        }
        zzapbVar.zzd = c;
    }

    private final boolean zzJ(int i) {
        this.zzF.zzd(i, this.zzj, false);
        this.zzF.zzg(0, this.zzi, false);
        return this.zzF.zzf(i, this.zzj, this.zzi, this.zzv) == -1;
    }

    private final boolean zzK(long j) {
        boolean z = false;
        if (j != -9223372036854775807L && this.zzk.zzc >= j) {
            zzapa zzapaVar = this.zzE.zzl;
            if (zzapaVar != null) {
                if (!zzapaVar.zzj) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    private static final void zzL(zzapl zzaplVar) throws zzaos {
        if (zzaplVar.zzb() == 2) {
            zzaplVar.zzz();
        }
    }

    private static final void zzM(zzapa zzapaVar) {
        while (zzapaVar != null) {
            zzapaVar.zzc();
            zzapaVar = zzapaVar.zzl;
        }
    }

    private final int zzo(int i, zzapr zzaprVar, zzapr zzaprVar2) {
        int zzb = zzaprVar.zzb();
        int i2 = -1;
        for (int i3 = 0; i3 < zzb && i2 == -1; i3++) {
            i = zzaprVar.zzf(i, this.zzj, this.zzi, this.zzv);
            i2 = zzaprVar2.zza(zzaprVar.zzd(i, this.zzj, true).zzb);
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    private final long zzp(int i, long j) throws zzaos {
        zzapa zzapaVar;
        char c;
        zzH();
        this.zzs = false;
        zzE(2);
        zzapa zzapaVar2 = this.zzE;
        if (zzapaVar2 != null) {
            zzapa zzapaVar3 = null;
            while (true) {
                zzapaVar = zzapaVar3;
                if (zzapaVar2 == null) {
                    break;
                }
                if (zzapaVar2.zzg != i || !zzapaVar2.zzj) {
                    zzapaVar2.zzc();
                } else {
                    zzapaVar3 = zzapaVar2;
                }
                zzapaVar2 = zzapaVar2.zzl;
            }
        } else {
            zzapa zzapaVar4 = this.zzC;
            if (zzapaVar4 != null) {
                zzapaVar4.zzc();
            }
            zzapaVar = null;
        }
        zzapa zzapaVar5 = this.zzE;
        if (zzapaVar5 != zzapaVar || zzapaVar5 != this.zzD) {
            for (zzapl zzaplVar : this.zzp) {
                zzaplVar.zzj();
            }
            this.zzp = new zzapl[0];
            this.zzn = null;
            this.zzm = null;
            this.zzE = null;
        }
        if (zzapaVar != null) {
            zzapaVar.zzl = null;
            this.zzC = zzapaVar;
            this.zzD = zzapaVar;
            zzD(zzapaVar);
            zzapa zzapaVar6 = this.zzE;
            char c2 = j;
            if (zzapaVar6.zzk) {
                c2 = zzapaVar6.zza.zzi(j);
            }
            zzA(c2);
            zzw();
            c = c2;
        } else {
            this.zzC = null;
            this.zzD = null;
            this.zzE = null;
            zzA(j);
            c = j;
        }
        this.zze.sendEmptyMessage(2);
        return c;
    }

    private final Pair<Integer, Long> zzq(int i, long j) {
        return zzr(this.zzF, 0, -9223372036854775807L);
    }

    private final Pair<Integer, Long> zzr(zzapr zzaprVar, int i, long j) {
        return zzs(zzaprVar, 0, j, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Pair<Integer, Long> zzs(zzapr zzaprVar, int i, long j, long j2) {
        zzawm.zza(0, 0, zzaprVar.zzc());
        zzaprVar.zze(0, this.zzi, false, j2);
        char c = j;
        if (j == -9223372036854775807L) {
            c = 0;
        }
        if (zzaprVar.zzd(0, this.zzj, false).zzc != -9223372036854775807L) {
        }
        return Pair.create(0, Long.valueOf(c));
    }

    private final Pair<Integer, Long> zzt(zzapc zzapcVar) {
        zzapr zzaprVar = zzapcVar.zza;
        zzapr zzaprVar2 = zzaprVar;
        if (zzaprVar.zzh()) {
            zzaprVar2 = this.zzF;
        }
        try {
            Pair<Integer, Long> zzr = zzr(zzaprVar2, 0, zzapcVar.zzc);
            zzapr zzaprVar3 = this.zzF;
            if (zzaprVar3 == zzaprVar2) {
                return zzr;
            }
            if (zzaprVar3.zza(zzaprVar2.zzd(((Integer) zzr.first).intValue(), this.zzj, true).zzb) != -1) {
                return Pair.create(0, (Long) zzr.second);
            }
            if (zzo(((Integer) zzr.first).intValue(), zzaprVar2, this.zzF) == -1) {
                return null;
            }
            this.zzF.zzd(0, this.zzj, false);
            return zzq(0, -9223372036854775807L);
        } catch (IndexOutOfBoundsException e) {
            throw new zzapi(this.zzF, 0, zzapcVar.zzc);
        }
    }

    private final void zzu(boolean[] zArr, int i) throws zzaos {
        this.zzp = new zzapl[i];
        int i2 = 0;
        for (int i3 = 0; i3 < 2; i3++) {
            zzapl zzaplVar = this.zza[i3];
            zzavh zza = this.zzE.zzm.zzb.zza(i3);
            if (zza != null) {
                this.zzp[i2] = zzaplVar;
                if (zzaplVar.zzb() == 0) {
                    zzapn zzapnVar = this.zzE.zzm.zzd[i3];
                    boolean z = this.zzr && this.zzu == 3;
                    boolean z2 = !zArr[i3] && z;
                    zza.zzb();
                    zzapg[] zzapgVarArr = new zzapg[1];
                    for (int i4 = 0; i4 <= 0; i4++) {
                        zzapgVarArr[i4] = zza.zzc(i4);
                    }
                    zzapa zzapaVar = this.zzE;
                    zzaplVar.zzk(zzapnVar, zzapgVarArr, zzapaVar.zzd[i3], this.zzB, z2, zzapaVar.zzf - zzapaVar.zzh);
                    zzawq zzi = zzaplVar.zzi();
                    if (zzi != null) {
                        if (this.zzn != null) {
                            throw zzaos.zzc(new IllegalStateException("Multiple renderer media clocks enabled."));
                        }
                        this.zzn = zzi;
                        this.zzm = zzaplVar;
                        zzi.zzK(this.zzl);
                    }
                    if (z) {
                        zzaplVar.zzy();
                    }
                }
                i2++;
            }
        }
    }

    private final void zzv(Object obj, int i) {
        this.zzk = new zzapb(0, 0L);
        zzy(obj, i);
        this.zzk = new zzapb(0, -9223372036854775807L);
        zzE(4);
        zzz(false);
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    private final void zzw() {
        zzapa zzapaVar = this.zzC;
        char zza = !zzapaVar.zzj ? (char) 0 : zzapaVar.zza.zza();
        if (zza == Long.MIN_VALUE) {
            zzC(false);
            return;
        }
        zzapa zzapaVar2 = this.zzC;
        long j = this.zzB - (zzapaVar2.zzf - zzapaVar2.zzh);
        boolean zzj = this.zzJ.zzj(zza - j);
        zzC(zzj);
        if (!zzj) {
            return;
        }
        this.zzC.zza.zzbr(j);
    }

    private final void zzx() throws IOException {
        zzapa zzapaVar = this.zzC;
        if (zzapaVar == null || zzapaVar.zzj) {
            return;
        }
        zzapa zzapaVar2 = this.zzD;
        if (zzapaVar2 != null && zzapaVar2.zzl != zzapaVar) {
            return;
        }
        for (zzapl zzaplVar : this.zzp) {
            if (!zzaplVar.zzA()) {
                return;
            }
        }
        this.zzC.zza.zzs();
    }

    private final void zzy(Object obj, int i) {
        this.zzg.obtainMessage(6, new zzapd(this.zzF, obj, this.zzk, i)).sendToTarget();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x009f -> B:7:0x0048). Please submit an issue!!! */
    private final void zzz(boolean z) {
        zzapl[] zzaplVarArr;
        this.zze.removeMessages(2);
        this.zzs = false;
        this.zzd.zzc();
        this.zzn = null;
        this.zzm = null;
        this.zzB = 60000000L;
        for (zzapl zzaplVar : this.zzp) {
            try {
                zzL(zzaplVar);
                zzaplVar.zzj();
            } catch (zzaos | RuntimeException e) {
            }
        }
        this.zzp = new zzapl[0];
        zzapa zzapaVar = this.zzE;
        zzapa zzapaVar2 = zzapaVar;
        if (zzapaVar == null) {
            zzapaVar2 = this.zzC;
        }
        zzM(zzapaVar2);
        this.zzC = null;
        this.zzD = null;
        this.zzE = null;
        zzC(false);
        if (z) {
            zzauo zzauoVar = this.zzo;
            if (zzauoVar != null) {
                zzauoVar.zzd();
                this.zzo = null;
            }
            this.zzF = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:251:0x06eb, code lost:
        if (r24 != false) goto L253;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x06ee, code lost:
        r0 = r16.zzE.zzg;
        r16.zzk = new com.google.android.gms.internal.ads.zzapb(r0, zzp(r0, r16.zzk.zzc));
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x0718, code lost:
        r16.zzC = r23;
        r23.zzl = null;
        zzM(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:506:0x0ee6, code lost:
        if (r27 != false) goto L509;
     */
    /* JADX WARN: Code restructure failed: missing block: B:508:0x0ef1, code lost:
        if (zzK(r0) != false) goto L509;
     */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0529 A[Catch: IOException -> 0x1080, zzaos -> 0x1084, RuntimeException -> 0x1088, TRY_ENTER, TryCatch #2 {RuntimeException -> 0x1088, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c8, B:85:0x01df, B:88:0x01e2, B:93:0x01f4, B:98:0x01f9, B:100:0x01fb, B:105:0x020a, B:108:0x0214, B:112:0x0220, B:117:0x023c, B:119:0x027e, B:121:0x028c, B:125:0x029b, B:131:0x02be, B:137:0x02dc, B:139:0x02e8, B:143:0x02f6, B:145:0x0302, B:147:0x030d, B:150:0x0322, B:151:0x032d, B:153:0x0336, B:154:0x034f, B:157:0x035d, B:158:0x0369, B:160:0x037a, B:162:0x039a, B:163:0x03ad, B:169:0x03c2, B:171:0x03cc, B:173:0x03df, B:175:0x03e8, B:177:0x03ee, B:179:0x0401, B:182:0x040d, B:184:0x0430, B:186:0x044b, B:188:0x0450, B:190:0x0479, B:192:0x0480, B:194:0x049c, B:195:0x04a6, B:196:0x04cd, B:198:0x04db, B:200:0x04e2, B:201:0x04ec, B:204:0x051b, B:207:0x0529, B:210:0x0532, B:211:0x053c, B:214:0x054f, B:216:0x0561, B:217:0x056b, B:219:0x05ba, B:221:0x05c2, B:225:0x05d9, B:226:0x05e2, B:227:0x0604, B:232:0x0627, B:234:0x0638, B:236:0x0640, B:238:0x0675, B:240:0x067f, B:243:0x069c, B:245:0x06b7, B:252:0x06ee, B:253:0x0718, B:255:0x0729, B:257:0x0731, B:258:0x0743, B:267:0x0755, B:269:0x0757, B:271:0x075c, B:273:0x076f, B:274:0x077b, B:276:0x0785, B:278:0x0798, B:280:0x07a8, B:281:0x07bb, B:283:0x07c6, B:284:0x0801, B:289:0x0816, B:296:0x0854, B:298:0x0872, B:304:0x088f, B:307:0x08b6, B:308:0x08d7, B:309:0x08d8, B:309:0x08d8, B:310:0x08db, B:312:0x08e4, B:313:0x08f0, B:315:0x08f9, B:316:0x0905, B:318:0x0912, B:320:0x0919, B:322:0x0931, B:324:0x093a, B:327:0x094c, B:329:0x0964, B:331:0x096e, B:332:0x097a, B:334:0x0981, B:336:0x098c, B:338:0x09b1, B:340:0x09fb, B:342:0x0a13, B:345:0x0a25, B:346:0x0a47, B:349:0x0a55, B:351:0x0a5d, B:353:0x0aaa, B:355:0x0ab1, B:356:0x0ac8, B:358:0x0ad1, B:361:0x0adb, B:363:0x0ae2, B:365:0x0ae9, B:366:0x0af0, B:368:0x0af6, B:371:0x0afd, B:374:0x0b0d, B:376:0x0b1d, B:377:0x0b60, B:383:0x0b70, B:385:0x0b89, B:387:0x0b94, B:389:0x0b9d, B:390:0x0ba3, B:394:0x0bb2, B:398:0x0bd5, B:400:0x0bdf, B:401:0x0be5, B:403:0x0bf5, B:405:0x0bfd, B:409:0x0c23, B:414:0x0c44, B:415:0x0c4e, B:417:0x0c58, B:419:0x0c7b, B:421:0x0c85, B:425:0x0c97, B:426:0x0ca7, B:427:0x0ccc, B:428:0x0cd3, B:429:0x0cd9, B:431:0x0ce0, B:433:0x0cf0, B:438:0x0d29, B:440:0x0d3d, B:445:0x0d50, B:447:0x0d5a, B:454:0x0d75, B:464:0x0d9a, B:466:0x0d9f, B:468:0x0da7, B:470:0x0db9, B:472:0x0dd7, B:476:0x0dfa, B:479:0x0e07, B:481:0x0e10, B:482:0x0e1c, B:485:0x0e28, B:489:0x0e35, B:491:0x0e47, B:492:0x0e4f, B:496:0x0e64, B:499:0x0e73, B:501:0x0e89, B:503:0x0e8f, B:504:0x0ebe, B:507:0x0eec, B:510:0x0ef5, B:512:0x0f00, B:515:0x0f0d, B:518:0x0f18, B:521:0x0f24, B:523:0x0f36, B:525:0x0f3d, B:529:0x0f4e, B:530:0x0f5d, B:532:0x0f64, B:535:0x0f6d, B:538:0x0f75, B:540:0x0f7b, B:542:0x0f88, B:543:0x0f92, B:545:0x0f9a, B:547:0x0fa1, B:549:0x0fae, B:550:0x0fb8, B:551:0x0fc0, B:551:0x0fc0, B:554:0x0fc8, B:559:0x0fd8, B:561:0x0fe8, B:563:0x0ff3, B:566:0x0fff, B:569:0x1015, B:571:0x1023, B:573:0x104c, B:575:0x105e), top: B:592:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0532 A[Catch: IOException -> 0x1080, zzaos -> 0x1084, RuntimeException -> 0x1088, TRY_ENTER, TRY_LEAVE, TryCatch #2 {RuntimeException -> 0x1088, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c8, B:85:0x01df, B:88:0x01e2, B:93:0x01f4, B:98:0x01f9, B:100:0x01fb, B:105:0x020a, B:108:0x0214, B:112:0x0220, B:117:0x023c, B:119:0x027e, B:121:0x028c, B:125:0x029b, B:131:0x02be, B:137:0x02dc, B:139:0x02e8, B:143:0x02f6, B:145:0x0302, B:147:0x030d, B:150:0x0322, B:151:0x032d, B:153:0x0336, B:154:0x034f, B:157:0x035d, B:158:0x0369, B:160:0x037a, B:162:0x039a, B:163:0x03ad, B:169:0x03c2, B:171:0x03cc, B:173:0x03df, B:175:0x03e8, B:177:0x03ee, B:179:0x0401, B:182:0x040d, B:184:0x0430, B:186:0x044b, B:188:0x0450, B:190:0x0479, B:192:0x0480, B:194:0x049c, B:195:0x04a6, B:196:0x04cd, B:198:0x04db, B:200:0x04e2, B:201:0x04ec, B:204:0x051b, B:207:0x0529, B:210:0x0532, B:211:0x053c, B:214:0x054f, B:216:0x0561, B:217:0x056b, B:219:0x05ba, B:221:0x05c2, B:225:0x05d9, B:226:0x05e2, B:227:0x0604, B:232:0x0627, B:234:0x0638, B:236:0x0640, B:238:0x0675, B:240:0x067f, B:243:0x069c, B:245:0x06b7, B:252:0x06ee, B:253:0x0718, B:255:0x0729, B:257:0x0731, B:258:0x0743, B:267:0x0755, B:269:0x0757, B:271:0x075c, B:273:0x076f, B:274:0x077b, B:276:0x0785, B:278:0x0798, B:280:0x07a8, B:281:0x07bb, B:283:0x07c6, B:284:0x0801, B:289:0x0816, B:296:0x0854, B:298:0x0872, B:304:0x088f, B:307:0x08b6, B:308:0x08d7, B:309:0x08d8, B:309:0x08d8, B:310:0x08db, B:312:0x08e4, B:313:0x08f0, B:315:0x08f9, B:316:0x0905, B:318:0x0912, B:320:0x0919, B:322:0x0931, B:324:0x093a, B:327:0x094c, B:329:0x0964, B:331:0x096e, B:332:0x097a, B:334:0x0981, B:336:0x098c, B:338:0x09b1, B:340:0x09fb, B:342:0x0a13, B:345:0x0a25, B:346:0x0a47, B:349:0x0a55, B:351:0x0a5d, B:353:0x0aaa, B:355:0x0ab1, B:356:0x0ac8, B:358:0x0ad1, B:361:0x0adb, B:363:0x0ae2, B:365:0x0ae9, B:366:0x0af0, B:368:0x0af6, B:371:0x0afd, B:374:0x0b0d, B:376:0x0b1d, B:377:0x0b60, B:383:0x0b70, B:385:0x0b89, B:387:0x0b94, B:389:0x0b9d, B:390:0x0ba3, B:394:0x0bb2, B:398:0x0bd5, B:400:0x0bdf, B:401:0x0be5, B:403:0x0bf5, B:405:0x0bfd, B:409:0x0c23, B:414:0x0c44, B:415:0x0c4e, B:417:0x0c58, B:419:0x0c7b, B:421:0x0c85, B:425:0x0c97, B:426:0x0ca7, B:427:0x0ccc, B:428:0x0cd3, B:429:0x0cd9, B:431:0x0ce0, B:433:0x0cf0, B:438:0x0d29, B:440:0x0d3d, B:445:0x0d50, B:447:0x0d5a, B:454:0x0d75, B:464:0x0d9a, B:466:0x0d9f, B:468:0x0da7, B:470:0x0db9, B:472:0x0dd7, B:476:0x0dfa, B:479:0x0e07, B:481:0x0e10, B:482:0x0e1c, B:485:0x0e28, B:489:0x0e35, B:491:0x0e47, B:492:0x0e4f, B:496:0x0e64, B:499:0x0e73, B:501:0x0e89, B:503:0x0e8f, B:504:0x0ebe, B:507:0x0eec, B:510:0x0ef5, B:512:0x0f00, B:515:0x0f0d, B:518:0x0f18, B:521:0x0f24, B:523:0x0f36, B:525:0x0f3d, B:529:0x0f4e, B:530:0x0f5d, B:532:0x0f64, B:535:0x0f6d, B:538:0x0f75, B:540:0x0f7b, B:542:0x0f88, B:543:0x0f92, B:545:0x0f9a, B:547:0x0fa1, B:549:0x0fae, B:550:0x0fb8, B:551:0x0fc0, B:551:0x0fc0, B:554:0x0fc8, B:559:0x0fd8, B:561:0x0fe8, B:563:0x0ff3, B:566:0x0fff, B:569:0x1015, B:571:0x1023, B:573:0x104c, B:575:0x105e), top: B:592:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:211:0x053c A[Catch: IOException -> 0x1080, zzaos -> 0x1084, RuntimeException -> 0x1088, TRY_ENTER, TRY_LEAVE, TryCatch #2 {RuntimeException -> 0x1088, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c8, B:85:0x01df, B:88:0x01e2, B:93:0x01f4, B:98:0x01f9, B:100:0x01fb, B:105:0x020a, B:108:0x0214, B:112:0x0220, B:117:0x023c, B:119:0x027e, B:121:0x028c, B:125:0x029b, B:131:0x02be, B:137:0x02dc, B:139:0x02e8, B:143:0x02f6, B:145:0x0302, B:147:0x030d, B:150:0x0322, B:151:0x032d, B:153:0x0336, B:154:0x034f, B:157:0x035d, B:158:0x0369, B:160:0x037a, B:162:0x039a, B:163:0x03ad, B:169:0x03c2, B:171:0x03cc, B:173:0x03df, B:175:0x03e8, B:177:0x03ee, B:179:0x0401, B:182:0x040d, B:184:0x0430, B:186:0x044b, B:188:0x0450, B:190:0x0479, B:192:0x0480, B:194:0x049c, B:195:0x04a6, B:196:0x04cd, B:198:0x04db, B:200:0x04e2, B:201:0x04ec, B:204:0x051b, B:207:0x0529, B:210:0x0532, B:211:0x053c, B:214:0x054f, B:216:0x0561, B:217:0x056b, B:219:0x05ba, B:221:0x05c2, B:225:0x05d9, B:226:0x05e2, B:227:0x0604, B:232:0x0627, B:234:0x0638, B:236:0x0640, B:238:0x0675, B:240:0x067f, B:243:0x069c, B:245:0x06b7, B:252:0x06ee, B:253:0x0718, B:255:0x0729, B:257:0x0731, B:258:0x0743, B:267:0x0755, B:269:0x0757, B:271:0x075c, B:273:0x076f, B:274:0x077b, B:276:0x0785, B:278:0x0798, B:280:0x07a8, B:281:0x07bb, B:283:0x07c6, B:284:0x0801, B:289:0x0816, B:296:0x0854, B:298:0x0872, B:304:0x088f, B:307:0x08b6, B:308:0x08d7, B:309:0x08d8, B:309:0x08d8, B:310:0x08db, B:312:0x08e4, B:313:0x08f0, B:315:0x08f9, B:316:0x0905, B:318:0x0912, B:320:0x0919, B:322:0x0931, B:324:0x093a, B:327:0x094c, B:329:0x0964, B:331:0x096e, B:332:0x097a, B:334:0x0981, B:336:0x098c, B:338:0x09b1, B:340:0x09fb, B:342:0x0a13, B:345:0x0a25, B:346:0x0a47, B:349:0x0a55, B:351:0x0a5d, B:353:0x0aaa, B:355:0x0ab1, B:356:0x0ac8, B:358:0x0ad1, B:361:0x0adb, B:363:0x0ae2, B:365:0x0ae9, B:366:0x0af0, B:368:0x0af6, B:371:0x0afd, B:374:0x0b0d, B:376:0x0b1d, B:377:0x0b60, B:383:0x0b70, B:385:0x0b89, B:387:0x0b94, B:389:0x0b9d, B:390:0x0ba3, B:394:0x0bb2, B:398:0x0bd5, B:400:0x0bdf, B:401:0x0be5, B:403:0x0bf5, B:405:0x0bfd, B:409:0x0c23, B:414:0x0c44, B:415:0x0c4e, B:417:0x0c58, B:419:0x0c7b, B:421:0x0c85, B:425:0x0c97, B:426:0x0ca7, B:427:0x0ccc, B:428:0x0cd3, B:429:0x0cd9, B:431:0x0ce0, B:433:0x0cf0, B:438:0x0d29, B:440:0x0d3d, B:445:0x0d50, B:447:0x0d5a, B:454:0x0d75, B:464:0x0d9a, B:466:0x0d9f, B:468:0x0da7, B:470:0x0db9, B:472:0x0dd7, B:476:0x0dfa, B:479:0x0e07, B:481:0x0e10, B:482:0x0e1c, B:485:0x0e28, B:489:0x0e35, B:491:0x0e47, B:492:0x0e4f, B:496:0x0e64, B:499:0x0e73, B:501:0x0e89, B:503:0x0e8f, B:504:0x0ebe, B:507:0x0eec, B:510:0x0ef5, B:512:0x0f00, B:515:0x0f0d, B:518:0x0f18, B:521:0x0f24, B:523:0x0f36, B:525:0x0f3d, B:529:0x0f4e, B:530:0x0f5d, B:532:0x0f64, B:535:0x0f6d, B:538:0x0f75, B:540:0x0f7b, B:542:0x0f88, B:543:0x0f92, B:545:0x0f9a, B:547:0x0fa1, B:549:0x0fae, B:550:0x0fb8, B:551:0x0fc0, B:551:0x0fc0, B:554:0x0fc8, B:559:0x0fd8, B:561:0x0fe8, B:563:0x0ff3, B:566:0x0fff, B:569:0x1015, B:571:0x1023, B:573:0x104c, B:575:0x105e), top: B:592:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0a1b  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0a25 A[Catch: IOException -> 0x1080, zzaos -> 0x1084, RuntimeException -> 0x1088, TRY_ENTER, TRY_LEAVE, TryCatch #2 {RuntimeException -> 0x1088, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c8, B:85:0x01df, B:88:0x01e2, B:93:0x01f4, B:98:0x01f9, B:100:0x01fb, B:105:0x020a, B:108:0x0214, B:112:0x0220, B:117:0x023c, B:119:0x027e, B:121:0x028c, B:125:0x029b, B:131:0x02be, B:137:0x02dc, B:139:0x02e8, B:143:0x02f6, B:145:0x0302, B:147:0x030d, B:150:0x0322, B:151:0x032d, B:153:0x0336, B:154:0x034f, B:157:0x035d, B:158:0x0369, B:160:0x037a, B:162:0x039a, B:163:0x03ad, B:169:0x03c2, B:171:0x03cc, B:173:0x03df, B:175:0x03e8, B:177:0x03ee, B:179:0x0401, B:182:0x040d, B:184:0x0430, B:186:0x044b, B:188:0x0450, B:190:0x0479, B:192:0x0480, B:194:0x049c, B:195:0x04a6, B:196:0x04cd, B:198:0x04db, B:200:0x04e2, B:201:0x04ec, B:204:0x051b, B:207:0x0529, B:210:0x0532, B:211:0x053c, B:214:0x054f, B:216:0x0561, B:217:0x056b, B:219:0x05ba, B:221:0x05c2, B:225:0x05d9, B:226:0x05e2, B:227:0x0604, B:232:0x0627, B:234:0x0638, B:236:0x0640, B:238:0x0675, B:240:0x067f, B:243:0x069c, B:245:0x06b7, B:252:0x06ee, B:253:0x0718, B:255:0x0729, B:257:0x0731, B:258:0x0743, B:267:0x0755, B:269:0x0757, B:271:0x075c, B:273:0x076f, B:274:0x077b, B:276:0x0785, B:278:0x0798, B:280:0x07a8, B:281:0x07bb, B:283:0x07c6, B:284:0x0801, B:289:0x0816, B:296:0x0854, B:298:0x0872, B:304:0x088f, B:307:0x08b6, B:308:0x08d7, B:309:0x08d8, B:309:0x08d8, B:310:0x08db, B:312:0x08e4, B:313:0x08f0, B:315:0x08f9, B:316:0x0905, B:318:0x0912, B:320:0x0919, B:322:0x0931, B:324:0x093a, B:327:0x094c, B:329:0x0964, B:331:0x096e, B:332:0x097a, B:334:0x0981, B:336:0x098c, B:338:0x09b1, B:340:0x09fb, B:342:0x0a13, B:345:0x0a25, B:346:0x0a47, B:349:0x0a55, B:351:0x0a5d, B:353:0x0aaa, B:355:0x0ab1, B:356:0x0ac8, B:358:0x0ad1, B:361:0x0adb, B:363:0x0ae2, B:365:0x0ae9, B:366:0x0af0, B:368:0x0af6, B:371:0x0afd, B:374:0x0b0d, B:376:0x0b1d, B:377:0x0b60, B:383:0x0b70, B:385:0x0b89, B:387:0x0b94, B:389:0x0b9d, B:390:0x0ba3, B:394:0x0bb2, B:398:0x0bd5, B:400:0x0bdf, B:401:0x0be5, B:403:0x0bf5, B:405:0x0bfd, B:409:0x0c23, B:414:0x0c44, B:415:0x0c4e, B:417:0x0c58, B:419:0x0c7b, B:421:0x0c85, B:425:0x0c97, B:426:0x0ca7, B:427:0x0ccc, B:428:0x0cd3, B:429:0x0cd9, B:431:0x0ce0, B:433:0x0cf0, B:438:0x0d29, B:440:0x0d3d, B:445:0x0d50, B:447:0x0d5a, B:454:0x0d75, B:464:0x0d9a, B:466:0x0d9f, B:468:0x0da7, B:470:0x0db9, B:472:0x0dd7, B:476:0x0dfa, B:479:0x0e07, B:481:0x0e10, B:482:0x0e1c, B:485:0x0e28, B:489:0x0e35, B:491:0x0e47, B:492:0x0e4f, B:496:0x0e64, B:499:0x0e73, B:501:0x0e89, B:503:0x0e8f, B:504:0x0ebe, B:507:0x0eec, B:510:0x0ef5, B:512:0x0f00, B:515:0x0f0d, B:518:0x0f18, B:521:0x0f24, B:523:0x0f36, B:525:0x0f3d, B:529:0x0f4e, B:530:0x0f5d, B:532:0x0f64, B:535:0x0f6d, B:538:0x0f75, B:540:0x0f7b, B:542:0x0f88, B:543:0x0f92, B:545:0x0f9a, B:547:0x0fa1, B:549:0x0fae, B:550:0x0fb8, B:551:0x0fc0, B:551:0x0fc0, B:554:0x0fc8, B:559:0x0fd8, B:561:0x0fe8, B:563:0x0ff3, B:566:0x0fff, B:569:0x1015, B:571:0x1023, B:573:0x104c, B:575:0x105e), top: B:592:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:348:0x0a50  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x0a55 A[Catch: IOException -> 0x1080, zzaos -> 0x1084, RuntimeException -> 0x1088, TRY_ENTER, TryCatch #2 {RuntimeException -> 0x1088, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c8, B:85:0x01df, B:88:0x01e2, B:93:0x01f4, B:98:0x01f9, B:100:0x01fb, B:105:0x020a, B:108:0x0214, B:112:0x0220, B:117:0x023c, B:119:0x027e, B:121:0x028c, B:125:0x029b, B:131:0x02be, B:137:0x02dc, B:139:0x02e8, B:143:0x02f6, B:145:0x0302, B:147:0x030d, B:150:0x0322, B:151:0x032d, B:153:0x0336, B:154:0x034f, B:157:0x035d, B:158:0x0369, B:160:0x037a, B:162:0x039a, B:163:0x03ad, B:169:0x03c2, B:171:0x03cc, B:173:0x03df, B:175:0x03e8, B:177:0x03ee, B:179:0x0401, B:182:0x040d, B:184:0x0430, B:186:0x044b, B:188:0x0450, B:190:0x0479, B:192:0x0480, B:194:0x049c, B:195:0x04a6, B:196:0x04cd, B:198:0x04db, B:200:0x04e2, B:201:0x04ec, B:204:0x051b, B:207:0x0529, B:210:0x0532, B:211:0x053c, B:214:0x054f, B:216:0x0561, B:217:0x056b, B:219:0x05ba, B:221:0x05c2, B:225:0x05d9, B:226:0x05e2, B:227:0x0604, B:232:0x0627, B:234:0x0638, B:236:0x0640, B:238:0x0675, B:240:0x067f, B:243:0x069c, B:245:0x06b7, B:252:0x06ee, B:253:0x0718, B:255:0x0729, B:257:0x0731, B:258:0x0743, B:267:0x0755, B:269:0x0757, B:271:0x075c, B:273:0x076f, B:274:0x077b, B:276:0x0785, B:278:0x0798, B:280:0x07a8, B:281:0x07bb, B:283:0x07c6, B:284:0x0801, B:289:0x0816, B:296:0x0854, B:298:0x0872, B:304:0x088f, B:307:0x08b6, B:308:0x08d7, B:309:0x08d8, B:309:0x08d8, B:310:0x08db, B:312:0x08e4, B:313:0x08f0, B:315:0x08f9, B:316:0x0905, B:318:0x0912, B:320:0x0919, B:322:0x0931, B:324:0x093a, B:327:0x094c, B:329:0x0964, B:331:0x096e, B:332:0x097a, B:334:0x0981, B:336:0x098c, B:338:0x09b1, B:340:0x09fb, B:342:0x0a13, B:345:0x0a25, B:346:0x0a47, B:349:0x0a55, B:351:0x0a5d, B:353:0x0aaa, B:355:0x0ab1, B:356:0x0ac8, B:358:0x0ad1, B:361:0x0adb, B:363:0x0ae2, B:365:0x0ae9, B:366:0x0af0, B:368:0x0af6, B:371:0x0afd, B:374:0x0b0d, B:376:0x0b1d, B:377:0x0b60, B:383:0x0b70, B:385:0x0b89, B:387:0x0b94, B:389:0x0b9d, B:390:0x0ba3, B:394:0x0bb2, B:398:0x0bd5, B:400:0x0bdf, B:401:0x0be5, B:403:0x0bf5, B:405:0x0bfd, B:409:0x0c23, B:414:0x0c44, B:415:0x0c4e, B:417:0x0c58, B:419:0x0c7b, B:421:0x0c85, B:425:0x0c97, B:426:0x0ca7, B:427:0x0ccc, B:428:0x0cd3, B:429:0x0cd9, B:431:0x0ce0, B:433:0x0cf0, B:438:0x0d29, B:440:0x0d3d, B:445:0x0d50, B:447:0x0d5a, B:454:0x0d75, B:464:0x0d9a, B:466:0x0d9f, B:468:0x0da7, B:470:0x0db9, B:472:0x0dd7, B:476:0x0dfa, B:479:0x0e07, B:481:0x0e10, B:482:0x0e1c, B:485:0x0e28, B:489:0x0e35, B:491:0x0e47, B:492:0x0e4f, B:496:0x0e64, B:499:0x0e73, B:501:0x0e89, B:503:0x0e8f, B:504:0x0ebe, B:507:0x0eec, B:510:0x0ef5, B:512:0x0f00, B:515:0x0f0d, B:518:0x0f18, B:521:0x0f24, B:523:0x0f36, B:525:0x0f3d, B:529:0x0f4e, B:530:0x0f5d, B:532:0x0f64, B:535:0x0f6d, B:538:0x0f75, B:540:0x0f7b, B:542:0x0f88, B:543:0x0f92, B:545:0x0f9a, B:547:0x0fa1, B:549:0x0fae, B:550:0x0fb8, B:551:0x0fc0, B:551:0x0fc0, B:554:0x0fc8, B:559:0x0fd8, B:561:0x0fe8, B:563:0x0ff3, B:566:0x0fff, B:569:0x1015, B:571:0x1023, B:573:0x104c, B:575:0x105e), top: B:592:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:353:0x0aaa A[Catch: IOException -> 0x1080, zzaos -> 0x1084, RuntimeException -> 0x1088, TRY_ENTER, TryCatch #2 {RuntimeException -> 0x1088, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c8, B:85:0x01df, B:88:0x01e2, B:93:0x01f4, B:98:0x01f9, B:100:0x01fb, B:105:0x020a, B:108:0x0214, B:112:0x0220, B:117:0x023c, B:119:0x027e, B:121:0x028c, B:125:0x029b, B:131:0x02be, B:137:0x02dc, B:139:0x02e8, B:143:0x02f6, B:145:0x0302, B:147:0x030d, B:150:0x0322, B:151:0x032d, B:153:0x0336, B:154:0x034f, B:157:0x035d, B:158:0x0369, B:160:0x037a, B:162:0x039a, B:163:0x03ad, B:169:0x03c2, B:171:0x03cc, B:173:0x03df, B:175:0x03e8, B:177:0x03ee, B:179:0x0401, B:182:0x040d, B:184:0x0430, B:186:0x044b, B:188:0x0450, B:190:0x0479, B:192:0x0480, B:194:0x049c, B:195:0x04a6, B:196:0x04cd, B:198:0x04db, B:200:0x04e2, B:201:0x04ec, B:204:0x051b, B:207:0x0529, B:210:0x0532, B:211:0x053c, B:214:0x054f, B:216:0x0561, B:217:0x056b, B:219:0x05ba, B:221:0x05c2, B:225:0x05d9, B:226:0x05e2, B:227:0x0604, B:232:0x0627, B:234:0x0638, B:236:0x0640, B:238:0x0675, B:240:0x067f, B:243:0x069c, B:245:0x06b7, B:252:0x06ee, B:253:0x0718, B:255:0x0729, B:257:0x0731, B:258:0x0743, B:267:0x0755, B:269:0x0757, B:271:0x075c, B:273:0x076f, B:274:0x077b, B:276:0x0785, B:278:0x0798, B:280:0x07a8, B:281:0x07bb, B:283:0x07c6, B:284:0x0801, B:289:0x0816, B:296:0x0854, B:298:0x0872, B:304:0x088f, B:307:0x08b6, B:308:0x08d7, B:309:0x08d8, B:309:0x08d8, B:310:0x08db, B:312:0x08e4, B:313:0x08f0, B:315:0x08f9, B:316:0x0905, B:318:0x0912, B:320:0x0919, B:322:0x0931, B:324:0x093a, B:327:0x094c, B:329:0x0964, B:331:0x096e, B:332:0x097a, B:334:0x0981, B:336:0x098c, B:338:0x09b1, B:340:0x09fb, B:342:0x0a13, B:345:0x0a25, B:346:0x0a47, B:349:0x0a55, B:351:0x0a5d, B:353:0x0aaa, B:355:0x0ab1, B:356:0x0ac8, B:358:0x0ad1, B:361:0x0adb, B:363:0x0ae2, B:365:0x0ae9, B:366:0x0af0, B:368:0x0af6, B:371:0x0afd, B:374:0x0b0d, B:376:0x0b1d, B:377:0x0b60, B:383:0x0b70, B:385:0x0b89, B:387:0x0b94, B:389:0x0b9d, B:390:0x0ba3, B:394:0x0bb2, B:398:0x0bd5, B:400:0x0bdf, B:401:0x0be5, B:403:0x0bf5, B:405:0x0bfd, B:409:0x0c23, B:414:0x0c44, B:415:0x0c4e, B:417:0x0c58, B:419:0x0c7b, B:421:0x0c85, B:425:0x0c97, B:426:0x0ca7, B:427:0x0ccc, B:428:0x0cd3, B:429:0x0cd9, B:431:0x0ce0, B:433:0x0cf0, B:438:0x0d29, B:440:0x0d3d, B:445:0x0d50, B:447:0x0d5a, B:454:0x0d75, B:464:0x0d9a, B:466:0x0d9f, B:468:0x0da7, B:470:0x0db9, B:472:0x0dd7, B:476:0x0dfa, B:479:0x0e07, B:481:0x0e10, B:482:0x0e1c, B:485:0x0e28, B:489:0x0e35, B:491:0x0e47, B:492:0x0e4f, B:496:0x0e64, B:499:0x0e73, B:501:0x0e89, B:503:0x0e8f, B:504:0x0ebe, B:507:0x0eec, B:510:0x0ef5, B:512:0x0f00, B:515:0x0f0d, B:518:0x0f18, B:521:0x0f24, B:523:0x0f36, B:525:0x0f3d, B:529:0x0f4e, B:530:0x0f5d, B:532:0x0f64, B:535:0x0f6d, B:538:0x0f75, B:540:0x0f7b, B:542:0x0f88, B:543:0x0f92, B:545:0x0f9a, B:547:0x0fa1, B:549:0x0fae, B:550:0x0fb8, B:551:0x0fc0, B:551:0x0fc0, B:554:0x0fc8, B:559:0x0fd8, B:561:0x0fe8, B:563:0x0ff3, B:566:0x0fff, B:569:0x1015, B:571:0x1023, B:573:0x104c, B:575:0x105e), top: B:592:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0afc A[LOOP:7: B:370:0x0afc->B:376:0x0b1d, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:454:0x0d75 A[Catch: IOException -> 0x1080, zzaos -> 0x1084, RuntimeException -> 0x1088, TRY_ENTER, TryCatch #2 {RuntimeException -> 0x1088, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c8, B:85:0x01df, B:88:0x01e2, B:93:0x01f4, B:98:0x01f9, B:100:0x01fb, B:105:0x020a, B:108:0x0214, B:112:0x0220, B:117:0x023c, B:119:0x027e, B:121:0x028c, B:125:0x029b, B:131:0x02be, B:137:0x02dc, B:139:0x02e8, B:143:0x02f6, B:145:0x0302, B:147:0x030d, B:150:0x0322, B:151:0x032d, B:153:0x0336, B:154:0x034f, B:157:0x035d, B:158:0x0369, B:160:0x037a, B:162:0x039a, B:163:0x03ad, B:169:0x03c2, B:171:0x03cc, B:173:0x03df, B:175:0x03e8, B:177:0x03ee, B:179:0x0401, B:182:0x040d, B:184:0x0430, B:186:0x044b, B:188:0x0450, B:190:0x0479, B:192:0x0480, B:194:0x049c, B:195:0x04a6, B:196:0x04cd, B:198:0x04db, B:200:0x04e2, B:201:0x04ec, B:204:0x051b, B:207:0x0529, B:210:0x0532, B:211:0x053c, B:214:0x054f, B:216:0x0561, B:217:0x056b, B:219:0x05ba, B:221:0x05c2, B:225:0x05d9, B:226:0x05e2, B:227:0x0604, B:232:0x0627, B:234:0x0638, B:236:0x0640, B:238:0x0675, B:240:0x067f, B:243:0x069c, B:245:0x06b7, B:252:0x06ee, B:253:0x0718, B:255:0x0729, B:257:0x0731, B:258:0x0743, B:267:0x0755, B:269:0x0757, B:271:0x075c, B:273:0x076f, B:274:0x077b, B:276:0x0785, B:278:0x0798, B:280:0x07a8, B:281:0x07bb, B:283:0x07c6, B:284:0x0801, B:289:0x0816, B:296:0x0854, B:298:0x0872, B:304:0x088f, B:307:0x08b6, B:308:0x08d7, B:309:0x08d8, B:309:0x08d8, B:310:0x08db, B:312:0x08e4, B:313:0x08f0, B:315:0x08f9, B:316:0x0905, B:318:0x0912, B:320:0x0919, B:322:0x0931, B:324:0x093a, B:327:0x094c, B:329:0x0964, B:331:0x096e, B:332:0x097a, B:334:0x0981, B:336:0x098c, B:338:0x09b1, B:340:0x09fb, B:342:0x0a13, B:345:0x0a25, B:346:0x0a47, B:349:0x0a55, B:351:0x0a5d, B:353:0x0aaa, B:355:0x0ab1, B:356:0x0ac8, B:358:0x0ad1, B:361:0x0adb, B:363:0x0ae2, B:365:0x0ae9, B:366:0x0af0, B:368:0x0af6, B:371:0x0afd, B:374:0x0b0d, B:376:0x0b1d, B:377:0x0b60, B:383:0x0b70, B:385:0x0b89, B:387:0x0b94, B:389:0x0b9d, B:390:0x0ba3, B:394:0x0bb2, B:398:0x0bd5, B:400:0x0bdf, B:401:0x0be5, B:403:0x0bf5, B:405:0x0bfd, B:409:0x0c23, B:414:0x0c44, B:415:0x0c4e, B:417:0x0c58, B:419:0x0c7b, B:421:0x0c85, B:425:0x0c97, B:426:0x0ca7, B:427:0x0ccc, B:428:0x0cd3, B:429:0x0cd9, B:431:0x0ce0, B:433:0x0cf0, B:438:0x0d29, B:440:0x0d3d, B:445:0x0d50, B:447:0x0d5a, B:454:0x0d75, B:464:0x0d9a, B:466:0x0d9f, B:468:0x0da7, B:470:0x0db9, B:472:0x0dd7, B:476:0x0dfa, B:479:0x0e07, B:481:0x0e10, B:482:0x0e1c, B:485:0x0e28, B:489:0x0e35, B:491:0x0e47, B:492:0x0e4f, B:496:0x0e64, B:499:0x0e73, B:501:0x0e89, B:503:0x0e8f, B:504:0x0ebe, B:507:0x0eec, B:510:0x0ef5, B:512:0x0f00, B:515:0x0f0d, B:518:0x0f18, B:521:0x0f24, B:523:0x0f36, B:525:0x0f3d, B:529:0x0f4e, B:530:0x0f5d, B:532:0x0f64, B:535:0x0f6d, B:538:0x0f75, B:540:0x0f7b, B:542:0x0f88, B:543:0x0f92, B:545:0x0f9a, B:547:0x0fa1, B:549:0x0fae, B:550:0x0fb8, B:551:0x0fc0, B:551:0x0fc0, B:554:0x0fc8, B:559:0x0fd8, B:561:0x0fe8, B:563:0x0ff3, B:566:0x0fff, B:569:0x1015, B:571:0x1023, B:573:0x104c, B:575:0x105e), top: B:592:0x0000 }] */
    /* JADX WARN: Type inference failed for: r0v100, types: [long] */
    /* JADX WARN: Type inference failed for: r0v114, types: [long] */
    /* JADX WARN: Type inference failed for: r0v182, types: [long] */
    /* JADX WARN: Type inference failed for: r0v185, types: [long] */
    /* JADX WARN: Type inference failed for: r0v187, types: [long] */
    /* JADX WARN: Type inference failed for: r0v380, types: [long] */
    /* JADX WARN: Type inference failed for: r0v382, types: [long] */
    /* JADX WARN: Type inference failed for: r0v412, types: [long] */
    /* JADX WARN: Type inference failed for: r0v415, types: [long] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r17) {
        /*
            Method dump skipped, instructions count: 4298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzape.handleMessage(android.os.Message):boolean");
    }

    public final void zza(zzaov... zzaovVarArr) {
        synchronized (this) {
            if (this.zzq) {
                Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
                return;
            }
            int i = this.zzw;
            this.zzw = i + 1;
            this.zze.obtainMessage(11, zzaovVarArr).sendToTarget();
            while (this.zzx <= i) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    public final void zzb() {
        this.zzG = true;
    }

    @Override // com.google.android.gms.internal.ads.zzauz
    public final /* bridge */ /* synthetic */ void zzc(zzaum zzaumVar) {
        this.zze.obtainMessage(9, zzaumVar).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.zzaul
    public final void zzd(zzaum zzaumVar) {
        this.zze.obtainMessage(8, zzaumVar).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.zzaun
    public final void zze(zzapr zzaprVar, Object obj) {
        this.zze.obtainMessage(7, Pair.create(zzaprVar, null)).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.zzavq
    public final void zzf() {
        this.zze.sendEmptyMessage(10);
    }

    public final void zzg(zzauo zzauoVar, boolean z) {
        this.zze.obtainMessage(0, 1, 0, zzauoVar).sendToTarget();
    }

    public final void zzh() {
        synchronized (this) {
            if (this.zzq) {
                return;
            }
            this.zze.sendEmptyMessage(6);
            while (!this.zzq) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
            this.zzf.quit();
        }
    }

    public final void zzi(zzapr zzaprVar, int i, long j) {
        this.zze.obtainMessage(3, new zzapc(zzaprVar, 0, j)).sendToTarget();
    }

    public final void zzj(zzaov... zzaovVarArr) {
        if (this.zzq) {
            Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            return;
        }
        this.zzw++;
        this.zze.obtainMessage(11, zzaovVarArr).sendToTarget();
    }

    public final void zzk(int i) {
        this.zzI = i;
    }

    public final void zzl(int i) {
        this.zzH = i;
    }

    public final void zzm(boolean z) {
        this.zze.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
    }

    public final void zzn() {
        this.zze.sendEmptyMessage(5);
    }
}
