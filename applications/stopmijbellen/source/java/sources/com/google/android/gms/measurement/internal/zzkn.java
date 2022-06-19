package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzfc;
import com.google.android.gms.internal.measurement.zzfn;
import com.google.android.gms.internal.measurement.zzfr;
import com.google.android.gms.internal.measurement.zzfs;
import com.google.android.gms.internal.measurement.zzfv;
import com.google.android.gms.internal.measurement.zzgg;
import com.google.android.gms.internal.measurement.zzgh;
import com.google.android.gms.internal.measurement.zzov;
import com.google.android.gms.internal.measurement.zzpt;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p226s.C4251a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkn.class */
public final class zzkn implements zzgp {
    private static volatile zzkn zzb;
    @VisibleForTesting
    public long zza;
    private final zzfl zzc;
    private final zzes zzd;
    private zzai zze;
    private zzeu zzf;
    private zzkc zzg;
    private zzy zzh;
    private final zzkp zzi;
    private zzib zzj;
    private zzjl zzk;
    private final zzfu zzm;
    private boolean zzo;
    private List<Runnable> zzp;
    private int zzq;
    private int zzr;
    private boolean zzs;
    private boolean zzt;
    private boolean zzu;
    private FileLock zzv;
    private FileChannel zzw;
    private List<Long> zzx;
    private List<Long> zzy;
    private boolean zzn = false;
    private final zzkt zzB = new zzkl(this);
    private long zzz = -1;
    private final zzkf zzl = new zzkf(this);
    private final Map<String, zzaf> zzA = new HashMap();

    public zzkn(zzko zzkoVar, zzfu zzfuVar) {
        Preconditions.checkNotNull(zzkoVar);
        this.zzm = zzfu.zzC(zzkoVar.zza, null, null);
        zzkp zzkpVar = new zzkp(this);
        zzkpVar.zzaa();
        this.zzi = zzkpVar;
        zzes zzesVar = new zzes(this);
        zzesVar.zzaa();
        this.zzd = zzesVar;
        zzfl zzflVar = new zzfl(this);
        zzflVar.zzaa();
        this.zzc = zzflVar;
        zzav().zzh(new zzkg(this, zzkoVar));
    }

    public static /* synthetic */ void zzW(zzkn zzknVar, zzko zzkoVar) {
        zzknVar.zzav().zzg();
        zzai zzaiVar = new zzai(zzknVar);
        zzaiVar.zzaa();
        zzknVar.zze = zzaiVar;
        zzknVar.zzd().zza((zzad) Preconditions.checkNotNull(zzknVar.zzc));
        zzjl zzjlVar = new zzjl(zzknVar);
        zzjlVar.zzaa();
        zzknVar.zzk = zzjlVar;
        zzy zzyVar = new zzy(zzknVar);
        zzyVar.zzaa();
        zzknVar.zzh = zzyVar;
        zzib zzibVar = new zzib(zzknVar);
        zzibVar.zzaa();
        zzknVar.zzj = zzibVar;
        zzkc zzkcVar = new zzkc(zzknVar);
        zzkcVar.zzaa();
        zzknVar.zzg = zzkcVar;
        zzknVar.zzf = new zzeu(zzknVar);
        if (zzknVar.zzq != zzknVar.zzr) {
            zzknVar.zzau().zzb().zzc("Not all upload components initialized", Integer.valueOf(zzknVar.zzq), Integer.valueOf(zzknVar.zzr));
        }
        zzknVar.zzn = true;
    }

    @VisibleForTesting
    public static final void zzY(zzfn zzfnVar, int i, String str) {
        List<zzfs> zza = zzfnVar.zza();
        for (int i2 = 0; i2 < zza.size(); i2++) {
            if ("_err".equals(zza.get(i2).zzb())) {
                return;
            }
        }
        zzfr zzn = zzfs.zzn();
        zzn.zza("_err");
        zzn.zzd(Long.valueOf(i).longValue());
        zzfs zzaA = zzn.zzaA();
        zzfr zzn2 = zzfs.zzn();
        zzn2.zza("_ev");
        zzn2.zzb(str);
        zzfnVar.zzf(zzaA);
        zzfnVar.zzf(zzn2.zzaA());
    }

    @VisibleForTesting
    public static final void zzZ(zzfn zzfnVar, String str) {
        List<zzfs> zza = zzfnVar.zza();
        for (int i = 0; i < zza.size(); i++) {
            if (str.equals(zza.get(i).zzb())) {
                zzfnVar.zzj(i);
                return;
            }
        }
    }

    public static zzkn zza(Context context) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzb == null) {
            synchronized (zzkn.class) {
                try {
                    if (zzb == null) {
                        zzb = new zzkn((zzko) Preconditions.checkNotNull(new zzko(context)), null);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzb;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:139:0x05ee A[Catch: all -> 0x152b, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x152b, blocks: (B:3:0x0022, B:5:0x004e, B:8:0x005a, B:10:0x0098, B:13:0x00b0, B:15:0x00ec, B:17:0x012f, B:20:0x014e, B:22:0x015b, B:26:0x019e, B:28:0x01ae, B:30:0x01c7, B:35:0x01dc, B:37:0x01e6, B:39:0x01f9, B:41:0x0209, B:43:0x021c, B:44:0x0229, B:46:0x0233, B:48:0x0258, B:73:0x02ee, B:76:0x02fc, B:78:0x030f, B:81:0x033f, B:83:0x0352, B:90:0x0393, B:93:0x03d4, B:95:0x040e, B:97:0x0449, B:101:0x0467, B:106:0x0483, B:108:0x049b, B:110:0x04cb, B:112:0x04ef, B:114:0x04f9, B:116:0x0510, B:119:0x0529, B:128:0x055d, B:133:0x057c, B:135:0x05b6, B:139:0x05ee, B:141:0x0606, B:144:0x0614, B:149:0x0635, B:156:0x0666, B:158:0x0676, B:160:0x0686, B:163:0x06b9, B:167:0x06d4, B:169:0x06de, B:171:0x06ef, B:172:0x06fc, B:173:0x0726, B:175:0x0734, B:179:0x0751, B:181:0x0765, B:183:0x0779, B:191:0x07bc, B:193:0x07ca, B:197:0x07e7, B:199:0x07fc, B:201:0x080f, B:209:0x0868, B:213:0x0888, B:215:0x0896, B:217:0x08a9, B:223:0x08d4, B:225:0x08e9, B:227:0x091f, B:229:0x093e, B:231:0x0964, B:233:0x0973, B:235:0x097b, B:238:0x0991, B:240:0x09a0, B:242:0x09a8, B:245:0x09be, B:247:0x09d8, B:252:0x09fc, B:254:0x0a0a, B:256:0x0a12, B:258:0x0a30, B:260:0x0a4f, B:262:0x0a6d, B:264:0x0a78, B:265:0x0a8e, B:273:0x0ad2, B:275:0x0ae8, B:277:0x0afb, B:279:0x0b14, B:282:0x0b36, B:284:0x0b3e, B:289:0x0b69, B:291:0x0b73, B:294:0x0b97, B:296:0x0bab, B:298:0x0bb7, B:300:0x0bcd, B:302:0x0be6, B:304:0x0bef, B:305:0x0bf9, B:307:0x0c07, B:309:0x0c27, B:311:0x0c5f, B:313:0x0c7f, B:315:0x0c87, B:317:0x0c95, B:319:0x0cd8, B:321:0x0ce1, B:323:0x0cf2, B:325:0x0d04, B:327:0x0d0c, B:329:0x0d1e, B:331:0x0d27, B:333:0x0d3c, B:335:0x0d48, B:337:0x0d53, B:338:0x0d5d, B:339:0x0d63, B:341:0x0daf, B:343:0x0dd3, B:345:0x0ddc, B:347:0x0dfc, B:350:0x0e2c, B:353:0x0e58, B:357:0x0e6b, B:359:0x0e73, B:361:0x0e7f, B:363:0x0e89, B:365:0x0ea0, B:367:0x0eaa, B:369:0x0eb2, B:371:0x0ec8, B:373:0x0ed5, B:375:0x0ee0, B:377:0x0f0e, B:379:0x0f19, B:382:0x0f33, B:384:0x0f55, B:386:0x0f63, B:388:0x0f6b, B:390:0x0f85, B:394:0x0fa3, B:397:0x0fc8, B:398:0x0ff9, B:401:0x1011, B:404:0x103a, B:405:0x107b, B:409:0x10a4, B:412:0x10b1, B:414:0x10c7, B:416:0x10cf, B:418:0x10d7, B:421:0x10e1, B:423:0x10f7, B:424:0x1102, B:426:0x110c, B:428:0x1138, B:430:0x1140, B:432:0x114d, B:433:0x1165, B:435:0x1171, B:436:0x117a, B:440:0x118f, B:442:0x11d3, B:443:0x11e3, B:444:0x11fd, B:446:0x1205, B:448:0x121a, B:449:0x1222, B:451:0x122b, B:453:0x1238, B:455:0x1248, B:457:0x1254, B:459:0x125c, B:462:0x1290, B:464:0x12b3, B:465:0x12cd, B:467:0x12d5, B:470:0x12e1, B:471:0x12eb, B:473:0x12f3, B:479:0x130b, B:480:0x1315, B:482:0x131d, B:484:0x134c, B:485:0x1357, B:487:0x135e, B:489:0x1372, B:491:0x1378, B:493:0x139f, B:496:0x13aa, B:497:0x13b8, B:499:0x13c5, B:500:0x13d1, B:502:0x13e9, B:504:0x1405, B:506:0x1434, B:510:0x1445, B:512:0x144e, B:513:0x1467, B:515:0x148d, B:517:0x14ae, B:519:0x14bf, B:521:0x14d8, B:523:0x14f0, B:526:0x150d), top: B:536:0x0022, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0734 A[Catch: all -> 0x152b, TryCatch #2 {all -> 0x152b, blocks: (B:3:0x0022, B:5:0x004e, B:8:0x005a, B:10:0x0098, B:13:0x00b0, B:15:0x00ec, B:17:0x012f, B:20:0x014e, B:22:0x015b, B:26:0x019e, B:28:0x01ae, B:30:0x01c7, B:35:0x01dc, B:37:0x01e6, B:39:0x01f9, B:41:0x0209, B:43:0x021c, B:44:0x0229, B:46:0x0233, B:48:0x0258, B:73:0x02ee, B:76:0x02fc, B:78:0x030f, B:81:0x033f, B:83:0x0352, B:90:0x0393, B:93:0x03d4, B:95:0x040e, B:97:0x0449, B:101:0x0467, B:106:0x0483, B:108:0x049b, B:110:0x04cb, B:112:0x04ef, B:114:0x04f9, B:116:0x0510, B:119:0x0529, B:128:0x055d, B:133:0x057c, B:135:0x05b6, B:139:0x05ee, B:141:0x0606, B:144:0x0614, B:149:0x0635, B:156:0x0666, B:158:0x0676, B:160:0x0686, B:163:0x06b9, B:167:0x06d4, B:169:0x06de, B:171:0x06ef, B:172:0x06fc, B:173:0x0726, B:175:0x0734, B:179:0x0751, B:181:0x0765, B:183:0x0779, B:191:0x07bc, B:193:0x07ca, B:197:0x07e7, B:199:0x07fc, B:201:0x080f, B:209:0x0868, B:213:0x0888, B:215:0x0896, B:217:0x08a9, B:223:0x08d4, B:225:0x08e9, B:227:0x091f, B:229:0x093e, B:231:0x0964, B:233:0x0973, B:235:0x097b, B:238:0x0991, B:240:0x09a0, B:242:0x09a8, B:245:0x09be, B:247:0x09d8, B:252:0x09fc, B:254:0x0a0a, B:256:0x0a12, B:258:0x0a30, B:260:0x0a4f, B:262:0x0a6d, B:264:0x0a78, B:265:0x0a8e, B:273:0x0ad2, B:275:0x0ae8, B:277:0x0afb, B:279:0x0b14, B:282:0x0b36, B:284:0x0b3e, B:289:0x0b69, B:291:0x0b73, B:294:0x0b97, B:296:0x0bab, B:298:0x0bb7, B:300:0x0bcd, B:302:0x0be6, B:304:0x0bef, B:305:0x0bf9, B:307:0x0c07, B:309:0x0c27, B:311:0x0c5f, B:313:0x0c7f, B:315:0x0c87, B:317:0x0c95, B:319:0x0cd8, B:321:0x0ce1, B:323:0x0cf2, B:325:0x0d04, B:327:0x0d0c, B:329:0x0d1e, B:331:0x0d27, B:333:0x0d3c, B:335:0x0d48, B:337:0x0d53, B:338:0x0d5d, B:339:0x0d63, B:341:0x0daf, B:343:0x0dd3, B:345:0x0ddc, B:347:0x0dfc, B:350:0x0e2c, B:353:0x0e58, B:357:0x0e6b, B:359:0x0e73, B:361:0x0e7f, B:363:0x0e89, B:365:0x0ea0, B:367:0x0eaa, B:369:0x0eb2, B:371:0x0ec8, B:373:0x0ed5, B:375:0x0ee0, B:377:0x0f0e, B:379:0x0f19, B:382:0x0f33, B:384:0x0f55, B:386:0x0f63, B:388:0x0f6b, B:390:0x0f85, B:394:0x0fa3, B:397:0x0fc8, B:398:0x0ff9, B:401:0x1011, B:404:0x103a, B:405:0x107b, B:409:0x10a4, B:412:0x10b1, B:414:0x10c7, B:416:0x10cf, B:418:0x10d7, B:421:0x10e1, B:423:0x10f7, B:424:0x1102, B:426:0x110c, B:428:0x1138, B:430:0x1140, B:432:0x114d, B:433:0x1165, B:435:0x1171, B:436:0x117a, B:440:0x118f, B:442:0x11d3, B:443:0x11e3, B:444:0x11fd, B:446:0x1205, B:448:0x121a, B:449:0x1222, B:451:0x122b, B:453:0x1238, B:455:0x1248, B:457:0x1254, B:459:0x125c, B:462:0x1290, B:464:0x12b3, B:465:0x12cd, B:467:0x12d5, B:470:0x12e1, B:471:0x12eb, B:473:0x12f3, B:479:0x130b, B:480:0x1315, B:482:0x131d, B:484:0x134c, B:485:0x1357, B:487:0x135e, B:489:0x1372, B:491:0x1378, B:493:0x139f, B:496:0x13aa, B:497:0x13b8, B:499:0x13c5, B:500:0x13d1, B:502:0x13e9, B:504:0x1405, B:506:0x1434, B:510:0x1445, B:512:0x144e, B:513:0x1467, B:515:0x148d, B:517:0x14ae, B:519:0x14bf, B:521:0x14d8, B:523:0x14f0, B:526:0x150d), top: B:536:0x0022, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x07b8  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x09f9  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x0f55 A[Catch: all -> 0x152b, TryCatch #2 {all -> 0x152b, blocks: (B:3:0x0022, B:5:0x004e, B:8:0x005a, B:10:0x0098, B:13:0x00b0, B:15:0x00ec, B:17:0x012f, B:20:0x014e, B:22:0x015b, B:26:0x019e, B:28:0x01ae, B:30:0x01c7, B:35:0x01dc, B:37:0x01e6, B:39:0x01f9, B:41:0x0209, B:43:0x021c, B:44:0x0229, B:46:0x0233, B:48:0x0258, B:73:0x02ee, B:76:0x02fc, B:78:0x030f, B:81:0x033f, B:83:0x0352, B:90:0x0393, B:93:0x03d4, B:95:0x040e, B:97:0x0449, B:101:0x0467, B:106:0x0483, B:108:0x049b, B:110:0x04cb, B:112:0x04ef, B:114:0x04f9, B:116:0x0510, B:119:0x0529, B:128:0x055d, B:133:0x057c, B:135:0x05b6, B:139:0x05ee, B:141:0x0606, B:144:0x0614, B:149:0x0635, B:156:0x0666, B:158:0x0676, B:160:0x0686, B:163:0x06b9, B:167:0x06d4, B:169:0x06de, B:171:0x06ef, B:172:0x06fc, B:173:0x0726, B:175:0x0734, B:179:0x0751, B:181:0x0765, B:183:0x0779, B:191:0x07bc, B:193:0x07ca, B:197:0x07e7, B:199:0x07fc, B:201:0x080f, B:209:0x0868, B:213:0x0888, B:215:0x0896, B:217:0x08a9, B:223:0x08d4, B:225:0x08e9, B:227:0x091f, B:229:0x093e, B:231:0x0964, B:233:0x0973, B:235:0x097b, B:238:0x0991, B:240:0x09a0, B:242:0x09a8, B:245:0x09be, B:247:0x09d8, B:252:0x09fc, B:254:0x0a0a, B:256:0x0a12, B:258:0x0a30, B:260:0x0a4f, B:262:0x0a6d, B:264:0x0a78, B:265:0x0a8e, B:273:0x0ad2, B:275:0x0ae8, B:277:0x0afb, B:279:0x0b14, B:282:0x0b36, B:284:0x0b3e, B:289:0x0b69, B:291:0x0b73, B:294:0x0b97, B:296:0x0bab, B:298:0x0bb7, B:300:0x0bcd, B:302:0x0be6, B:304:0x0bef, B:305:0x0bf9, B:307:0x0c07, B:309:0x0c27, B:311:0x0c5f, B:313:0x0c7f, B:315:0x0c87, B:317:0x0c95, B:319:0x0cd8, B:321:0x0ce1, B:323:0x0cf2, B:325:0x0d04, B:327:0x0d0c, B:329:0x0d1e, B:331:0x0d27, B:333:0x0d3c, B:335:0x0d48, B:337:0x0d53, B:338:0x0d5d, B:339:0x0d63, B:341:0x0daf, B:343:0x0dd3, B:345:0x0ddc, B:347:0x0dfc, B:350:0x0e2c, B:353:0x0e58, B:357:0x0e6b, B:359:0x0e73, B:361:0x0e7f, B:363:0x0e89, B:365:0x0ea0, B:367:0x0eaa, B:369:0x0eb2, B:371:0x0ec8, B:373:0x0ed5, B:375:0x0ee0, B:377:0x0f0e, B:379:0x0f19, B:382:0x0f33, B:384:0x0f55, B:386:0x0f63, B:388:0x0f6b, B:390:0x0f85, B:394:0x0fa3, B:397:0x0fc8, B:398:0x0ff9, B:401:0x1011, B:404:0x103a, B:405:0x107b, B:409:0x10a4, B:412:0x10b1, B:414:0x10c7, B:416:0x10cf, B:418:0x10d7, B:421:0x10e1, B:423:0x10f7, B:424:0x1102, B:426:0x110c, B:428:0x1138, B:430:0x1140, B:432:0x114d, B:433:0x1165, B:435:0x1171, B:436:0x117a, B:440:0x118f, B:442:0x11d3, B:443:0x11e3, B:444:0x11fd, B:446:0x1205, B:448:0x121a, B:449:0x1222, B:451:0x122b, B:453:0x1238, B:455:0x1248, B:457:0x1254, B:459:0x125c, B:462:0x1290, B:464:0x12b3, B:465:0x12cd, B:467:0x12d5, B:470:0x12e1, B:471:0x12eb, B:473:0x12f3, B:479:0x130b, B:480:0x1315, B:482:0x131d, B:484:0x134c, B:485:0x1357, B:487:0x135e, B:489:0x1372, B:491:0x1378, B:493:0x139f, B:496:0x13aa, B:497:0x13b8, B:499:0x13c5, B:500:0x13d1, B:502:0x13e9, B:504:0x1405, B:506:0x1434, B:510:0x1445, B:512:0x144e, B:513:0x1467, B:515:0x148d, B:517:0x14ae, B:519:0x14bf, B:521:0x14d8, B:523:0x14f0, B:526:0x150d), top: B:536:0x0022, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:397:0x0fc8 A[Catch: all -> 0x152b, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x152b, blocks: (B:3:0x0022, B:5:0x004e, B:8:0x005a, B:10:0x0098, B:13:0x00b0, B:15:0x00ec, B:17:0x012f, B:20:0x014e, B:22:0x015b, B:26:0x019e, B:28:0x01ae, B:30:0x01c7, B:35:0x01dc, B:37:0x01e6, B:39:0x01f9, B:41:0x0209, B:43:0x021c, B:44:0x0229, B:46:0x0233, B:48:0x0258, B:73:0x02ee, B:76:0x02fc, B:78:0x030f, B:81:0x033f, B:83:0x0352, B:90:0x0393, B:93:0x03d4, B:95:0x040e, B:97:0x0449, B:101:0x0467, B:106:0x0483, B:108:0x049b, B:110:0x04cb, B:112:0x04ef, B:114:0x04f9, B:116:0x0510, B:119:0x0529, B:128:0x055d, B:133:0x057c, B:135:0x05b6, B:139:0x05ee, B:141:0x0606, B:144:0x0614, B:149:0x0635, B:156:0x0666, B:158:0x0676, B:160:0x0686, B:163:0x06b9, B:167:0x06d4, B:169:0x06de, B:171:0x06ef, B:172:0x06fc, B:173:0x0726, B:175:0x0734, B:179:0x0751, B:181:0x0765, B:183:0x0779, B:191:0x07bc, B:193:0x07ca, B:197:0x07e7, B:199:0x07fc, B:201:0x080f, B:209:0x0868, B:213:0x0888, B:215:0x0896, B:217:0x08a9, B:223:0x08d4, B:225:0x08e9, B:227:0x091f, B:229:0x093e, B:231:0x0964, B:233:0x0973, B:235:0x097b, B:238:0x0991, B:240:0x09a0, B:242:0x09a8, B:245:0x09be, B:247:0x09d8, B:252:0x09fc, B:254:0x0a0a, B:256:0x0a12, B:258:0x0a30, B:260:0x0a4f, B:262:0x0a6d, B:264:0x0a78, B:265:0x0a8e, B:273:0x0ad2, B:275:0x0ae8, B:277:0x0afb, B:279:0x0b14, B:282:0x0b36, B:284:0x0b3e, B:289:0x0b69, B:291:0x0b73, B:294:0x0b97, B:296:0x0bab, B:298:0x0bb7, B:300:0x0bcd, B:302:0x0be6, B:304:0x0bef, B:305:0x0bf9, B:307:0x0c07, B:309:0x0c27, B:311:0x0c5f, B:313:0x0c7f, B:315:0x0c87, B:317:0x0c95, B:319:0x0cd8, B:321:0x0ce1, B:323:0x0cf2, B:325:0x0d04, B:327:0x0d0c, B:329:0x0d1e, B:331:0x0d27, B:333:0x0d3c, B:335:0x0d48, B:337:0x0d53, B:338:0x0d5d, B:339:0x0d63, B:341:0x0daf, B:343:0x0dd3, B:345:0x0ddc, B:347:0x0dfc, B:350:0x0e2c, B:353:0x0e58, B:357:0x0e6b, B:359:0x0e73, B:361:0x0e7f, B:363:0x0e89, B:365:0x0ea0, B:367:0x0eaa, B:369:0x0eb2, B:371:0x0ec8, B:373:0x0ed5, B:375:0x0ee0, B:377:0x0f0e, B:379:0x0f19, B:382:0x0f33, B:384:0x0f55, B:386:0x0f63, B:388:0x0f6b, B:390:0x0f85, B:394:0x0fa3, B:397:0x0fc8, B:398:0x0ff9, B:401:0x1011, B:404:0x103a, B:405:0x107b, B:409:0x10a4, B:412:0x10b1, B:414:0x10c7, B:416:0x10cf, B:418:0x10d7, B:421:0x10e1, B:423:0x10f7, B:424:0x1102, B:426:0x110c, B:428:0x1138, B:430:0x1140, B:432:0x114d, B:433:0x1165, B:435:0x1171, B:436:0x117a, B:440:0x118f, B:442:0x11d3, B:443:0x11e3, B:444:0x11fd, B:446:0x1205, B:448:0x121a, B:449:0x1222, B:451:0x122b, B:453:0x1238, B:455:0x1248, B:457:0x1254, B:459:0x125c, B:462:0x1290, B:464:0x12b3, B:465:0x12cd, B:467:0x12d5, B:470:0x12e1, B:471:0x12eb, B:473:0x12f3, B:479:0x130b, B:480:0x1315, B:482:0x131d, B:484:0x134c, B:485:0x1357, B:487:0x135e, B:489:0x1372, B:491:0x1378, B:493:0x139f, B:496:0x13aa, B:497:0x13b8, B:499:0x13c5, B:500:0x13d1, B:502:0x13e9, B:504:0x1405, B:506:0x1434, B:510:0x1445, B:512:0x144e, B:513:0x1467, B:515:0x148d, B:517:0x14ae, B:519:0x14bf, B:521:0x14d8, B:523:0x14f0, B:526:0x150d), top: B:536:0x0022, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:398:0x0ff9 A[Catch: all -> 0x152b, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x152b, blocks: (B:3:0x0022, B:5:0x004e, B:8:0x005a, B:10:0x0098, B:13:0x00b0, B:15:0x00ec, B:17:0x012f, B:20:0x014e, B:22:0x015b, B:26:0x019e, B:28:0x01ae, B:30:0x01c7, B:35:0x01dc, B:37:0x01e6, B:39:0x01f9, B:41:0x0209, B:43:0x021c, B:44:0x0229, B:46:0x0233, B:48:0x0258, B:73:0x02ee, B:76:0x02fc, B:78:0x030f, B:81:0x033f, B:83:0x0352, B:90:0x0393, B:93:0x03d4, B:95:0x040e, B:97:0x0449, B:101:0x0467, B:106:0x0483, B:108:0x049b, B:110:0x04cb, B:112:0x04ef, B:114:0x04f9, B:116:0x0510, B:119:0x0529, B:128:0x055d, B:133:0x057c, B:135:0x05b6, B:139:0x05ee, B:141:0x0606, B:144:0x0614, B:149:0x0635, B:156:0x0666, B:158:0x0676, B:160:0x0686, B:163:0x06b9, B:167:0x06d4, B:169:0x06de, B:171:0x06ef, B:172:0x06fc, B:173:0x0726, B:175:0x0734, B:179:0x0751, B:181:0x0765, B:183:0x0779, B:191:0x07bc, B:193:0x07ca, B:197:0x07e7, B:199:0x07fc, B:201:0x080f, B:209:0x0868, B:213:0x0888, B:215:0x0896, B:217:0x08a9, B:223:0x08d4, B:225:0x08e9, B:227:0x091f, B:229:0x093e, B:231:0x0964, B:233:0x0973, B:235:0x097b, B:238:0x0991, B:240:0x09a0, B:242:0x09a8, B:245:0x09be, B:247:0x09d8, B:252:0x09fc, B:254:0x0a0a, B:256:0x0a12, B:258:0x0a30, B:260:0x0a4f, B:262:0x0a6d, B:264:0x0a78, B:265:0x0a8e, B:273:0x0ad2, B:275:0x0ae8, B:277:0x0afb, B:279:0x0b14, B:282:0x0b36, B:284:0x0b3e, B:289:0x0b69, B:291:0x0b73, B:294:0x0b97, B:296:0x0bab, B:298:0x0bb7, B:300:0x0bcd, B:302:0x0be6, B:304:0x0bef, B:305:0x0bf9, B:307:0x0c07, B:309:0x0c27, B:311:0x0c5f, B:313:0x0c7f, B:315:0x0c87, B:317:0x0c95, B:319:0x0cd8, B:321:0x0ce1, B:323:0x0cf2, B:325:0x0d04, B:327:0x0d0c, B:329:0x0d1e, B:331:0x0d27, B:333:0x0d3c, B:335:0x0d48, B:337:0x0d53, B:338:0x0d5d, B:339:0x0d63, B:341:0x0daf, B:343:0x0dd3, B:345:0x0ddc, B:347:0x0dfc, B:350:0x0e2c, B:353:0x0e58, B:357:0x0e6b, B:359:0x0e73, B:361:0x0e7f, B:363:0x0e89, B:365:0x0ea0, B:367:0x0eaa, B:369:0x0eb2, B:371:0x0ec8, B:373:0x0ed5, B:375:0x0ee0, B:377:0x0f0e, B:379:0x0f19, B:382:0x0f33, B:384:0x0f55, B:386:0x0f63, B:388:0x0f6b, B:390:0x0f85, B:394:0x0fa3, B:397:0x0fc8, B:398:0x0ff9, B:401:0x1011, B:404:0x103a, B:405:0x107b, B:409:0x10a4, B:412:0x10b1, B:414:0x10c7, B:416:0x10cf, B:418:0x10d7, B:421:0x10e1, B:423:0x10f7, B:424:0x1102, B:426:0x110c, B:428:0x1138, B:430:0x1140, B:432:0x114d, B:433:0x1165, B:435:0x1171, B:436:0x117a, B:440:0x118f, B:442:0x11d3, B:443:0x11e3, B:444:0x11fd, B:446:0x1205, B:448:0x121a, B:449:0x1222, B:451:0x122b, B:453:0x1238, B:455:0x1248, B:457:0x1254, B:459:0x125c, B:462:0x1290, B:464:0x12b3, B:465:0x12cd, B:467:0x12d5, B:470:0x12e1, B:471:0x12eb, B:473:0x12f3, B:479:0x130b, B:480:0x1315, B:482:0x131d, B:484:0x134c, B:485:0x1357, B:487:0x135e, B:489:0x1372, B:491:0x1378, B:493:0x139f, B:496:0x13aa, B:497:0x13b8, B:499:0x13c5, B:500:0x13d1, B:502:0x13e9, B:504:0x1405, B:506:0x1434, B:510:0x1445, B:512:0x144e, B:513:0x1467, B:515:0x148d, B:517:0x14ae, B:519:0x14bf, B:521:0x14d8, B:523:0x14f0, B:526:0x150d), top: B:536:0x0022, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02ca  */
    /* JADX WARN: Type inference failed for: r0v200, types: [long] */
    /* JADX WARN: Type inference failed for: r0v204, types: [long] */
    /* JADX WARN: Type inference failed for: r0v296, types: [long] */
    /* JADX WARN: Type inference failed for: r0v357, types: [long] */
    /* JADX WARN: Type inference failed for: r0v359, types: [long] */
    /* JADX WARN: Type inference failed for: r0v583, types: [long] */
    /* JADX WARN: Type inference failed for: r0v664, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzaa(java.lang.String r19, long r20) {
        /*
            Method dump skipped, instructions count: 5438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkn.zzaa(java.lang.String, long):boolean");
    }

    @VisibleForTesting
    private final void zzab(zzfv zzfvVar, long j, boolean z) {
        String str = true != z ? "_lte" : "_se";
        zzai zzaiVar = this.zze;
        zzak(zzaiVar);
        zzks zzk = zzaiVar.zzk(zzfvVar.zzG(), str);
        zzks zzksVar = (zzk == null || zzk.zze == null) ? new zzks(zzfvVar.zzG(), "auto", str, zzay().currentTimeMillis(), Long.valueOf(j)) : new zzks(zzfvVar.zzG(), "auto", str, zzay().currentTimeMillis(), Long.valueOf(((Long) zzk.zze).longValue() + j));
        zzgg zzj = zzgh.zzj();
        zzj.zzb(str);
        zzj.zza(zzay().currentTimeMillis());
        zzj.zze(((Long) zzksVar.zze).longValue());
        zzgh zzaA = zzj.zzaA();
        int zzu = zzkp.zzu(zzfvVar, str);
        if (zzu >= 0) {
            zzfvVar.zzm(zzu, zzaA);
        } else {
            zzfvVar.zzn(zzaA);
        }
        if (j > 0) {
            zzai zzaiVar2 = this.zze;
            zzak(zzaiVar2);
            zzaiVar2.zzj(zzksVar);
            zzau().zzk().zzc("Updated engagement user property. scope, value", true != z ? "lifetime" : "session-scoped", zzksVar.zze);
        }
    }

    private final boolean zzac(zzfn zzfnVar, zzfn zzfnVar2) {
        Preconditions.checkArgument("_e".equals(zzfnVar.zzk()));
        zzak(this.zzi);
        zzfs zzA = zzkp.zzA(zzfnVar.zzaA(), "_sc");
        String str = null;
        String zzd = zzA == null ? null : zzA.zzd();
        zzak(this.zzi);
        zzfs zzA2 = zzkp.zzA(zzfnVar2.zzaA(), "_pc");
        if (zzA2 != null) {
            str = zzA2.zzd();
        }
        if (str == null || !str.equals(zzd)) {
            return false;
        }
        zzad(zzfnVar, zzfnVar2);
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    private final void zzad(zzfn zzfnVar, zzfn zzfnVar2) {
        Preconditions.checkArgument("_e".equals(zzfnVar.zzk()));
        zzak(this.zzi);
        zzfs zzA = zzkp.zzA(zzfnVar.zzaA(), "_et");
        if (zzA == null || !zzA.zze() || zzA.zzf() <= 0) {
            return;
        }
        ?? zzf = zzA.zzf();
        zzak(this.zzi);
        zzfs zzA2 = zzkp.zzA(zzfnVar2.zzaA(), "_et");
        char c = zzf;
        if (zzA2 != null) {
            c = zzf;
            if (zzA2.zzf() > 0) {
                c = zzf + zzA2.zzf();
            }
        }
        zzak(this.zzi);
        zzkp.zzy(zzfnVar2, "_et", Long.valueOf(c));
        zzak(this.zzi);
        zzkp.zzy(zzfnVar, "_fr", 1L);
    }

    private final boolean zzae() {
        zzav().zzg();
        zzr();
        zzai zzaiVar = this.zze;
        zzak(zzaiVar);
        if (!zzaiVar.zzG()) {
            zzai zzaiVar2 = this.zze;
            zzak(zzaiVar2);
            return !TextUtils.isEmpty(zzaiVar2.zzy());
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0340  */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* JADX WARN: Type inference failed for: r0v126, types: [long] */
    /* JADX WARN: Type inference failed for: r0v138, types: [long] */
    /* JADX WARN: Type inference failed for: r0v160, types: [long] */
    /* JADX WARN: Type inference failed for: r0v165, types: [long] */
    /* JADX WARN: Type inference failed for: r0v171, types: [long] */
    /* JADX WARN: Type inference failed for: r0v176, types: [long] */
    /* JADX WARN: Type inference failed for: r0v185, types: [long] */
    /* JADX WARN: Type inference failed for: r0v191, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzaf() {
        /*
            Method dump skipped, instructions count: 902
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkn.zzaf():void");
    }

    private final void zzag() {
        zzav().zzg();
        if (this.zzs || this.zzt || this.zzu) {
            zzau().zzk().zzd("Not stopping services. fetch, network, upload", Boolean.valueOf(this.zzs), Boolean.valueOf(this.zzt), Boolean.valueOf(this.zzu));
            return;
        }
        zzau().zzk().zza("Stopping uploading service(s)");
        List<Runnable> list = this.zzp;
        if (list == null) {
            return;
        }
        for (Runnable runnable : list) {
            runnable.run();
        }
        ((List) Preconditions.checkNotNull(this.zzp)).clear();
    }

    private final Boolean zzah(zzg zzgVar) {
        try {
            if (zzgVar.zzv() != -2147483648L) {
                if (zzgVar.zzv() == Wrappers.packageManager(this.zzm.zzax()).getPackageInfo(zzgVar.zzc(), 0).versionCode) {
                    return Boolean.TRUE;
                }
            } else {
                String str = Wrappers.packageManager(this.zzm.zzax()).getPackageInfo(zzgVar.zzc(), 0).versionName;
                String zzt = zzgVar.zzt();
                if (zzt != null && zzt.equals(str)) {
                    return Boolean.TRUE;
                }
            }
            return Boolean.FALSE;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    private final zzp zzai(String str) {
        zzai zzaiVar = this.zze;
        zzak(zzaiVar);
        zzg zzs = zzaiVar.zzs(str);
        if (zzs == null || TextUtils.isEmpty(zzs.zzt())) {
            zzau().zzj().zzb("No app data available; dropping", str);
            return null;
        }
        Boolean zzah = zzah(zzs);
        if (zzah != null && !zzah.booleanValue()) {
            zzau().zzb().zzb("App version does not match; dropping. appId", zzem.zzl(str));
            return null;
        }
        String zzf = zzs.zzf();
        String zzt = zzs.zzt();
        long zzv = zzs.zzv();
        String zzx = zzs.zzx();
        long zzz = zzs.zzz();
        long zzB = zzs.zzB();
        boolean zzF = zzs.zzF();
        String zzn = zzs.zzn();
        long zzad = zzs.zzad();
        boolean zzaf = zzs.zzaf();
        String zzh = zzs.zzh();
        Boolean zzah2 = zzs.zzah();
        long zzD = zzs.zzD();
        List<String> zzaj = zzs.zzaj();
        zzov.zzb();
        return new zzp(str, zzf, zzt, zzv, zzx, zzz, zzB, (String) null, zzF, false, zzn, zzad, 0L, 0, zzaf, false, zzh, zzah2, zzD, zzaj, zzd().zzn(str, zzea.zzag) ? zzs.zzj() : null, zzt(str).zzd());
    }

    private final boolean zzaj(zzp zzpVar) {
        zzov.zzb();
        return zzd().zzn(zzpVar.zza, zzea.zzag) ? !TextUtils.isEmpty(zzpVar.zzb) || !TextUtils.isEmpty(zzpVar.zzu) || !TextUtils.isEmpty(zzpVar.zzq) : !TextUtils.isEmpty(zzpVar.zzb) || !TextUtils.isEmpty(zzpVar.zzq);
    }

    private static final zzke zzak(zzke zzkeVar) {
        if (zzkeVar != null) {
            if (zzkeVar.zzY()) {
                return zzkeVar;
            }
            String valueOf = String.valueOf(zzkeVar.getClass());
            throw new IllegalStateException(C0082b.m8754h(new StringBuilder(valueOf.length() + 27), "Component not initialized: ", valueOf));
        }
        throw new IllegalStateException("Upload Component not created");
    }

    public final String zzA(zzaf zzafVar) {
        if (zzafVar.zzh()) {
            byte[] bArr = new byte[16];
            zzq().zzf().nextBytes(bArr);
            return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x01d2, code lost:
        if (r11 == null) goto L63;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0482  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x04fc  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x08ca A[Catch: all -> 0x08fb, TRY_LEAVE, TryCatch #16 {all -> 0x08fb, blocks: (B:3:0x0010, B:5:0x0027, B:9:0x003e, B:11:0x0045, B:13:0x005a, B:15:0x0063, B:17:0x006f, B:19:0x007d, B:21:0x0092, B:23:0x00a3, B:25:0x00bc, B:27:0x00dc, B:31:0x00f9, B:33:0x0105, B:34:0x010b, B:37:0x011e, B:39:0x0136, B:42:0x0156, B:44:0x0161, B:50:0x018a, B:63:0x01d8, B:67:0x01e7, B:69:0x01ef, B:71:0x01f1, B:75:0x0234, B:79:0x0247, B:89:0x02a8, B:171:0x048f, B:186:0x04e6, B:188:0x04f3, B:192:0x04ff, B:194:0x050b, B:196:0x0515, B:198:0x051d, B:200:0x053a, B:206:0x0555, B:208:0x0560, B:211:0x0581, B:213:0x058e, B:215:0x05a2, B:217:0x05cd, B:222:0x05e2, B:226:0x0602, B:228:0x0660, B:231:0x066b, B:234:0x067c, B:236:0x0683, B:238:0x0691, B:240:0x06b6, B:241:0x06c2, B:243:0x06d0, B:245:0x06ec, B:246:0x0712, B:247:0x0715, B:249:0x072f, B:250:0x073f, B:252:0x0752, B:255:0x0766, B:257:0x0772, B:259:0x07e5, B:263:0x0802, B:265:0x080a, B:267:0x080c, B:277:0x0870, B:291:0x08c2, B:293:0x08ca, B:295:0x08df, B:301:0x08f2, B:303:0x08fa), top: B:324:0x0010, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:341:0x048f A[EDGE_INSN: B:341:0x048f->B:171:0x048f ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v144, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r0v81, types: [com.google.android.gms.measurement.internal.zzke, com.google.android.gms.measurement.internal.zzai] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzB() {
        /*
            Method dump skipped, instructions count: 2311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkn.zzB():void");
    }

    /* JADX WARN: Finally extract failed */
    @VisibleForTesting
    public final void zzC(int i, Throwable th, byte[] bArr, String str) {
        int i2;
        zzai zzaiVar;
        long longValue;
        zzav().zzg();
        zzr();
        byte[] bArr2 = bArr;
        if (bArr == null) {
            try {
                bArr2 = new byte[0];
            } finally {
                this.zzt = false;
                zzag();
            }
        }
        List<Long> list = (List) Preconditions.checkNotNull(this.zzx);
        this.zzx = null;
        int i3 = i;
        if (i != 200) {
            i2 = i;
            if (i == 204) {
                i3 = 204;
            }
            zzau().zzk().zzc("Network upload failed. Will retry later. code, error", Integer.valueOf(i2), th);
            this.zzk.zzd.zzb(zzay().currentTimeMillis());
            if (i2 != 503 || i2 == 429) {
                this.zzk.zzb.zzb(zzay().currentTimeMillis());
            }
            zzai zzaiVar2 = this.zze;
            zzak(zzaiVar2);
            zzaiVar2.zzB(list);
            zzaf();
        }
        i2 = i3;
        if (th == null) {
            try {
                this.zzk.zzc.zzb(zzay().currentTimeMillis());
                this.zzk.zzd.zzb(0L);
                zzaf();
                zzau().zzk().zzc("Successful upload. Got network response. code, size", Integer.valueOf(i3), Integer.valueOf(bArr2.length));
                zzai zzaiVar3 = this.zze;
                zzak(zzaiVar3);
                zzaiVar3.zzb();
                try {
                    for (Long l : list) {
                        try {
                            zzaiVar = this.zze;
                            zzak(zzaiVar);
                            longValue = l.longValue();
                            zzaiVar.zzg();
                            zzaiVar.zzZ();
                        } catch (SQLiteException e) {
                            List<Long> list2 = this.zzy;
                            if (list2 == null || !list2.contains(l)) {
                                throw e;
                            }
                        }
                        try {
                            if (zzaiVar.zze().delete("queue", "rowid=?", new String[]{String.valueOf(longValue)}) != 1) {
                                throw new SQLiteException("Deleted fewer rows from queue than expected");
                                break;
                            }
                        } catch (SQLiteException e2) {
                            zzaiVar.zzs.zzau().zzb().zzb("Failed to delete a bundle in a queue table", e2);
                            throw e2;
                            break;
                        }
                    }
                    zzai zzaiVar4 = this.zze;
                    zzak(zzaiVar4);
                    zzaiVar4.zzc();
                    zzai zzaiVar5 = this.zze;
                    zzak(zzaiVar5);
                    zzaiVar5.zzd();
                    this.zzy = null;
                    zzes zzesVar = this.zzd;
                    zzak(zzesVar);
                    if (!zzesVar.zzb() || !zzae()) {
                        this.zzz = -1L;
                        zzaf();
                    } else {
                        zzB();
                    }
                    this.zza = 0L;
                } catch (Throwable th2) {
                    zzai zzaiVar6 = this.zze;
                    zzak(zzaiVar6);
                    zzaiVar6.zzd();
                    throw th2;
                }
            } catch (SQLiteException e3) {
                zzau().zzb().zzb("Database error while trying to delete uploaded bundles", e3);
                this.zza = zzay().elapsedRealtime();
                zzau().zzk().zzb("Disable upload, time", Long.valueOf(this.zza));
            }
        }
        zzau().zzk().zzc("Network upload failed. Will retry later. code, error", Integer.valueOf(i2), th);
        this.zzk.zzd.zzb(zzay().currentTimeMillis());
        if (i2 != 503) {
        }
        this.zzk.zzb.zzb(zzay().currentTimeMillis());
        zzai zzaiVar22 = this.zze;
        zzak(zzaiVar22);
        zzaiVar22.zzB(list);
        zzaf();
    }

    public final void zzD(zzg zzgVar) {
        zzav().zzg();
        zzov.zzb();
        zzae zzd = zzd();
        String zzc = zzgVar.zzc();
        zzdz<Boolean> zzdzVar = zzea.zzag;
        if (zzd.zzn(zzc, zzdzVar)) {
            if (TextUtils.isEmpty(zzgVar.zzf()) && TextUtils.isEmpty(zzgVar.zzj()) && TextUtils.isEmpty(zzgVar.zzh())) {
                zzE((String) Preconditions.checkNotNull(zzgVar.zzc()), 204, null, null, null);
                return;
            }
        } else if (TextUtils.isEmpty(zzgVar.zzf()) && TextUtils.isEmpty(zzgVar.zzh())) {
            zzE((String) Preconditions.checkNotNull(zzgVar.zzc()), 204, null, null, null);
            return;
        }
        zzkf zzkfVar = this.zzl;
        Uri.Builder builder = new Uri.Builder();
        String zzf = zzgVar.zzf();
        String str = zzf;
        if (TextUtils.isEmpty(zzf)) {
            zzov.zzb();
            if (zzkfVar.zzs.zzc().zzn(zzgVar.zzc(), zzdzVar)) {
                String zzj = zzgVar.zzj();
                str = zzj;
                if (TextUtils.isEmpty(zzj)) {
                    str = zzgVar.zzh();
                }
            } else {
                str = zzgVar.zzh();
            }
        }
        Uri.Builder encodedAuthority = builder.scheme(zzea.zzd.zzb(null)).encodedAuthority(zzea.zze.zzb(null));
        String valueOf = String.valueOf(str);
        Uri.Builder appendQueryParameter = encodedAuthority.path(valueOf.length() != 0 ? "config/app/".concat(valueOf) : new String("config/app/")).appendQueryParameter("app_instance_id", zzgVar.zzd()).appendQueryParameter("platform", "android");
        zzkfVar.zzs.zzc().zzf();
        appendQueryParameter.appendQueryParameter("gmp_version", String.valueOf(42004L));
        zzpt.zzb();
        if (zzkfVar.zzs.zzc().zzn(zzgVar.zzc(), zzea.zzaD)) {
            builder.appendQueryParameter("runtime_version", "0");
        }
        String uri = builder.build().toString();
        try {
            String str2 = (String) Preconditions.checkNotNull(zzgVar.zzc());
            URL url = new URL(uri);
            zzau().zzk().zzb("Fetching remote configuration", str2);
            zzfl zzflVar = this.zzc;
            zzak(zzflVar);
            zzfc zzb2 = zzflVar.zzb(str2);
            zzfl zzflVar2 = this.zzc;
            zzak(zzflVar2);
            String zzc2 = zzflVar2.zzc(str2);
            C4251a c4251a = null;
            if (zzb2 != null) {
                c4251a = null;
                if (!TextUtils.isEmpty(zzc2)) {
                    c4251a = new C4251a();
                    c4251a.put("If-Modified-Since", zzc2);
                }
            }
            this.zzs = true;
            zzes zzesVar = this.zzd;
            zzak(zzesVar);
            zzki zzkiVar = new zzki(this);
            zzesVar.zzg();
            zzesVar.zzZ();
            Preconditions.checkNotNull(url);
            Preconditions.checkNotNull(zzkiVar);
            zzesVar.zzs.zzav().zzk(new zzer(zzesVar, str2, url, null, c4251a, zzkiVar));
        } catch (MalformedURLException e) {
            zzau().zzb().zzc("Failed to parse config URL. Not fetching. appId", zzem.zzl(zzgVar.zzc()), uri);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0099 A[Catch: all -> 0x0278, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0289, blocks: (B:4:0x0019, B:6:0x001f, B:51:0x01a0, B:53:0x01ab, B:60:0x01e2, B:76:0x026c, B:8:0x004b, B:22:0x0099, B:27:0x00bc, B:32:0x0122, B:34:0x0136, B:37:0x0141, B:41:0x0158, B:43:0x0161, B:49:0x0184, B:56:0x01b8, B:58:0x01ca, B:61:0x01ef, B:64:0x0215, B:65:0x0226, B:67:0x023b, B:69:0x024b, B:71:0x0252, B:72:0x0259, B:74:0x025e), top: B:80:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0215 A[Catch: all -> 0x0278, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0289, blocks: (B:4:0x0019, B:6:0x001f, B:51:0x01a0, B:53:0x01ab, B:60:0x01e2, B:76:0x026c, B:8:0x004b, B:22:0x0099, B:27:0x00bc, B:32:0x0122, B:34:0x0136, B:37:0x0141, B:41:0x0158, B:43:0x0161, B:49:0x0184, B:56:0x01b8, B:58:0x01ca, B:61:0x01ef, B:64:0x0215, B:65:0x0226, B:67:0x023b, B:69:0x024b, B:71:0x0252, B:72:0x0259, B:74:0x025e), top: B:80:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0226 A[Catch: all -> 0x0278, TRY_ENTER, TryCatch #1 {all -> 0x0289, blocks: (B:4:0x0019, B:6:0x001f, B:51:0x01a0, B:53:0x01ab, B:60:0x01e2, B:76:0x026c, B:8:0x004b, B:22:0x0099, B:27:0x00bc, B:32:0x0122, B:34:0x0136, B:37:0x0141, B:41:0x0158, B:43:0x0161, B:49:0x0184, B:56:0x01b8, B:58:0x01ca, B:61:0x01ef, B:64:0x0215, B:65:0x0226, B:67:0x023b, B:69:0x024b, B:71:0x0252, B:72:0x0259, B:74:0x025e), top: B:80:0x0019 }] */
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzE(java.lang.String r6, int r7, java.lang.Throwable r8, byte[] r9, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r10) {
        /*
            Method dump skipped, instructions count: 661
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkn.zzE(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    public final void zzF(Runnable runnable) {
        zzav().zzg();
        if (this.zzp == null) {
            this.zzp = new ArrayList();
        }
        this.zzp.add(runnable);
    }

    @VisibleForTesting
    public final void zzG() {
        int i;
        zzav().zzg();
        zzr();
        if (!this.zzo) {
            this.zzo = true;
            if (!zzH()) {
                return;
            }
            FileChannel fileChannel = this.zzw;
            zzav().zzg();
            if (fileChannel == null || !fileChannel.isOpen()) {
                zzau().zzb().zza("Bad channel to read from");
                i = 0;
            } else {
                ByteBuffer allocate = ByteBuffer.allocate(4);
                try {
                    fileChannel.position(0L);
                    int read = fileChannel.read(allocate);
                    if (read != 4) {
                        i = 0;
                        if (read != -1) {
                            zzau().zze().zzb("Unexpected data length. Bytes read", Integer.valueOf(read));
                            i = 0;
                        }
                    } else {
                        allocate.flip();
                        i = allocate.getInt();
                    }
                } catch (IOException e) {
                    zzau().zzb().zzb("Failed to read from channel", e);
                    i = 0;
                }
            }
            int zzm = this.zzm.zzA().zzm();
            zzav().zzg();
            if (i > zzm) {
                zzau().zzb().zzc("Panic: can't downgrade version. Previous, current version", Integer.valueOf(i), Integer.valueOf(zzm));
            } else if (i >= zzm) {
            } else {
                FileChannel fileChannel2 = this.zzw;
                zzav().zzg();
                if (fileChannel2 == null || !fileChannel2.isOpen()) {
                    zzau().zzb().zza("Bad channel to read from");
                } else {
                    ByteBuffer allocate2 = ByteBuffer.allocate(4);
                    allocate2.putInt(zzm);
                    allocate2.flip();
                    try {
                        fileChannel2.truncate(0L);
                        zzd().zzn(null, zzea.zzap);
                        fileChannel2.write(allocate2);
                        fileChannel2.force(true);
                        if (fileChannel2.size() != 4) {
                            zzau().zzb().zzb("Error writing to channel. Bytes written", Long.valueOf(fileChannel2.size()));
                        }
                        zzau().zzk().zzc("Storage version upgraded. Previous, current version", Integer.valueOf(i), Integer.valueOf(zzm));
                        return;
                    } catch (IOException e2) {
                        zzau().zzb().zzb("Failed to write to channel", e2);
                    }
                }
                zzau().zzb().zzc("Storage version upgrade failed. Previous, current version", Integer.valueOf(i), Integer.valueOf(zzm));
            }
        }
    }

    @VisibleForTesting
    public final boolean zzH() {
        FileLock fileLock;
        zzav().zzg();
        if (zzd().zzn(null, zzea.zzaf) && (fileLock = this.zzv) != null && fileLock.isValid()) {
            zzau().zzk().zza("Storage concurrent access okay");
            return true;
        }
        this.zze.zzs.zzc();
        try {
            FileChannel channel = new RandomAccessFile(new File(this.zzm.zzax().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
            this.zzw = channel;
            FileLock tryLock = channel.tryLock();
            this.zzv = tryLock;
            if (tryLock != null) {
                zzau().zzk().zza("Storage concurrent access okay");
                return true;
            }
            zzau().zzb().zza("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e) {
            zzau().zzb().zzb("Failed to acquire storage lock", e);
            return false;
        } catch (IOException e2) {
            zzau().zzb().zzb("Failed to access storage lock file", e2);
            return false;
        } catch (OverlappingFileLockException e3) {
            zzau().zze().zzb("Storage lock already acquired", e3);
            return false;
        }
    }

    @VisibleForTesting
    public final void zzI(zzp zzpVar) {
        if (this.zzx != null) {
            ArrayList arrayList = new ArrayList();
            this.zzy = arrayList;
            arrayList.addAll(this.zzx);
        }
        zzai zzaiVar = this.zze;
        zzak(zzaiVar);
        String str = (String) Preconditions.checkNotNull(zzpVar.zza);
        Preconditions.checkNotEmpty(str);
        zzaiVar.zzg();
        zzaiVar.zzZ();
        try {
            SQLiteDatabase zze = zzaiVar.zze();
            String[] strArr = new String[1];
            strArr[0] = str;
            int delete = zze.delete("apps", "app_id=?", strArr) + zze.delete("events", "app_id=?", strArr) + zze.delete("user_attributes", "app_id=?", strArr) + zze.delete("conditional_properties", "app_id=?", strArr) + zze.delete("raw_events", "app_id=?", strArr) + zze.delete("raw_events_metadata", "app_id=?", strArr) + zze.delete("queue", "app_id=?", strArr) + zze.delete("audience_filter_values", "app_id=?", strArr) + zze.delete("main_event_params", "app_id=?", strArr) + zze.delete("default_event_params", "app_id=?", strArr);
            if (delete > 0) {
                zzaiVar.zzs.zzau().zzk().zzc("Reset analytics data. app, records", str, Integer.valueOf(delete));
            }
        } catch (SQLiteException e) {
            zzaiVar.zzs.zzau().zzb().zzc("Error resetting analytics data. appId, error", zzem.zzl(str), e);
        }
        if (zzpVar.zzh) {
            zzO(zzpVar);
        }
    }

    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* JADX WARN: Type inference failed for: r0v99, types: [long] */
    public final void zzJ(zzkq zzkqVar, zzp zzpVar) {
        char c;
        zzav().zzg();
        zzr();
        if (!zzaj(zzpVar)) {
            return;
        }
        if (!zzpVar.zzh) {
            zzT(zzpVar);
            return;
        }
        int zzo = zzq().zzo(zzkqVar.zzb);
        if (zzo != 0) {
            zzku zzq = zzq();
            String str = zzkqVar.zzb;
            zzd();
            String zzC = zzq.zzC(str, 24, true);
            String str2 = zzkqVar.zzb;
            zzq().zzM(this.zzB, zzpVar.zza, zzo, "_ev", zzC, str2 != null ? str2.length() : 0, zzd().zzn(null, zzea.zzav));
            return;
        }
        int zzJ = zzq().zzJ(zzkqVar.zzb, zzkqVar.zza());
        if (zzJ != 0) {
            zzku zzq2 = zzq();
            String str3 = zzkqVar.zzb;
            zzd();
            String zzC2 = zzq2.zzC(str3, 24, true);
            Object zza = zzkqVar.zza();
            zzq().zzM(this.zzB, zzpVar.zza, zzJ, "_ev", zzC2, (zza == null || (!(zza instanceof String) && !(zza instanceof CharSequence))) ? 0 : String.valueOf(zza).length(), zzd().zzn(null, zzea.zzav));
            return;
        }
        Object zzK = zzq().zzK(zzkqVar.zzb, zzkqVar.zza());
        if (zzK == null) {
            return;
        }
        if ("_sid".equals(zzkqVar.zzb)) {
            long j = zzkqVar.zzc;
            String str4 = zzkqVar.zzf;
            String str5 = (String) Preconditions.checkNotNull(zzpVar.zza);
            zzai zzaiVar = this.zze;
            zzak(zzaiVar);
            zzks zzk = zzaiVar.zzk(str5, "_sno");
            if (zzk != null) {
                Object obj = zzk.zze;
                if (obj instanceof Long) {
                    c = ((Long) obj).longValue();
                    zzJ(new zzkq("_sno", j, Long.valueOf(c + 1), str4), zzpVar);
                }
            }
            if (zzk != null) {
                zzau().zze().zzb("Retrieved last session number from database does not contain a valid (long) value", zzk.zze);
            }
            zzai zzaiVar2 = this.zze;
            zzak(zzaiVar2);
            zzao zzf = zzaiVar2.zzf(str5, "_s");
            if (zzf != null) {
                c = zzf.zzc;
                zzau().zzk().zzb("Backfill the session number. Last used session number", Long.valueOf(c));
            } else {
                c = 0;
            }
            zzJ(new zzkq("_sno", j, Long.valueOf(c + 1), str4), zzpVar);
        }
        zzks zzksVar = new zzks((String) Preconditions.checkNotNull(zzpVar.zza), (String) Preconditions.checkNotNull(zzkqVar.zzf), zzkqVar.zzb, zzkqVar.zzc, zzK);
        zzau().zzk().zzc("Setting user property", this.zzm.zzm().zze(zzksVar.zzc), zzK);
        zzai zzaiVar3 = this.zze;
        zzak(zzaiVar3);
        zzaiVar3.zzb();
        try {
            zzT(zzpVar);
            zzai zzaiVar4 = this.zze;
            zzak(zzaiVar4);
            boolean zzj = zzaiVar4.zzj(zzksVar);
            zzai zzaiVar5 = this.zze;
            zzak(zzaiVar5);
            zzaiVar5.zzc();
            if (!zzj) {
                zzau().zzb().zzc("Too many unique user properties are set. Ignoring user property", this.zzm.zzm().zze(zzksVar.zzc), zzksVar.zze);
                zzq().zzM(this.zzB, zzpVar.zza, 9, null, null, 0, zzd().zzn(null, zzea.zzav));
            }
        } finally {
            zzai zzaiVar6 = this.zze;
            zzak(zzaiVar6);
            zzaiVar6.zzd();
        }
    }

    public final void zzK(zzkq zzkqVar, zzp zzpVar) {
        zzav().zzg();
        zzr();
        if (!zzaj(zzpVar)) {
            return;
        }
        if (!zzpVar.zzh) {
            zzT(zzpVar);
        } else if ("_npa".equals(zzkqVar.zzb) && zzpVar.zzr != null) {
            zzau().zzj().zza("Falling back to manifest metadata value for ad personalization");
            zzJ(new zzkq("_npa", zzay().currentTimeMillis(), Long.valueOf((true != zzpVar.zzr.booleanValue() ? null : 1) == 1 ? 1L : 0L), "auto"), zzpVar);
        } else {
            zzau().zzj().zzb("Removing user property", this.zzm.zzm().zze(zzkqVar.zzb));
            zzai zzaiVar = this.zze;
            zzak(zzaiVar);
            zzaiVar.zzb();
            try {
                zzT(zzpVar);
                zzai zzaiVar2 = this.zze;
                zzak(zzaiVar2);
                zzaiVar2.zzi((String) Preconditions.checkNotNull(zzpVar.zza), zzkqVar.zzb);
                zzai zzaiVar3 = this.zze;
                zzak(zzaiVar3);
                zzaiVar3.zzc();
                zzau().zzj().zzb("User property removed", this.zzm.zzm().zze(zzkqVar.zzb));
            } finally {
                zzai zzaiVar4 = this.zze;
                zzak(zzaiVar4);
                zzaiVar4.zzd();
            }
        }
    }

    public final void zzL() {
        this.zzq++;
    }

    public final void zzM() {
        this.zzr++;
    }

    public final zzfu zzN() {
        return this.zzm;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:134:0x05a5 A[Catch: all -> 0x0851, TryCatch #3 {all -> 0x0851, blocks: (B:24:0x00e8, B:26:0x0104, B:29:0x0118, B:31:0x0121, B:36:0x0136, B:38:0x014c, B:41:0x015c, B:44:0x0169, B:46:0x0181, B:50:0x01a1, B:52:0x01bb, B:54:0x01ec, B:56:0x01fc, B:58:0x028e, B:60:0x02a9, B:65:0x02c5, B:67:0x02d0, B:72:0x02e5, B:76:0x02f9, B:83:0x0315, B:84:0x034b, B:86:0x0356, B:88:0x0372, B:92:0x038f, B:95:0x03a6, B:97:0x03e1, B:100:0x03ec, B:102:0x03fd, B:103:0x0410, B:105:0x045b, B:106:0x046e, B:108:0x047d, B:110:0x0487, B:112:0x049c, B:114:0x04ab, B:116:0x04b6, B:118:0x04bd, B:119:0x04c9, B:120:0x04cc, B:125:0x04f9, B:127:0x0506, B:128:0x051d, B:129:0x0530, B:130:0x0543, B:132:0x0554, B:134:0x05a5, B:136:0x05ae, B:138:0x05e9, B:140:0x05fe, B:142:0x0613, B:146:0x0631, B:149:0x063e, B:151:0x0648, B:156:0x065d, B:159:0x066b, B:161:0x0679, B:166:0x068c, B:167:0x06a6, B:169:0x06bb, B:173:0x06d4, B:175:0x06dd, B:177:0x06e6, B:179:0x06f0, B:182:0x0701, B:183:0x070a, B:184:0x070d, B:186:0x0734, B:188:0x077a, B:190:0x0788, B:191:0x0791, B:192:0x0794, B:194:0x07b6, B:196:0x07c6, B:197:0x0802, B:199:0x0809, B:201:0x0835), top: B:214:0x00e8, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x05e9 A[Catch: all -> 0x0851, TryCatch #3 {all -> 0x0851, blocks: (B:24:0x00e8, B:26:0x0104, B:29:0x0118, B:31:0x0121, B:36:0x0136, B:38:0x014c, B:41:0x015c, B:44:0x0169, B:46:0x0181, B:50:0x01a1, B:52:0x01bb, B:54:0x01ec, B:56:0x01fc, B:58:0x028e, B:60:0x02a9, B:65:0x02c5, B:67:0x02d0, B:72:0x02e5, B:76:0x02f9, B:83:0x0315, B:84:0x034b, B:86:0x0356, B:88:0x0372, B:92:0x038f, B:95:0x03a6, B:97:0x03e1, B:100:0x03ec, B:102:0x03fd, B:103:0x0410, B:105:0x045b, B:106:0x046e, B:108:0x047d, B:110:0x0487, B:112:0x049c, B:114:0x04ab, B:116:0x04b6, B:118:0x04bd, B:119:0x04c9, B:120:0x04cc, B:125:0x04f9, B:127:0x0506, B:128:0x051d, B:129:0x0530, B:130:0x0543, B:132:0x0554, B:134:0x05a5, B:136:0x05ae, B:138:0x05e9, B:140:0x05fe, B:142:0x0613, B:146:0x0631, B:149:0x063e, B:151:0x0648, B:156:0x065d, B:159:0x066b, B:161:0x0679, B:166:0x068c, B:167:0x06a6, B:169:0x06bb, B:173:0x06d4, B:175:0x06dd, B:177:0x06e6, B:179:0x06f0, B:182:0x0701, B:183:0x070a, B:184:0x070d, B:186:0x0734, B:188:0x077a, B:190:0x0788, B:191:0x0791, B:192:0x0794, B:194:0x07b6, B:196:0x07c6, B:197:0x0802, B:199:0x0809, B:201:0x0835), top: B:214:0x00e8, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0701 A[Catch: all -> 0x0851, TRY_ENTER, TryCatch #3 {all -> 0x0851, blocks: (B:24:0x00e8, B:26:0x0104, B:29:0x0118, B:31:0x0121, B:36:0x0136, B:38:0x014c, B:41:0x015c, B:44:0x0169, B:46:0x0181, B:50:0x01a1, B:52:0x01bb, B:54:0x01ec, B:56:0x01fc, B:58:0x028e, B:60:0x02a9, B:65:0x02c5, B:67:0x02d0, B:72:0x02e5, B:76:0x02f9, B:83:0x0315, B:84:0x034b, B:86:0x0356, B:88:0x0372, B:92:0x038f, B:95:0x03a6, B:97:0x03e1, B:100:0x03ec, B:102:0x03fd, B:103:0x0410, B:105:0x045b, B:106:0x046e, B:108:0x047d, B:110:0x0487, B:112:0x049c, B:114:0x04ab, B:116:0x04b6, B:118:0x04bd, B:119:0x04c9, B:120:0x04cc, B:125:0x04f9, B:127:0x0506, B:128:0x051d, B:129:0x0530, B:130:0x0543, B:132:0x0554, B:134:0x05a5, B:136:0x05ae, B:138:0x05e9, B:140:0x05fe, B:142:0x0613, B:146:0x0631, B:149:0x063e, B:151:0x0648, B:156:0x065d, B:159:0x066b, B:161:0x0679, B:166:0x068c, B:167:0x06a6, B:169:0x06bb, B:173:0x06d4, B:175:0x06dd, B:177:0x06e6, B:179:0x06f0, B:182:0x0701, B:183:0x070a, B:184:0x070d, B:186:0x0734, B:188:0x077a, B:190:0x0788, B:191:0x0791, B:192:0x0794, B:194:0x07b6, B:196:0x07c6, B:197:0x0802, B:199:0x0809, B:201:0x0835), top: B:214:0x00e8, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0802 A[Catch: all -> 0x0851, TRY_ENTER, TryCatch #3 {all -> 0x0851, blocks: (B:24:0x00e8, B:26:0x0104, B:29:0x0118, B:31:0x0121, B:36:0x0136, B:38:0x014c, B:41:0x015c, B:44:0x0169, B:46:0x0181, B:50:0x01a1, B:52:0x01bb, B:54:0x01ec, B:56:0x01fc, B:58:0x028e, B:60:0x02a9, B:65:0x02c5, B:67:0x02d0, B:72:0x02e5, B:76:0x02f9, B:83:0x0315, B:84:0x034b, B:86:0x0356, B:88:0x0372, B:92:0x038f, B:95:0x03a6, B:97:0x03e1, B:100:0x03ec, B:102:0x03fd, B:103:0x0410, B:105:0x045b, B:106:0x046e, B:108:0x047d, B:110:0x0487, B:112:0x049c, B:114:0x04ab, B:116:0x04b6, B:118:0x04bd, B:119:0x04c9, B:120:0x04cc, B:125:0x04f9, B:127:0x0506, B:128:0x051d, B:129:0x0530, B:130:0x0543, B:132:0x0554, B:134:0x05a5, B:136:0x05ae, B:138:0x05e9, B:140:0x05fe, B:142:0x0613, B:146:0x0631, B:149:0x063e, B:151:0x0648, B:156:0x065d, B:159:0x066b, B:161:0x0679, B:166:0x068c, B:167:0x06a6, B:169:0x06bb, B:173:0x06d4, B:175:0x06dd, B:177:0x06e6, B:179:0x06f0, B:182:0x0701, B:183:0x070a, B:184:0x070d, B:186:0x0734, B:188:0x077a, B:190:0x0788, B:191:0x0791, B:192:0x0794, B:194:0x07b6, B:196:0x07c6, B:197:0x0802, B:199:0x0809, B:201:0x0835), top: B:214:0x00e8, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x05fe A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x02c5 A[Catch: all -> 0x0851, TRY_ENTER, TryCatch #3 {all -> 0x0851, blocks: (B:24:0x00e8, B:26:0x0104, B:29:0x0118, B:31:0x0121, B:36:0x0136, B:38:0x014c, B:41:0x015c, B:44:0x0169, B:46:0x0181, B:50:0x01a1, B:52:0x01bb, B:54:0x01ec, B:56:0x01fc, B:58:0x028e, B:60:0x02a9, B:65:0x02c5, B:67:0x02d0, B:72:0x02e5, B:76:0x02f9, B:83:0x0315, B:84:0x034b, B:86:0x0356, B:88:0x0372, B:92:0x038f, B:95:0x03a6, B:97:0x03e1, B:100:0x03ec, B:102:0x03fd, B:103:0x0410, B:105:0x045b, B:106:0x046e, B:108:0x047d, B:110:0x0487, B:112:0x049c, B:114:0x04ab, B:116:0x04b6, B:118:0x04bd, B:119:0x04c9, B:120:0x04cc, B:125:0x04f9, B:127:0x0506, B:128:0x051d, B:129:0x0530, B:130:0x0543, B:132:0x0554, B:134:0x05a5, B:136:0x05ae, B:138:0x05e9, B:140:0x05fe, B:142:0x0613, B:146:0x0631, B:149:0x063e, B:151:0x0648, B:156:0x065d, B:159:0x066b, B:161:0x0679, B:166:0x068c, B:167:0x06a6, B:169:0x06bb, B:173:0x06d4, B:175:0x06dd, B:177:0x06e6, B:179:0x06f0, B:182:0x0701, B:183:0x070a, B:184:0x070d, B:186:0x0734, B:188:0x077a, B:190:0x0788, B:191:0x0791, B:192:0x0794, B:194:0x07b6, B:196:0x07c6, B:197:0x0802, B:199:0x0809, B:201:0x0835), top: B:214:0x00e8, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0356 A[Catch: all -> 0x0851, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x0851, blocks: (B:24:0x00e8, B:26:0x0104, B:29:0x0118, B:31:0x0121, B:36:0x0136, B:38:0x014c, B:41:0x015c, B:44:0x0169, B:46:0x0181, B:50:0x01a1, B:52:0x01bb, B:54:0x01ec, B:56:0x01fc, B:58:0x028e, B:60:0x02a9, B:65:0x02c5, B:67:0x02d0, B:72:0x02e5, B:76:0x02f9, B:83:0x0315, B:84:0x034b, B:86:0x0356, B:88:0x0372, B:92:0x038f, B:95:0x03a6, B:97:0x03e1, B:100:0x03ec, B:102:0x03fd, B:103:0x0410, B:105:0x045b, B:106:0x046e, B:108:0x047d, B:110:0x0487, B:112:0x049c, B:114:0x04ab, B:116:0x04b6, B:118:0x04bd, B:119:0x04c9, B:120:0x04cc, B:125:0x04f9, B:127:0x0506, B:128:0x051d, B:129:0x0530, B:130:0x0543, B:132:0x0554, B:134:0x05a5, B:136:0x05ae, B:138:0x05e9, B:140:0x05fe, B:142:0x0613, B:146:0x0631, B:149:0x063e, B:151:0x0648, B:156:0x065d, B:159:0x066b, B:161:0x0679, B:166:0x068c, B:167:0x06a6, B:169:0x06bb, B:173:0x06d4, B:175:0x06dd, B:177:0x06e6, B:179:0x06f0, B:182:0x0701, B:183:0x070a, B:184:0x070d, B:186:0x0734, B:188:0x077a, B:190:0x0788, B:191:0x0791, B:192:0x0794, B:194:0x07b6, B:196:0x07c6, B:197:0x0802, B:199:0x0809, B:201:0x0835), top: B:214:0x00e8, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0372 A[Catch: all -> 0x0851, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x0851, blocks: (B:24:0x00e8, B:26:0x0104, B:29:0x0118, B:31:0x0121, B:36:0x0136, B:38:0x014c, B:41:0x015c, B:44:0x0169, B:46:0x0181, B:50:0x01a1, B:52:0x01bb, B:54:0x01ec, B:56:0x01fc, B:58:0x028e, B:60:0x02a9, B:65:0x02c5, B:67:0x02d0, B:72:0x02e5, B:76:0x02f9, B:83:0x0315, B:84:0x034b, B:86:0x0356, B:88:0x0372, B:92:0x038f, B:95:0x03a6, B:97:0x03e1, B:100:0x03ec, B:102:0x03fd, B:103:0x0410, B:105:0x045b, B:106:0x046e, B:108:0x047d, B:110:0x0487, B:112:0x049c, B:114:0x04ab, B:116:0x04b6, B:118:0x04bd, B:119:0x04c9, B:120:0x04cc, B:125:0x04f9, B:127:0x0506, B:128:0x051d, B:129:0x0530, B:130:0x0543, B:132:0x0554, B:134:0x05a5, B:136:0x05ae, B:138:0x05e9, B:140:0x05fe, B:142:0x0613, B:146:0x0631, B:149:0x063e, B:151:0x0648, B:156:0x065d, B:159:0x066b, B:161:0x0679, B:166:0x068c, B:167:0x06a6, B:169:0x06bb, B:173:0x06d4, B:175:0x06dd, B:177:0x06e6, B:179:0x06f0, B:182:0x0701, B:183:0x070a, B:184:0x070d, B:186:0x0734, B:188:0x077a, B:190:0x0788, B:191:0x0791, B:192:0x0794, B:194:0x07b6, B:196:0x07c6, B:197:0x0802, B:199:0x0809, B:201:0x0835), top: B:214:0x00e8, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x038f A[Catch: all -> 0x0851, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x0851, blocks: (B:24:0x00e8, B:26:0x0104, B:29:0x0118, B:31:0x0121, B:36:0x0136, B:38:0x014c, B:41:0x015c, B:44:0x0169, B:46:0x0181, B:50:0x01a1, B:52:0x01bb, B:54:0x01ec, B:56:0x01fc, B:58:0x028e, B:60:0x02a9, B:65:0x02c5, B:67:0x02d0, B:72:0x02e5, B:76:0x02f9, B:83:0x0315, B:84:0x034b, B:86:0x0356, B:88:0x0372, B:92:0x038f, B:95:0x03a6, B:97:0x03e1, B:100:0x03ec, B:102:0x03fd, B:103:0x0410, B:105:0x045b, B:106:0x046e, B:108:0x047d, B:110:0x0487, B:112:0x049c, B:114:0x04ab, B:116:0x04b6, B:118:0x04bd, B:119:0x04c9, B:120:0x04cc, B:125:0x04f9, B:127:0x0506, B:128:0x051d, B:129:0x0530, B:130:0x0543, B:132:0x0554, B:134:0x05a5, B:136:0x05ae, B:138:0x05e9, B:140:0x05fe, B:142:0x0613, B:146:0x0631, B:149:0x063e, B:151:0x0648, B:156:0x065d, B:159:0x066b, B:161:0x0679, B:166:0x068c, B:167:0x06a6, B:169:0x06bb, B:173:0x06d4, B:175:0x06dd, B:177:0x06e6, B:179:0x06f0, B:182:0x0701, B:183:0x070a, B:184:0x070d, B:186:0x0734, B:188:0x077a, B:190:0x0788, B:191:0x0791, B:192:0x0794, B:194:0x07b6, B:196:0x07c6, B:197:0x0802, B:199:0x0809, B:201:0x0835), top: B:214:0x00e8, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v326 */
    /* JADX WARN: Type inference failed for: r0v327 */
    /* JADX WARN: Type inference failed for: r0v416, types: [long] */
    /* JADX WARN: Type inference failed for: r0v81, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r1v52 */
    /* JADX WARN: Type inference failed for: r1v93 */
    /* JADX WARN: Type inference failed for: r2v16, types: [long] */
    /* JADX WARN: Type inference failed for: r2v31, types: [long] */
    /* JADX WARN: Type inference failed for: r2v76, types: [long] */
    /* JADX WARN: Type inference failed for: r2v78, types: [long] */
    /* JADX WARN: Type inference failed for: r2v8, types: [long] */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r4v0, types: [long] */
    /* JADX WARN: Type inference failed for: r4v1, types: [long] */
    /* JADX WARN: Type inference failed for: r4v3, types: [long] */
    /* JADX WARN: Type inference failed for: r4v6, types: [long] */
    /* JADX WARN: Type inference failed for: r4v8, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzO(com.google.android.gms.measurement.internal.zzp r8) {
        /*
            Method dump skipped, instructions count: 2147
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkn.zzO(com.google.android.gms.measurement.internal.zzp):void");
    }

    public final void zzP(zzaa zzaaVar) {
        zzp zzai = zzai((String) Preconditions.checkNotNull(zzaaVar.zza));
        if (zzai != null) {
            zzQ(zzaaVar, zzai);
        }
    }

    public final void zzQ(zzaa zzaaVar, zzp zzpVar) {
        zzas zzasVar;
        Preconditions.checkNotNull(zzaaVar);
        Preconditions.checkNotEmpty(zzaaVar.zza);
        Preconditions.checkNotNull(zzaaVar.zzb);
        Preconditions.checkNotNull(zzaaVar.zzc);
        Preconditions.checkNotEmpty(zzaaVar.zzc.zzb);
        zzav().zzg();
        zzr();
        if (!zzaj(zzpVar)) {
            return;
        }
        if (!zzpVar.zzh) {
            zzT(zzpVar);
            return;
        }
        zzaa zzaaVar2 = new zzaa(zzaaVar);
        boolean z = false;
        zzaaVar2.zze = false;
        zzai zzaiVar = this.zze;
        zzak(zzaiVar);
        zzaiVar.zzb();
        try {
            zzai zzaiVar2 = this.zze;
            zzak(zzaiVar2);
            zzaa zzo = zzaiVar2.zzo((String) Preconditions.checkNotNull(zzaaVar2.zza), zzaaVar2.zzc.zzb);
            if (zzo != null && !zzo.zzb.equals(zzaaVar2.zzb)) {
                zzau().zze().zzd("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.zzm.zzm().zze(zzaaVar2.zzc.zzb), zzaaVar2.zzb, zzo.zzb);
            }
            if (zzo != null && zzo.zze) {
                zzaaVar2.zzb = zzo.zzb;
                zzaaVar2.zzd = zzo.zzd;
                zzaaVar2.zzh = zzo.zzh;
                zzaaVar2.zzf = zzo.zzf;
                zzaaVar2.zzi = zzo.zzi;
                zzaaVar2.zze = true;
                zzkq zzkqVar = zzaaVar2.zzc;
                zzaaVar2.zzc = new zzkq(zzkqVar.zzb, zzo.zzc.zzc, zzkqVar.zza(), zzo.zzc.zzf);
            } else if (TextUtils.isEmpty(zzaaVar2.zzf)) {
                zzkq zzkqVar2 = zzaaVar2.zzc;
                zzaaVar2.zzc = new zzkq(zzkqVar2.zzb, zzaaVar2.zzd, zzkqVar2.zza(), zzaaVar2.zzc.zzf);
                zzaaVar2.zze = true;
                z = true;
            }
            if (zzaaVar2.zze) {
                zzkq zzkqVar3 = zzaaVar2.zzc;
                zzks zzksVar = new zzks((String) Preconditions.checkNotNull(zzaaVar2.zza), zzaaVar2.zzb, zzkqVar3.zzb, zzkqVar3.zzc, Preconditions.checkNotNull(zzkqVar3.zza()));
                zzai zzaiVar3 = this.zze;
                zzak(zzaiVar3);
                if (zzaiVar3.zzj(zzksVar)) {
                    zzau().zzj().zzd("User property updated immediately", zzaaVar2.zza, this.zzm.zzm().zze(zzksVar.zzc), zzksVar.zze);
                } else {
                    zzau().zzb().zzd("(2)Too many active user properties, ignoring", zzem.zzl(zzaaVar2.zza), this.zzm.zzm().zze(zzksVar.zzc), zzksVar.zze);
                }
                if (z && (zzasVar = zzaaVar2.zzi) != null) {
                    zzz(new zzas(zzasVar, zzaaVar2.zzd), zzpVar);
                }
            }
            zzai zzaiVar4 = this.zze;
            zzak(zzaiVar4);
            if (zzaiVar4.zzn(zzaaVar2)) {
                zzau().zzj().zzd("Conditional property added", zzaaVar2.zza, this.zzm.zzm().zze(zzaaVar2.zzc.zzb), zzaaVar2.zzc.zza());
            } else {
                zzau().zzb().zzd("Too many conditional properties, ignoring", zzem.zzl(zzaaVar2.zza), this.zzm.zzm().zze(zzaaVar2.zzc.zzb), zzaaVar2.zzc.zza());
            }
            zzai zzaiVar5 = this.zze;
            zzak(zzaiVar5);
            zzaiVar5.zzc();
        } finally {
            zzai zzaiVar6 = this.zze;
            zzak(zzaiVar6);
            zzaiVar6.zzd();
        }
    }

    public final void zzR(zzaa zzaaVar) {
        zzp zzai = zzai((String) Preconditions.checkNotNull(zzaaVar.zza));
        if (zzai != null) {
            zzS(zzaaVar, zzai);
        }
    }

    public final void zzS(zzaa zzaaVar, zzp zzpVar) {
        Preconditions.checkNotNull(zzaaVar);
        Preconditions.checkNotEmpty(zzaaVar.zza);
        Preconditions.checkNotNull(zzaaVar.zzc);
        Preconditions.checkNotEmpty(zzaaVar.zzc.zzb);
        zzav().zzg();
        zzr();
        if (!zzaj(zzpVar)) {
            return;
        }
        if (!zzpVar.zzh) {
            zzT(zzpVar);
            return;
        }
        zzai zzaiVar = this.zze;
        zzak(zzaiVar);
        zzaiVar.zzb();
        try {
            zzT(zzpVar);
            String str = (String) Preconditions.checkNotNull(zzaaVar.zza);
            zzai zzaiVar2 = this.zze;
            zzak(zzaiVar2);
            zzaa zzo = zzaiVar2.zzo(str, zzaaVar.zzc.zzb);
            if (zzo != null) {
                zzau().zzj().zzc("Removing conditional user property", zzaaVar.zza, this.zzm.zzm().zze(zzaaVar.zzc.zzb));
                zzai zzaiVar3 = this.zze;
                zzak(zzaiVar3);
                zzaiVar3.zzp(str, zzaaVar.zzc.zzb);
                if (zzo.zze) {
                    zzai zzaiVar4 = this.zze;
                    zzak(zzaiVar4);
                    zzaiVar4.zzi(str, zzaaVar.zzc.zzb);
                }
                zzas zzasVar = zzaaVar.zzk;
                if (zzasVar != null) {
                    zzaq zzaqVar = zzasVar.zzb;
                    zzz((zzas) Preconditions.checkNotNull(zzq().zzV(str, ((zzas) Preconditions.checkNotNull(zzaaVar.zzk)).zza, zzaqVar != null ? zzaqVar.zzf() : null, zzo.zzb, zzaaVar.zzk.zzd, true, false)), zzpVar);
                }
            } else {
                zzau().zze().zzc("Conditional user property doesn't exist", zzem.zzl(zzaaVar.zza), this.zzm.zzm().zze(zzaaVar.zzc.zzb));
            }
            zzai zzaiVar5 = this.zze;
            zzak(zzaiVar5);
            zzaiVar5.zzc();
        } finally {
            zzai zzaiVar6 = this.zze;
            zzak(zzaiVar6);
            zzaiVar6.zzd();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:140:0x04d8, code lost:
        if (r15 == false) goto L142;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x045d  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0486  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x04ae  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x035f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzg zzT(com.google.android.gms.measurement.internal.zzp r6) {
        /*
            Method dump skipped, instructions count: 1262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkn.zzT(com.google.android.gms.measurement.internal.zzp):com.google.android.gms.measurement.internal.zzg");
    }

    public final String zzU(zzp zzpVar) {
        try {
            return (String) zzav().zze(new zzkj(this, zzpVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            zzau().zzb().zzc("Failed to get app instance id. appId", zzem.zzl(zzpVar.zza), e);
            return null;
        }
    }

    public final void zzV(boolean z) {
        zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzgp
    public final zzz zzat() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgp
    public final zzem zzau() {
        return ((zzfu) Preconditions.checkNotNull(this.zzm)).zzau();
    }

    @Override // com.google.android.gms.measurement.internal.zzgp
    public final zzfr zzav() {
        return ((zzfu) Preconditions.checkNotNull(this.zzm)).zzav();
    }

    @Override // com.google.android.gms.measurement.internal.zzgp
    public final Context zzax() {
        return this.zzm.zzax();
    }

    @Override // com.google.android.gms.measurement.internal.zzgp
    public final Clock zzay() {
        return ((zzfu) Preconditions.checkNotNull(this.zzm)).zzay();
    }

    public final void zzc() {
        zzav().zzg();
        zzai zzaiVar = this.zze;
        zzak(zzaiVar);
        zzaiVar.zzA();
        if (this.zzk.zzc.zza() == 0) {
            this.zzk.zzc.zzb(zzay().currentTimeMillis());
        }
        zzaf();
    }

    public final zzae zzd() {
        return ((zzfu) Preconditions.checkNotNull(this.zzm)).zzc();
    }

    public final zzfl zzf() {
        zzfl zzflVar = this.zzc;
        zzak(zzflVar);
        return zzflVar;
    }

    public final zzes zzh() {
        zzes zzesVar = this.zzd;
        zzak(zzesVar);
        return zzesVar;
    }

    public final zzai zzi() {
        zzai zzaiVar = this.zze;
        zzak(zzaiVar);
        return zzaiVar;
    }

    public final zzeu zzj() {
        zzeu zzeuVar = this.zzf;
        if (zzeuVar != null) {
            return zzeuVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    public final zzy zzk() {
        zzy zzyVar = this.zzh;
        zzak(zzyVar);
        return zzyVar;
    }

    public final zzib zzl() {
        zzib zzibVar = this.zzj;
        zzak(zzibVar);
        return zzibVar;
    }

    public final zzkp zzm() {
        zzkp zzkpVar = this.zzi;
        zzak(zzkpVar);
        return zzkpVar;
    }

    public final zzjl zzn() {
        return this.zzk;
    }

    public final zzeh zzo() {
        return this.zzm.zzm();
    }

    public final zzku zzq() {
        return ((zzfu) Preconditions.checkNotNull(this.zzm)).zzl();
    }

    public final void zzr() {
        if (this.zzn) {
            return;
        }
        throw new IllegalStateException("UploadController is not initialized");
    }

    public final void zzs(String str, zzaf zzafVar) {
        zzav().zzg();
        zzr();
        this.zzA.put(str, zzafVar);
        zzai zzaiVar = this.zze;
        zzak(zzaiVar);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzafVar);
        zzaiVar.zzg();
        zzaiVar.zzZ();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", zzafVar.zzd());
        try {
            if (zzaiVar.zze().insertWithOnConflict("consent_settings", null, contentValues, 5) != -1) {
                return;
            }
            zzaiVar.zzs.zzau().zzb().zzb("Failed to insert/update consent setting (got -1). appId", zzem.zzl(str));
        } catch (SQLiteException e) {
            zzaiVar.zzs.zzau().zzb().zzc("Error storing consent setting. appId, error", zzem.zzl(str), e);
        }
    }

    /* JADX WARN: Finally extract failed */
    public final zzaf zzt(String str) {
        String str2;
        zzav().zzg();
        zzr();
        zzaf zzafVar = this.zzA.get(str);
        zzaf zzafVar2 = zzafVar;
        if (zzafVar == null) {
            zzai zzaiVar = this.zze;
            zzak(zzaiVar);
            Preconditions.checkNotNull(str);
            zzaiVar.zzg();
            zzaiVar.zzZ();
            Cursor cursor = null;
            Cursor cursor2 = null;
            try {
                try {
                    Cursor rawQuery = zzaiVar.zze().rawQuery("select consent_state from consent_settings where app_id=? limit 1;", new String[]{str});
                    if (rawQuery.moveToFirst()) {
                        cursor2 = rawQuery;
                        cursor = rawQuery;
                        String string = rawQuery.getString(0);
                        rawQuery.close();
                        str2 = string;
                    } else {
                        rawQuery.close();
                        str2 = "G1";
                    }
                    zzafVar2 = zzaf.zzc(str2);
                    zzs(str, zzafVar2);
                } catch (SQLiteException e) {
                    zzaiVar.zzs.zzau().zzb().zzc("Database error", "select consent_state from consent_settings where app_id=? limit 1;", e);
                    cursor2 = cursor;
                    throw e;
                }
            } catch (Throwable th) {
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        }
        return zzafVar2;
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    public final long zzu() {
        long currentTimeMillis = zzay().currentTimeMillis();
        zzjl zzjlVar = this.zzk;
        zzjlVar.zzZ();
        zzjlVar.zzg();
        ?? zza = zzjlVar.zze.zza();
        char c = zza;
        if (zza == 0) {
            c = zzjlVar.zzs.zzl().zzf().nextInt(86400000) + 1;
            zzjlVar.zze.zzb(c);
        }
        return ((((currentTimeMillis + c) / 1000) / 60) / 60) / 24;
    }

    public final void zzv(zzas zzasVar, String str) {
        zzai zzaiVar = this.zze;
        zzak(zzaiVar);
        zzg zzs = zzaiVar.zzs(str);
        if (zzs == null || TextUtils.isEmpty(zzs.zzt())) {
            zzau().zzj().zzb("No app data available; dropping event", str);
            return;
        }
        Boolean zzah = zzah(zzs);
        if (zzah == null) {
            if (!"_ui".equals(zzasVar.zza)) {
                zzau().zze().zzb("Could not find package. appId", zzem.zzl(str));
            }
        } else if (!zzah.booleanValue()) {
            zzau().zzb().zzb("App version does not match; dropping event. appId", zzem.zzl(str));
            return;
        }
        String zzf = zzs.zzf();
        String zzt = zzs.zzt();
        long zzv = zzs.zzv();
        String zzx = zzs.zzx();
        long zzz = zzs.zzz();
        long zzB = zzs.zzB();
        boolean zzF = zzs.zzF();
        String zzn = zzs.zzn();
        long zzad = zzs.zzad();
        boolean zzaf = zzs.zzaf();
        String zzh = zzs.zzh();
        Boolean zzah2 = zzs.zzah();
        long zzD = zzs.zzD();
        List<String> zzaj = zzs.zzaj();
        zzov.zzb();
        zzx(zzasVar, new zzp(str, zzf, zzt, zzv, zzx, zzz, zzB, (String) null, zzF, false, zzn, zzad, 0L, 0, zzaf, false, zzh, zzah2, zzD, zzaj, zzd().zzn(zzs.zzc(), zzea.zzag) ? zzs.zzj() : null, zzt(str).zzd()));
    }

    public final void zzx(zzas zzasVar, zzp zzpVar) {
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzen zza = zzen.zza(zzasVar);
        zzku zzq = zzq();
        Bundle bundle = zza.zzd;
        zzai zzaiVar = this.zze;
        zzak(zzaiVar);
        zzq.zzH(bundle, zzaiVar.zzK(zzpVar.zza));
        zzq().zzG(zza, zzd().zzd(zzpVar.zza));
        zzas zzb2 = zza.zzb();
        if (zzd().zzn(null, zzea.zzab) && "_cmp".equals(zzb2.zza) && "referrer API v2".equals(zzb2.zzb.zzd("_cis"))) {
            String zzd = zzb2.zzb.zzd("gclid");
            if (!TextUtils.isEmpty(zzd)) {
                zzJ(new zzkq("_lgclid", zzb2.zzd, zzd, "auto"), zzpVar);
            }
        }
        zzy(zzb2, zzpVar);
    }

    public final void zzy(zzas zzasVar, zzp zzpVar) {
        List<zzaa> list;
        List<zzaa> list2;
        List<zzaa> list3;
        Preconditions.checkNotNull(zzpVar);
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzav().zzg();
        zzr();
        String str = zzpVar.zza;
        long j = zzasVar.zzd;
        zzak(this.zzi);
        if (!zzkp.zzz(zzasVar, zzpVar)) {
            return;
        }
        if (!zzpVar.zzh) {
            zzT(zzpVar);
            return;
        }
        List<String> list4 = zzpVar.zzt;
        zzas zzasVar2 = zzasVar;
        if (list4 != null) {
            if (!list4.contains(zzasVar.zza)) {
                zzau().zzj().zzd("Dropping non-safelisted event. appId, event name, origin", str, zzasVar.zza, zzasVar.zzc);
                return;
            }
            Bundle zzf = zzasVar.zzb.zzf();
            zzf.putLong("ga_safelisted", 1L);
            zzasVar2 = new zzas(zzasVar.zza, new zzaq(zzf), zzasVar.zzc, zzasVar.zzd);
        }
        zzai zzaiVar = this.zze;
        zzak(zzaiVar);
        zzaiVar.zzb();
        try {
            zzai zzaiVar2 = this.zze;
            zzak(zzaiVar2);
            Preconditions.checkNotEmpty(str);
            zzaiVar2.zzg();
            zzaiVar2.zzZ();
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i < 0) {
                zzaiVar2.zzs.zzau().zze().zzc("Invalid time querying timed out conditional properties", zzem.zzl(str), Long.valueOf(j));
                list = Collections.emptyList();
            } else {
                list = zzaiVar2.zzr("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str, String.valueOf(j)});
            }
            for (zzaa zzaaVar : list) {
                if (zzaaVar != null) {
                    zzau().zzk().zzd("User property timed out", zzaaVar.zza, this.zzm.zzm().zze(zzaaVar.zzc.zzb), zzaaVar.zzc.zza());
                    zzas zzasVar3 = zzaaVar.zzg;
                    if (zzasVar3 != null) {
                        zzz(new zzas(zzasVar3, j), zzpVar);
                    }
                    zzai zzaiVar3 = this.zze;
                    zzak(zzaiVar3);
                    zzaiVar3.zzp(str, zzaaVar.zzc.zzb);
                }
            }
            zzai zzaiVar4 = this.zze;
            zzak(zzaiVar4);
            Preconditions.checkNotEmpty(str);
            zzaiVar4.zzg();
            zzaiVar4.zzZ();
            if (i < 0) {
                zzaiVar4.zzs.zzau().zze().zzc("Invalid time querying expired conditional properties", zzem.zzl(str), Long.valueOf(j));
                list2 = Collections.emptyList();
            } else {
                list2 = zzaiVar4.zzr("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str, String.valueOf(j)});
            }
            ArrayList arrayList = new ArrayList(list2.size());
            for (zzaa zzaaVar2 : list2) {
                if (zzaaVar2 != null) {
                    zzau().zzk().zzd("User property expired", zzaaVar2.zza, this.zzm.zzm().zze(zzaaVar2.zzc.zzb), zzaaVar2.zzc.zza());
                    zzai zzaiVar5 = this.zze;
                    zzak(zzaiVar5);
                    zzaiVar5.zzi(str, zzaaVar2.zzc.zzb);
                    zzas zzasVar4 = zzaaVar2.zzk;
                    if (zzasVar4 != null) {
                        arrayList.add(zzasVar4);
                    }
                    zzai zzaiVar6 = this.zze;
                    zzak(zzaiVar6);
                    zzaiVar6.zzp(str, zzaaVar2.zzc.zzb);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                zzz(new zzas((zzas) it2.next(), j), zzpVar);
            }
            zzai zzaiVar7 = this.zze;
            zzak(zzaiVar7);
            String str2 = zzasVar2.zza;
            Preconditions.checkNotEmpty(str);
            Preconditions.checkNotEmpty(str2);
            zzaiVar7.zzg();
            zzaiVar7.zzZ();
            if (i < 0) {
                zzaiVar7.zzs.zzau().zze().zzd("Invalid time querying triggered conditional properties", zzem.zzl(str), zzaiVar7.zzs.zzm().zzc(str2), Long.valueOf(j));
                list3 = Collections.emptyList();
            } else {
                list3 = zzaiVar7.zzr("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str, str2, String.valueOf(j)});
            }
            ArrayList arrayList2 = new ArrayList(list3.size());
            for (zzaa zzaaVar3 : list3) {
                if (zzaaVar3 != null) {
                    zzkq zzkqVar = zzaaVar3.zzc;
                    zzks zzksVar = new zzks((String) Preconditions.checkNotNull(zzaaVar3.zza), zzaaVar3.zzb, zzkqVar.zzb, j, Preconditions.checkNotNull(zzkqVar.zza()));
                    zzai zzaiVar8 = this.zze;
                    zzak(zzaiVar8);
                    if (zzaiVar8.zzj(zzksVar)) {
                        zzau().zzk().zzd("User property triggered", zzaaVar3.zza, this.zzm.zzm().zze(zzksVar.zzc), zzksVar.zze);
                    } else {
                        zzau().zzb().zzd("Too many active user properties, ignoring", zzem.zzl(zzaaVar3.zza), this.zzm.zzm().zze(zzksVar.zzc), zzksVar.zze);
                    }
                    zzas zzasVar5 = zzaaVar3.zzi;
                    if (zzasVar5 != null) {
                        arrayList2.add(zzasVar5);
                    }
                    zzaaVar3.zzc = new zzkq(zzksVar);
                    zzaaVar3.zze = true;
                    zzai zzaiVar9 = this.zze;
                    zzak(zzaiVar9);
                    zzaiVar9.zzn(zzaaVar3);
                }
            }
            zzz(zzasVar2, zzpVar);
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                zzz(new zzas((zzas) it3.next(), j), zzpVar);
            }
            zzai zzaiVar10 = this.zze;
            zzak(zzaiVar10);
            zzaiVar10.zzc();
        } finally {
            zzai zzaiVar11 = this.zze;
            zzak(zzaiVar11);
            zzaiVar11.zzd();
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(22:79|(1:81)(1:83)|82|84|(2:86|(1:88)(12:89|90|91|99|100|101|(2:103|104)|106|(0)(0)|119|120|(0)(0)))|92|93|362|94|97|98|90|91|99|100|101|(0)|106|(0)(0)|119|120|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x0b15, code lost:
        if (r0.size() == 0) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x0ed3, code lost:
        r31 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x03ff, code lost:
        r28 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0401, code lost:
        r0.zzs.zzau().zzb().zzc("Error pruning currencies. appId", com.google.android.gms.measurement.internal.zzem.zzl(r0), r28);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0455 A[Catch: all -> 0x1027, TRY_LEAVE, TryCatch #5 {all -> 0x1027, blocks: (B:38:0x01f8, B:40:0x0210, B:42:0x021e, B:48:0x023c, B:54:0x025b, B:56:0x026c, B:59:0x0287, B:64:0x02b1, B:66:0x02bc, B:70:0x02d2, B:73:0x0306, B:75:0x0317, B:77:0x031d, B:79:0x032f, B:81:0x0336, B:83:0x0341, B:84:0x034f, B:86:0x036a, B:89:0x037c, B:92:0x03af, B:94:0x03db, B:96:0x0401, B:97:0x0419, B:98:0x041c, B:99:0x043c, B:101:0x044b, B:103:0x0455, B:106:0x04a1, B:109:0x04cd, B:110:0x04da, B:112:0x04e3, B:114:0x04f5, B:116:0x04fd, B:119:0x0516, B:124:0x0566, B:126:0x0580, B:131:0x05a1, B:136:0x05d1, B:138:0x05eb, B:143:0x062f, B:148:0x065d, B:150:0x0677, B:153:0x0693, B:155:0x06be, B:157:0x06e4, B:159:0x06ef, B:161:0x0709, B:163:0x0713, B:165:0x0724, B:167:0x073c, B:170:0x077c, B:174:0x079d, B:175:0x07b4, B:176:0x07b7, B:178:0x07f2, B:182:0x0818, B:185:0x0870, B:186:0x088f, B:188:0x08a9, B:190:0x0905, B:192:0x0910, B:194:0x0919, B:196:0x0924, B:198:0x092d, B:200:0x0938, B:203:0x0946, B:205:0x0951, B:207:0x0963, B:209:0x096f, B:211:0x09a3, B:213:0x09ae, B:215:0x09b8, B:217:0x09c4, B:219:0x09cd, B:221:0x09d8, B:223:0x09e2, B:224:0x09ef, B:226:0x09fa, B:228:0x0a04, B:230:0x0a0f, B:233:0x0a1b, B:235:0x0a25, B:237:0x0a4e, B:240:0x0a5b, B:242:0x0a84, B:244:0x0a8c, B:246:0x0aaf, B:248:0x0ac3, B:250:0x0ad8, B:252:0x0af6, B:254:0x0b10, B:260:0x0b20, B:262:0x0b29, B:264:0x0b4a, B:266:0x0b67, B:268:0x0b6e, B:270:0x0b88, B:272:0x0b97, B:274:0x0bf3, B:276:0x0bfe, B:278:0x0c07, B:280:0x0c14, B:282:0x0c1c, B:285:0x0c3b, B:287:0x0c72, B:289:0x0c84, B:291:0x0cd7, B:293:0x0ce2, B:295:0x0cfe, B:297:0x0d04, B:299:0x0d0f, B:301:0x0d22, B:303:0x0d2b, B:305:0x0d3d, B:307:0x0d55, B:309:0x0d60, B:310:0x0dbc, B:312:0x0e35, B:314:0x0e44, B:316:0x0e61, B:318:0x0e69, B:321:0x0e7a, B:323:0x0eba, B:328:0x0edb, B:330:0x0f60, B:332:0x0f73, B:333:0x0f8d, B:335:0x0f97, B:338:0x0fb8, B:339:0x0fd2, B:341:0x0fd4, B:343:0x0fea), top: B:361:0x01f8, inners: #1, #2, #3, #4, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x04c7  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x04cd A[Catch: all -> 0x1027, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x1027, blocks: (B:38:0x01f8, B:40:0x0210, B:42:0x021e, B:48:0x023c, B:54:0x025b, B:56:0x026c, B:59:0x0287, B:64:0x02b1, B:66:0x02bc, B:70:0x02d2, B:73:0x0306, B:75:0x0317, B:77:0x031d, B:79:0x032f, B:81:0x0336, B:83:0x0341, B:84:0x034f, B:86:0x036a, B:89:0x037c, B:92:0x03af, B:94:0x03db, B:96:0x0401, B:97:0x0419, B:98:0x041c, B:99:0x043c, B:101:0x044b, B:103:0x0455, B:106:0x04a1, B:109:0x04cd, B:110:0x04da, B:112:0x04e3, B:114:0x04f5, B:116:0x04fd, B:119:0x0516, B:124:0x0566, B:126:0x0580, B:131:0x05a1, B:136:0x05d1, B:138:0x05eb, B:143:0x062f, B:148:0x065d, B:150:0x0677, B:153:0x0693, B:155:0x06be, B:157:0x06e4, B:159:0x06ef, B:161:0x0709, B:163:0x0713, B:165:0x0724, B:167:0x073c, B:170:0x077c, B:174:0x079d, B:175:0x07b4, B:176:0x07b7, B:178:0x07f2, B:182:0x0818, B:185:0x0870, B:186:0x088f, B:188:0x08a9, B:190:0x0905, B:192:0x0910, B:194:0x0919, B:196:0x0924, B:198:0x092d, B:200:0x0938, B:203:0x0946, B:205:0x0951, B:207:0x0963, B:209:0x096f, B:211:0x09a3, B:213:0x09ae, B:215:0x09b8, B:217:0x09c4, B:219:0x09cd, B:221:0x09d8, B:223:0x09e2, B:224:0x09ef, B:226:0x09fa, B:228:0x0a04, B:230:0x0a0f, B:233:0x0a1b, B:235:0x0a25, B:237:0x0a4e, B:240:0x0a5b, B:242:0x0a84, B:244:0x0a8c, B:246:0x0aaf, B:248:0x0ac3, B:250:0x0ad8, B:252:0x0af6, B:254:0x0b10, B:260:0x0b20, B:262:0x0b29, B:264:0x0b4a, B:266:0x0b67, B:268:0x0b6e, B:270:0x0b88, B:272:0x0b97, B:274:0x0bf3, B:276:0x0bfe, B:278:0x0c07, B:280:0x0c14, B:282:0x0c1c, B:285:0x0c3b, B:287:0x0c72, B:289:0x0c84, B:291:0x0cd7, B:293:0x0ce2, B:295:0x0cfe, B:297:0x0d04, B:299:0x0d0f, B:301:0x0d22, B:303:0x0d2b, B:305:0x0d3d, B:307:0x0d55, B:309:0x0d60, B:310:0x0dbc, B:312:0x0e35, B:314:0x0e44, B:316:0x0e61, B:318:0x0e69, B:321:0x0e7a, B:323:0x0eba, B:328:0x0edb, B:330:0x0f60, B:332:0x0f73, B:333:0x0f8d, B:335:0x0f97, B:338:0x0fb8, B:339:0x0fd2, B:341:0x0fd4, B:343:0x0fea), top: B:361:0x01f8, inners: #1, #2, #3, #4, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x055b  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x059c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x026c A[Catch: all -> 0x1027, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x1027, blocks: (B:38:0x01f8, B:40:0x0210, B:42:0x021e, B:48:0x023c, B:54:0x025b, B:56:0x026c, B:59:0x0287, B:64:0x02b1, B:66:0x02bc, B:70:0x02d2, B:73:0x0306, B:75:0x0317, B:77:0x031d, B:79:0x032f, B:81:0x0336, B:83:0x0341, B:84:0x034f, B:86:0x036a, B:89:0x037c, B:92:0x03af, B:94:0x03db, B:96:0x0401, B:97:0x0419, B:98:0x041c, B:99:0x043c, B:101:0x044b, B:103:0x0455, B:106:0x04a1, B:109:0x04cd, B:110:0x04da, B:112:0x04e3, B:114:0x04f5, B:116:0x04fd, B:119:0x0516, B:124:0x0566, B:126:0x0580, B:131:0x05a1, B:136:0x05d1, B:138:0x05eb, B:143:0x062f, B:148:0x065d, B:150:0x0677, B:153:0x0693, B:155:0x06be, B:157:0x06e4, B:159:0x06ef, B:161:0x0709, B:163:0x0713, B:165:0x0724, B:167:0x073c, B:170:0x077c, B:174:0x079d, B:175:0x07b4, B:176:0x07b7, B:178:0x07f2, B:182:0x0818, B:185:0x0870, B:186:0x088f, B:188:0x08a9, B:190:0x0905, B:192:0x0910, B:194:0x0919, B:196:0x0924, B:198:0x092d, B:200:0x0938, B:203:0x0946, B:205:0x0951, B:207:0x0963, B:209:0x096f, B:211:0x09a3, B:213:0x09ae, B:215:0x09b8, B:217:0x09c4, B:219:0x09cd, B:221:0x09d8, B:223:0x09e2, B:224:0x09ef, B:226:0x09fa, B:228:0x0a04, B:230:0x0a0f, B:233:0x0a1b, B:235:0x0a25, B:237:0x0a4e, B:240:0x0a5b, B:242:0x0a84, B:244:0x0a8c, B:246:0x0aaf, B:248:0x0ac3, B:250:0x0ad8, B:252:0x0af6, B:254:0x0b10, B:260:0x0b20, B:262:0x0b29, B:264:0x0b4a, B:266:0x0b67, B:268:0x0b6e, B:270:0x0b88, B:272:0x0b97, B:274:0x0bf3, B:276:0x0bfe, B:278:0x0c07, B:280:0x0c14, B:282:0x0c1c, B:285:0x0c3b, B:287:0x0c72, B:289:0x0c84, B:291:0x0cd7, B:293:0x0ce2, B:295:0x0cfe, B:297:0x0d04, B:299:0x0d0f, B:301:0x0d22, B:303:0x0d2b, B:305:0x0d3d, B:307:0x0d55, B:309:0x0d60, B:310:0x0dbc, B:312:0x0e35, B:314:0x0e44, B:316:0x0e61, B:318:0x0e69, B:321:0x0e7a, B:323:0x0eba, B:328:0x0edb, B:330:0x0f60, B:332:0x0f73, B:333:0x0f8d, B:335:0x0f97, B:338:0x0fb8, B:339:0x0fd2, B:341:0x0fd4, B:343:0x0fea), top: B:361:0x01f8, inners: #1, #2, #3, #4, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0306 A[Catch: all -> 0x1027, TRY_ENTER, TryCatch #5 {all -> 0x1027, blocks: (B:38:0x01f8, B:40:0x0210, B:42:0x021e, B:48:0x023c, B:54:0x025b, B:56:0x026c, B:59:0x0287, B:64:0x02b1, B:66:0x02bc, B:70:0x02d2, B:73:0x0306, B:75:0x0317, B:77:0x031d, B:79:0x032f, B:81:0x0336, B:83:0x0341, B:84:0x034f, B:86:0x036a, B:89:0x037c, B:92:0x03af, B:94:0x03db, B:96:0x0401, B:97:0x0419, B:98:0x041c, B:99:0x043c, B:101:0x044b, B:103:0x0455, B:106:0x04a1, B:109:0x04cd, B:110:0x04da, B:112:0x04e3, B:114:0x04f5, B:116:0x04fd, B:119:0x0516, B:124:0x0566, B:126:0x0580, B:131:0x05a1, B:136:0x05d1, B:138:0x05eb, B:143:0x062f, B:148:0x065d, B:150:0x0677, B:153:0x0693, B:155:0x06be, B:157:0x06e4, B:159:0x06ef, B:161:0x0709, B:163:0x0713, B:165:0x0724, B:167:0x073c, B:170:0x077c, B:174:0x079d, B:175:0x07b4, B:176:0x07b7, B:178:0x07f2, B:182:0x0818, B:185:0x0870, B:186:0x088f, B:188:0x08a9, B:190:0x0905, B:192:0x0910, B:194:0x0919, B:196:0x0924, B:198:0x092d, B:200:0x0938, B:203:0x0946, B:205:0x0951, B:207:0x0963, B:209:0x096f, B:211:0x09a3, B:213:0x09ae, B:215:0x09b8, B:217:0x09c4, B:219:0x09cd, B:221:0x09d8, B:223:0x09e2, B:224:0x09ef, B:226:0x09fa, B:228:0x0a04, B:230:0x0a0f, B:233:0x0a1b, B:235:0x0a25, B:237:0x0a4e, B:240:0x0a5b, B:242:0x0a84, B:244:0x0a8c, B:246:0x0aaf, B:248:0x0ac3, B:250:0x0ad8, B:252:0x0af6, B:254:0x0b10, B:260:0x0b20, B:262:0x0b29, B:264:0x0b4a, B:266:0x0b67, B:268:0x0b6e, B:270:0x0b88, B:272:0x0b97, B:274:0x0bf3, B:276:0x0bfe, B:278:0x0c07, B:280:0x0c14, B:282:0x0c1c, B:285:0x0c3b, B:287:0x0c72, B:289:0x0c84, B:291:0x0cd7, B:293:0x0ce2, B:295:0x0cfe, B:297:0x0d04, B:299:0x0d0f, B:301:0x0d22, B:303:0x0d2b, B:305:0x0d3d, B:307:0x0d55, B:309:0x0d60, B:310:0x0dbc, B:312:0x0e35, B:314:0x0e44, B:316:0x0e61, B:318:0x0e69, B:321:0x0e7a, B:323:0x0eba, B:328:0x0edb, B:330:0x0f60, B:332:0x0f73, B:333:0x0f8d, B:335:0x0f97, B:338:0x0fb8, B:339:0x0fd2, B:341:0x0fd4, B:343:0x0fea), top: B:361:0x01f8, inners: #1, #2, #3, #4, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x031d A[Catch: all -> 0x1027, TryCatch #5 {all -> 0x1027, blocks: (B:38:0x01f8, B:40:0x0210, B:42:0x021e, B:48:0x023c, B:54:0x025b, B:56:0x026c, B:59:0x0287, B:64:0x02b1, B:66:0x02bc, B:70:0x02d2, B:73:0x0306, B:75:0x0317, B:77:0x031d, B:79:0x032f, B:81:0x0336, B:83:0x0341, B:84:0x034f, B:86:0x036a, B:89:0x037c, B:92:0x03af, B:94:0x03db, B:96:0x0401, B:97:0x0419, B:98:0x041c, B:99:0x043c, B:101:0x044b, B:103:0x0455, B:106:0x04a1, B:109:0x04cd, B:110:0x04da, B:112:0x04e3, B:114:0x04f5, B:116:0x04fd, B:119:0x0516, B:124:0x0566, B:126:0x0580, B:131:0x05a1, B:136:0x05d1, B:138:0x05eb, B:143:0x062f, B:148:0x065d, B:150:0x0677, B:153:0x0693, B:155:0x06be, B:157:0x06e4, B:159:0x06ef, B:161:0x0709, B:163:0x0713, B:165:0x0724, B:167:0x073c, B:170:0x077c, B:174:0x079d, B:175:0x07b4, B:176:0x07b7, B:178:0x07f2, B:182:0x0818, B:185:0x0870, B:186:0x088f, B:188:0x08a9, B:190:0x0905, B:192:0x0910, B:194:0x0919, B:196:0x0924, B:198:0x092d, B:200:0x0938, B:203:0x0946, B:205:0x0951, B:207:0x0963, B:209:0x096f, B:211:0x09a3, B:213:0x09ae, B:215:0x09b8, B:217:0x09c4, B:219:0x09cd, B:221:0x09d8, B:223:0x09e2, B:224:0x09ef, B:226:0x09fa, B:228:0x0a04, B:230:0x0a0f, B:233:0x0a1b, B:235:0x0a25, B:237:0x0a4e, B:240:0x0a5b, B:242:0x0a84, B:244:0x0a8c, B:246:0x0aaf, B:248:0x0ac3, B:250:0x0ad8, B:252:0x0af6, B:254:0x0b10, B:260:0x0b20, B:262:0x0b29, B:264:0x0b4a, B:266:0x0b67, B:268:0x0b6e, B:270:0x0b88, B:272:0x0b97, B:274:0x0bf3, B:276:0x0bfe, B:278:0x0c07, B:280:0x0c14, B:282:0x0c1c, B:285:0x0c3b, B:287:0x0c72, B:289:0x0c84, B:291:0x0cd7, B:293:0x0ce2, B:295:0x0cfe, B:297:0x0d04, B:299:0x0d0f, B:301:0x0d22, B:303:0x0d2b, B:305:0x0d3d, B:307:0x0d55, B:309:0x0d60, B:310:0x0dbc, B:312:0x0e35, B:314:0x0e44, B:316:0x0e61, B:318:0x0e69, B:321:0x0e7a, B:323:0x0eba, B:328:0x0edb, B:330:0x0f60, B:332:0x0f73, B:333:0x0f8d, B:335:0x0f97, B:338:0x0fb8, B:339:0x0fd2, B:341:0x0fd4, B:343:0x0fea), top: B:361:0x01f8, inners: #1, #2, #3, #4, #6 }] */
    /* JADX WARN: Type inference failed for: r0v531, types: [long] */
    /* JADX WARN: Type inference failed for: r0v615 */
    /* JADX WARN: Type inference failed for: r0v616 */
    /* JADX WARN: Type inference failed for: r0v626 */
    /* JADX WARN: Type inference failed for: r0v628, types: [long] */
    /* JADX WARN: Type inference failed for: r0v698, types: [long] */
    /* JADX WARN: Type inference failed for: r0v703, types: [double] */
    /* JADX WARN: Type inference failed for: r0v724, types: [long] */
    /* JADX WARN: Type inference failed for: r0v729, types: [long] */
    /* JADX WARN: Type inference failed for: r0v735, types: [double] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzz(com.google.android.gms.measurement.internal.zzas r19, com.google.android.gms.measurement.internal.zzp r20) {
        /*
            Method dump skipped, instructions count: 4159
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkn.zzz(com.google.android.gms.measurement.internal.zzas, com.google.android.gms.measurement.internal.zzp):void");
    }
}
