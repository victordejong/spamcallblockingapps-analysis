package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Pair;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzank.class */
public final class zzank implements Handler.Callback, zzaso, zzatt, zzasq {
    private zzani zzA;
    private long zzB;
    private zzang zzC;
    private zzang zzD;
    private zzang zzE;
    private zzanx zzF;
    private boolean zzG;
    private volatile int zzH;
    private volatile int zzI;
    private final zzcjy zzJ;
    private final zzanr[] zza;
    private final zzatu zzc;
    private final zzava zzd;
    private final Handler zze;
    private final HandlerThread zzf;
    private final Handler zzg;
    private final zzanc zzh;
    private final zzanw zzi;
    private final zzanv zzj;
    private zzanh zzk;
    private zzanq zzl;
    private zzanr zzm;
    private zzaut zzn;
    private zzasr zzo;
    private zzanr[] zzp;
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
    private final zzans[] zzb = new zzans[2];

    public zzank(zzanr[] zzanrVarArr, zzatu zzatuVar, zzcjy zzcjyVar, boolean z, int i, Handler handler, zzanh zzanhVar, zzanc zzancVar, byte[] bArr) {
        this.zza = zzanrVarArr;
        this.zzc = zzatuVar;
        this.zzJ = zzcjyVar;
        this.zzr = z;
        this.zzg = handler;
        this.zzk = zzanhVar;
        this.zzh = zzancVar;
        for (int i2 = 0; i2 < 2; i2++) {
            zzanrVarArr[i2].zzc(i2);
            this.zzb[i2] = zzanrVarArr[i2].zzb();
        }
        this.zzd = new zzava();
        this.zzp = new zzanr[0];
        this.zzi = new zzanw();
        this.zzj = new zzanv();
        zzatuVar.zzf(this);
        this.zzl = zzanq.zza;
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.zzf = handlerThread;
        handlerThread.start();
        this.zze = new Handler(handlerThread.getLooper(), this);
    }

    private final void zzA(Object obj, int i) {
        this.zzk = new zzanh(0, 0L);
        zzB(obj, i);
        this.zzk = new zzanh(0, -9223372036854775807L);
        zzo(4);
        zzx(false);
    }

    private final void zzB(Object obj, int i) {
        this.zzg.obtainMessage(6, new zzanj(this.zzF, obj, this.zzk, i)).sendToTarget();
    }

    private final int zzC(int i, zzanx zzanxVar, zzanx zzanxVar2) {
        int zzc = zzanxVar.zzc();
        int i2 = i;
        int i3 = -1;
        for (int i4 = 0; i4 < zzc && i3 == -1; i4++) {
            i2 = zzanxVar.zzh(i2, this.zzj, this.zzi, this.zzv);
            i3 = zzanxVar2.zze(zzanxVar.zzd(i2, this.zzj, true).zzb);
        }
        return i3;
    }

    private final boolean zzD(int i) {
        this.zzF.zzd(i, this.zzj, false);
        this.zzF.zzg(0, this.zzi, false);
        return this.zzF.zzh(i, this.zzj, this.zzi, this.zzv) == -1;
    }

    private final Pair<Integer, Long> zzE(zzani zzaniVar) {
        zzanx zzanxVar = zzaniVar.zza;
        zzanx zzanxVar2 = zzanxVar;
        if (zzanxVar.zzf()) {
            zzanxVar2 = this.zzF;
        }
        try {
            Pair<Integer, Long> zzG = zzG(zzanxVar2, 0, zzaniVar.zzc);
            zzanx zzanxVar3 = this.zzF;
            if (zzanxVar3 == zzanxVar2) {
                return zzG;
            }
            if (zzanxVar3.zze(zzanxVar2.zzd(((Integer) zzG.first).intValue(), this.zzj, true).zzb) != -1) {
                return Pair.create(0, (Long) zzG.second);
            }
            if (zzC(((Integer) zzG.first).intValue(), zzanxVar2, this.zzF) == -1) {
                return null;
            }
            this.zzF.zzd(0, this.zzj, false);
            return zzF(0, -9223372036854775807L);
        } catch (IndexOutOfBoundsException e) {
            throw new zzano(this.zzF, 0, zzaniVar.zzc);
        }
    }

    private final Pair<Integer, Long> zzF(int i, long j) {
        return zzG(this.zzF, 0, -9223372036854775807L);
    }

    private final Pair<Integer, Long> zzG(zzanx zzanxVar, int i, long j) {
        return zzH(zzanxVar, 0, j, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Pair<Integer, Long> zzH(zzanx zzanxVar, int i, long j, long j2) {
        zzaup.zzc(0, 0, zzanxVar.zza());
        zzanxVar.zzb(0, this.zzi, false, j2);
        char c = j;
        if (j == -9223372036854775807L) {
            c = 0;
        }
        if (zzanxVar.zzd(0, this.zzj, false).zzc != -9223372036854775807L) {
        }
        return Pair.create(0, Long.valueOf(c));
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    private final void zzI() {
        zzang zzangVar = this.zzC;
        char zza = !zzangVar.zzj ? (char) 0 : zzangVar.zza.zza();
        if (zza == Long.MIN_VALUE) {
            zzp(false);
            return;
        }
        zzang zzangVar2 = this.zzC;
        long j = this.zzB - (zzangVar2.zzf - zzangVar2.zzh);
        boolean zzf = this.zzJ.zzf(zza - j);
        zzp(zzf);
        if (!zzf) {
            return;
        }
        this.zzC.zza.zzb(j);
    }

    private final void zzJ(zzang zzangVar) throws zzamy {
        if (this.zzE == zzangVar) {
            return;
        }
        boolean[] zArr = new boolean[2];
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= 2) {
                this.zzE = zzangVar;
                this.zzg.obtainMessage(3, zzangVar.zzm).sendToTarget();
                zzK(zArr, i3);
                return;
            }
            zzanr zzanrVar = this.zza[i];
            zArr[i] = zzanrVar.zze() != 0;
            zzatk zza = zzangVar.zzm.zzb.zza(i);
            int i4 = i3;
            if (zza != null) {
                i4 = i3 + 1;
            }
            if (zArr[i] && (zza == null || (zzanrVar.zzl() && zzanrVar.zzi() == this.zzE.zzd[i]))) {
                if (zzanrVar == this.zzm) {
                    this.zzd.zzd(this.zzn);
                    this.zzn = null;
                    this.zzm = null;
                }
                zzL(zzanrVar);
                zzanrVar.zzp();
            }
            i++;
            i2 = i4;
        }
    }

    private final void zzK(boolean[] zArr, int i) throws zzamy {
        this.zzp = new zzanr[i];
        int i2 = 0;
        for (int i3 = 0; i3 < 2; i3++) {
            zzanr zzanrVar = this.zza[i3];
            zzatk zza = this.zzE.zzm.zzb.zza(i3);
            if (zza != null) {
                this.zzp[i2] = zzanrVar;
                if (zzanrVar.zze() == 0) {
                    zzant zzantVar = this.zzE.zzm.zzd[i3];
                    boolean z = this.zzr && this.zzu == 3;
                    boolean z2 = !zArr[i3] && z;
                    zza.zzb();
                    zzanm[] zzanmVarArr = new zzanm[1];
                    for (int i4 = 0; i4 <= 0; i4++) {
                        zzanmVarArr[i4] = zza.zzc(i4);
                    }
                    zzang zzangVar = this.zzE;
                    zzanrVar.zzf(zzantVar, zzanmVarArr, zzangVar.zzd[i3], this.zzB, z2, zzangVar.zzf - zzangVar.zzh);
                    zzaut zzd = zzanrVar.zzd();
                    if (zzd != null) {
                        if (this.zzn != null) {
                            throw zzamy.zzc(new IllegalStateException("Multiple renderer media clocks enabled."));
                        }
                        this.zzn = zzd;
                        this.zzm = zzanrVar;
                        zzd.zzQ(this.zzl);
                    }
                    if (z) {
                        zzanrVar.zzg();
                    }
                }
                i2++;
            }
        }
    }

    private static final void zzL(zzanr zzanrVar) throws zzamy {
        if (zzanrVar.zze() == 2) {
            zzanrVar.zzo();
        }
    }

    private static final void zzM(zzang zzangVar) {
        while (zzangVar != null) {
            zzangVar.zze();
            zzangVar = zzangVar.zzl;
        }
    }

    private final void zzo(int i) {
        if (this.zzu != i) {
            this.zzu = i;
            this.zzg.obtainMessage(1, i, 0).sendToTarget();
        }
    }

    private final void zzp(boolean z) {
        if (this.zzt != z) {
            this.zzt = z;
            this.zzg.obtainMessage(2, z ? 1 : 0, 0).sendToTarget();
        }
    }

    private final void zzq() throws zzamy {
        this.zzs = false;
        this.zzd.zza();
        for (zzanr zzanrVar : this.zzp) {
            zzanrVar.zzg();
        }
    }

    private final void zzr() throws zzamy {
        this.zzd.zzb();
        for (zzanr zzanrVar : this.zzp) {
            zzL(zzanrVar);
        }
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    private final void zzs() throws zzamy {
        zzang zzangVar = this.zzE;
        if (zzangVar == null) {
            return;
        }
        char zzp = zzangVar.zza.zzp();
        if (zzp != -9223372036854775807L) {
            zzv(zzp);
        } else {
            zzanr zzanrVar = this.zzm;
            if (zzanrVar == null || zzanrVar.zzF()) {
                this.zzB = this.zzd.zzP();
            } else {
                long zzP = this.zzn.zzP();
                this.zzB = zzP;
                this.zzd.zzc(zzP);
            }
            zzang zzangVar2 = this.zzE;
            zzp = this.zzB - (zzangVar2.zzf - zzangVar2.zzh);
        }
        this.zzk.zzc = zzp;
        this.zzy = SystemClock.elapsedRealtime() * 1000;
        char zzq = this.zzp.length == 0 ? (char) 0 : this.zzE.zza.zzq();
        zzanh zzanhVar = this.zzk;
        char c = zzq;
        if (zzq == Long.MIN_VALUE) {
            c = this.zzF.zzd(this.zzE.zzg, this.zzj, false).zzc;
        }
        zzanhVar.zzd = c;
    }

    private final void zzt(long j, long j2) {
        this.zze.removeMessages(2);
        long elapsedRealtime = (j + j2) - SystemClock.elapsedRealtime();
        if (elapsedRealtime <= 0) {
            this.zze.sendEmptyMessage(2);
        } else {
            this.zze.sendEmptyMessageDelayed(2, elapsedRealtime);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    private final long zzu(int i, long j) throws zzamy {
        zzang zzangVar;
        char c;
        zzr();
        this.zzs = false;
        zzo(2);
        zzang zzangVar2 = this.zzE;
        if (zzangVar2 != null) {
            zzang zzangVar3 = null;
            while (true) {
                zzangVar = zzangVar3;
                if (zzangVar2 == null) {
                    break;
                }
                if (zzangVar2.zzg != i || !zzangVar2.zzj) {
                    zzangVar2.zze();
                } else {
                    zzangVar3 = zzangVar2;
                }
                zzangVar2 = zzangVar2.zzl;
            }
        } else {
            zzang zzangVar4 = this.zzC;
            if (zzangVar4 != null) {
                zzangVar4.zze();
            }
            zzangVar = null;
        }
        zzang zzangVar5 = this.zzE;
        if (zzangVar5 != zzangVar || zzangVar5 != this.zzD) {
            for (zzanr zzanrVar : this.zzp) {
                zzanrVar.zzp();
            }
            this.zzp = new zzanr[0];
            this.zzn = null;
            this.zzm = null;
            this.zzE = null;
        }
        if (zzangVar != null) {
            zzangVar.zzl = null;
            this.zzC = zzangVar;
            this.zzD = zzangVar;
            zzJ(zzangVar);
            zzang zzangVar6 = this.zzE;
            char c2 = j;
            if (zzangVar6.zzk) {
                c2 = zzangVar6.zza.zzr(j);
            }
            zzv(c2);
            zzI();
            c = c2;
        } else {
            this.zzC = null;
            this.zzD = null;
            this.zzE = null;
            zzv(j);
            c = j;
        }
        this.zze.sendEmptyMessage(2);
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    private final void zzv(long j) throws zzamy {
        zzang zzangVar = this.zzE;
        char c = zzangVar == null ? j + 60000000 : j + (zzangVar.zzf - zzangVar.zzh);
        this.zzB = c;
        this.zzd.zzc(c);
        for (zzanr zzanrVar : this.zzp) {
            zzanrVar.zzn(this.zzB);
        }
    }

    private final void zzw() {
        zzx(true);
        this.zzJ.zzc();
        zzo(1);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x009f -> B:7:0x0048). Please submit an issue!!! */
    private final void zzx(boolean z) {
        zzanr[] zzanrVarArr;
        this.zze.removeMessages(2);
        this.zzs = false;
        this.zzd.zzb();
        this.zzn = null;
        this.zzm = null;
        this.zzB = 60000000L;
        for (zzanr zzanrVar : this.zzp) {
            try {
                zzL(zzanrVar);
                zzanrVar.zzp();
            } catch (zzamy | RuntimeException e) {
            }
        }
        this.zzp = new zzanr[0];
        zzang zzangVar = this.zzE;
        zzang zzangVar2 = zzangVar;
        if (zzangVar == null) {
            zzangVar2 = this.zzC;
        }
        zzM(zzangVar2);
        this.zzC = null;
        this.zzD = null;
        this.zzE = null;
        zzp(false);
        if (z) {
            zzasr zzasrVar = this.zzo;
            if (zzasrVar != null) {
                zzasrVar.zzd();
                this.zzo = null;
            }
            this.zzF = null;
        }
    }

    private final boolean zzy(long j) {
        boolean z = false;
        if (j != -9223372036854775807L && this.zzk.zzc >= j) {
            zzang zzangVar = this.zzE.zzl;
            if (zzangVar != null) {
                if (!zzangVar.zzj) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    private final void zzz() throws IOException {
        zzang zzangVar = this.zzC;
        if (zzangVar == null || zzangVar.zzj) {
            return;
        }
        zzang zzangVar2 = this.zzD;
        if (zzangVar2 != null && zzangVar2.zzl != zzangVar) {
            return;
        }
        for (zzanr zzanrVar : this.zzp) {
            if (!zzanrVar.zzj()) {
                return;
            }
        }
        this.zzC.zza.zzm();
    }

    /* JADX WARN: Code restructure failed: missing block: B:251:0x06ee, code lost:
        if (r24 != false) goto L253;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x06f1, code lost:
        r0 = r16.zzE.zzg;
        r16.zzk = new com.google.android.gms.internal.ads.zzanh(r0, zzu(r0, r16.zzk.zzc));
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x071b, code lost:
        r16.zzC = r23;
        r23.zzl = null;
        zzM(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:508:0x0eee, code lost:
        if (r27 != false) goto L511;
     */
    /* JADX WARN: Code restructure failed: missing block: B:510:0x0ef9, code lost:
        if (zzy(r0) != false) goto L511;
     */
    /* JADX WARN: Removed duplicated region for block: B:207:0x052c A[Catch: IOException -> 0x0fd0, zzamy -> 0x0fd7, RuntimeException -> 0x10b4, TRY_ENTER, TryCatch #3 {RuntimeException -> 0x10b4, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c9, B:85:0x01e0, B:88:0x01e3, B:93:0x01f5, B:98:0x01fa, B:100:0x01fc, B:105:0x020b, B:108:0x0215, B:112:0x0221, B:117:0x023d, B:119:0x027f, B:121:0x028d, B:125:0x029e, B:131:0x02c1, B:137:0x02df, B:139:0x02eb, B:143:0x02f9, B:145:0x0305, B:147:0x0310, B:150:0x0325, B:151:0x0330, B:153:0x0339, B:154:0x0353, B:157:0x0361, B:158:0x036d, B:160:0x037e, B:162:0x039e, B:163:0x03b1, B:169:0x03c6, B:171:0x03d0, B:173:0x03e2, B:175:0x03eb, B:177:0x03f1, B:179:0x0404, B:182:0x0410, B:184:0x0433, B:186:0x044e, B:188:0x0453, B:190:0x047c, B:192:0x0483, B:194:0x049f, B:195:0x04a9, B:196:0x04d0, B:198:0x04de, B:200:0x04e5, B:201:0x04ef, B:204:0x051e, B:207:0x052c, B:210:0x0535, B:211:0x053f, B:214:0x0552, B:216:0x0564, B:217:0x056e, B:219:0x05bd, B:221:0x05c5, B:225:0x05dc, B:226:0x05e5, B:227:0x0607, B:232:0x062a, B:234:0x063b, B:236:0x0643, B:238:0x0678, B:240:0x0682, B:243:0x069f, B:245:0x06ba, B:252:0x06f1, B:253:0x071b, B:255:0x072c, B:257:0x0734, B:258:0x0746, B:267:0x0758, B:269:0x075a, B:271:0x075f, B:273:0x0772, B:274:0x077e, B:276:0x0788, B:278:0x079b, B:280:0x07aa, B:281:0x07bc, B:283:0x07c8, B:284:0x0803, B:289:0x0817, B:296:0x0857, B:298:0x0875, B:304:0x0892, B:307:0x08b9, B:308:0x08da, B:309:0x08db, B:309:0x08db, B:310:0x08de, B:312:0x08e7, B:313:0x08f3, B:315:0x08fc, B:316:0x0908, B:318:0x0915, B:320:0x091c, B:322:0x0934, B:324:0x093d, B:327:0x094f, B:329:0x0967, B:331:0x0971, B:332:0x097d, B:334:0x0984, B:336:0x098f, B:338:0x09b4, B:340:0x09fe, B:342:0x0a16, B:345:0x0a28, B:346:0x0a4a, B:349:0x0a58, B:351:0x0a60, B:353:0x0aad, B:355:0x0ab4, B:356:0x0acb, B:358:0x0ad4, B:361:0x0ade, B:363:0x0ae5, B:365:0x0aec, B:366:0x0af3, B:368:0x0af9, B:371:0x0b00, B:374:0x0b10, B:376:0x0b20, B:377:0x0b63, B:383:0x0b73, B:385:0x0b8c, B:387:0x0b97, B:389:0x0ba0, B:390:0x0ba6, B:394:0x0bb5, B:398:0x0bd8, B:400:0x0be2, B:401:0x0be8, B:403:0x0bf8, B:405:0x0c00, B:409:0x0c26, B:414:0x0c47, B:415:0x0c51, B:417:0x0c5b, B:419:0x0c7e, B:421:0x0c88, B:425:0x0c9a, B:426:0x0caa, B:428:0x0cbc, B:429:0x0cd3, B:430:0x0cda, B:431:0x0ce0, B:433:0x0ce7, B:435:0x0cf7, B:440:0x0d30, B:442:0x0d44, B:447:0x0d57, B:449:0x0d61, B:456:0x0d7c, B:466:0x0da1, B:468:0x0da6, B:470:0x0dae, B:472:0x0dc0, B:474:0x0dde, B:478:0x0e01, B:481:0x0e0e, B:483:0x0e17, B:484:0x0e23, B:487:0x0e2f, B:491:0x0e3c, B:493:0x0e4e, B:494:0x0e56, B:498:0x0e6b, B:501:0x0e7a, B:503:0x0e90, B:505:0x0e96, B:506:0x0ec6, B:509:0x0ef4, B:512:0x0efd, B:514:0x0f08, B:517:0x0f15, B:520:0x0f20, B:523:0x0f2c, B:525:0x0f3e, B:527:0x0f45, B:531:0x0f56, B:532:0x0f65, B:534:0x0f6c, B:537:0x0f75, B:540:0x0f7d, B:542:0x0f83, B:544:0x0f90, B:545:0x0f9a, B:547:0x0fa2, B:549:0x0fa9, B:551:0x0fb6, B:552:0x0fc0, B:553:0x0fc8, B:553:0x0fc8, B:560:0x0fde, B:565:0x0fee, B:567:0x0ffe, B:569:0x1009, B:572:0x1015, B:575:0x102b, B:577:0x1039, B:579:0x1052, B:581:0x1057, B:583:0x1062, B:585:0x1074, B:587:0x1080), top: B:610:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0535 A[Catch: IOException -> 0x0fd0, zzamy -> 0x0fd7, RuntimeException -> 0x10b4, TRY_ENTER, TRY_LEAVE, TryCatch #3 {RuntimeException -> 0x10b4, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c9, B:85:0x01e0, B:88:0x01e3, B:93:0x01f5, B:98:0x01fa, B:100:0x01fc, B:105:0x020b, B:108:0x0215, B:112:0x0221, B:117:0x023d, B:119:0x027f, B:121:0x028d, B:125:0x029e, B:131:0x02c1, B:137:0x02df, B:139:0x02eb, B:143:0x02f9, B:145:0x0305, B:147:0x0310, B:150:0x0325, B:151:0x0330, B:153:0x0339, B:154:0x0353, B:157:0x0361, B:158:0x036d, B:160:0x037e, B:162:0x039e, B:163:0x03b1, B:169:0x03c6, B:171:0x03d0, B:173:0x03e2, B:175:0x03eb, B:177:0x03f1, B:179:0x0404, B:182:0x0410, B:184:0x0433, B:186:0x044e, B:188:0x0453, B:190:0x047c, B:192:0x0483, B:194:0x049f, B:195:0x04a9, B:196:0x04d0, B:198:0x04de, B:200:0x04e5, B:201:0x04ef, B:204:0x051e, B:207:0x052c, B:210:0x0535, B:211:0x053f, B:214:0x0552, B:216:0x0564, B:217:0x056e, B:219:0x05bd, B:221:0x05c5, B:225:0x05dc, B:226:0x05e5, B:227:0x0607, B:232:0x062a, B:234:0x063b, B:236:0x0643, B:238:0x0678, B:240:0x0682, B:243:0x069f, B:245:0x06ba, B:252:0x06f1, B:253:0x071b, B:255:0x072c, B:257:0x0734, B:258:0x0746, B:267:0x0758, B:269:0x075a, B:271:0x075f, B:273:0x0772, B:274:0x077e, B:276:0x0788, B:278:0x079b, B:280:0x07aa, B:281:0x07bc, B:283:0x07c8, B:284:0x0803, B:289:0x0817, B:296:0x0857, B:298:0x0875, B:304:0x0892, B:307:0x08b9, B:308:0x08da, B:309:0x08db, B:309:0x08db, B:310:0x08de, B:312:0x08e7, B:313:0x08f3, B:315:0x08fc, B:316:0x0908, B:318:0x0915, B:320:0x091c, B:322:0x0934, B:324:0x093d, B:327:0x094f, B:329:0x0967, B:331:0x0971, B:332:0x097d, B:334:0x0984, B:336:0x098f, B:338:0x09b4, B:340:0x09fe, B:342:0x0a16, B:345:0x0a28, B:346:0x0a4a, B:349:0x0a58, B:351:0x0a60, B:353:0x0aad, B:355:0x0ab4, B:356:0x0acb, B:358:0x0ad4, B:361:0x0ade, B:363:0x0ae5, B:365:0x0aec, B:366:0x0af3, B:368:0x0af9, B:371:0x0b00, B:374:0x0b10, B:376:0x0b20, B:377:0x0b63, B:383:0x0b73, B:385:0x0b8c, B:387:0x0b97, B:389:0x0ba0, B:390:0x0ba6, B:394:0x0bb5, B:398:0x0bd8, B:400:0x0be2, B:401:0x0be8, B:403:0x0bf8, B:405:0x0c00, B:409:0x0c26, B:414:0x0c47, B:415:0x0c51, B:417:0x0c5b, B:419:0x0c7e, B:421:0x0c88, B:425:0x0c9a, B:426:0x0caa, B:428:0x0cbc, B:429:0x0cd3, B:430:0x0cda, B:431:0x0ce0, B:433:0x0ce7, B:435:0x0cf7, B:440:0x0d30, B:442:0x0d44, B:447:0x0d57, B:449:0x0d61, B:456:0x0d7c, B:466:0x0da1, B:468:0x0da6, B:470:0x0dae, B:472:0x0dc0, B:474:0x0dde, B:478:0x0e01, B:481:0x0e0e, B:483:0x0e17, B:484:0x0e23, B:487:0x0e2f, B:491:0x0e3c, B:493:0x0e4e, B:494:0x0e56, B:498:0x0e6b, B:501:0x0e7a, B:503:0x0e90, B:505:0x0e96, B:506:0x0ec6, B:509:0x0ef4, B:512:0x0efd, B:514:0x0f08, B:517:0x0f15, B:520:0x0f20, B:523:0x0f2c, B:525:0x0f3e, B:527:0x0f45, B:531:0x0f56, B:532:0x0f65, B:534:0x0f6c, B:537:0x0f75, B:540:0x0f7d, B:542:0x0f83, B:544:0x0f90, B:545:0x0f9a, B:547:0x0fa2, B:549:0x0fa9, B:551:0x0fb6, B:552:0x0fc0, B:553:0x0fc8, B:553:0x0fc8, B:560:0x0fde, B:565:0x0fee, B:567:0x0ffe, B:569:0x1009, B:572:0x1015, B:575:0x102b, B:577:0x1039, B:579:0x1052, B:581:0x1057, B:583:0x1062, B:585:0x1074, B:587:0x1080), top: B:610:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:211:0x053f A[Catch: IOException -> 0x0fd0, zzamy -> 0x0fd7, RuntimeException -> 0x10b4, TRY_ENTER, TRY_LEAVE, TryCatch #3 {RuntimeException -> 0x10b4, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c9, B:85:0x01e0, B:88:0x01e3, B:93:0x01f5, B:98:0x01fa, B:100:0x01fc, B:105:0x020b, B:108:0x0215, B:112:0x0221, B:117:0x023d, B:119:0x027f, B:121:0x028d, B:125:0x029e, B:131:0x02c1, B:137:0x02df, B:139:0x02eb, B:143:0x02f9, B:145:0x0305, B:147:0x0310, B:150:0x0325, B:151:0x0330, B:153:0x0339, B:154:0x0353, B:157:0x0361, B:158:0x036d, B:160:0x037e, B:162:0x039e, B:163:0x03b1, B:169:0x03c6, B:171:0x03d0, B:173:0x03e2, B:175:0x03eb, B:177:0x03f1, B:179:0x0404, B:182:0x0410, B:184:0x0433, B:186:0x044e, B:188:0x0453, B:190:0x047c, B:192:0x0483, B:194:0x049f, B:195:0x04a9, B:196:0x04d0, B:198:0x04de, B:200:0x04e5, B:201:0x04ef, B:204:0x051e, B:207:0x052c, B:210:0x0535, B:211:0x053f, B:214:0x0552, B:216:0x0564, B:217:0x056e, B:219:0x05bd, B:221:0x05c5, B:225:0x05dc, B:226:0x05e5, B:227:0x0607, B:232:0x062a, B:234:0x063b, B:236:0x0643, B:238:0x0678, B:240:0x0682, B:243:0x069f, B:245:0x06ba, B:252:0x06f1, B:253:0x071b, B:255:0x072c, B:257:0x0734, B:258:0x0746, B:267:0x0758, B:269:0x075a, B:271:0x075f, B:273:0x0772, B:274:0x077e, B:276:0x0788, B:278:0x079b, B:280:0x07aa, B:281:0x07bc, B:283:0x07c8, B:284:0x0803, B:289:0x0817, B:296:0x0857, B:298:0x0875, B:304:0x0892, B:307:0x08b9, B:308:0x08da, B:309:0x08db, B:309:0x08db, B:310:0x08de, B:312:0x08e7, B:313:0x08f3, B:315:0x08fc, B:316:0x0908, B:318:0x0915, B:320:0x091c, B:322:0x0934, B:324:0x093d, B:327:0x094f, B:329:0x0967, B:331:0x0971, B:332:0x097d, B:334:0x0984, B:336:0x098f, B:338:0x09b4, B:340:0x09fe, B:342:0x0a16, B:345:0x0a28, B:346:0x0a4a, B:349:0x0a58, B:351:0x0a60, B:353:0x0aad, B:355:0x0ab4, B:356:0x0acb, B:358:0x0ad4, B:361:0x0ade, B:363:0x0ae5, B:365:0x0aec, B:366:0x0af3, B:368:0x0af9, B:371:0x0b00, B:374:0x0b10, B:376:0x0b20, B:377:0x0b63, B:383:0x0b73, B:385:0x0b8c, B:387:0x0b97, B:389:0x0ba0, B:390:0x0ba6, B:394:0x0bb5, B:398:0x0bd8, B:400:0x0be2, B:401:0x0be8, B:403:0x0bf8, B:405:0x0c00, B:409:0x0c26, B:414:0x0c47, B:415:0x0c51, B:417:0x0c5b, B:419:0x0c7e, B:421:0x0c88, B:425:0x0c9a, B:426:0x0caa, B:428:0x0cbc, B:429:0x0cd3, B:430:0x0cda, B:431:0x0ce0, B:433:0x0ce7, B:435:0x0cf7, B:440:0x0d30, B:442:0x0d44, B:447:0x0d57, B:449:0x0d61, B:456:0x0d7c, B:466:0x0da1, B:468:0x0da6, B:470:0x0dae, B:472:0x0dc0, B:474:0x0dde, B:478:0x0e01, B:481:0x0e0e, B:483:0x0e17, B:484:0x0e23, B:487:0x0e2f, B:491:0x0e3c, B:493:0x0e4e, B:494:0x0e56, B:498:0x0e6b, B:501:0x0e7a, B:503:0x0e90, B:505:0x0e96, B:506:0x0ec6, B:509:0x0ef4, B:512:0x0efd, B:514:0x0f08, B:517:0x0f15, B:520:0x0f20, B:523:0x0f2c, B:525:0x0f3e, B:527:0x0f45, B:531:0x0f56, B:532:0x0f65, B:534:0x0f6c, B:537:0x0f75, B:540:0x0f7d, B:542:0x0f83, B:544:0x0f90, B:545:0x0f9a, B:547:0x0fa2, B:549:0x0fa9, B:551:0x0fb6, B:552:0x0fc0, B:553:0x0fc8, B:553:0x0fc8, B:560:0x0fde, B:565:0x0fee, B:567:0x0ffe, B:569:0x1009, B:572:0x1015, B:575:0x102b, B:577:0x1039, B:579:0x1052, B:581:0x1057, B:583:0x1062, B:585:0x1074, B:587:0x1080), top: B:610:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0a1e  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0a28 A[Catch: IOException -> 0x0fd0, zzamy -> 0x0fd7, RuntimeException -> 0x10b4, TRY_ENTER, TRY_LEAVE, TryCatch #3 {RuntimeException -> 0x10b4, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c9, B:85:0x01e0, B:88:0x01e3, B:93:0x01f5, B:98:0x01fa, B:100:0x01fc, B:105:0x020b, B:108:0x0215, B:112:0x0221, B:117:0x023d, B:119:0x027f, B:121:0x028d, B:125:0x029e, B:131:0x02c1, B:137:0x02df, B:139:0x02eb, B:143:0x02f9, B:145:0x0305, B:147:0x0310, B:150:0x0325, B:151:0x0330, B:153:0x0339, B:154:0x0353, B:157:0x0361, B:158:0x036d, B:160:0x037e, B:162:0x039e, B:163:0x03b1, B:169:0x03c6, B:171:0x03d0, B:173:0x03e2, B:175:0x03eb, B:177:0x03f1, B:179:0x0404, B:182:0x0410, B:184:0x0433, B:186:0x044e, B:188:0x0453, B:190:0x047c, B:192:0x0483, B:194:0x049f, B:195:0x04a9, B:196:0x04d0, B:198:0x04de, B:200:0x04e5, B:201:0x04ef, B:204:0x051e, B:207:0x052c, B:210:0x0535, B:211:0x053f, B:214:0x0552, B:216:0x0564, B:217:0x056e, B:219:0x05bd, B:221:0x05c5, B:225:0x05dc, B:226:0x05e5, B:227:0x0607, B:232:0x062a, B:234:0x063b, B:236:0x0643, B:238:0x0678, B:240:0x0682, B:243:0x069f, B:245:0x06ba, B:252:0x06f1, B:253:0x071b, B:255:0x072c, B:257:0x0734, B:258:0x0746, B:267:0x0758, B:269:0x075a, B:271:0x075f, B:273:0x0772, B:274:0x077e, B:276:0x0788, B:278:0x079b, B:280:0x07aa, B:281:0x07bc, B:283:0x07c8, B:284:0x0803, B:289:0x0817, B:296:0x0857, B:298:0x0875, B:304:0x0892, B:307:0x08b9, B:308:0x08da, B:309:0x08db, B:309:0x08db, B:310:0x08de, B:312:0x08e7, B:313:0x08f3, B:315:0x08fc, B:316:0x0908, B:318:0x0915, B:320:0x091c, B:322:0x0934, B:324:0x093d, B:327:0x094f, B:329:0x0967, B:331:0x0971, B:332:0x097d, B:334:0x0984, B:336:0x098f, B:338:0x09b4, B:340:0x09fe, B:342:0x0a16, B:345:0x0a28, B:346:0x0a4a, B:349:0x0a58, B:351:0x0a60, B:353:0x0aad, B:355:0x0ab4, B:356:0x0acb, B:358:0x0ad4, B:361:0x0ade, B:363:0x0ae5, B:365:0x0aec, B:366:0x0af3, B:368:0x0af9, B:371:0x0b00, B:374:0x0b10, B:376:0x0b20, B:377:0x0b63, B:383:0x0b73, B:385:0x0b8c, B:387:0x0b97, B:389:0x0ba0, B:390:0x0ba6, B:394:0x0bb5, B:398:0x0bd8, B:400:0x0be2, B:401:0x0be8, B:403:0x0bf8, B:405:0x0c00, B:409:0x0c26, B:414:0x0c47, B:415:0x0c51, B:417:0x0c5b, B:419:0x0c7e, B:421:0x0c88, B:425:0x0c9a, B:426:0x0caa, B:428:0x0cbc, B:429:0x0cd3, B:430:0x0cda, B:431:0x0ce0, B:433:0x0ce7, B:435:0x0cf7, B:440:0x0d30, B:442:0x0d44, B:447:0x0d57, B:449:0x0d61, B:456:0x0d7c, B:466:0x0da1, B:468:0x0da6, B:470:0x0dae, B:472:0x0dc0, B:474:0x0dde, B:478:0x0e01, B:481:0x0e0e, B:483:0x0e17, B:484:0x0e23, B:487:0x0e2f, B:491:0x0e3c, B:493:0x0e4e, B:494:0x0e56, B:498:0x0e6b, B:501:0x0e7a, B:503:0x0e90, B:505:0x0e96, B:506:0x0ec6, B:509:0x0ef4, B:512:0x0efd, B:514:0x0f08, B:517:0x0f15, B:520:0x0f20, B:523:0x0f2c, B:525:0x0f3e, B:527:0x0f45, B:531:0x0f56, B:532:0x0f65, B:534:0x0f6c, B:537:0x0f75, B:540:0x0f7d, B:542:0x0f83, B:544:0x0f90, B:545:0x0f9a, B:547:0x0fa2, B:549:0x0fa9, B:551:0x0fb6, B:552:0x0fc0, B:553:0x0fc8, B:553:0x0fc8, B:560:0x0fde, B:565:0x0fee, B:567:0x0ffe, B:569:0x1009, B:572:0x1015, B:575:0x102b, B:577:0x1039, B:579:0x1052, B:581:0x1057, B:583:0x1062, B:585:0x1074, B:587:0x1080), top: B:610:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:348:0x0a53  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x0a58 A[Catch: IOException -> 0x0fd0, zzamy -> 0x0fd7, RuntimeException -> 0x10b4, TRY_ENTER, TryCatch #3 {RuntimeException -> 0x10b4, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c9, B:85:0x01e0, B:88:0x01e3, B:93:0x01f5, B:98:0x01fa, B:100:0x01fc, B:105:0x020b, B:108:0x0215, B:112:0x0221, B:117:0x023d, B:119:0x027f, B:121:0x028d, B:125:0x029e, B:131:0x02c1, B:137:0x02df, B:139:0x02eb, B:143:0x02f9, B:145:0x0305, B:147:0x0310, B:150:0x0325, B:151:0x0330, B:153:0x0339, B:154:0x0353, B:157:0x0361, B:158:0x036d, B:160:0x037e, B:162:0x039e, B:163:0x03b1, B:169:0x03c6, B:171:0x03d0, B:173:0x03e2, B:175:0x03eb, B:177:0x03f1, B:179:0x0404, B:182:0x0410, B:184:0x0433, B:186:0x044e, B:188:0x0453, B:190:0x047c, B:192:0x0483, B:194:0x049f, B:195:0x04a9, B:196:0x04d0, B:198:0x04de, B:200:0x04e5, B:201:0x04ef, B:204:0x051e, B:207:0x052c, B:210:0x0535, B:211:0x053f, B:214:0x0552, B:216:0x0564, B:217:0x056e, B:219:0x05bd, B:221:0x05c5, B:225:0x05dc, B:226:0x05e5, B:227:0x0607, B:232:0x062a, B:234:0x063b, B:236:0x0643, B:238:0x0678, B:240:0x0682, B:243:0x069f, B:245:0x06ba, B:252:0x06f1, B:253:0x071b, B:255:0x072c, B:257:0x0734, B:258:0x0746, B:267:0x0758, B:269:0x075a, B:271:0x075f, B:273:0x0772, B:274:0x077e, B:276:0x0788, B:278:0x079b, B:280:0x07aa, B:281:0x07bc, B:283:0x07c8, B:284:0x0803, B:289:0x0817, B:296:0x0857, B:298:0x0875, B:304:0x0892, B:307:0x08b9, B:308:0x08da, B:309:0x08db, B:309:0x08db, B:310:0x08de, B:312:0x08e7, B:313:0x08f3, B:315:0x08fc, B:316:0x0908, B:318:0x0915, B:320:0x091c, B:322:0x0934, B:324:0x093d, B:327:0x094f, B:329:0x0967, B:331:0x0971, B:332:0x097d, B:334:0x0984, B:336:0x098f, B:338:0x09b4, B:340:0x09fe, B:342:0x0a16, B:345:0x0a28, B:346:0x0a4a, B:349:0x0a58, B:351:0x0a60, B:353:0x0aad, B:355:0x0ab4, B:356:0x0acb, B:358:0x0ad4, B:361:0x0ade, B:363:0x0ae5, B:365:0x0aec, B:366:0x0af3, B:368:0x0af9, B:371:0x0b00, B:374:0x0b10, B:376:0x0b20, B:377:0x0b63, B:383:0x0b73, B:385:0x0b8c, B:387:0x0b97, B:389:0x0ba0, B:390:0x0ba6, B:394:0x0bb5, B:398:0x0bd8, B:400:0x0be2, B:401:0x0be8, B:403:0x0bf8, B:405:0x0c00, B:409:0x0c26, B:414:0x0c47, B:415:0x0c51, B:417:0x0c5b, B:419:0x0c7e, B:421:0x0c88, B:425:0x0c9a, B:426:0x0caa, B:428:0x0cbc, B:429:0x0cd3, B:430:0x0cda, B:431:0x0ce0, B:433:0x0ce7, B:435:0x0cf7, B:440:0x0d30, B:442:0x0d44, B:447:0x0d57, B:449:0x0d61, B:456:0x0d7c, B:466:0x0da1, B:468:0x0da6, B:470:0x0dae, B:472:0x0dc0, B:474:0x0dde, B:478:0x0e01, B:481:0x0e0e, B:483:0x0e17, B:484:0x0e23, B:487:0x0e2f, B:491:0x0e3c, B:493:0x0e4e, B:494:0x0e56, B:498:0x0e6b, B:501:0x0e7a, B:503:0x0e90, B:505:0x0e96, B:506:0x0ec6, B:509:0x0ef4, B:512:0x0efd, B:514:0x0f08, B:517:0x0f15, B:520:0x0f20, B:523:0x0f2c, B:525:0x0f3e, B:527:0x0f45, B:531:0x0f56, B:532:0x0f65, B:534:0x0f6c, B:537:0x0f75, B:540:0x0f7d, B:542:0x0f83, B:544:0x0f90, B:545:0x0f9a, B:547:0x0fa2, B:549:0x0fa9, B:551:0x0fb6, B:552:0x0fc0, B:553:0x0fc8, B:553:0x0fc8, B:560:0x0fde, B:565:0x0fee, B:567:0x0ffe, B:569:0x1009, B:572:0x1015, B:575:0x102b, B:577:0x1039, B:579:0x1052, B:581:0x1057, B:583:0x1062, B:585:0x1074, B:587:0x1080), top: B:610:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:353:0x0aad A[Catch: IOException -> 0x0fd0, zzamy -> 0x0fd7, RuntimeException -> 0x10b4, TRY_ENTER, TryCatch #3 {RuntimeException -> 0x10b4, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c9, B:85:0x01e0, B:88:0x01e3, B:93:0x01f5, B:98:0x01fa, B:100:0x01fc, B:105:0x020b, B:108:0x0215, B:112:0x0221, B:117:0x023d, B:119:0x027f, B:121:0x028d, B:125:0x029e, B:131:0x02c1, B:137:0x02df, B:139:0x02eb, B:143:0x02f9, B:145:0x0305, B:147:0x0310, B:150:0x0325, B:151:0x0330, B:153:0x0339, B:154:0x0353, B:157:0x0361, B:158:0x036d, B:160:0x037e, B:162:0x039e, B:163:0x03b1, B:169:0x03c6, B:171:0x03d0, B:173:0x03e2, B:175:0x03eb, B:177:0x03f1, B:179:0x0404, B:182:0x0410, B:184:0x0433, B:186:0x044e, B:188:0x0453, B:190:0x047c, B:192:0x0483, B:194:0x049f, B:195:0x04a9, B:196:0x04d0, B:198:0x04de, B:200:0x04e5, B:201:0x04ef, B:204:0x051e, B:207:0x052c, B:210:0x0535, B:211:0x053f, B:214:0x0552, B:216:0x0564, B:217:0x056e, B:219:0x05bd, B:221:0x05c5, B:225:0x05dc, B:226:0x05e5, B:227:0x0607, B:232:0x062a, B:234:0x063b, B:236:0x0643, B:238:0x0678, B:240:0x0682, B:243:0x069f, B:245:0x06ba, B:252:0x06f1, B:253:0x071b, B:255:0x072c, B:257:0x0734, B:258:0x0746, B:267:0x0758, B:269:0x075a, B:271:0x075f, B:273:0x0772, B:274:0x077e, B:276:0x0788, B:278:0x079b, B:280:0x07aa, B:281:0x07bc, B:283:0x07c8, B:284:0x0803, B:289:0x0817, B:296:0x0857, B:298:0x0875, B:304:0x0892, B:307:0x08b9, B:308:0x08da, B:309:0x08db, B:309:0x08db, B:310:0x08de, B:312:0x08e7, B:313:0x08f3, B:315:0x08fc, B:316:0x0908, B:318:0x0915, B:320:0x091c, B:322:0x0934, B:324:0x093d, B:327:0x094f, B:329:0x0967, B:331:0x0971, B:332:0x097d, B:334:0x0984, B:336:0x098f, B:338:0x09b4, B:340:0x09fe, B:342:0x0a16, B:345:0x0a28, B:346:0x0a4a, B:349:0x0a58, B:351:0x0a60, B:353:0x0aad, B:355:0x0ab4, B:356:0x0acb, B:358:0x0ad4, B:361:0x0ade, B:363:0x0ae5, B:365:0x0aec, B:366:0x0af3, B:368:0x0af9, B:371:0x0b00, B:374:0x0b10, B:376:0x0b20, B:377:0x0b63, B:383:0x0b73, B:385:0x0b8c, B:387:0x0b97, B:389:0x0ba0, B:390:0x0ba6, B:394:0x0bb5, B:398:0x0bd8, B:400:0x0be2, B:401:0x0be8, B:403:0x0bf8, B:405:0x0c00, B:409:0x0c26, B:414:0x0c47, B:415:0x0c51, B:417:0x0c5b, B:419:0x0c7e, B:421:0x0c88, B:425:0x0c9a, B:426:0x0caa, B:428:0x0cbc, B:429:0x0cd3, B:430:0x0cda, B:431:0x0ce0, B:433:0x0ce7, B:435:0x0cf7, B:440:0x0d30, B:442:0x0d44, B:447:0x0d57, B:449:0x0d61, B:456:0x0d7c, B:466:0x0da1, B:468:0x0da6, B:470:0x0dae, B:472:0x0dc0, B:474:0x0dde, B:478:0x0e01, B:481:0x0e0e, B:483:0x0e17, B:484:0x0e23, B:487:0x0e2f, B:491:0x0e3c, B:493:0x0e4e, B:494:0x0e56, B:498:0x0e6b, B:501:0x0e7a, B:503:0x0e90, B:505:0x0e96, B:506:0x0ec6, B:509:0x0ef4, B:512:0x0efd, B:514:0x0f08, B:517:0x0f15, B:520:0x0f20, B:523:0x0f2c, B:525:0x0f3e, B:527:0x0f45, B:531:0x0f56, B:532:0x0f65, B:534:0x0f6c, B:537:0x0f75, B:540:0x0f7d, B:542:0x0f83, B:544:0x0f90, B:545:0x0f9a, B:547:0x0fa2, B:549:0x0fa9, B:551:0x0fb6, B:552:0x0fc0, B:553:0x0fc8, B:553:0x0fc8, B:560:0x0fde, B:565:0x0fee, B:567:0x0ffe, B:569:0x1009, B:572:0x1015, B:575:0x102b, B:577:0x1039, B:579:0x1052, B:581:0x1057, B:583:0x1062, B:585:0x1074, B:587:0x1080), top: B:610:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0aff A[LOOP:7: B:370:0x0aff->B:376:0x0b20, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:456:0x0d7c A[Catch: IOException -> 0x10a6, zzamy -> 0x10ad, RuntimeException -> 0x10b4, TRY_ENTER, TryCatch #3 {RuntimeException -> 0x10b4, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c9, B:85:0x01e0, B:88:0x01e3, B:93:0x01f5, B:98:0x01fa, B:100:0x01fc, B:105:0x020b, B:108:0x0215, B:112:0x0221, B:117:0x023d, B:119:0x027f, B:121:0x028d, B:125:0x029e, B:131:0x02c1, B:137:0x02df, B:139:0x02eb, B:143:0x02f9, B:145:0x0305, B:147:0x0310, B:150:0x0325, B:151:0x0330, B:153:0x0339, B:154:0x0353, B:157:0x0361, B:158:0x036d, B:160:0x037e, B:162:0x039e, B:163:0x03b1, B:169:0x03c6, B:171:0x03d0, B:173:0x03e2, B:175:0x03eb, B:177:0x03f1, B:179:0x0404, B:182:0x0410, B:184:0x0433, B:186:0x044e, B:188:0x0453, B:190:0x047c, B:192:0x0483, B:194:0x049f, B:195:0x04a9, B:196:0x04d0, B:198:0x04de, B:200:0x04e5, B:201:0x04ef, B:204:0x051e, B:207:0x052c, B:210:0x0535, B:211:0x053f, B:214:0x0552, B:216:0x0564, B:217:0x056e, B:219:0x05bd, B:221:0x05c5, B:225:0x05dc, B:226:0x05e5, B:227:0x0607, B:232:0x062a, B:234:0x063b, B:236:0x0643, B:238:0x0678, B:240:0x0682, B:243:0x069f, B:245:0x06ba, B:252:0x06f1, B:253:0x071b, B:255:0x072c, B:257:0x0734, B:258:0x0746, B:267:0x0758, B:269:0x075a, B:271:0x075f, B:273:0x0772, B:274:0x077e, B:276:0x0788, B:278:0x079b, B:280:0x07aa, B:281:0x07bc, B:283:0x07c8, B:284:0x0803, B:289:0x0817, B:296:0x0857, B:298:0x0875, B:304:0x0892, B:307:0x08b9, B:308:0x08da, B:309:0x08db, B:309:0x08db, B:310:0x08de, B:312:0x08e7, B:313:0x08f3, B:315:0x08fc, B:316:0x0908, B:318:0x0915, B:320:0x091c, B:322:0x0934, B:324:0x093d, B:327:0x094f, B:329:0x0967, B:331:0x0971, B:332:0x097d, B:334:0x0984, B:336:0x098f, B:338:0x09b4, B:340:0x09fe, B:342:0x0a16, B:345:0x0a28, B:346:0x0a4a, B:349:0x0a58, B:351:0x0a60, B:353:0x0aad, B:355:0x0ab4, B:356:0x0acb, B:358:0x0ad4, B:361:0x0ade, B:363:0x0ae5, B:365:0x0aec, B:366:0x0af3, B:368:0x0af9, B:371:0x0b00, B:374:0x0b10, B:376:0x0b20, B:377:0x0b63, B:383:0x0b73, B:385:0x0b8c, B:387:0x0b97, B:389:0x0ba0, B:390:0x0ba6, B:394:0x0bb5, B:398:0x0bd8, B:400:0x0be2, B:401:0x0be8, B:403:0x0bf8, B:405:0x0c00, B:409:0x0c26, B:414:0x0c47, B:415:0x0c51, B:417:0x0c5b, B:419:0x0c7e, B:421:0x0c88, B:425:0x0c9a, B:426:0x0caa, B:428:0x0cbc, B:429:0x0cd3, B:430:0x0cda, B:431:0x0ce0, B:433:0x0ce7, B:435:0x0cf7, B:440:0x0d30, B:442:0x0d44, B:447:0x0d57, B:449:0x0d61, B:456:0x0d7c, B:466:0x0da1, B:468:0x0da6, B:470:0x0dae, B:472:0x0dc0, B:474:0x0dde, B:478:0x0e01, B:481:0x0e0e, B:483:0x0e17, B:484:0x0e23, B:487:0x0e2f, B:491:0x0e3c, B:493:0x0e4e, B:494:0x0e56, B:498:0x0e6b, B:501:0x0e7a, B:503:0x0e90, B:505:0x0e96, B:506:0x0ec6, B:509:0x0ef4, B:512:0x0efd, B:514:0x0f08, B:517:0x0f15, B:520:0x0f20, B:523:0x0f2c, B:525:0x0f3e, B:527:0x0f45, B:531:0x0f56, B:532:0x0f65, B:534:0x0f6c, B:537:0x0f75, B:540:0x0f7d, B:542:0x0f83, B:544:0x0f90, B:545:0x0f9a, B:547:0x0fa2, B:549:0x0fa9, B:551:0x0fb6, B:552:0x0fc0, B:553:0x0fc8, B:553:0x0fc8, B:560:0x0fde, B:565:0x0fee, B:567:0x0ffe, B:569:0x1009, B:572:0x1015, B:575:0x102b, B:577:0x1039, B:579:0x1052, B:581:0x1057, B:583:0x1062, B:585:0x1074, B:587:0x1080), top: B:610:0x0000 }] */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v124, types: [long] */
    /* JADX WARN: Type inference failed for: r0v192, types: [long] */
    /* JADX WARN: Type inference failed for: r0v195, types: [long] */
    /* JADX WARN: Type inference failed for: r0v197, types: [long] */
    /* JADX WARN: Type inference failed for: r0v393, types: [long] */
    /* JADX WARN: Type inference failed for: r0v395, types: [long] */
    /* JADX WARN: Type inference failed for: r0v425, types: [long] */
    /* JADX WARN: Type inference failed for: r0v428, types: [long] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r17) {
        /*
            Method dump skipped, instructions count: 4350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzank.handleMessage(android.os.Message):boolean");
    }

    public final void zza() {
        this.zzG = true;
    }

    public final void zzb(zzasr zzasrVar, boolean z) {
        this.zze.obtainMessage(0, 1, 0, zzasrVar).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.zzatc
    public final /* bridge */ /* synthetic */ void zzbh(zzasp zzaspVar) {
        this.zze.obtainMessage(9, zzaspVar).sendToTarget();
    }

    public final void zzc(boolean z) {
        this.zze.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
    }

    public final void zzd(zzanx zzanxVar, int i, long j) {
        this.zze.obtainMessage(3, new zzani(zzanxVar, 0, j)).sendToTarget();
    }

    public final void zze() {
        this.zze.sendEmptyMessage(5);
    }

    public final void zzf(zzanb... zzanbVarArr) {
        if (this.zzq) {
            return;
        }
        this.zzw++;
        this.zze.obtainMessage(11, zzanbVarArr).sendToTarget();
    }

    public final void zzg(zzanb... zzanbVarArr) {
        synchronized (this) {
            if (this.zzq) {
                return;
            }
            int i = this.zzw;
            this.zzw = i + 1;
            this.zze.obtainMessage(11, zzanbVarArr).sendToTarget();
            while (this.zzx <= i) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
        }
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

    @Override // com.google.android.gms.internal.ads.zzasq
    public final void zzi(zzanx zzanxVar, Object obj) {
        this.zze.obtainMessage(7, Pair.create(zzanxVar, null)).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.zzaso
    public final void zzj(zzasp zzaspVar) {
        this.zze.obtainMessage(8, zzaspVar).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.zzatt
    public final void zzk() {
        this.zze.sendEmptyMessage(10);
    }

    public final void zzl(int i) {
        this.zzH = i;
    }

    public final void zzm(int i) {
        this.zzI = i;
    }
}
