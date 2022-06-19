package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzhm.class */
public final class zzhm implements Handler.Callback, zznb, zznd, zzok {
    private final Handler handler;
    private int repeatMode = 0;
    private int state = 1;
    private final zzhy[] zzaeq;
    private final zzoh zzaer;
    private final Handler zzaet;
    private final zzie zzaew;
    private final zzif zzaex;
    private boolean zzaez;
    private boolean zzafd;
    private zzid zzafe;
    private zzhz zzafi;
    private zzho zzafj;
    private final zzib[] zzafn;
    private final zzhx zzafo;
    private final zzps zzafp;
    private final HandlerThread zzafq;
    private final zzhh zzafr;
    private zzhy zzafs;
    private zzpk zzaft;
    private zzne zzafu;
    private zzhy[] zzafv;
    private boolean zzafw;
    private boolean zzafx;
    private int zzafy;
    private int zzafz;
    private long zzaga;
    private int zzagb;
    private zzhr zzagc;
    private long zzagd;
    private zzhp zzage;
    private zzhp zzagf;
    private zzhp zzagg;

    public zzhm(zzhy[] zzhyVarArr, zzoh zzohVar, zzhx zzhxVar, boolean z, int i, Handler handler, zzho zzhoVar, zzhh zzhhVar) {
        this.zzaeq = zzhyVarArr;
        this.zzaer = zzohVar;
        this.zzafo = zzhxVar;
        this.zzaez = z;
        this.zzaet = handler;
        this.zzafj = zzhoVar;
        this.zzafr = zzhhVar;
        this.zzafn = new zzib[zzhyVarArr.length];
        for (int i2 = 0; i2 < zzhyVarArr.length; i2++) {
            zzhyVarArr[i2].setIndex(i2);
            this.zzafn[i2] = zzhyVarArr[i2].zzdz();
        }
        this.zzafp = new zzps();
        this.zzafv = new zzhy[0];
        this.zzaew = new zzie();
        this.zzaex = new zzif();
        zzohVar.zza(this);
        this.zzafi = zzhz.zzaia;
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.zzafq = handlerThread;
        handlerThread.start();
        this.handler = new Handler(handlerThread.getLooper(), this);
    }

    private final void setState(int i) {
        if (this.state != i) {
            this.state = i;
            this.zzaet.obtainMessage(1, i, 0).sendToTarget();
        }
    }

    private final int zza(int i, zzid zzidVar, zzid zzidVar2) {
        int zzfg = zzidVar.zzfg();
        int i2 = i;
        int i3 = -1;
        for (int i4 = 0; i4 < zzfg && i3 == -1; i4++) {
            i2 = zzidVar.zza(i2, this.zzaex, this.zzaew, this.repeatMode);
            i3 = zzidVar2.zzc(zzidVar.zza(i2, this.zzaex, true).zzagn);
        }
        return i3;
    }

    private final Pair<Integer, Long> zza(zzhr zzhrVar) {
        zzid zzidVar = zzhrVar.zzafe;
        zzid zzidVar2 = zzidVar;
        if (zzidVar.isEmpty()) {
            zzidVar2 = this.zzafe;
        }
        try {
            Pair<Integer, Long> zzb = zzb(zzidVar2, zzhrVar.zzagy, zzhrVar.zzagz);
            zzid zzidVar3 = this.zzafe;
            if (zzidVar3 == zzidVar2) {
                return zzb;
            }
            int zzc = zzidVar3.zzc(zzidVar2.zza(((Integer) zzb.first).intValue(), this.zzaex, true).zzagn);
            if (zzc != -1) {
                return Pair.create(Integer.valueOf(zzc), (Long) zzb.second);
            }
            int zza = zza(((Integer) zzb.first).intValue(), zzidVar2, this.zzafe);
            if (zza == -1) {
                return null;
            }
            this.zzafe.zza(zza, this.zzaex, false);
            return zzc(0, -9223372036854775807L);
        } catch (IndexOutOfBoundsException e) {
            throw new zzhu(this.zzafe, zzhrVar.zzagy, zzhrVar.zzagz);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Pair<Integer, Long> zza(zzid zzidVar, int i, long j, long j2) {
        zzpg.zzc(i, 0, zzidVar.zzff());
        zzidVar.zza(i, this.zzaew, false, j2);
        char c = j;
        if (j == -9223372036854775807L) {
            c = 0;
        }
        long j3 = c + 0;
        if (zzidVar.zza(0, this.zzaex, false).zzaip != -9223372036854775807L) {
        }
        return Pair.create(0, Long.valueOf(j3));
    }

    private final void zza(long j, long j2) {
        this.handler.removeMessages(2);
        long elapsedRealtime = (j + j2) - SystemClock.elapsedRealtime();
        if (elapsedRealtime <= 0) {
            this.handler.sendEmptyMessage(2);
        } else {
            this.handler.sendEmptyMessageDelayed(2, elapsedRealtime);
        }
    }

    private static void zza(zzhp zzhpVar) {
        while (zzhpVar != null) {
            zzhpVar.release();
            zzhpVar = zzhpVar.zzagu;
        }
    }

    private static void zza(zzhy zzhyVar) throws zzhe {
        if (zzhyVar.getState() == 2) {
            zzhyVar.stop();
        }
    }

    private final void zza(Object obj, int i) {
        this.zzafj = new zzho(0, 0L);
        zzb(obj, i);
        this.zzafj = new zzho(0, -9223372036854775807L);
        setState(4);
        zzi(false);
    }

    private final void zza(boolean[] zArr, int i) throws zzhe {
        this.zzafv = new zzhy[i];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            zzhy[] zzhyVarArr = this.zzaeq;
            if (i2 < zzhyVarArr.length) {
                zzhy zzhyVar = zzhyVarArr[i2];
                zzog zzbe = this.zzagg.zzagv.zzbhy.zzbe(i2);
                int i5 = i4;
                if (zzbe != null) {
                    this.zzafv[i4] = zzhyVar;
                    if (zzhyVar.getState() == 0) {
                        zzia zziaVar = this.zzagg.zzagv.zzbia[i2];
                        boolean z = this.zzaez && this.state == 3;
                        boolean z2 = !zArr[i2] && z;
                        int length = zzbe.length();
                        zzht[] zzhtVarArr = new zzht[length];
                        for (int i6 = 0; i6 < length; i6++) {
                            zzhtVarArr[i6] = zzbe.zzbb(i6);
                        }
                        zzhyVar.zza(zziaVar, zzhtVarArr, this.zzagg.zzago[i2], this.zzagd, z2, this.zzagg.zzew());
                        zzpk zzea = zzhyVar.zzea();
                        if (zzea != null) {
                            if (this.zzaft != null) {
                                throw zzhe.zza(new IllegalStateException("Multiple renderer media clocks enabled."));
                            }
                            this.zzaft = zzea;
                            this.zzafs = zzhyVar;
                            zzea.zzb(this.zzafi);
                        }
                        if (z) {
                            zzhyVar.start();
                        }
                    }
                    i5 = i4 + 1;
                }
                i2++;
                i3 = i5;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    private final long zzb(int i, long j) throws zzhe {
        zzhp zzhpVar;
        char c;
        zzer();
        this.zzafx = false;
        setState(2);
        zzhp zzhpVar2 = this.zzagg;
        if (zzhpVar2 != null) {
            zzhp zzhpVar3 = null;
            while (true) {
                zzhpVar = zzhpVar3;
                if (zzhpVar2 == null) {
                    break;
                }
                if (zzhpVar2.zzagi != i || !zzhpVar2.zzags) {
                    zzhpVar2.release();
                } else {
                    zzhpVar3 = zzhpVar2;
                }
                zzhpVar2 = zzhpVar2.zzagu;
            }
        } else {
            zzhp zzhpVar4 = this.zzage;
            if (zzhpVar4 != null) {
                zzhpVar4.release();
            }
            zzhpVar = null;
        }
        zzhp zzhpVar5 = this.zzagg;
        if (zzhpVar5 != zzhpVar || zzhpVar5 != this.zzagf) {
            for (zzhy zzhyVar : this.zzafv) {
                zzhyVar.disable();
            }
            this.zzafv = new zzhy[0];
            this.zzaft = null;
            this.zzafs = null;
            this.zzagg = null;
        }
        if (zzhpVar != null) {
            zzhpVar.zzagu = null;
            this.zzage = zzhpVar;
            this.zzagf = zzhpVar;
            zzb(zzhpVar);
            char c2 = j;
            if (this.zzagg.zzagt) {
                c2 = this.zzagg.zzagm.zzeg(j);
            }
            zzdq(c2);
            zzev();
            c = c2;
        } else {
            this.zzage = null;
            this.zzagf = null;
            this.zzagg = null;
            zzdq(j);
            c = j;
        }
        this.handler.sendEmptyMessage(2);
        return c;
    }

    private final Pair<Integer, Long> zzb(zzid zzidVar, int i, long j) {
        return zza(zzidVar, i, j, 0L);
    }

    private final void zzb(zzhp zzhpVar) throws zzhe {
        if (this.zzagg == zzhpVar) {
            return;
        }
        boolean[] zArr = new boolean[this.zzaeq.length];
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            zzhy[] zzhyVarArr = this.zzaeq;
            if (i >= zzhyVarArr.length) {
                this.zzagg = zzhpVar;
                this.zzaet.obtainMessage(3, zzhpVar.zzagv).sendToTarget();
                zza(zArr, i3);
                return;
            }
            zzhy zzhyVar = zzhyVarArr[i];
            zArr[i] = zzhyVar.getState() != 0;
            zzog zzbe = zzhpVar.zzagv.zzbhy.zzbe(i);
            int i4 = i3;
            if (zzbe != null) {
                i4 = i3 + 1;
            }
            if (zArr[i] && (zzbe == null || (zzhyVar.zzee() && zzhyVar.zzeb() == this.zzagg.zzago[i]))) {
                if (zzhyVar == this.zzafs) {
                    this.zzafp.zza(this.zzaft);
                    this.zzaft = null;
                    this.zzafs = null;
                }
                zza(zzhyVar);
                zzhyVar.disable();
            }
            i++;
            i2 = i4;
        }
    }

    private final void zzb(Object obj, int i) {
        this.zzaet.obtainMessage(6, new zzhq(this.zzafe, obj, this.zzafj, i)).sendToTarget();
    }

    private final Pair<Integer, Long> zzc(int i, long j) {
        return zzb(this.zzafe, 0, -9223372036854775807L);
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    private final void zzdq(long j) throws zzhe {
        zzhp zzhpVar = this.zzagg;
        long zzew = j + (zzhpVar == null ? (char) 34560 : zzhpVar.zzew());
        this.zzagd = zzew;
        this.zzafp.zzel(zzew);
        for (zzhy zzhyVar : this.zzafv) {
            zzhyVar.zzdm(this.zzagd);
        }
    }

    private final boolean zzdr(long j) {
        if (j == -9223372036854775807L || this.zzafj.zzagk < j) {
            return true;
        }
        return this.zzagg.zzagu != null && this.zzagg.zzagu.zzags;
    }

    private final void zzeq() throws zzhe {
        this.zzafx = false;
        this.zzafp.start();
        for (zzhy zzhyVar : this.zzafv) {
            zzhyVar.start();
        }
    }

    private final void zzer() throws zzhe {
        this.zzafp.stop();
        for (zzhy zzhyVar : this.zzafv) {
            zza(zzhyVar);
        }
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    private final void zzes() throws zzhe {
        zzhp zzhpVar = this.zzagg;
        if (zzhpVar == null) {
            return;
        }
        char zzhq = zzhpVar.zzagm.zzhq();
        if (zzhq != -9223372036854775807L) {
            zzdq(zzhq);
        } else {
            zzhy zzhyVar = this.zzafs;
            if (zzhyVar == null || zzhyVar.zzfe()) {
                this.zzagd = this.zzafp.zzgc();
            } else {
                long zzgc = this.zzaft.zzgc();
                this.zzagd = zzgc;
                this.zzafp.zzel(zzgc);
            }
            zzhq = this.zzagd - this.zzagg.zzew();
        }
        this.zzafj.zzagk = zzhq;
        this.zzaga = SystemClock.elapsedRealtime() * 1000;
        char zzhr = this.zzafv.length == 0 ? (char) 0 : this.zzagg.zzagm.zzhr();
        zzho zzhoVar = this.zzafj;
        char c = zzhr;
        if (zzhr == Long.MIN_VALUE) {
            c = this.zzafe.zza(this.zzagg.zzagi, this.zzaex, false).zzaip;
        }
        zzhoVar.zzagl = c;
    }

    private final void zzet() {
        zzi(true);
        this.zzafo.onStopped();
        setState(1);
    }

    private final void zzeu() throws IOException {
        zzhp zzhpVar = this.zzage;
        if (zzhpVar == null || zzhpVar.zzags) {
            return;
        }
        zzhp zzhpVar2 = this.zzagf;
        if (zzhpVar2 != null && zzhpVar2.zzagu != this.zzage) {
            return;
        }
        for (zzhy zzhyVar : this.zzafv) {
            if (!zzhyVar.zzec()) {
                return;
            }
        }
        this.zzage.zzagm.zzho();
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    private final void zzev() {
        char zzhn = !this.zzage.zzags ? (char) 0 : this.zzage.zzagm.zzhn();
        if (zzhn == Long.MIN_VALUE) {
            zzh(false);
            return;
        }
        long zzew = this.zzagd - this.zzage.zzew();
        boolean zzdt = this.zzafo.zzdt(zzhn - zzew);
        zzh(zzdt);
        if (!zzdt) {
            return;
        }
        this.zzage.zzagm.zzee(zzew);
    }

    private final void zzh(boolean z) {
        if (this.zzafd != z) {
            this.zzafd = z;
            this.zzaet.obtainMessage(2, z ? 1 : 0, 0).sendToTarget();
        }
    }

    private final void zzi(boolean z) {
        zzhy[] zzhyVarArr;
        this.handler.removeMessages(2);
        this.zzafx = false;
        this.zzafp.stop();
        this.zzaft = null;
        this.zzafs = null;
        this.zzagd = 60000000L;
        for (zzhy zzhyVar : this.zzafv) {
            try {
                zza(zzhyVar);
                zzhyVar.disable();
            } catch (zzhe | RuntimeException e) {
                Log.e("ExoPlayerImplInternal", "Stop failed.", e);
            }
        }
        this.zzafv = new zzhy[0];
        zzhp zzhpVar = this.zzagg;
        if (zzhpVar == null) {
            zzhpVar = this.zzage;
        }
        zza(zzhpVar);
        this.zzage = null;
        this.zzagf = null;
        this.zzagg = null;
        zzh(false);
        if (z) {
            zzne zzneVar = this.zzafu;
            if (zzneVar != null) {
                zzneVar.zzia();
                this.zzafu = null;
            }
            this.zzafe = null;
        }
    }

    private final boolean zzu(int i) {
        this.zzafe.zza(i, this.zzaex, false);
        this.zzafe.zza(0, this.zzaew, false);
        return this.zzafe.zza(i, this.zzaex, this.zzaew, this.repeatMode) == -1;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0516 A[Catch: IOException -> 0x1063, zzhe -> 0x1067, RuntimeException -> 0x106b, TRY_ENTER, TryCatch #9 {RuntimeException -> 0x106b, blocks: (B:2:0x0000, B:6:0x0052, B:8:0x006a, B:11:0x0073, B:16:0x0082, B:21:0x0093, B:26:0x00b7, B:28:0x00c3, B:34:0x00df, B:39:0x00fa, B:41:0x0101, B:43:0x010e, B:45:0x011e, B:48:0x0127, B:50:0x0130, B:52:0x0155, B:56:0x0161, B:58:0x0168, B:70:0x01a9, B:79:0x01c0, B:82:0x01c3, B:87:0x01d5, B:92:0x01da, B:94:0x01dc, B:99:0x01eb, B:102:0x01f5, B:105:0x01fd, B:109:0x0207, B:112:0x0214, B:117:0x0230, B:119:0x0278, B:121:0x0286, B:123:0x0293, B:127:0x02a8, B:133:0x02c2, B:139:0x02e3, B:141:0x02ef, B:145:0x02fd, B:147:0x0309, B:149:0x0314, B:152:0x0329, B:153:0x0334, B:155:0x033d, B:156:0x0356, B:159:0x0364, B:160:0x0370, B:162:0x0382, B:164:0x03a8, B:166:0x03ba, B:168:0x03cd, B:171:0x03d9, B:173:0x03df, B:175:0x03f1, B:178:0x03fd, B:180:0x0420, B:182:0x043b, B:184:0x0440, B:186:0x0464, B:188:0x046b, B:190:0x0489, B:191:0x0493, B:192:0x04b9, B:194:0x04c7, B:196:0x04d1, B:197:0x04db, B:200:0x050a, B:202:0x0516, B:205:0x051f, B:208:0x0532, B:211:0x0548, B:212:0x0552, B:214:0x05a2, B:216:0x05a8, B:220:0x05c3, B:221:0x05cc, B:222:0x05e7, B:228:0x060f, B:230:0x061b, B:232:0x0657, B:234:0x065f, B:237:0x0682, B:239:0x069d, B:246:0x06cc, B:247:0x06f6, B:249:0x0707, B:251:0x070f, B:252:0x0723, B:261:0x0735, B:263:0x0737, B:265:0x073c, B:267:0x074f, B:268:0x075b, B:270:0x0765, B:272:0x0778, B:274:0x0788, B:275:0x079b, B:277:0x07a6, B:278:0x07e1, B:283:0x07f6, B:290:0x0835, B:294:0x0859, B:300:0x0880, B:305:0x08a7, B:308:0x08b8, B:312:0x08dc, B:313:0x08eb, B:314:0x08ec, B:314:0x08ec, B:315:0x08ef, B:317:0x08f8, B:318:0x0904, B:320:0x090d, B:321:0x0919, B:323:0x0929, B:325:0x0933, B:328:0x094e, B:330:0x0955, B:333:0x096a, B:335:0x0982, B:337:0x098c, B:339:0x0998, B:341:0x099f, B:343:0x09aa, B:345:0x09cf, B:347:0x0a11, B:349:0x0a29, B:352:0x0a3b, B:353:0x0a5b, B:356:0x0a69, B:358:0x0a71, B:360:0x0abd, B:362:0x0ac4, B:364:0x0ad9, B:366:0x0ae1, B:369:0x0aeb, B:371:0x0af2, B:373:0x0af9, B:374:0x0b00, B:376:0x0b06, B:379:0x0b0d, B:381:0x0b19, B:383:0x0b28, B:384:0x0b6b, B:388:0x0b78, B:392:0x0b89, B:394:0x0b9a, B:396:0x0ba5, B:398:0x0bae, B:399:0x0bb4, B:401:0x0bbd, B:405:0x0bce, B:409:0x0bea, B:413:0x0bfc, B:415:0x0c06, B:417:0x0c13, B:423:0x0c4f, B:427:0x0c62, B:431:0x0c72, B:433:0x0c7c, B:435:0x0c9d, B:437:0x0ca7, B:441:0x0cc1, B:442:0x0cd5, B:443:0x0cf1, B:444:0x0cf8, B:445:0x0cfe, B:447:0x0d05, B:448:0x0d15, B:453:0x0d4e, B:455:0x0d62, B:460:0x0d75, B:462:0x0d7f, B:469:0x0d9a, B:479:0x0dbf, B:481:0x0dc4, B:483:0x0dcc, B:485:0x0dde, B:487:0x0dfc, B:491:0x0e1f, B:494:0x0e2c, B:496:0x0e35, B:497:0x0e41, B:500:0x0e4d, B:504:0x0e5a, B:506:0x0e6a, B:507:0x0e75, B:511:0x0e8d, B:515:0x0e9d, B:517:0x0eb6, B:522:0x0ee8, B:525:0x0ef4, B:527:0x0f00, B:530:0x0f0d, B:533:0x0f18, B:536:0x0f24, B:538:0x0f36, B:540:0x0f3d, B:544:0x0f4f, B:545:0x0f5e, B:547:0x0f65, B:550:0x0f6e, B:553:0x0f76, B:554:0x0f81, B:556:0x0f89, B:557:0x0f95, B:558:0x0f9d, B:558:0x0f9d, B:560:0x0fa2, B:565:0x0fb2, B:567:0x0fc2, B:568:0x0fcd, B:571:0x0fd9, B:574:0x0fef, B:576:0x0ffa, B:581:0x1013, B:583:0x102f, B:585:0x1041), top: B:608:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x051f A[Catch: IOException -> 0x1063, zzhe -> 0x1067, RuntimeException -> 0x106b, TRY_ENTER, TRY_LEAVE, TryCatch #9 {RuntimeException -> 0x106b, blocks: (B:2:0x0000, B:6:0x0052, B:8:0x006a, B:11:0x0073, B:16:0x0082, B:21:0x0093, B:26:0x00b7, B:28:0x00c3, B:34:0x00df, B:39:0x00fa, B:41:0x0101, B:43:0x010e, B:45:0x011e, B:48:0x0127, B:50:0x0130, B:52:0x0155, B:56:0x0161, B:58:0x0168, B:70:0x01a9, B:79:0x01c0, B:82:0x01c3, B:87:0x01d5, B:92:0x01da, B:94:0x01dc, B:99:0x01eb, B:102:0x01f5, B:105:0x01fd, B:109:0x0207, B:112:0x0214, B:117:0x0230, B:119:0x0278, B:121:0x0286, B:123:0x0293, B:127:0x02a8, B:133:0x02c2, B:139:0x02e3, B:141:0x02ef, B:145:0x02fd, B:147:0x0309, B:149:0x0314, B:152:0x0329, B:153:0x0334, B:155:0x033d, B:156:0x0356, B:159:0x0364, B:160:0x0370, B:162:0x0382, B:164:0x03a8, B:166:0x03ba, B:168:0x03cd, B:171:0x03d9, B:173:0x03df, B:175:0x03f1, B:178:0x03fd, B:180:0x0420, B:182:0x043b, B:184:0x0440, B:186:0x0464, B:188:0x046b, B:190:0x0489, B:191:0x0493, B:192:0x04b9, B:194:0x04c7, B:196:0x04d1, B:197:0x04db, B:200:0x050a, B:202:0x0516, B:205:0x051f, B:208:0x0532, B:211:0x0548, B:212:0x0552, B:214:0x05a2, B:216:0x05a8, B:220:0x05c3, B:221:0x05cc, B:222:0x05e7, B:228:0x060f, B:230:0x061b, B:232:0x0657, B:234:0x065f, B:237:0x0682, B:239:0x069d, B:246:0x06cc, B:247:0x06f6, B:249:0x0707, B:251:0x070f, B:252:0x0723, B:261:0x0735, B:263:0x0737, B:265:0x073c, B:267:0x074f, B:268:0x075b, B:270:0x0765, B:272:0x0778, B:274:0x0788, B:275:0x079b, B:277:0x07a6, B:278:0x07e1, B:283:0x07f6, B:290:0x0835, B:294:0x0859, B:300:0x0880, B:305:0x08a7, B:308:0x08b8, B:312:0x08dc, B:313:0x08eb, B:314:0x08ec, B:314:0x08ec, B:315:0x08ef, B:317:0x08f8, B:318:0x0904, B:320:0x090d, B:321:0x0919, B:323:0x0929, B:325:0x0933, B:328:0x094e, B:330:0x0955, B:333:0x096a, B:335:0x0982, B:337:0x098c, B:339:0x0998, B:341:0x099f, B:343:0x09aa, B:345:0x09cf, B:347:0x0a11, B:349:0x0a29, B:352:0x0a3b, B:353:0x0a5b, B:356:0x0a69, B:358:0x0a71, B:360:0x0abd, B:362:0x0ac4, B:364:0x0ad9, B:366:0x0ae1, B:369:0x0aeb, B:371:0x0af2, B:373:0x0af9, B:374:0x0b00, B:376:0x0b06, B:379:0x0b0d, B:381:0x0b19, B:383:0x0b28, B:384:0x0b6b, B:388:0x0b78, B:392:0x0b89, B:394:0x0b9a, B:396:0x0ba5, B:398:0x0bae, B:399:0x0bb4, B:401:0x0bbd, B:405:0x0bce, B:409:0x0bea, B:413:0x0bfc, B:415:0x0c06, B:417:0x0c13, B:423:0x0c4f, B:427:0x0c62, B:431:0x0c72, B:433:0x0c7c, B:435:0x0c9d, B:437:0x0ca7, B:441:0x0cc1, B:442:0x0cd5, B:443:0x0cf1, B:444:0x0cf8, B:445:0x0cfe, B:447:0x0d05, B:448:0x0d15, B:453:0x0d4e, B:455:0x0d62, B:460:0x0d75, B:462:0x0d7f, B:469:0x0d9a, B:479:0x0dbf, B:481:0x0dc4, B:483:0x0dcc, B:485:0x0dde, B:487:0x0dfc, B:491:0x0e1f, B:494:0x0e2c, B:496:0x0e35, B:497:0x0e41, B:500:0x0e4d, B:504:0x0e5a, B:506:0x0e6a, B:507:0x0e75, B:511:0x0e8d, B:515:0x0e9d, B:517:0x0eb6, B:522:0x0ee8, B:525:0x0ef4, B:527:0x0f00, B:530:0x0f0d, B:533:0x0f18, B:536:0x0f24, B:538:0x0f36, B:540:0x0f3d, B:544:0x0f4f, B:545:0x0f5e, B:547:0x0f65, B:550:0x0f6e, B:553:0x0f76, B:554:0x0f81, B:556:0x0f89, B:557:0x0f95, B:558:0x0f9d, B:558:0x0f9d, B:560:0x0fa2, B:565:0x0fb2, B:567:0x0fc2, B:568:0x0fcd, B:571:0x0fd9, B:574:0x0fef, B:576:0x0ffa, B:581:0x1013, B:583:0x102f, B:585:0x1041), top: B:608:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:351:0x0a31  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x0a3b A[Catch: IOException -> 0x1063, zzhe -> 0x1067, RuntimeException -> 0x106b, TRY_ENTER, TRY_LEAVE, TryCatch #9 {RuntimeException -> 0x106b, blocks: (B:2:0x0000, B:6:0x0052, B:8:0x006a, B:11:0x0073, B:16:0x0082, B:21:0x0093, B:26:0x00b7, B:28:0x00c3, B:34:0x00df, B:39:0x00fa, B:41:0x0101, B:43:0x010e, B:45:0x011e, B:48:0x0127, B:50:0x0130, B:52:0x0155, B:56:0x0161, B:58:0x0168, B:70:0x01a9, B:79:0x01c0, B:82:0x01c3, B:87:0x01d5, B:92:0x01da, B:94:0x01dc, B:99:0x01eb, B:102:0x01f5, B:105:0x01fd, B:109:0x0207, B:112:0x0214, B:117:0x0230, B:119:0x0278, B:121:0x0286, B:123:0x0293, B:127:0x02a8, B:133:0x02c2, B:139:0x02e3, B:141:0x02ef, B:145:0x02fd, B:147:0x0309, B:149:0x0314, B:152:0x0329, B:153:0x0334, B:155:0x033d, B:156:0x0356, B:159:0x0364, B:160:0x0370, B:162:0x0382, B:164:0x03a8, B:166:0x03ba, B:168:0x03cd, B:171:0x03d9, B:173:0x03df, B:175:0x03f1, B:178:0x03fd, B:180:0x0420, B:182:0x043b, B:184:0x0440, B:186:0x0464, B:188:0x046b, B:190:0x0489, B:191:0x0493, B:192:0x04b9, B:194:0x04c7, B:196:0x04d1, B:197:0x04db, B:200:0x050a, B:202:0x0516, B:205:0x051f, B:208:0x0532, B:211:0x0548, B:212:0x0552, B:214:0x05a2, B:216:0x05a8, B:220:0x05c3, B:221:0x05cc, B:222:0x05e7, B:228:0x060f, B:230:0x061b, B:232:0x0657, B:234:0x065f, B:237:0x0682, B:239:0x069d, B:246:0x06cc, B:247:0x06f6, B:249:0x0707, B:251:0x070f, B:252:0x0723, B:261:0x0735, B:263:0x0737, B:265:0x073c, B:267:0x074f, B:268:0x075b, B:270:0x0765, B:272:0x0778, B:274:0x0788, B:275:0x079b, B:277:0x07a6, B:278:0x07e1, B:283:0x07f6, B:290:0x0835, B:294:0x0859, B:300:0x0880, B:305:0x08a7, B:308:0x08b8, B:312:0x08dc, B:313:0x08eb, B:314:0x08ec, B:314:0x08ec, B:315:0x08ef, B:317:0x08f8, B:318:0x0904, B:320:0x090d, B:321:0x0919, B:323:0x0929, B:325:0x0933, B:328:0x094e, B:330:0x0955, B:333:0x096a, B:335:0x0982, B:337:0x098c, B:339:0x0998, B:341:0x099f, B:343:0x09aa, B:345:0x09cf, B:347:0x0a11, B:349:0x0a29, B:352:0x0a3b, B:353:0x0a5b, B:356:0x0a69, B:358:0x0a71, B:360:0x0abd, B:362:0x0ac4, B:364:0x0ad9, B:366:0x0ae1, B:369:0x0aeb, B:371:0x0af2, B:373:0x0af9, B:374:0x0b00, B:376:0x0b06, B:379:0x0b0d, B:381:0x0b19, B:383:0x0b28, B:384:0x0b6b, B:388:0x0b78, B:392:0x0b89, B:394:0x0b9a, B:396:0x0ba5, B:398:0x0bae, B:399:0x0bb4, B:401:0x0bbd, B:405:0x0bce, B:409:0x0bea, B:413:0x0bfc, B:415:0x0c06, B:417:0x0c13, B:423:0x0c4f, B:427:0x0c62, B:431:0x0c72, B:433:0x0c7c, B:435:0x0c9d, B:437:0x0ca7, B:441:0x0cc1, B:442:0x0cd5, B:443:0x0cf1, B:444:0x0cf8, B:445:0x0cfe, B:447:0x0d05, B:448:0x0d15, B:453:0x0d4e, B:455:0x0d62, B:460:0x0d75, B:462:0x0d7f, B:469:0x0d9a, B:479:0x0dbf, B:481:0x0dc4, B:483:0x0dcc, B:485:0x0dde, B:487:0x0dfc, B:491:0x0e1f, B:494:0x0e2c, B:496:0x0e35, B:497:0x0e41, B:500:0x0e4d, B:504:0x0e5a, B:506:0x0e6a, B:507:0x0e75, B:511:0x0e8d, B:515:0x0e9d, B:517:0x0eb6, B:522:0x0ee8, B:525:0x0ef4, B:527:0x0f00, B:530:0x0f0d, B:533:0x0f18, B:536:0x0f24, B:538:0x0f36, B:540:0x0f3d, B:544:0x0f4f, B:545:0x0f5e, B:547:0x0f65, B:550:0x0f6e, B:553:0x0f76, B:554:0x0f81, B:556:0x0f89, B:557:0x0f95, B:558:0x0f9d, B:558:0x0f9d, B:560:0x0fa2, B:565:0x0fb2, B:567:0x0fc2, B:568:0x0fcd, B:571:0x0fd9, B:574:0x0fef, B:576:0x0ffa, B:581:0x1013, B:583:0x102f, B:585:0x1041), top: B:608:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:355:0x0a64  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x0a69 A[Catch: IOException -> 0x1063, zzhe -> 0x1067, RuntimeException -> 0x106b, TRY_ENTER, TryCatch #9 {RuntimeException -> 0x106b, blocks: (B:2:0x0000, B:6:0x0052, B:8:0x006a, B:11:0x0073, B:16:0x0082, B:21:0x0093, B:26:0x00b7, B:28:0x00c3, B:34:0x00df, B:39:0x00fa, B:41:0x0101, B:43:0x010e, B:45:0x011e, B:48:0x0127, B:50:0x0130, B:52:0x0155, B:56:0x0161, B:58:0x0168, B:70:0x01a9, B:79:0x01c0, B:82:0x01c3, B:87:0x01d5, B:92:0x01da, B:94:0x01dc, B:99:0x01eb, B:102:0x01f5, B:105:0x01fd, B:109:0x0207, B:112:0x0214, B:117:0x0230, B:119:0x0278, B:121:0x0286, B:123:0x0293, B:127:0x02a8, B:133:0x02c2, B:139:0x02e3, B:141:0x02ef, B:145:0x02fd, B:147:0x0309, B:149:0x0314, B:152:0x0329, B:153:0x0334, B:155:0x033d, B:156:0x0356, B:159:0x0364, B:160:0x0370, B:162:0x0382, B:164:0x03a8, B:166:0x03ba, B:168:0x03cd, B:171:0x03d9, B:173:0x03df, B:175:0x03f1, B:178:0x03fd, B:180:0x0420, B:182:0x043b, B:184:0x0440, B:186:0x0464, B:188:0x046b, B:190:0x0489, B:191:0x0493, B:192:0x04b9, B:194:0x04c7, B:196:0x04d1, B:197:0x04db, B:200:0x050a, B:202:0x0516, B:205:0x051f, B:208:0x0532, B:211:0x0548, B:212:0x0552, B:214:0x05a2, B:216:0x05a8, B:220:0x05c3, B:221:0x05cc, B:222:0x05e7, B:228:0x060f, B:230:0x061b, B:232:0x0657, B:234:0x065f, B:237:0x0682, B:239:0x069d, B:246:0x06cc, B:247:0x06f6, B:249:0x0707, B:251:0x070f, B:252:0x0723, B:261:0x0735, B:263:0x0737, B:265:0x073c, B:267:0x074f, B:268:0x075b, B:270:0x0765, B:272:0x0778, B:274:0x0788, B:275:0x079b, B:277:0x07a6, B:278:0x07e1, B:283:0x07f6, B:290:0x0835, B:294:0x0859, B:300:0x0880, B:305:0x08a7, B:308:0x08b8, B:312:0x08dc, B:313:0x08eb, B:314:0x08ec, B:314:0x08ec, B:315:0x08ef, B:317:0x08f8, B:318:0x0904, B:320:0x090d, B:321:0x0919, B:323:0x0929, B:325:0x0933, B:328:0x094e, B:330:0x0955, B:333:0x096a, B:335:0x0982, B:337:0x098c, B:339:0x0998, B:341:0x099f, B:343:0x09aa, B:345:0x09cf, B:347:0x0a11, B:349:0x0a29, B:352:0x0a3b, B:353:0x0a5b, B:356:0x0a69, B:358:0x0a71, B:360:0x0abd, B:362:0x0ac4, B:364:0x0ad9, B:366:0x0ae1, B:369:0x0aeb, B:371:0x0af2, B:373:0x0af9, B:374:0x0b00, B:376:0x0b06, B:379:0x0b0d, B:381:0x0b19, B:383:0x0b28, B:384:0x0b6b, B:388:0x0b78, B:392:0x0b89, B:394:0x0b9a, B:396:0x0ba5, B:398:0x0bae, B:399:0x0bb4, B:401:0x0bbd, B:405:0x0bce, B:409:0x0bea, B:413:0x0bfc, B:415:0x0c06, B:417:0x0c13, B:423:0x0c4f, B:427:0x0c62, B:431:0x0c72, B:433:0x0c7c, B:435:0x0c9d, B:437:0x0ca7, B:441:0x0cc1, B:442:0x0cd5, B:443:0x0cf1, B:444:0x0cf8, B:445:0x0cfe, B:447:0x0d05, B:448:0x0d15, B:453:0x0d4e, B:455:0x0d62, B:460:0x0d75, B:462:0x0d7f, B:469:0x0d9a, B:479:0x0dbf, B:481:0x0dc4, B:483:0x0dcc, B:485:0x0dde, B:487:0x0dfc, B:491:0x0e1f, B:494:0x0e2c, B:496:0x0e35, B:497:0x0e41, B:500:0x0e4d, B:504:0x0e5a, B:506:0x0e6a, B:507:0x0e75, B:511:0x0e8d, B:515:0x0e9d, B:517:0x0eb6, B:522:0x0ee8, B:525:0x0ef4, B:527:0x0f00, B:530:0x0f0d, B:533:0x0f18, B:536:0x0f24, B:538:0x0f36, B:540:0x0f3d, B:544:0x0f4f, B:545:0x0f5e, B:547:0x0f65, B:550:0x0f6e, B:553:0x0f76, B:554:0x0f81, B:556:0x0f89, B:557:0x0f95, B:558:0x0f9d, B:558:0x0f9d, B:560:0x0fa2, B:565:0x0fb2, B:567:0x0fc2, B:568:0x0fcd, B:571:0x0fd9, B:574:0x0fef, B:576:0x0ffa, B:581:0x1013, B:583:0x102f, B:585:0x1041), top: B:608:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0abd A[Catch: IOException -> 0x1063, zzhe -> 0x1067, RuntimeException -> 0x106b, TRY_ENTER, TryCatch #9 {RuntimeException -> 0x106b, blocks: (B:2:0x0000, B:6:0x0052, B:8:0x006a, B:11:0x0073, B:16:0x0082, B:21:0x0093, B:26:0x00b7, B:28:0x00c3, B:34:0x00df, B:39:0x00fa, B:41:0x0101, B:43:0x010e, B:45:0x011e, B:48:0x0127, B:50:0x0130, B:52:0x0155, B:56:0x0161, B:58:0x0168, B:70:0x01a9, B:79:0x01c0, B:82:0x01c3, B:87:0x01d5, B:92:0x01da, B:94:0x01dc, B:99:0x01eb, B:102:0x01f5, B:105:0x01fd, B:109:0x0207, B:112:0x0214, B:117:0x0230, B:119:0x0278, B:121:0x0286, B:123:0x0293, B:127:0x02a8, B:133:0x02c2, B:139:0x02e3, B:141:0x02ef, B:145:0x02fd, B:147:0x0309, B:149:0x0314, B:152:0x0329, B:153:0x0334, B:155:0x033d, B:156:0x0356, B:159:0x0364, B:160:0x0370, B:162:0x0382, B:164:0x03a8, B:166:0x03ba, B:168:0x03cd, B:171:0x03d9, B:173:0x03df, B:175:0x03f1, B:178:0x03fd, B:180:0x0420, B:182:0x043b, B:184:0x0440, B:186:0x0464, B:188:0x046b, B:190:0x0489, B:191:0x0493, B:192:0x04b9, B:194:0x04c7, B:196:0x04d1, B:197:0x04db, B:200:0x050a, B:202:0x0516, B:205:0x051f, B:208:0x0532, B:211:0x0548, B:212:0x0552, B:214:0x05a2, B:216:0x05a8, B:220:0x05c3, B:221:0x05cc, B:222:0x05e7, B:228:0x060f, B:230:0x061b, B:232:0x0657, B:234:0x065f, B:237:0x0682, B:239:0x069d, B:246:0x06cc, B:247:0x06f6, B:249:0x0707, B:251:0x070f, B:252:0x0723, B:261:0x0735, B:263:0x0737, B:265:0x073c, B:267:0x074f, B:268:0x075b, B:270:0x0765, B:272:0x0778, B:274:0x0788, B:275:0x079b, B:277:0x07a6, B:278:0x07e1, B:283:0x07f6, B:290:0x0835, B:294:0x0859, B:300:0x0880, B:305:0x08a7, B:308:0x08b8, B:312:0x08dc, B:313:0x08eb, B:314:0x08ec, B:314:0x08ec, B:315:0x08ef, B:317:0x08f8, B:318:0x0904, B:320:0x090d, B:321:0x0919, B:323:0x0929, B:325:0x0933, B:328:0x094e, B:330:0x0955, B:333:0x096a, B:335:0x0982, B:337:0x098c, B:339:0x0998, B:341:0x099f, B:343:0x09aa, B:345:0x09cf, B:347:0x0a11, B:349:0x0a29, B:352:0x0a3b, B:353:0x0a5b, B:356:0x0a69, B:358:0x0a71, B:360:0x0abd, B:362:0x0ac4, B:364:0x0ad9, B:366:0x0ae1, B:369:0x0aeb, B:371:0x0af2, B:373:0x0af9, B:374:0x0b00, B:376:0x0b06, B:379:0x0b0d, B:381:0x0b19, B:383:0x0b28, B:384:0x0b6b, B:388:0x0b78, B:392:0x0b89, B:394:0x0b9a, B:396:0x0ba5, B:398:0x0bae, B:399:0x0bb4, B:401:0x0bbd, B:405:0x0bce, B:409:0x0bea, B:413:0x0bfc, B:415:0x0c06, B:417:0x0c13, B:423:0x0c4f, B:427:0x0c62, B:431:0x0c72, B:433:0x0c7c, B:435:0x0c9d, B:437:0x0ca7, B:441:0x0cc1, B:442:0x0cd5, B:443:0x0cf1, B:444:0x0cf8, B:445:0x0cfe, B:447:0x0d05, B:448:0x0d15, B:453:0x0d4e, B:455:0x0d62, B:460:0x0d75, B:462:0x0d7f, B:469:0x0d9a, B:479:0x0dbf, B:481:0x0dc4, B:483:0x0dcc, B:485:0x0dde, B:487:0x0dfc, B:491:0x0e1f, B:494:0x0e2c, B:496:0x0e35, B:497:0x0e41, B:500:0x0e4d, B:504:0x0e5a, B:506:0x0e6a, B:507:0x0e75, B:511:0x0e8d, B:515:0x0e9d, B:517:0x0eb6, B:522:0x0ee8, B:525:0x0ef4, B:527:0x0f00, B:530:0x0f0d, B:533:0x0f18, B:536:0x0f24, B:538:0x0f36, B:540:0x0f3d, B:544:0x0f4f, B:545:0x0f5e, B:547:0x0f65, B:550:0x0f6e, B:553:0x0f76, B:554:0x0f81, B:556:0x0f89, B:557:0x0f95, B:558:0x0f9d, B:558:0x0f9d, B:560:0x0fa2, B:565:0x0fb2, B:567:0x0fc2, B:568:0x0fcd, B:571:0x0fd9, B:574:0x0fef, B:576:0x0ffa, B:581:0x1013, B:583:0x102f, B:585:0x1041), top: B:608:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:366:0x0ae1 A[Catch: IOException -> 0x1063, zzhe -> 0x1067, RuntimeException -> 0x106b, TRY_ENTER, TryCatch #9 {RuntimeException -> 0x106b, blocks: (B:2:0x0000, B:6:0x0052, B:8:0x006a, B:11:0x0073, B:16:0x0082, B:21:0x0093, B:26:0x00b7, B:28:0x00c3, B:34:0x00df, B:39:0x00fa, B:41:0x0101, B:43:0x010e, B:45:0x011e, B:48:0x0127, B:50:0x0130, B:52:0x0155, B:56:0x0161, B:58:0x0168, B:70:0x01a9, B:79:0x01c0, B:82:0x01c3, B:87:0x01d5, B:92:0x01da, B:94:0x01dc, B:99:0x01eb, B:102:0x01f5, B:105:0x01fd, B:109:0x0207, B:112:0x0214, B:117:0x0230, B:119:0x0278, B:121:0x0286, B:123:0x0293, B:127:0x02a8, B:133:0x02c2, B:139:0x02e3, B:141:0x02ef, B:145:0x02fd, B:147:0x0309, B:149:0x0314, B:152:0x0329, B:153:0x0334, B:155:0x033d, B:156:0x0356, B:159:0x0364, B:160:0x0370, B:162:0x0382, B:164:0x03a8, B:166:0x03ba, B:168:0x03cd, B:171:0x03d9, B:173:0x03df, B:175:0x03f1, B:178:0x03fd, B:180:0x0420, B:182:0x043b, B:184:0x0440, B:186:0x0464, B:188:0x046b, B:190:0x0489, B:191:0x0493, B:192:0x04b9, B:194:0x04c7, B:196:0x04d1, B:197:0x04db, B:200:0x050a, B:202:0x0516, B:205:0x051f, B:208:0x0532, B:211:0x0548, B:212:0x0552, B:214:0x05a2, B:216:0x05a8, B:220:0x05c3, B:221:0x05cc, B:222:0x05e7, B:228:0x060f, B:230:0x061b, B:232:0x0657, B:234:0x065f, B:237:0x0682, B:239:0x069d, B:246:0x06cc, B:247:0x06f6, B:249:0x0707, B:251:0x070f, B:252:0x0723, B:261:0x0735, B:263:0x0737, B:265:0x073c, B:267:0x074f, B:268:0x075b, B:270:0x0765, B:272:0x0778, B:274:0x0788, B:275:0x079b, B:277:0x07a6, B:278:0x07e1, B:283:0x07f6, B:290:0x0835, B:294:0x0859, B:300:0x0880, B:305:0x08a7, B:308:0x08b8, B:312:0x08dc, B:313:0x08eb, B:314:0x08ec, B:314:0x08ec, B:315:0x08ef, B:317:0x08f8, B:318:0x0904, B:320:0x090d, B:321:0x0919, B:323:0x0929, B:325:0x0933, B:328:0x094e, B:330:0x0955, B:333:0x096a, B:335:0x0982, B:337:0x098c, B:339:0x0998, B:341:0x099f, B:343:0x09aa, B:345:0x09cf, B:347:0x0a11, B:349:0x0a29, B:352:0x0a3b, B:353:0x0a5b, B:356:0x0a69, B:358:0x0a71, B:360:0x0abd, B:362:0x0ac4, B:364:0x0ad9, B:366:0x0ae1, B:369:0x0aeb, B:371:0x0af2, B:373:0x0af9, B:374:0x0b00, B:376:0x0b06, B:379:0x0b0d, B:381:0x0b19, B:383:0x0b28, B:384:0x0b6b, B:388:0x0b78, B:392:0x0b89, B:394:0x0b9a, B:396:0x0ba5, B:398:0x0bae, B:399:0x0bb4, B:401:0x0bbd, B:405:0x0bce, B:409:0x0bea, B:413:0x0bfc, B:415:0x0c06, B:417:0x0c13, B:423:0x0c4f, B:427:0x0c62, B:431:0x0c72, B:433:0x0c7c, B:435:0x0c9d, B:437:0x0ca7, B:441:0x0cc1, B:442:0x0cd5, B:443:0x0cf1, B:444:0x0cf8, B:445:0x0cfe, B:447:0x0d05, B:448:0x0d15, B:453:0x0d4e, B:455:0x0d62, B:460:0x0d75, B:462:0x0d7f, B:469:0x0d9a, B:479:0x0dbf, B:481:0x0dc4, B:483:0x0dcc, B:485:0x0dde, B:487:0x0dfc, B:491:0x0e1f, B:494:0x0e2c, B:496:0x0e35, B:497:0x0e41, B:500:0x0e4d, B:504:0x0e5a, B:506:0x0e6a, B:507:0x0e75, B:511:0x0e8d, B:515:0x0e9d, B:517:0x0eb6, B:522:0x0ee8, B:525:0x0ef4, B:527:0x0f00, B:530:0x0f0d, B:533:0x0f18, B:536:0x0f24, B:538:0x0f36, B:540:0x0f3d, B:544:0x0f4f, B:545:0x0f5e, B:547:0x0f65, B:550:0x0f6e, B:553:0x0f76, B:554:0x0f81, B:556:0x0f89, B:557:0x0f95, B:558:0x0f9d, B:558:0x0f9d, B:560:0x0fa2, B:565:0x0fb2, B:567:0x0fc2, B:568:0x0fcd, B:571:0x0fd9, B:574:0x0fef, B:576:0x0ffa, B:581:0x1013, B:583:0x102f, B:585:0x1041), top: B:608:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0b0c A[LOOP:7: B:378:0x0b0c->B:383:0x0b28, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:469:0x0d9a A[Catch: IOException -> 0x1063, zzhe -> 0x1067, RuntimeException -> 0x106b, TRY_ENTER, TryCatch #9 {RuntimeException -> 0x106b, blocks: (B:2:0x0000, B:6:0x0052, B:8:0x006a, B:11:0x0073, B:16:0x0082, B:21:0x0093, B:26:0x00b7, B:28:0x00c3, B:34:0x00df, B:39:0x00fa, B:41:0x0101, B:43:0x010e, B:45:0x011e, B:48:0x0127, B:50:0x0130, B:52:0x0155, B:56:0x0161, B:58:0x0168, B:70:0x01a9, B:79:0x01c0, B:82:0x01c3, B:87:0x01d5, B:92:0x01da, B:94:0x01dc, B:99:0x01eb, B:102:0x01f5, B:105:0x01fd, B:109:0x0207, B:112:0x0214, B:117:0x0230, B:119:0x0278, B:121:0x0286, B:123:0x0293, B:127:0x02a8, B:133:0x02c2, B:139:0x02e3, B:141:0x02ef, B:145:0x02fd, B:147:0x0309, B:149:0x0314, B:152:0x0329, B:153:0x0334, B:155:0x033d, B:156:0x0356, B:159:0x0364, B:160:0x0370, B:162:0x0382, B:164:0x03a8, B:166:0x03ba, B:168:0x03cd, B:171:0x03d9, B:173:0x03df, B:175:0x03f1, B:178:0x03fd, B:180:0x0420, B:182:0x043b, B:184:0x0440, B:186:0x0464, B:188:0x046b, B:190:0x0489, B:191:0x0493, B:192:0x04b9, B:194:0x04c7, B:196:0x04d1, B:197:0x04db, B:200:0x050a, B:202:0x0516, B:205:0x051f, B:208:0x0532, B:211:0x0548, B:212:0x0552, B:214:0x05a2, B:216:0x05a8, B:220:0x05c3, B:221:0x05cc, B:222:0x05e7, B:228:0x060f, B:230:0x061b, B:232:0x0657, B:234:0x065f, B:237:0x0682, B:239:0x069d, B:246:0x06cc, B:247:0x06f6, B:249:0x0707, B:251:0x070f, B:252:0x0723, B:261:0x0735, B:263:0x0737, B:265:0x073c, B:267:0x074f, B:268:0x075b, B:270:0x0765, B:272:0x0778, B:274:0x0788, B:275:0x079b, B:277:0x07a6, B:278:0x07e1, B:283:0x07f6, B:290:0x0835, B:294:0x0859, B:300:0x0880, B:305:0x08a7, B:308:0x08b8, B:312:0x08dc, B:313:0x08eb, B:314:0x08ec, B:314:0x08ec, B:315:0x08ef, B:317:0x08f8, B:318:0x0904, B:320:0x090d, B:321:0x0919, B:323:0x0929, B:325:0x0933, B:328:0x094e, B:330:0x0955, B:333:0x096a, B:335:0x0982, B:337:0x098c, B:339:0x0998, B:341:0x099f, B:343:0x09aa, B:345:0x09cf, B:347:0x0a11, B:349:0x0a29, B:352:0x0a3b, B:353:0x0a5b, B:356:0x0a69, B:358:0x0a71, B:360:0x0abd, B:362:0x0ac4, B:364:0x0ad9, B:366:0x0ae1, B:369:0x0aeb, B:371:0x0af2, B:373:0x0af9, B:374:0x0b00, B:376:0x0b06, B:379:0x0b0d, B:381:0x0b19, B:383:0x0b28, B:384:0x0b6b, B:388:0x0b78, B:392:0x0b89, B:394:0x0b9a, B:396:0x0ba5, B:398:0x0bae, B:399:0x0bb4, B:401:0x0bbd, B:405:0x0bce, B:409:0x0bea, B:413:0x0bfc, B:415:0x0c06, B:417:0x0c13, B:423:0x0c4f, B:427:0x0c62, B:431:0x0c72, B:433:0x0c7c, B:435:0x0c9d, B:437:0x0ca7, B:441:0x0cc1, B:442:0x0cd5, B:443:0x0cf1, B:444:0x0cf8, B:445:0x0cfe, B:447:0x0d05, B:448:0x0d15, B:453:0x0d4e, B:455:0x0d62, B:460:0x0d75, B:462:0x0d7f, B:469:0x0d9a, B:479:0x0dbf, B:481:0x0dc4, B:483:0x0dcc, B:485:0x0dde, B:487:0x0dfc, B:491:0x0e1f, B:494:0x0e2c, B:496:0x0e35, B:497:0x0e41, B:500:0x0e4d, B:504:0x0e5a, B:506:0x0e6a, B:507:0x0e75, B:511:0x0e8d, B:515:0x0e9d, B:517:0x0eb6, B:522:0x0ee8, B:525:0x0ef4, B:527:0x0f00, B:530:0x0f0d, B:533:0x0f18, B:536:0x0f24, B:538:0x0f36, B:540:0x0f3d, B:544:0x0f4f, B:545:0x0f5e, B:547:0x0f65, B:550:0x0f6e, B:553:0x0f76, B:554:0x0f81, B:556:0x0f89, B:557:0x0f95, B:558:0x0f9d, B:558:0x0f9d, B:560:0x0fa2, B:565:0x0fb2, B:567:0x0fc2, B:568:0x0fcd, B:571:0x0fd9, B:574:0x0fef, B:576:0x0ffa, B:581:0x1013, B:583:0x102f, B:585:0x1041), top: B:608:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:520:0x0edc  */
    /* JADX WARN: Type inference failed for: r0v173, types: [long] */
    /* JADX WARN: Type inference failed for: r0v178, types: [long] */
    /* JADX WARN: Type inference failed for: r0v181, types: [long] */
    /* JADX WARN: Type inference failed for: r0v378, types: [long] */
    /* JADX WARN: Type inference failed for: r0v380, types: [long] */
    /* JADX WARN: Type inference failed for: r0v407, types: [long] */
    /* JADX WARN: Type inference failed for: r0v410, types: [long] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r16) {
        /*
            Method dump skipped, instructions count: 4302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhm.handleMessage(android.os.Message):boolean");
    }

    public final void release() {
        synchronized (this) {
            if (this.zzafw) {
                return;
            }
            this.handler.sendEmptyMessage(6);
            while (!this.zzafw) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
            this.zzafq.quit();
        }
    }

    public final void stop() {
        this.handler.sendEmptyMessage(5);
    }

    public final void zza(zzid zzidVar, int i, long j) {
        this.handler.obtainMessage(3, new zzhr(zzidVar, i, j)).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.zznb
    public final void zza(zznc zzncVar) {
        this.handler.obtainMessage(8, zzncVar).sendToTarget();
    }

    public final void zza(zzne zzneVar, boolean z) {
        this.handler.obtainMessage(0, 1, 0, zzneVar).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.zznp
    public final /* synthetic */ void zza(zznc zzncVar) {
        this.handler.obtainMessage(9, zzncVar).sendToTarget();
    }

    public final void zza(zzhi... zzhiVarArr) {
        if (this.zzafw) {
            Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            return;
        }
        this.zzafy++;
        this.handler.obtainMessage(11, zzhiVarArr).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.zznd
    public final void zzb(zzid zzidVar, Object obj) {
        this.handler.obtainMessage(7, Pair.create(zzidVar, obj)).sendToTarget();
    }

    public final void zzb(zzhi... zzhiVarArr) {
        synchronized (this) {
            if (this.zzafw) {
                Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
                return;
            }
            int i = this.zzafy;
            this.zzafy = i + 1;
            this.handler.obtainMessage(11, zzhiVarArr).sendToTarget();
            while (this.zzafz <= i) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzok
    public final void zzep() {
        this.handler.sendEmptyMessage(10);
    }

    public final void zzg(boolean z) {
        this.handler.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
    }
}
