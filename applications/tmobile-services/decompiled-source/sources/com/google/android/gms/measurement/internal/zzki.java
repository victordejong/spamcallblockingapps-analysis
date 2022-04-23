package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzca;
import com.google.android.gms.internal.measurement.zzcd;
import com.google.android.gms.internal.measurement.zzhz;
import com.google.android.gms.internal.measurement.zzlq;
import com.google.android.gms.internal.measurement.zzmj;
import com.google.android.gms.internal.measurement.zznt;
import com.google.android.gms.internal.measurement.zzny;
import com.google.firebase.messaging.Constants;
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
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzki.class */
public class zzki implements zzgq {

    /* renamed from: A */
    private static volatile zzki f9655A;

    /* renamed from: a */
    private zzfp f9656a;

    /* renamed from: b */
    private zzeu f9657b;

    /* renamed from: c */
    private zzac f9658c;

    /* renamed from: d */
    private zzfb f9659d;

    /* renamed from: e */
    private zzke f9660e;

    /* renamed from: f */
    private zzo f9661f;

    /* renamed from: g */
    private final zzks f9662g;

    /* renamed from: h */
    private zzie f9663h;

    /* renamed from: i */
    private zzjo f9664i;

    /* renamed from: j */
    private final zzfv f9665j;

    /* renamed from: k */
    private boolean f9666k;

    /* renamed from: l */
    private boolean f9667l;
    @VisibleForTesting

    /* renamed from: m */
    private long f9668m;

    /* renamed from: n */
    private List<Runnable> f9669n;

    /* renamed from: o */
    private int f9670o;

    /* renamed from: p */
    private int f9671p;

    /* renamed from: q */
    private boolean f9672q;

    /* renamed from: r */
    private boolean f9673r;

    /* renamed from: s */
    private boolean f9674s;

    /* renamed from: t */
    private FileLock f9675t;

    /* renamed from: u */
    private FileChannel f9676u;

    /* renamed from: v */
    private List<Long> f9677v;

    /* renamed from: w */
    private List<Long> f9678w;

    /* renamed from: x */
    private long f9679x;

    /* renamed from: y */
    private final Map<String, zzad> f9680y;

    /* renamed from: z */
    private final zzkv f9681z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzki$zza.class */
    public final class zza implements zzae {

        /* renamed from: a */
        zzcd.zzg f9682a;

        /* renamed from: b */
        List<Long> f9683b;

        /* renamed from: c */
        List<zzcd.zzc> f9684c;

        /* renamed from: d */
        private long f9685d;

        private zza(zzki zzkiVar) {
        }

        /* synthetic */ zza(zzki zzkiVar, zzkl zzklVar) {
            this(zzkiVar);
        }

        /* renamed from: c */
        private static long m11040c(zzcd.zzc zzcVar) {
            return ((zzcVar.m13215W() / 1000) / 60) / 60;
        }

        @Override // com.google.android.gms.measurement.internal.zzae
        /* renamed from: a */
        public final boolean mo11042a(long j, zzcd.zzc zzcVar) {
            Preconditions.m14523k(zzcVar);
            if (this.f9684c == null) {
                this.f9684c = new ArrayList();
            }
            if (this.f9683b == null) {
                this.f9683b = new ArrayList();
            }
            if (this.f9684c.size() > 0 && m11040c(this.f9684c.get(0)) != m11040c(zzcVar)) {
                return false;
            }
            long d = this.f9685d + zzcVar.mo12331d();
            if (d >= Math.max(0, zzat.f8944i.m11594a(null).intValue())) {
                return false;
            }
            this.f9685d = d;
            this.f9684c.add(zzcVar);
            this.f9683b.add(Long.valueOf(j));
            return this.f9684c.size() < Math.max(1, zzat.f8946j.m11594a(null).intValue());
        }

        @Override // com.google.android.gms.measurement.internal.zzae
        /* renamed from: b */
        public final void mo11041b(zzcd.zzg zzgVar) {
            Preconditions.m14523k(zzgVar);
            this.f9682a = zzgVar;
        }
    }

    private zzki(zzkq zzkqVar) {
        this(zzkqVar, null);
    }

    private zzki(zzkq zzkqVar, zzfv zzfvVar) {
        this.f9666k = false;
        this.f9681z = new zzkp(this);
        Preconditions.m14523k(zzkqVar);
        this.f9665j = zzfv.m11367d(zzkqVar.f9698a, null, null);
        this.f9679x = -1L;
        zzks zzksVar = new zzks(this);
        zzksVar.m11037r();
        this.f9662g = zzksVar;
        zzeu zzeuVar = new zzeu(this);
        zzeuVar.m11037r();
        this.f9657b = zzeuVar;
        zzfp zzfpVar = new zzfp(this);
        zzfpVar.m11037r();
        this.f9656a = zzfpVar;
        this.f9680y = new HashMap();
        this.f9665j.mo11083b().m11409x(new zzkl(this, zzkqVar));
    }

    @VisibleForTesting
    @WorkerThread
    /* renamed from: E */
    private final boolean m11107E(int i, FileChannel fileChannel) {
        m11056o0();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.f9665j.mo11081c().m11560D().m11540a("Bad channel to read from");
            return false;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt(i);
        allocate.flip();
        try {
            fileChannel.truncate(0L);
            if (this.f9665j.m11366e().m10880r(zzat.f8965s0) && Build.VERSION.SDK_INT <= 19) {
                fileChannel.position(0L);
            }
            fileChannel.write(allocate);
            fileChannel.force(true);
            if (fileChannel.size() == 4) {
                return true;
            }
            this.f9665j.mo11081c().m11560D().m11539b("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
            return true;
        } catch (IOException e) {
            this.f9665j.mo11081c().m11560D().m11539b("Failed to write to channel", e);
            return false;
        }
    }

    /* renamed from: F */
    private final boolean m11106F(zzcd.zzc.zza zzaVar, zzcd.zzc.zza zzaVar2) {
        Preconditions.m14533a("_e".equals(zzaVar.m13196M()));
        m11076e0();
        zzcd.zze x = zzks.m11007x((zzcd.zzc) ((zzhz) zzaVar.mo12321k()), "_sc");
        String str = null;
        String T = x == null ? null : x.m13172T();
        m11076e0();
        zzcd.zze x2 = zzks.m11007x((zzcd.zzc) ((zzhz) zzaVar2.mo12321k()), "_pc");
        if (x2 != null) {
            str = x2.m13172T();
        }
        if (str == null || !str.equals(T)) {
            return false;
        }
        m11097O(zzaVar, zzaVar2);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:137:0x04a7 A[Catch: all -> 0x19a8, TRY_ENTER, TryCatch #7 {all -> 0x19a8, blocks: (B:3:0x0014, B:21:0x00e6, B:51:0x01d2, B:67:0x0265, B:98:0x0391, B:107:0x03f0, B:115:0x0422, B:123:0x045b, B:137:0x04a7, B:139:0x04b0, B:141:0x04b6, B:148:0x04d4, B:150:0x0519, B:153:0x0530, B:155:0x0562, B:157:0x05a0, B:164:0x05c3, B:166:0x05d1, B:169:0x05fb, B:171:0x0601, B:173:0x061a, B:175:0x062a, B:179:0x0655, B:181:0x065f, B:183:0x0672, B:185:0x0682, B:187:0x0695, B:188:0x06a6, B:190:0x06af, B:192:0x06ca, B:199:0x06fe, B:203:0x070f, B:207:0x0720, B:225:0x077c, B:228:0x078a, B:230:0x079d, B:232:0x07cc, B:234:0x07df, B:241:0x0822, B:244:0x0868, B:246:0x08a7, B:249:0x08e4, B:252:0x0901, B:258:0x092f, B:260:0x0965, B:262:0x098d, B:264:0x0997, B:266:0x09ae, B:269:0x09c7, B:278:0x09f8, B:282:0x0a17, B:284:0x0a5b, B:288:0x0a8e, B:290:0x0aa4, B:293:0x0ab3, B:298:0x0ad5, B:305:0x0b04, B:307:0x0b15, B:309:0x0b26, B:313:0x0b60, B:318:0x0b80, B:320:0x0b89, B:323:0x0b9c, B:327:0x0bb1, B:328:0x0bdf, B:330:0x0bf8, B:332:0x0c05, B:336:0x0c22, B:338:0x0c37, B:340:0x0c4e, B:347:0x0c83, B:349:0x0c91, B:353:0x0caf, B:355:0x0cc4, B:357:0x0cdb, B:361:0x0d16, B:365:0x0d3e, B:367:0x0d4c, B:369:0x0d60, B:375:0x0d97, B:377:0x0dac, B:379:0x0e1a, B:381:0x0e26, B:383:0x0e2d, B:386:0x0e40, B:388:0x0e4d, B:390:0x0e54, B:393:0x0e67, B:395:0x0e7e, B:401:0x0ead, B:403:0x0eba, B:405:0x0ec2, B:407:0x0ee4, B:409:0x0f04, B:411:0x0f26, B:413:0x0f31, B:414:0x0f4a, B:422:0x0f7d, B:424:0x0f91, B:426:0x0fa0, B:428:0x0fba, B:431:0x0fd6, B:433:0x0fdd, B:438:0x1004, B:440:0x100d, B:443:0x1030, B:445:0x1045, B:447:0x104d, B:453:0x1074, B:455:0x1085, B:462:0x109c, B:463:0x10a8, B:465:0x10b7, B:467:0x10dc, B:469:0x10fc, B:471:0x110f, B:473:0x1117, B:475:0x1121, B:477:0x115e, B:479:0x1168, B:481:0x117a, B:487:0x1197, B:489:0x11a0, B:491:0x11b3, B:493:0x11bd, B:495:0x11d2, B:497:0x11dd, B:499:0x11e9, B:500:0x11f3, B:501:0x11f9, B:503:0x11ff, B:505:0x1215, B:507:0x121d, B:516:0x12bb, B:519:0x12ec, B:521:0x130c, B:523:0x1312, B:525:0x131f, B:527:0x1333, B:529:0x1339, B:531:0x1344, B:533:0x1357, B:535:0x136a, B:541:0x13c1, B:543:0x13cf, B:545:0x13d7, B:547:0x13f1, B:549:0x13f9, B:552:0x140b, B:554:0x1411, B:557:0x1420, B:559:0x1426, B:566:0x1447, B:570:0x1468, B:71:0x028f), top: B:728:0x0014, inners: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x04b6 A[Catch: all -> 0x19a8, TryCatch #7 {all -> 0x19a8, blocks: (B:3:0x0014, B:21:0x00e6, B:51:0x01d2, B:67:0x0265, B:98:0x0391, B:107:0x03f0, B:115:0x0422, B:123:0x045b, B:137:0x04a7, B:139:0x04b0, B:141:0x04b6, B:148:0x04d4, B:150:0x0519, B:153:0x0530, B:155:0x0562, B:157:0x05a0, B:164:0x05c3, B:166:0x05d1, B:169:0x05fb, B:171:0x0601, B:173:0x061a, B:175:0x062a, B:179:0x0655, B:181:0x065f, B:183:0x0672, B:185:0x0682, B:187:0x0695, B:188:0x06a6, B:190:0x06af, B:192:0x06ca, B:199:0x06fe, B:203:0x070f, B:207:0x0720, B:225:0x077c, B:228:0x078a, B:230:0x079d, B:232:0x07cc, B:234:0x07df, B:241:0x0822, B:244:0x0868, B:246:0x08a7, B:249:0x08e4, B:252:0x0901, B:258:0x092f, B:260:0x0965, B:262:0x098d, B:264:0x0997, B:266:0x09ae, B:269:0x09c7, B:278:0x09f8, B:282:0x0a17, B:284:0x0a5b, B:288:0x0a8e, B:290:0x0aa4, B:293:0x0ab3, B:298:0x0ad5, B:305:0x0b04, B:307:0x0b15, B:309:0x0b26, B:313:0x0b60, B:318:0x0b80, B:320:0x0b89, B:323:0x0b9c, B:327:0x0bb1, B:328:0x0bdf, B:330:0x0bf8, B:332:0x0c05, B:336:0x0c22, B:338:0x0c37, B:340:0x0c4e, B:347:0x0c83, B:349:0x0c91, B:353:0x0caf, B:355:0x0cc4, B:357:0x0cdb, B:361:0x0d16, B:365:0x0d3e, B:367:0x0d4c, B:369:0x0d60, B:375:0x0d97, B:377:0x0dac, B:379:0x0e1a, B:381:0x0e26, B:383:0x0e2d, B:386:0x0e40, B:388:0x0e4d, B:390:0x0e54, B:393:0x0e67, B:395:0x0e7e, B:401:0x0ead, B:403:0x0eba, B:405:0x0ec2, B:407:0x0ee4, B:409:0x0f04, B:411:0x0f26, B:413:0x0f31, B:414:0x0f4a, B:422:0x0f7d, B:424:0x0f91, B:426:0x0fa0, B:428:0x0fba, B:431:0x0fd6, B:433:0x0fdd, B:438:0x1004, B:440:0x100d, B:443:0x1030, B:445:0x1045, B:447:0x104d, B:453:0x1074, B:455:0x1085, B:462:0x109c, B:463:0x10a8, B:465:0x10b7, B:467:0x10dc, B:469:0x10fc, B:471:0x110f, B:473:0x1117, B:475:0x1121, B:477:0x115e, B:479:0x1168, B:481:0x117a, B:487:0x1197, B:489:0x11a0, B:491:0x11b3, B:493:0x11bd, B:495:0x11d2, B:497:0x11dd, B:499:0x11e9, B:500:0x11f3, B:501:0x11f9, B:503:0x11ff, B:505:0x1215, B:507:0x121d, B:516:0x12bb, B:519:0x12ec, B:521:0x130c, B:523:0x1312, B:525:0x131f, B:527:0x1333, B:529:0x1339, B:531:0x1344, B:533:0x1357, B:535:0x136a, B:541:0x13c1, B:543:0x13cf, B:545:0x13d7, B:547:0x13f1, B:549:0x13f9, B:552:0x140b, B:554:0x1411, B:557:0x1420, B:559:0x1426, B:566:0x1447, B:570:0x1468, B:71:0x028f), top: B:728:0x0014, inners: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x04d4 A[Catch: all -> 0x19a8, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x19a8, blocks: (B:3:0x0014, B:21:0x00e6, B:51:0x01d2, B:67:0x0265, B:98:0x0391, B:107:0x03f0, B:115:0x0422, B:123:0x045b, B:137:0x04a7, B:139:0x04b0, B:141:0x04b6, B:148:0x04d4, B:150:0x0519, B:153:0x0530, B:155:0x0562, B:157:0x05a0, B:164:0x05c3, B:166:0x05d1, B:169:0x05fb, B:171:0x0601, B:173:0x061a, B:175:0x062a, B:179:0x0655, B:181:0x065f, B:183:0x0672, B:185:0x0682, B:187:0x0695, B:188:0x06a6, B:190:0x06af, B:192:0x06ca, B:199:0x06fe, B:203:0x070f, B:207:0x0720, B:225:0x077c, B:228:0x078a, B:230:0x079d, B:232:0x07cc, B:234:0x07df, B:241:0x0822, B:244:0x0868, B:246:0x08a7, B:249:0x08e4, B:252:0x0901, B:258:0x092f, B:260:0x0965, B:262:0x098d, B:264:0x0997, B:266:0x09ae, B:269:0x09c7, B:278:0x09f8, B:282:0x0a17, B:284:0x0a5b, B:288:0x0a8e, B:290:0x0aa4, B:293:0x0ab3, B:298:0x0ad5, B:305:0x0b04, B:307:0x0b15, B:309:0x0b26, B:313:0x0b60, B:318:0x0b80, B:320:0x0b89, B:323:0x0b9c, B:327:0x0bb1, B:328:0x0bdf, B:330:0x0bf8, B:332:0x0c05, B:336:0x0c22, B:338:0x0c37, B:340:0x0c4e, B:347:0x0c83, B:349:0x0c91, B:353:0x0caf, B:355:0x0cc4, B:357:0x0cdb, B:361:0x0d16, B:365:0x0d3e, B:367:0x0d4c, B:369:0x0d60, B:375:0x0d97, B:377:0x0dac, B:379:0x0e1a, B:381:0x0e26, B:383:0x0e2d, B:386:0x0e40, B:388:0x0e4d, B:390:0x0e54, B:393:0x0e67, B:395:0x0e7e, B:401:0x0ead, B:403:0x0eba, B:405:0x0ec2, B:407:0x0ee4, B:409:0x0f04, B:411:0x0f26, B:413:0x0f31, B:414:0x0f4a, B:422:0x0f7d, B:424:0x0f91, B:426:0x0fa0, B:428:0x0fba, B:431:0x0fd6, B:433:0x0fdd, B:438:0x1004, B:440:0x100d, B:443:0x1030, B:445:0x1045, B:447:0x104d, B:453:0x1074, B:455:0x1085, B:462:0x109c, B:463:0x10a8, B:465:0x10b7, B:467:0x10dc, B:469:0x10fc, B:471:0x110f, B:473:0x1117, B:475:0x1121, B:477:0x115e, B:479:0x1168, B:481:0x117a, B:487:0x1197, B:489:0x11a0, B:491:0x11b3, B:493:0x11bd, B:495:0x11d2, B:497:0x11dd, B:499:0x11e9, B:500:0x11f3, B:501:0x11f9, B:503:0x11ff, B:505:0x1215, B:507:0x121d, B:516:0x12bb, B:519:0x12ec, B:521:0x130c, B:523:0x1312, B:525:0x131f, B:527:0x1333, B:529:0x1339, B:531:0x1344, B:533:0x1357, B:535:0x136a, B:541:0x13c1, B:543:0x13cf, B:545:0x13d7, B:547:0x13f1, B:549:0x13f9, B:552:0x140b, B:554:0x1411, B:557:0x1420, B:559:0x1426, B:566:0x1447, B:570:0x1468, B:71:0x028f), top: B:728:0x0014, inners: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0739  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0756  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0a8e A[Catch: all -> 0x19a8, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x19a8, blocks: (B:3:0x0014, B:21:0x00e6, B:51:0x01d2, B:67:0x0265, B:98:0x0391, B:107:0x03f0, B:115:0x0422, B:123:0x045b, B:137:0x04a7, B:139:0x04b0, B:141:0x04b6, B:148:0x04d4, B:150:0x0519, B:153:0x0530, B:155:0x0562, B:157:0x05a0, B:164:0x05c3, B:166:0x05d1, B:169:0x05fb, B:171:0x0601, B:173:0x061a, B:175:0x062a, B:179:0x0655, B:181:0x065f, B:183:0x0672, B:185:0x0682, B:187:0x0695, B:188:0x06a6, B:190:0x06af, B:192:0x06ca, B:199:0x06fe, B:203:0x070f, B:207:0x0720, B:225:0x077c, B:228:0x078a, B:230:0x079d, B:232:0x07cc, B:234:0x07df, B:241:0x0822, B:244:0x0868, B:246:0x08a7, B:249:0x08e4, B:252:0x0901, B:258:0x092f, B:260:0x0965, B:262:0x098d, B:264:0x0997, B:266:0x09ae, B:269:0x09c7, B:278:0x09f8, B:282:0x0a17, B:284:0x0a5b, B:288:0x0a8e, B:290:0x0aa4, B:293:0x0ab3, B:298:0x0ad5, B:305:0x0b04, B:307:0x0b15, B:309:0x0b26, B:313:0x0b60, B:318:0x0b80, B:320:0x0b89, B:323:0x0b9c, B:327:0x0bb1, B:328:0x0bdf, B:330:0x0bf8, B:332:0x0c05, B:336:0x0c22, B:338:0x0c37, B:340:0x0c4e, B:347:0x0c83, B:349:0x0c91, B:353:0x0caf, B:355:0x0cc4, B:357:0x0cdb, B:361:0x0d16, B:365:0x0d3e, B:367:0x0d4c, B:369:0x0d60, B:375:0x0d97, B:377:0x0dac, B:379:0x0e1a, B:381:0x0e26, B:383:0x0e2d, B:386:0x0e40, B:388:0x0e4d, B:390:0x0e54, B:393:0x0e67, B:395:0x0e7e, B:401:0x0ead, B:403:0x0eba, B:405:0x0ec2, B:407:0x0ee4, B:409:0x0f04, B:411:0x0f26, B:413:0x0f31, B:414:0x0f4a, B:422:0x0f7d, B:424:0x0f91, B:426:0x0fa0, B:428:0x0fba, B:431:0x0fd6, B:433:0x0fdd, B:438:0x1004, B:440:0x100d, B:443:0x1030, B:445:0x1045, B:447:0x104d, B:453:0x1074, B:455:0x1085, B:462:0x109c, B:463:0x10a8, B:465:0x10b7, B:467:0x10dc, B:469:0x10fc, B:471:0x110f, B:473:0x1117, B:475:0x1121, B:477:0x115e, B:479:0x1168, B:481:0x117a, B:487:0x1197, B:489:0x11a0, B:491:0x11b3, B:493:0x11bd, B:495:0x11d2, B:497:0x11dd, B:499:0x11e9, B:500:0x11f3, B:501:0x11f9, B:503:0x11ff, B:505:0x1215, B:507:0x121d, B:516:0x12bb, B:519:0x12ec, B:521:0x130c, B:523:0x1312, B:525:0x131f, B:527:0x1333, B:529:0x1339, B:531:0x1344, B:533:0x1357, B:535:0x136a, B:541:0x13c1, B:543:0x13cf, B:545:0x13d7, B:547:0x13f1, B:549:0x13f9, B:552:0x140b, B:554:0x1411, B:557:0x1420, B:559:0x1426, B:566:0x1447, B:570:0x1468, B:71:0x028f), top: B:728:0x0014, inners: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:330:0x0bf8 A[Catch: all -> 0x19a8, TryCatch #7 {all -> 0x19a8, blocks: (B:3:0x0014, B:21:0x00e6, B:51:0x01d2, B:67:0x0265, B:98:0x0391, B:107:0x03f0, B:115:0x0422, B:123:0x045b, B:137:0x04a7, B:139:0x04b0, B:141:0x04b6, B:148:0x04d4, B:150:0x0519, B:153:0x0530, B:155:0x0562, B:157:0x05a0, B:164:0x05c3, B:166:0x05d1, B:169:0x05fb, B:171:0x0601, B:173:0x061a, B:175:0x062a, B:179:0x0655, B:181:0x065f, B:183:0x0672, B:185:0x0682, B:187:0x0695, B:188:0x06a6, B:190:0x06af, B:192:0x06ca, B:199:0x06fe, B:203:0x070f, B:207:0x0720, B:225:0x077c, B:228:0x078a, B:230:0x079d, B:232:0x07cc, B:234:0x07df, B:241:0x0822, B:244:0x0868, B:246:0x08a7, B:249:0x08e4, B:252:0x0901, B:258:0x092f, B:260:0x0965, B:262:0x098d, B:264:0x0997, B:266:0x09ae, B:269:0x09c7, B:278:0x09f8, B:282:0x0a17, B:284:0x0a5b, B:288:0x0a8e, B:290:0x0aa4, B:293:0x0ab3, B:298:0x0ad5, B:305:0x0b04, B:307:0x0b15, B:309:0x0b26, B:313:0x0b60, B:318:0x0b80, B:320:0x0b89, B:323:0x0b9c, B:327:0x0bb1, B:328:0x0bdf, B:330:0x0bf8, B:332:0x0c05, B:336:0x0c22, B:338:0x0c37, B:340:0x0c4e, B:347:0x0c83, B:349:0x0c91, B:353:0x0caf, B:355:0x0cc4, B:357:0x0cdb, B:361:0x0d16, B:365:0x0d3e, B:367:0x0d4c, B:369:0x0d60, B:375:0x0d97, B:377:0x0dac, B:379:0x0e1a, B:381:0x0e26, B:383:0x0e2d, B:386:0x0e40, B:388:0x0e4d, B:390:0x0e54, B:393:0x0e67, B:395:0x0e7e, B:401:0x0ead, B:403:0x0eba, B:405:0x0ec2, B:407:0x0ee4, B:409:0x0f04, B:411:0x0f26, B:413:0x0f31, B:414:0x0f4a, B:422:0x0f7d, B:424:0x0f91, B:426:0x0fa0, B:428:0x0fba, B:431:0x0fd6, B:433:0x0fdd, B:438:0x1004, B:440:0x100d, B:443:0x1030, B:445:0x1045, B:447:0x104d, B:453:0x1074, B:455:0x1085, B:462:0x109c, B:463:0x10a8, B:465:0x10b7, B:467:0x10dc, B:469:0x10fc, B:471:0x110f, B:473:0x1117, B:475:0x1121, B:477:0x115e, B:479:0x1168, B:481:0x117a, B:487:0x1197, B:489:0x11a0, B:491:0x11b3, B:493:0x11bd, B:495:0x11d2, B:497:0x11dd, B:499:0x11e9, B:500:0x11f3, B:501:0x11f9, B:503:0x11ff, B:505:0x1215, B:507:0x121d, B:516:0x12bb, B:519:0x12ec, B:521:0x130c, B:523:0x1312, B:525:0x131f, B:527:0x1333, B:529:0x1339, B:531:0x1344, B:533:0x1357, B:535:0x136a, B:541:0x13c1, B:543:0x13cf, B:545:0x13d7, B:547:0x13f1, B:549:0x13f9, B:552:0x140b, B:554:0x1411, B:557:0x1420, B:559:0x1426, B:566:0x1447, B:570:0x1468, B:71:0x028f), top: B:728:0x0014, inners: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:397:0x0e97  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x0eaa  */
    /* JADX WARN: Removed duplicated region for block: B:566:0x1447 A[Catch: all -> 0x19a8, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x19a8, blocks: (B:3:0x0014, B:21:0x00e6, B:51:0x01d2, B:67:0x0265, B:98:0x0391, B:107:0x03f0, B:115:0x0422, B:123:0x045b, B:137:0x04a7, B:139:0x04b0, B:141:0x04b6, B:148:0x04d4, B:150:0x0519, B:153:0x0530, B:155:0x0562, B:157:0x05a0, B:164:0x05c3, B:166:0x05d1, B:169:0x05fb, B:171:0x0601, B:173:0x061a, B:175:0x062a, B:179:0x0655, B:181:0x065f, B:183:0x0672, B:185:0x0682, B:187:0x0695, B:188:0x06a6, B:190:0x06af, B:192:0x06ca, B:199:0x06fe, B:203:0x070f, B:207:0x0720, B:225:0x077c, B:228:0x078a, B:230:0x079d, B:232:0x07cc, B:234:0x07df, B:241:0x0822, B:244:0x0868, B:246:0x08a7, B:249:0x08e4, B:252:0x0901, B:258:0x092f, B:260:0x0965, B:262:0x098d, B:264:0x0997, B:266:0x09ae, B:269:0x09c7, B:278:0x09f8, B:282:0x0a17, B:284:0x0a5b, B:288:0x0a8e, B:290:0x0aa4, B:293:0x0ab3, B:298:0x0ad5, B:305:0x0b04, B:307:0x0b15, B:309:0x0b26, B:313:0x0b60, B:318:0x0b80, B:320:0x0b89, B:323:0x0b9c, B:327:0x0bb1, B:328:0x0bdf, B:330:0x0bf8, B:332:0x0c05, B:336:0x0c22, B:338:0x0c37, B:340:0x0c4e, B:347:0x0c83, B:349:0x0c91, B:353:0x0caf, B:355:0x0cc4, B:357:0x0cdb, B:361:0x0d16, B:365:0x0d3e, B:367:0x0d4c, B:369:0x0d60, B:375:0x0d97, B:377:0x0dac, B:379:0x0e1a, B:381:0x0e26, B:383:0x0e2d, B:386:0x0e40, B:388:0x0e4d, B:390:0x0e54, B:393:0x0e67, B:395:0x0e7e, B:401:0x0ead, B:403:0x0eba, B:405:0x0ec2, B:407:0x0ee4, B:409:0x0f04, B:411:0x0f26, B:413:0x0f31, B:414:0x0f4a, B:422:0x0f7d, B:424:0x0f91, B:426:0x0fa0, B:428:0x0fba, B:431:0x0fd6, B:433:0x0fdd, B:438:0x1004, B:440:0x100d, B:443:0x1030, B:445:0x1045, B:447:0x104d, B:453:0x1074, B:455:0x1085, B:462:0x109c, B:463:0x10a8, B:465:0x10b7, B:467:0x10dc, B:469:0x10fc, B:471:0x110f, B:473:0x1117, B:475:0x1121, B:477:0x115e, B:479:0x1168, B:481:0x117a, B:487:0x1197, B:489:0x11a0, B:491:0x11b3, B:493:0x11bd, B:495:0x11d2, B:497:0x11dd, B:499:0x11e9, B:500:0x11f3, B:501:0x11f9, B:503:0x11ff, B:505:0x1215, B:507:0x121d, B:516:0x12bb, B:519:0x12ec, B:521:0x130c, B:523:0x1312, B:525:0x131f, B:527:0x1333, B:529:0x1339, B:531:0x1344, B:533:0x1357, B:535:0x136a, B:541:0x13c1, B:543:0x13cf, B:545:0x13d7, B:547:0x13f1, B:549:0x13f9, B:552:0x140b, B:554:0x1411, B:557:0x1420, B:559:0x1426, B:566:0x1447, B:570:0x1468, B:71:0x028f), top: B:728:0x0014, inners: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:567:0x1460  */
    /* JADX WARN: Removed duplicated region for block: B:570:0x1468 A[Catch: all -> 0x19a8, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x19a8, blocks: (B:3:0x0014, B:21:0x00e6, B:51:0x01d2, B:67:0x0265, B:98:0x0391, B:107:0x03f0, B:115:0x0422, B:123:0x045b, B:137:0x04a7, B:139:0x04b0, B:141:0x04b6, B:148:0x04d4, B:150:0x0519, B:153:0x0530, B:155:0x0562, B:157:0x05a0, B:164:0x05c3, B:166:0x05d1, B:169:0x05fb, B:171:0x0601, B:173:0x061a, B:175:0x062a, B:179:0x0655, B:181:0x065f, B:183:0x0672, B:185:0x0682, B:187:0x0695, B:188:0x06a6, B:190:0x06af, B:192:0x06ca, B:199:0x06fe, B:203:0x070f, B:207:0x0720, B:225:0x077c, B:228:0x078a, B:230:0x079d, B:232:0x07cc, B:234:0x07df, B:241:0x0822, B:244:0x0868, B:246:0x08a7, B:249:0x08e4, B:252:0x0901, B:258:0x092f, B:260:0x0965, B:262:0x098d, B:264:0x0997, B:266:0x09ae, B:269:0x09c7, B:278:0x09f8, B:282:0x0a17, B:284:0x0a5b, B:288:0x0a8e, B:290:0x0aa4, B:293:0x0ab3, B:298:0x0ad5, B:305:0x0b04, B:307:0x0b15, B:309:0x0b26, B:313:0x0b60, B:318:0x0b80, B:320:0x0b89, B:323:0x0b9c, B:327:0x0bb1, B:328:0x0bdf, B:330:0x0bf8, B:332:0x0c05, B:336:0x0c22, B:338:0x0c37, B:340:0x0c4e, B:347:0x0c83, B:349:0x0c91, B:353:0x0caf, B:355:0x0cc4, B:357:0x0cdb, B:361:0x0d16, B:365:0x0d3e, B:367:0x0d4c, B:369:0x0d60, B:375:0x0d97, B:377:0x0dac, B:379:0x0e1a, B:381:0x0e26, B:383:0x0e2d, B:386:0x0e40, B:388:0x0e4d, B:390:0x0e54, B:393:0x0e67, B:395:0x0e7e, B:401:0x0ead, B:403:0x0eba, B:405:0x0ec2, B:407:0x0ee4, B:409:0x0f04, B:411:0x0f26, B:413:0x0f31, B:414:0x0f4a, B:422:0x0f7d, B:424:0x0f91, B:426:0x0fa0, B:428:0x0fba, B:431:0x0fd6, B:433:0x0fdd, B:438:0x1004, B:440:0x100d, B:443:0x1030, B:445:0x1045, B:447:0x104d, B:453:0x1074, B:455:0x1085, B:462:0x109c, B:463:0x10a8, B:465:0x10b7, B:467:0x10dc, B:469:0x10fc, B:471:0x110f, B:473:0x1117, B:475:0x1121, B:477:0x115e, B:479:0x1168, B:481:0x117a, B:487:0x1197, B:489:0x11a0, B:491:0x11b3, B:493:0x11bd, B:495:0x11d2, B:497:0x11dd, B:499:0x11e9, B:500:0x11f3, B:501:0x11f9, B:503:0x11ff, B:505:0x1215, B:507:0x121d, B:516:0x12bb, B:519:0x12ec, B:521:0x130c, B:523:0x1312, B:525:0x131f, B:527:0x1333, B:529:0x1339, B:531:0x1344, B:533:0x1357, B:535:0x136a, B:541:0x13c1, B:543:0x13cf, B:545:0x13d7, B:547:0x13f1, B:549:0x13f9, B:552:0x140b, B:554:0x1411, B:557:0x1420, B:559:0x1426, B:566:0x1447, B:570:0x1468, B:71:0x028f), top: B:728:0x0014, inners: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:571:0x14a3 A[Catch: all -> 0x197e, TRY_ENTER, TRY_LEAVE, TryCatch #12 {all -> 0x197e, blocks: (B:509:0x1267, B:512:0x1290, B:514:0x129a, B:537:0x1375, B:571:0x14a3, B:574:0x14bc, B:577:0x14db, B:579:0x151e, B:583:0x1546, B:586:0x1553, B:588:0x156e, B:590:0x1576, B:592:0x157e, B:595:0x1588, B:597:0x15a0, B:598:0x15ab, B:600:0x15b5, B:602:0x15be, B:604:0x15e1, B:606:0x15e9, B:608:0x15f7, B:609:0x1611, B:611:0x1619, B:612:0x1625, B:616:0x163e, B:618:0x1658, B:620:0x167b, B:622:0x1683, B:624:0x1694, B:626:0x16a8, B:628:0x16bb, B:630:0x16c3, B:632:0x16dc, B:633:0x16e6, B:634:0x16ec, B:636:0x16fb, B:638:0x170a, B:640:0x1718, B:642:0x1720, B:645:0x1747), top: B:735:0x1267 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:710:0x1982 A[Catch: all -> 0x19a4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x19a4, blocks: (B:647:0x1760, B:648:0x177d, B:650:0x1785, B:653:0x1791, B:654:0x179b, B:656:0x17a3, B:662:0x17bb, B:663:0x17c5, B:665:0x17cd, B:667:0x17fc, B:668:0x1807, B:670:0x180e, B:672:0x1818, B:674:0x181e, B:676:0x1833, B:679:0x183e, B:680:0x184c, B:682:0x1859, B:683:0x1865, B:685:0x1880, B:687:0x1895, B:689:0x18be, B:693:0x18ce, B:695:0x18d9, B:696:0x18f1, B:698:0x1918, B:700:0x1935, B:702:0x1941, B:704:0x195a, B:706:0x196f, B:710:0x1982, B:716:0x199b, B:718:0x19a3), top: B:728:0x0014, inners: #0 }] */
    /* JADX WARN: Type inference failed for: r0v404, types: [long] */
    /* JADX WARN: Type inference failed for: r18v0, types: [com.google.android.gms.measurement.internal.zzki] */
    /* JADX WARN: Type inference failed for: r19v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r19v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r19v60 */
    /* JADX WARN: Type inference failed for: r19v75 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v11, types: [long] */
    /* JADX WARN: Type inference failed for: r20v12 */
    /* JADX WARN: Type inference failed for: r20v13, types: [long] */
    /* JADX WARN: Type inference failed for: r20v14 */
    /* JADX WARN: Type inference failed for: r20v15 */
    /* JADX WARN: Type inference failed for: r20v17 */
    /* JADX WARN: Type inference failed for: r20v18 */
    /* JADX WARN: Type inference failed for: r20v19 */
    /* JADX WARN: Type inference failed for: r20v2, types: [long] */
    /* JADX WARN: Type inference failed for: r20v21 */
    /* JADX WARN: Type inference failed for: r20v22 */
    /* JADX WARN: Type inference failed for: r20v23 */
    /* JADX WARN: Type inference failed for: r20v24 */
    /* JADX WARN: Type inference failed for: r20v25 */
    /* JADX WARN: Type inference failed for: r20v26 */
    /* JADX WARN: Type inference failed for: r20v27 */
    /* JADX WARN: Type inference failed for: r20v3, types: [long] */
    /* JADX WARN: Type inference failed for: r27v4 */
    /* JADX WARN: Type inference failed for: r27v5 */
    /* JADX WARN: Type inference failed for: r27v6 */
    /* JADX WARN: Type inference failed for: r27v7, types: [long] */
    /* JADX WARN: Type inference failed for: r27v8 */
    /* JADX WARN: Unknown variable types count: 4 */
    @androidx.annotation.WorkerThread
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m11105G(java.lang.String r19, long r20) {
        /*
            Method dump skipped, instructions count: 6578
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzki.m11105G(java.lang.String, long):boolean");
    }

    /* renamed from: H */
    private final boolean m11104H() {
        m11056o0();
        m11070h0();
        return m11084a0().m11793F0() || !TextUtils.isEmpty(m11084a0().m11747v());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x022d  */
    /* JADX WARN: Type inference failed for: r0v108, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v9, types: [long] */
    /* JADX WARN: Unknown variable types count: 5 */
    @androidx.annotation.WorkerThread
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m11103I() {
        /*
            Method dump skipped, instructions count: 794
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzki.m11103I():void");
    }

    @WorkerThread
    /* renamed from: J */
    private final void m11102J() {
        m11056o0();
        if (this.f9672q || this.f9673r || this.f9674s) {
            this.f9665j.mo11081c().m11552L().m11537d("Not stopping services. fetch, network, upload", Boolean.valueOf(this.f9672q), Boolean.valueOf(this.f9673r), Boolean.valueOf(this.f9674s));
            return;
        }
        this.f9665j.mo11081c().m11552L().m11540a("Stopping uploading service(s)");
        List<Runnable> list = this.f9669n;
        if (list != null) {
            for (Runnable runnable : list) {
                runnable.run();
            }
            this.f9669n.clear();
        }
    }

    @VisibleForTesting
    @WorkerThread
    /* renamed from: K */
    private final boolean m11101K() {
        FileLock fileLock;
        m11056o0();
        if (!this.f9665j.m11366e().m10880r(zzat.f8945i0) || (fileLock = this.f9675t) == null || !fileLock.isValid()) {
            try {
                FileChannel channel = new RandomAccessFile(new File(this.f9665j.mo11075f().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
                this.f9676u = channel;
                FileLock tryLock = channel.tryLock();
                this.f9675t = tryLock;
                if (tryLock != null) {
                    this.f9665j.mo11081c().m11552L().m11540a("Storage concurrent access okay");
                    return true;
                }
                this.f9665j.mo11081c().m11560D().m11540a("Storage concurrent data access panic");
                return false;
            } catch (FileNotFoundException e) {
                this.f9665j.mo11081c().m11560D().m11539b("Failed to acquire storage lock", e);
                return false;
            } catch (IOException e2) {
                this.f9665j.mo11081c().m11560D().m11539b("Failed to access storage lock file", e2);
                return false;
            } catch (OverlappingFileLockException e3) {
                this.f9665j.mo11081c().m11557G().m11539b("Storage lock already acquired", e3);
                return false;
            }
        } else {
            this.f9665j.mo11081c().m11552L().m11540a("Storage concurrent access okay");
            return true;
        }
    }

    @WorkerThread
    /* renamed from: L */
    private final zzn m11100L(String str) {
        zzf i0 = m11084a0().m11762i0(str);
        if (i0 == null || TextUtils.isEmpty(i0.m11511T())) {
            this.f9665j.mo11081c().m11553K().m11539b("No app data available; dropping", str);
            return null;
        }
        Boolean N = m11098N(i0);
        if (N == null || N.booleanValue()) {
            return new zzn(str, i0.m11530A(), i0.m11511T(), i0.m11509V(), i0.m11507X(), i0.m11505Z(), i0.m11501b0(), (String) null, i0.m11495e0(), false, i0.m11518M(), i0.m11484k(), 0L, 0, i0.m11482l(), i0.m11480m(), false, i0.m11527D(), i0.m11478n(), i0.m11497d0(), i0.m11477o(), (!zznt.m11872a() || !this.f9665j.m11366e().m10901B(str, zzat.f8947j0)) ? null : i0.m11524G(), (!zzmj.m11898a() || !this.f9665j.m11366e().m10880r(zzat.f8906J0)) ? "" : m11077e(str).m11733e());
        }
        this.f9665j.mo11081c().m11560D().m11539b("App version does not match; dropping. appId", zzer.m11546v(str));
        return null;
    }

    @WorkerThread
    /* renamed from: N */
    private final Boolean m11098N(zzf zzfVar) {
        try {
            if (zzfVar.m11509V() != -2147483648L) {
                if (zzfVar.m11509V() == Wrappers.m14278a(this.f9665j.mo11075f()).m14283e(zzfVar.m11472t(), 0).versionCode) {
                    return Boolean.TRUE;
                }
            } else {
                String str = Wrappers.m14278a(this.f9665j.mo11075f()).m14283e(zzfVar.m11472t(), 0).versionName;
                if (zzfVar.m11511T() != null && zzfVar.m11511T().equals(str)) {
                    return Boolean.TRUE;
                }
            }
            return Boolean.FALSE;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: O */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m11097O(com.google.android.gms.internal.measurement.zzcd.zzc.zza r6, com.google.android.gms.internal.measurement.zzcd.zzc.zza r7) {
        /*
            r5 = this;
            java.lang.String r0 = "_e"
            r1 = r6
            java.lang.String r1 = r1.m13196M()
            boolean r0 = r0.equals(r1)
            com.google.android.gms.common.internal.Preconditions.m14533a(r0)
            r0 = r5
            com.google.android.gms.measurement.internal.zzks r0 = r0.m11076e0()
            r0 = r6
            com.google.android.gms.internal.measurement.zzjh r0 = r0.mo12321k()
            com.google.android.gms.internal.measurement.zzhz r0 = (com.google.android.gms.internal.measurement.zzhz) r0
            com.google.android.gms.internal.measurement.zzcd$zzc r0 = (com.google.android.gms.internal.measurement.zzcd.zzc) r0
            java.lang.String r1 = "_et"
            com.google.android.gms.internal.measurement.zzcd$zze r0 = com.google.android.gms.measurement.internal.zzks.m11007x(r0, r1)
            r8 = r0
            r0 = r8
            boolean r0 = r0.m13169W()
            if (r0 == 0) goto L_0x0090
            r0 = r8
            long r0 = r0.m13168X()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0035
            goto L_0x0090
        L_0x0035:
            r0 = r8
            long r0 = r0.m13168X()
            r9 = r0
            r0 = r5
            com.google.android.gms.measurement.internal.zzks r0 = r0.m11076e0()
            r0 = r7
            com.google.android.gms.internal.measurement.zzjh r0 = r0.mo12321k()
            com.google.android.gms.internal.measurement.zzhz r0 = (com.google.android.gms.internal.measurement.zzhz) r0
            com.google.android.gms.internal.measurement.zzcd$zzc r0 = (com.google.android.gms.internal.measurement.zzcd.zzc) r0
            java.lang.String r1 = "_et"
            com.google.android.gms.internal.measurement.zzcd$zze r0 = com.google.android.gms.measurement.internal.zzks.m11007x(r0, r1)
            r8 = r0
            r0 = r9
            r11 = r0
            r0 = r8
            if (r0 == 0) goto L_0x006f
            r0 = r9
            r11 = r0
            r0 = r8
            long r0 = r0.m13168X()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x006f
            r0 = r9
            r1 = r8
            long r1 = r1.m13168X()
            long r0 = r0 + r1
            r11 = r0
        L_0x006f:
            r0 = r5
            com.google.android.gms.measurement.internal.zzks r0 = r0.m11076e0()
            r0 = r7
            java.lang.String r1 = "_et"
            r2 = r11
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            com.google.android.gms.measurement.internal.zzks.m11028G(r0, r1, r2)
            r0 = r5
            com.google.android.gms.measurement.internal.zzks r0 = r0.m11076e0()
            r0 = r6
            java.lang.String r1 = "_fr"
            r2 = 1
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            com.google.android.gms.measurement.internal.zzks.m11028G(r0, r1, r2)
        L_0x0090:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzki.m11097O(com.google.android.gms.internal.measurement.zzcd$zzc$zza, com.google.android.gms.internal.measurement.zzcd$zzc$zza):void");
    }

    @WorkerThread
    /* renamed from: P */
    private final void m11096P(zzar zzarVar, zzn zznVar) {
        zzar zzarVar2 = zzarVar;
        if (zzny.m11870a()) {
            zzarVar2 = zzarVar;
            if (this.f9665j.m11366e().m10880r(zzat.f8888A0)) {
                zzev b = zzev.m11531b(zzarVar);
                this.f9665j.m11381G().m10983K(b.f9129d, m11084a0().m11803A0(zznVar.f9725f));
                this.f9665j.m11381G().m10972T(b, this.f9665j.m11366e().m10885m(zznVar.f9725f));
                zzarVar2 = b.m11532a();
            }
        }
        if (this.f9665j.m11366e().m10880r(zzat.f8937e0) && Constants.ScionAnalytics.EVENT_FIREBASE_CAMPAIGN.equals(zzarVar2.f8882f) && "referrer API v2".equals(zzarVar2.f8883g.m11698u0("_cis"))) {
            String u0 = zzarVar2.f8883g.m11698u0("gclid");
            if (!TextUtils.isEmpty(u0)) {
                m11046w(new zzkr("_lgclid", zzarVar2.f8885i, u0, "auto"), zznVar);
            }
        }
        m11053q(zzarVar2, zznVar);
    }

    /* renamed from: Q */
    private static void m11095Q(zzkj zzkjVar) {
        if (zzkjVar == null) {
            throw new IllegalStateException("Upload Component not created");
        } else if (!zzkjVar.m11039p()) {
            String valueOf = String.valueOf(zzkjVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:81|(1:83)(1:84)|85|86|(4:91|92|101|(1:103))|93|94|358|95|98|99|100|92|101|(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x036f, code lost:
        r19 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0370, code lost:
        r0.mo11081c().m11560D().m11538c("Error pruning currencies. appId", com.google.android.gms.measurement.internal.zzer.m11546v(r0), r19);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x03b5 A[Catch: all -> 0x0d12, TRY_LEAVE, TryCatch #0 {all -> 0x0d12, blocks: (B:39:0x018c, B:41:0x01a4, B:43:0x01b2, B:48:0x01cc, B:56:0x01f0, B:58:0x0201, B:61:0x0220, B:67:0x0247, B:69:0x0252, B:73:0x0268, B:75:0x0288, B:77:0x0299, B:79:0x029f, B:81:0x02b1, B:83:0x02bd, B:84:0x02c8, B:86:0x02d4, B:88:0x02e2, B:91:0x02ef, B:93:0x0322, B:95:0x034b, B:97:0x0370, B:98:0x0384, B:99:0x0387, B:101:0x03aa, B:103:0x03b5, B:107:0x03fc, B:110:0x040b, B:115:0x0474, B:117:0x0491, B:122:0x04a4, B:127:0x04cb, B:129:0x04e8, B:134:0x0516, B:139:0x0547, B:141:0x0564, B:144:0x0572, B:146:0x05a1, B:148:0x05c8, B:150:0x05d3, B:152:0x05e6, B:154:0x05f0, B:156:0x0603, B:159:0x0614, B:160:0x062e, B:161:0x0631, B:163:0x0661, B:167:0x0680, B:170:0x06cf, B:171:0x06ed, B:173:0x0707, B:175:0x0756, B:177:0x0761, B:179:0x076a, B:181:0x0775, B:183:0x077e, B:185:0x0789, B:187:0x0793, B:189:0x07a0, B:191:0x07b2, B:192:0x07bc, B:194:0x07c2, B:196:0x07d2, B:197:0x07ed, B:199:0x07f3, B:201:0x0807, B:203:0x0812, B:205:0x081c, B:207:0x0828, B:209:0x0831, B:211:0x083c, B:213:0x0846, B:214:0x0853, B:216:0x085e, B:218:0x0868, B:220:0x0873, B:222:0x087b, B:224:0x0887, B:226:0x089d, B:228:0x08a6, B:230:0x08bf, B:232:0x08cf, B:235:0x08d8, B:237:0x08eb, B:239:0x08f9, B:241:0x0900, B:243:0x0916, B:244:0x092a, B:246:0x093e, B:248:0x0945, B:250:0x094b, B:253:0x0960, B:255:0x0974, B:258:0x0997, B:260:0x099e, B:262:0x09b9, B:264:0x09c2, B:266:0x0a18, B:268:0x0a23, B:270:0x0a2c, B:272:0x0a32, B:274:0x0a42, B:275:0x0a4b, B:277:0x0a52, B:279:0x0a58, B:281:0x0a60, B:284:0x0a72, B:286:0x0a8a, B:288:0x0a9a, B:289:0x0aa8, B:291:0x0ab3, B:293:0x0ac9, B:295:0x0ad9, B:298:0x0ae3, B:300:0x0af3, B:302:0x0b49, B:304:0x0b54, B:305:0x0b64, B:307:0x0b6a, B:309:0x0b7a, B:312:0x0b84, B:314:0x0b8d, B:316:0x0b9a, B:318:0x0ba3, B:320:0x0baf, B:322:0x0bbe, B:324:0x0bca, B:325:0x0c1a, B:327:0x0c2f, B:329:0x0c3a, B:331:0x0c45, B:333:0x0c4d, B:337:0x0c66, B:339:0x0c92, B:343:0x0cb0, B:345:0x0cbc, B:347:0x0cc5, B:349:0x0cdf), top: B:355:0x018c, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x03fc A[Catch: all -> 0x0d12, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0d12, blocks: (B:39:0x018c, B:41:0x01a4, B:43:0x01b2, B:48:0x01cc, B:56:0x01f0, B:58:0x0201, B:61:0x0220, B:67:0x0247, B:69:0x0252, B:73:0x0268, B:75:0x0288, B:77:0x0299, B:79:0x029f, B:81:0x02b1, B:83:0x02bd, B:84:0x02c8, B:86:0x02d4, B:88:0x02e2, B:91:0x02ef, B:93:0x0322, B:95:0x034b, B:97:0x0370, B:98:0x0384, B:99:0x0387, B:101:0x03aa, B:103:0x03b5, B:107:0x03fc, B:110:0x040b, B:115:0x0474, B:117:0x0491, B:122:0x04a4, B:127:0x04cb, B:129:0x04e8, B:134:0x0516, B:139:0x0547, B:141:0x0564, B:144:0x0572, B:146:0x05a1, B:148:0x05c8, B:150:0x05d3, B:152:0x05e6, B:154:0x05f0, B:156:0x0603, B:159:0x0614, B:160:0x062e, B:161:0x0631, B:163:0x0661, B:167:0x0680, B:170:0x06cf, B:171:0x06ed, B:173:0x0707, B:175:0x0756, B:177:0x0761, B:179:0x076a, B:181:0x0775, B:183:0x077e, B:185:0x0789, B:187:0x0793, B:189:0x07a0, B:191:0x07b2, B:192:0x07bc, B:194:0x07c2, B:196:0x07d2, B:197:0x07ed, B:199:0x07f3, B:201:0x0807, B:203:0x0812, B:205:0x081c, B:207:0x0828, B:209:0x0831, B:211:0x083c, B:213:0x0846, B:214:0x0853, B:216:0x085e, B:218:0x0868, B:220:0x0873, B:222:0x087b, B:224:0x0887, B:226:0x089d, B:228:0x08a6, B:230:0x08bf, B:232:0x08cf, B:235:0x08d8, B:237:0x08eb, B:239:0x08f9, B:241:0x0900, B:243:0x0916, B:244:0x092a, B:246:0x093e, B:248:0x0945, B:250:0x094b, B:253:0x0960, B:255:0x0974, B:258:0x0997, B:260:0x099e, B:262:0x09b9, B:264:0x09c2, B:266:0x0a18, B:268:0x0a23, B:270:0x0a2c, B:272:0x0a32, B:274:0x0a42, B:275:0x0a4b, B:277:0x0a52, B:279:0x0a58, B:281:0x0a60, B:284:0x0a72, B:286:0x0a8a, B:288:0x0a9a, B:289:0x0aa8, B:291:0x0ab3, B:293:0x0ac9, B:295:0x0ad9, B:298:0x0ae3, B:300:0x0af3, B:302:0x0b49, B:304:0x0b54, B:305:0x0b64, B:307:0x0b6a, B:309:0x0b7a, B:312:0x0b84, B:314:0x0b8d, B:316:0x0b9a, B:318:0x0ba3, B:320:0x0baf, B:322:0x0bbe, B:324:0x0bca, B:325:0x0c1a, B:327:0x0c2f, B:329:0x0c3a, B:331:0x0c45, B:333:0x0c4d, B:337:0x0c66, B:339:0x0c92, B:343:0x0cb0, B:345:0x0cbc, B:347:0x0cc5, B:349:0x0cdf), top: B:355:0x018c, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0469  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x049f  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0cbc A[Catch: all -> 0x0d12, TRY_LEAVE, TryCatch #0 {all -> 0x0d12, blocks: (B:39:0x018c, B:41:0x01a4, B:43:0x01b2, B:48:0x01cc, B:56:0x01f0, B:58:0x0201, B:61:0x0220, B:67:0x0247, B:69:0x0252, B:73:0x0268, B:75:0x0288, B:77:0x0299, B:79:0x029f, B:81:0x02b1, B:83:0x02bd, B:84:0x02c8, B:86:0x02d4, B:88:0x02e2, B:91:0x02ef, B:93:0x0322, B:95:0x034b, B:97:0x0370, B:98:0x0384, B:99:0x0387, B:101:0x03aa, B:103:0x03b5, B:107:0x03fc, B:110:0x040b, B:115:0x0474, B:117:0x0491, B:122:0x04a4, B:127:0x04cb, B:129:0x04e8, B:134:0x0516, B:139:0x0547, B:141:0x0564, B:144:0x0572, B:146:0x05a1, B:148:0x05c8, B:150:0x05d3, B:152:0x05e6, B:154:0x05f0, B:156:0x0603, B:159:0x0614, B:160:0x062e, B:161:0x0631, B:163:0x0661, B:167:0x0680, B:170:0x06cf, B:171:0x06ed, B:173:0x0707, B:175:0x0756, B:177:0x0761, B:179:0x076a, B:181:0x0775, B:183:0x077e, B:185:0x0789, B:187:0x0793, B:189:0x07a0, B:191:0x07b2, B:192:0x07bc, B:194:0x07c2, B:196:0x07d2, B:197:0x07ed, B:199:0x07f3, B:201:0x0807, B:203:0x0812, B:205:0x081c, B:207:0x0828, B:209:0x0831, B:211:0x083c, B:213:0x0846, B:214:0x0853, B:216:0x085e, B:218:0x0868, B:220:0x0873, B:222:0x087b, B:224:0x0887, B:226:0x089d, B:228:0x08a6, B:230:0x08bf, B:232:0x08cf, B:235:0x08d8, B:237:0x08eb, B:239:0x08f9, B:241:0x0900, B:243:0x0916, B:244:0x092a, B:246:0x093e, B:248:0x0945, B:250:0x094b, B:253:0x0960, B:255:0x0974, B:258:0x0997, B:260:0x099e, B:262:0x09b9, B:264:0x09c2, B:266:0x0a18, B:268:0x0a23, B:270:0x0a2c, B:272:0x0a32, B:274:0x0a42, B:275:0x0a4b, B:277:0x0a52, B:279:0x0a58, B:281:0x0a60, B:284:0x0a72, B:286:0x0a8a, B:288:0x0a9a, B:289:0x0aa8, B:291:0x0ab3, B:293:0x0ac9, B:295:0x0ad9, B:298:0x0ae3, B:300:0x0af3, B:302:0x0b49, B:304:0x0b54, B:305:0x0b64, B:307:0x0b6a, B:309:0x0b7a, B:312:0x0b84, B:314:0x0b8d, B:316:0x0b9a, B:318:0x0ba3, B:320:0x0baf, B:322:0x0bbe, B:324:0x0bca, B:325:0x0c1a, B:327:0x0c2f, B:329:0x0c3a, B:331:0x0c45, B:333:0x0c4d, B:337:0x0c66, B:339:0x0c92, B:343:0x0cb0, B:345:0x0cbc, B:347:0x0cc5, B:349:0x0cdf), top: B:355:0x018c, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01f0 A[Catch: all -> 0x0d12, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0d12, blocks: (B:39:0x018c, B:41:0x01a4, B:43:0x01b2, B:48:0x01cc, B:56:0x01f0, B:58:0x0201, B:61:0x0220, B:67:0x0247, B:69:0x0252, B:73:0x0268, B:75:0x0288, B:77:0x0299, B:79:0x029f, B:81:0x02b1, B:83:0x02bd, B:84:0x02c8, B:86:0x02d4, B:88:0x02e2, B:91:0x02ef, B:93:0x0322, B:95:0x034b, B:97:0x0370, B:98:0x0384, B:99:0x0387, B:101:0x03aa, B:103:0x03b5, B:107:0x03fc, B:110:0x040b, B:115:0x0474, B:117:0x0491, B:122:0x04a4, B:127:0x04cb, B:129:0x04e8, B:134:0x0516, B:139:0x0547, B:141:0x0564, B:144:0x0572, B:146:0x05a1, B:148:0x05c8, B:150:0x05d3, B:152:0x05e6, B:154:0x05f0, B:156:0x0603, B:159:0x0614, B:160:0x062e, B:161:0x0631, B:163:0x0661, B:167:0x0680, B:170:0x06cf, B:171:0x06ed, B:173:0x0707, B:175:0x0756, B:177:0x0761, B:179:0x076a, B:181:0x0775, B:183:0x077e, B:185:0x0789, B:187:0x0793, B:189:0x07a0, B:191:0x07b2, B:192:0x07bc, B:194:0x07c2, B:196:0x07d2, B:197:0x07ed, B:199:0x07f3, B:201:0x0807, B:203:0x0812, B:205:0x081c, B:207:0x0828, B:209:0x0831, B:211:0x083c, B:213:0x0846, B:214:0x0853, B:216:0x085e, B:218:0x0868, B:220:0x0873, B:222:0x087b, B:224:0x0887, B:226:0x089d, B:228:0x08a6, B:230:0x08bf, B:232:0x08cf, B:235:0x08d8, B:237:0x08eb, B:239:0x08f9, B:241:0x0900, B:243:0x0916, B:244:0x092a, B:246:0x093e, B:248:0x0945, B:250:0x094b, B:253:0x0960, B:255:0x0974, B:258:0x0997, B:260:0x099e, B:262:0x09b9, B:264:0x09c2, B:266:0x0a18, B:268:0x0a23, B:270:0x0a2c, B:272:0x0a32, B:274:0x0a42, B:275:0x0a4b, B:277:0x0a52, B:279:0x0a58, B:281:0x0a60, B:284:0x0a72, B:286:0x0a8a, B:288:0x0a9a, B:289:0x0aa8, B:291:0x0ab3, B:293:0x0ac9, B:295:0x0ad9, B:298:0x0ae3, B:300:0x0af3, B:302:0x0b49, B:304:0x0b54, B:305:0x0b64, B:307:0x0b6a, B:309:0x0b7a, B:312:0x0b84, B:314:0x0b8d, B:316:0x0b9a, B:318:0x0ba3, B:320:0x0baf, B:322:0x0bbe, B:324:0x0bca, B:325:0x0c1a, B:327:0x0c2f, B:329:0x0c3a, B:331:0x0c45, B:333:0x0c4d, B:337:0x0c66, B:339:0x0c92, B:343:0x0cb0, B:345:0x0cbc, B:347:0x0cc5, B:349:0x0cdf), top: B:355:0x018c, inners: #1, #2 }] */
    /* JADX WARN: Type inference failed for: r0v546, types: [double] */
    /* JADX WARN: Type inference failed for: r0v560, types: [long] */
    /* JADX WARN: Type inference failed for: r24v10 */
    /* JADX WARN: Type inference failed for: r24v11 */
    /* JADX WARN: Type inference failed for: r24v6, types: [long] */
    /* JADX WARN: Type inference failed for: r24v8 */
    /* JADX WARN: Type inference failed for: r31v0 */
    /* JADX WARN: Type inference failed for: r31v1, types: [double] */
    /* JADX WARN: Type inference failed for: r31v3 */
    /* JADX WARN: Unknown variable types count: 4 */
    @androidx.annotation.WorkerThread
    /* renamed from: X */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m11088X(com.google.android.gms.measurement.internal.zzar r17, com.google.android.gms.measurement.internal.zzn r18) {
        /*
            Method dump skipped, instructions count: 3356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzki.m11088X(com.google.android.gms.measurement.internal.zzar, com.google.android.gms.measurement.internal.zzn):void");
    }

    /* renamed from: b0 */
    private final boolean m11082b0(zzn zznVar) {
        return (!zznt.m11872a() || !this.f9665j.m11366e().m10901B(zznVar.f9725f, zzat.f8947j0)) ? !TextUtils.isEmpty(zznVar.f9726g) || !TextUtils.isEmpty(zznVar.f9742w) : !TextUtils.isEmpty(zznVar.f9726g) || !TextUtils.isEmpty(zznVar.f9723A) || !TextUtils.isEmpty(zznVar.f9742w);
    }

    @VisibleForTesting
    @WorkerThread
    /* renamed from: d */
    private final int m11079d(FileChannel fileChannel) {
        int read;
        m11056o0();
        int i = 0;
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.f9665j.mo11081c().m11560D().m11540a("Bad channel to read from");
            return 0;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        try {
            fileChannel.position(0L);
            read = fileChannel.read(allocate);
        } catch (IOException e) {
            this.f9665j.mo11081c().m11560D().m11539b("Failed to read from channel", e);
        }
        if (read == 4) {
            allocate.flip();
            i = allocate.getInt();
            return i;
        } else if (read == -1) {
            return 0;
        } else {
            this.f9665j.mo11081c().m11557G().m11539b("Unexpected data length. Bytes read", Integer.valueOf(read));
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02e2  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x030e  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.measurement.internal.zzf m11071h(com.google.android.gms.measurement.internal.zzn r6, com.google.android.gms.measurement.internal.zzf r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 846
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzki.m11071h(com.google.android.gms.measurement.internal.zzn, com.google.android.gms.measurement.internal.zzf, java.lang.String):com.google.android.gms.measurement.internal.zzf");
    }

    /* renamed from: j */
    public static zzki m11067j(Context context) {
        Preconditions.m14523k(context);
        Preconditions.m14523k(context.getApplicationContext());
        if (f9655A == null) {
            synchronized (zzki.class) {
                try {
                    if (f9655A == null) {
                        f9655A = new zzki(new zzkq(context));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9655A;
    }

    @WorkerThread
    /* renamed from: k */
    private final String m11065k(zzad zzadVar) {
        if (!zzmj.m11898a() || !this.f9665j.m11366e().m10880r(zzat.f8906J0) || zzadVar.m11721q()) {
            return m11052q0();
        }
        return null;
    }

    /* renamed from: m0 */
    private final zzfb m11060m0() {
        zzfb zzfbVar = this.f9659d;
        if (zzfbVar != null) {
            return zzfbVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    @VisibleForTesting
    /* renamed from: n */
    private static void m11059n(zzcd.zzc.zza zzaVar, int i, String str) {
        List<zzcd.zze> G = zzaVar.m13201G();
        for (int i2 = 0; i2 < G.size(); i2++) {
            if ("_err".equals(G.get(i2).m13178N())) {
                return;
            }
        }
        zzcd.zze.zza e0 = zzcd.zze.m13161e0();
        e0.m13152D("_err");
        e0.m13144z(Long.valueOf(i).longValue());
        zzcd.zze zzeVar = (zzcd.zze) ((zzhz) e0.mo12321k());
        zzcd.zze.zza e02 = zzcd.zze.m13161e0();
        e02.m13152D("_ev");
        e02.m13150F(str);
        zzaVar.m13205C(zzeVar);
        zzaVar.m13205C((zzcd.zze) ((zzhz) e02.mo12321k()));
    }

    /* renamed from: n0 */
    private final zzke m11058n0() {
        m11095Q(this.f9660e);
        return this.f9660e;
    }

    @VisibleForTesting
    /* renamed from: o */
    private static void m11057o(zzcd.zzc.zza zzaVar, @NonNull String str) {
        List<zzcd.zze> G = zzaVar.m13201G();
        for (int i = 0; i < G.size(); i++) {
            if (str.equals(G.get(i).m13178N())) {
                zzaVar.m13199J(i);
                return;
            }
        }
    }

    @WorkerThread
    /* renamed from: o0 */
    private final void m11056o0() {
        this.f9665j.mo11083b().mo11316e();
    }

    @VisibleForTesting
    /* renamed from: p */
    private final void m11055p(zzcd.zzg.zza zzaVar, long j, boolean z) {
        String str = z ? "_se" : "_lte";
        zzkt n0 = m11084a0().m11757n0(zzaVar.m12894z0(), str);
        zzkt zzktVar = (n0 == null || n0.f9710e == null) ? new zzkt(zzaVar.m12894z0(), "auto", str, this.f9665j.mo11085a().mo14335a(), Long.valueOf(j)) : new zzkt(zzaVar.m12894z0(), "auto", str, this.f9665j.mo11085a().mo14335a(), Long.valueOf(((Long) n0.f9710e).longValue() + j));
        zzcd.zzk.zza Y = zzcd.zzk.m12818Y();
        Y.m12813A(str);
        Y.m12806z(this.f9665j.mo11085a().mo14335a());
        Y.m12811D(((Long) zzktVar.f9710e).longValue());
        zzcd.zzk zzkVar = (zzcd.zzk) ((zzhz) Y.mo12321k());
        boolean z2 = false;
        int t = zzks.m11011t(zzaVar, str);
        if (t >= 0) {
            zzaVar.m12895z(t, zzkVar);
            z2 = true;
        }
        if (!z2) {
            zzaVar.m12953E(zzkVar);
        }
        if (j > 0) {
            m11084a0().m11778S(zzktVar);
            this.f9665j.mo11081c().m11552L().m11538c("Updated engagement user property. scope, value", z ? "session-scoped" : "lifetime", zzktVar.f9710e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: p0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long m11054p0() {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.measurement.internal.zzfv r0 = r0.f9665j
            com.google.android.gms.common.util.Clock r0 = r0.mo11085a()
            long r0 = r0.mo14335a()
            r6 = r0
            r0 = r5
            com.google.android.gms.measurement.internal.zzfv r0 = r0.f9665j
            com.google.android.gms.measurement.internal.zzfd r0 = r0.m11349x()
            r8 = r0
            r0 = r8
            r0.m11310n()
            r0 = r8
            r0.mo11316e()
            r0 = r8
            com.google.android.gms.measurement.internal.zzfh r0 = r0.f9190i
            long r0 = r0.m11433a()
            r9 = r0
            r0 = r9
            r11 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x004c
            r0 = 1
            r1 = r8
            com.google.android.gms.measurement.internal.zzkw r1 = r1.m11313j()
            java.security.SecureRandom r1 = r1.m10992F0()
            r2 = 86400000(0x5265c00, float:7.82218E-36)
            int r1 = r1.nextInt(r2)
            long r1 = (long) r1
            long r0 = r0 + r1
            r11 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzfh r0 = r0.f9190i
            r1 = r11
            r0.m11432b(r1)
        L_0x004c:
            r0 = r6
            r1 = r11
            long r0 = r0 + r1
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 / r1
            r1 = 60
            long r0 = r0 / r1
            r1 = 60
            long r0 = r0 / r1
            r1 = 24
            long r0 = r0 / r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzki.m11054p0():long");
    }

    @Deprecated
    @WorkerThread
    /* renamed from: q0 */
    private final String m11052q0() {
        byte[] bArr = new byte[16];
        this.f9665j.m11381G().m10992F0().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    @WorkerThread
    /* renamed from: s */
    private final void m11050s(zzf zzfVar) {
        ArrayMap arrayMap;
        m11056o0();
        if (!zznt.m11872a() || !this.f9665j.m11366e().m10901B(zzfVar.m11472t(), zzat.f8947j0)) {
            if (TextUtils.isEmpty(zzfVar.m11530A()) && TextUtils.isEmpty(zzfVar.m11527D())) {
                m11110B(zzfVar.m11472t(), 204, null, null, null);
                return;
            }
        } else if (TextUtils.isEmpty(zzfVar.m11530A()) && TextUtils.isEmpty(zzfVar.m11524G()) && TextUtils.isEmpty(zzfVar.m11527D())) {
            m11110B(zzfVar.m11472t(), 204, null, null, null);
            return;
        }
        String p = this.f9665j.m11366e().m10882p(zzfVar);
        try {
            URL url = new URL(p);
            this.f9665j.mo11081c().m11552L().m11539b("Fetching remote configuration", zzfVar.m11472t());
            zzca.zzb t = m11089W().m11397t(zzfVar.m11472t());
            String y = m11089W().m11392y(zzfVar.m11472t());
            if (t == null || TextUtils.isEmpty(y)) {
                arrayMap = null;
            } else {
                arrayMap = new ArrayMap();
                arrayMap.put("If-Modified-Since", y);
            }
            this.f9672q = true;
            zzeu Y = m11087Y();
            String t2 = zzfVar.m11472t();
            zzkn zzknVar = new zzkn(this);
            Y.mo11316e();
            Y.m11038q();
            Preconditions.m14523k(url);
            Preconditions.m14523k(zzknVar);
            Y.mo11083b().m11419D(new zzey(Y, t2, url, null, arrayMap, zzknVar));
        } catch (MalformedURLException e) {
            this.f9665j.mo11081c().m11560D().m11538c("Failed to parse config URL. Not fetching. appId", zzer.m11546v(zzfVar.m11472t()), p);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: v */
    public final void m11047v(zzkq zzkqVar) {
        this.f9665j.mo11083b().mo11316e();
        zzac zzacVar = new zzac(this);
        zzacVar.m11037r();
        this.f9658c = zzacVar;
        this.f9665j.m11366e().m10881q(this.f9656a);
        zzjo zzjoVar = new zzjo(this);
        zzjoVar.m11037r();
        this.f9664i = zzjoVar;
        zzo zzoVar = new zzo(this);
        zzoVar.m11037r();
        this.f9661f = zzoVar;
        zzie zzieVar = new zzie(this);
        zzieVar.m11037r();
        this.f9663h = zzieVar;
        zzke zzkeVar = new zzke(this);
        zzkeVar.m11037r();
        this.f9660e = zzkeVar;
        this.f9659d = new zzfb(this);
        if (this.f9670o != this.f9671p) {
            this.f9665j.mo11081c().m11560D().m11538c("Not all upload components initialized", Integer.valueOf(this.f9670o), Integer.valueOf(this.f9671p));
        }
        this.f9666k = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: A */
    public final void m11111A(Runnable runnable) {
        m11056o0();
        if (this.f9669n == null) {
            this.f9669n = new ArrayList();
        }
        this.f9669n.add(runnable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    @WorkerThread
    /* renamed from: B */
    public final void m11110B(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        m11056o0();
        m11070h0();
        Preconditions.m14527g(str);
        byte[] bArr2 = bArr;
        if (bArr == null) {
            try {
                bArr2 = new byte[0];
            } finally {
                this.f9672q = false;
                m11102J();
            }
        }
        this.f9665j.mo11081c().m11552L().m11539b("onConfigFetched. Response size", Integer.valueOf(bArr2.length));
        m11084a0().m11752s0();
        zzf i0 = m11084a0().m11762i0(str);
        boolean z = (i == 200 || i == 204 || i == 304) && th == null;
        if (i0 == null) {
            this.f9665j.mo11081c().m11557G().m11539b("App does not exist in onConfigFetched. appId", zzer.m11546v(str));
        } else if (z || i == 404) {
            List<String> list = map != null ? map.get("Last-Modified") : null;
            String str2 = (list == null || list.size() <= 0) ? null : list.get(0);
            if (i == 404 || i == 304) {
                if (m11089W().m11397t(str) == null && !m11089W().m11393x(str, null, null)) {
                    m11084a0().m11742x0();
                    return;
                }
            } else if (!m11089W().m11393x(str, bArr2, str2)) {
                m11084a0().m11742x0();
                return;
            }
            i0.m11520K(this.f9665j.mo11085a().mo14335a());
            m11084a0().m11783N(i0);
            if (i == 404) {
                this.f9665j.mo11081c().m11555I().m11539b("Config not found. Using empty config. appId", str);
            } else {
                this.f9665j.mo11081c().m11552L().m11538c("Successfully fetched config. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr2.length));
            }
            if (!m11087Y().m11533w() || !m11104H()) {
                m11103I();
            } else {
                m11068i0();
            }
        } else {
            i0.m11517N(this.f9665j.mo11085a().mo14335a());
            m11084a0().m11783N(i0);
            this.f9665j.mo11081c().m11552L().m11538c("Fetching config failed. code, error", Integer.valueOf(i), th);
            m11089W().m11406A(str);
            this.f9665j.m11349x().f9187f.m11432b(this.f9665j.mo11085a().mo14335a());
            boolean z2 = true;
            if (i != 503) {
                z2 = i == 429;
            }
            if (z2) {
                this.f9665j.m11349x().f9188g.m11432b(this.f9665j.mo11085a().mo14335a());
            }
            m11103I();
        }
        m11084a0().m11751t();
        m11084a0().m11742x0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: C */
    public final void m11109C(String str, zzad zzadVar) {
        if (zzmj.m11898a() && this.f9665j.m11366e().m10880r(zzat.f8906J0)) {
            m11056o0();
            m11070h0();
            this.f9680y.put(str, zzadVar);
            zzac a0 = m11084a0();
            if (zzmj.m11898a() && a0.m11311l().m10880r(zzat.f8906J0)) {
                Preconditions.m14523k(str);
                Preconditions.m14523k(zzadVar);
                a0.mo11316e();
                a0.m11038q();
                ContentValues contentValues = new ContentValues();
                contentValues.put("app_id", str);
                contentValues.put("consent_state", zzadVar.m11733e());
                try {
                    if (a0.m11749u().insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                        a0.mo11081c().m11560D().m11539b("Failed to insert/update consent setting (got -1). appId", zzer.m11546v(str));
                    }
                } catch (SQLiteException e) {
                    a0.mo11081c().m11560D().m11538c("Error storing consent setting. appId, error", zzer.m11546v(str), e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: D */
    public final void m11108D(boolean z) {
        m11103I();
    }

    /* renamed from: M */
    public final zzy m11099M() {
        return this.f9665j.m11366e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: R */
    public final void m11094R(zzkr zzkrVar, zzn zznVar) {
        m11056o0();
        m11070h0();
        if (m11082b0(zznVar)) {
            if (!zznVar.f9732m) {
                m11090V(zznVar);
            } else if (!"_npa".equals(zzkrVar.f9700g) || zznVar.f9743x == null) {
                this.f9665j.mo11081c().m11553K().m11539b("Removing user property", this.f9665j.m11380H().m11565y(zzkrVar.f9700g));
                m11084a0().m11752s0();
                try {
                    m11090V(zznVar);
                    m11084a0().m11760k0(zznVar.f9725f, zzkrVar.f9700g);
                    m11084a0().m11751t();
                    this.f9665j.mo11081c().m11553K().m11539b("User property removed", this.f9665j.m11380H().m11565y(zzkrVar.f9700g));
                } finally {
                    m11084a0().m11742x0();
                }
            } else {
                this.f9665j.mo11081c().m11553K().m11540a("Falling back to manifest metadata value for ad personalization");
                m11046w(new zzkr("_npa", this.f9665j.mo11085a().mo14335a(), Long.valueOf(zznVar.f9743x.booleanValue() ? 1L : 0L), "auto"), zznVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:170:0x06a8 A[Catch: all -> 0x06ec, TRY_ENTER, TryCatch #3 {all -> 0x06ec, blocks: (B:25:0x00cd, B:27:0x00e0, B:30:0x00f3, B:32:0x00fa, B:37:0x0110, B:39:0x0125, B:42:0x0135, B:45:0x0142, B:47:0x015a, B:50:0x016e, B:52:0x0179, B:54:0x0191, B:56:0x01c4, B:58:0x01d5, B:60:0x0269, B:62:0x0282, B:67:0x029c, B:69:0x02a7, B:74:0x02bc, B:76:0x02c7, B:78:0x02ce, B:85:0x02ed, B:86:0x032a, B:88:0x0335, B:91:0x034d, B:95:0x0365, B:98:0x0379, B:100:0x0401, B:101:0x040d, B:103:0x0414, B:105:0x041e, B:107:0x044e, B:109:0x0468, B:111:0x047f, B:115:0x049d, B:117:0x04a6, B:119:0x04b2, B:124:0x04c9, B:125:0x04d5, B:129:0x04e7, B:133:0x04f7, B:134:0x0510, B:136:0x0527, B:140:0x0545, B:142:0x054e, B:144:0x0558, B:146:0x0562, B:149:0x0575, B:150:0x057f, B:151:0x0582, B:154:0x05ac, B:156:0x05fe, B:157:0x060a, B:159:0x0611, B:160:0x061a, B:161:0x061d, B:163:0x063f, B:165:0x0652, B:167:0x0679, B:168:0x0682, B:169:0x0685, B:170:0x06a8, B:172:0x06af, B:174:0x06de), top: B:186:0x00cd, inners: #0, #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x016e A[Catch: all -> 0x06ec, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x06ec, blocks: (B:25:0x00cd, B:27:0x00e0, B:30:0x00f3, B:32:0x00fa, B:37:0x0110, B:39:0x0125, B:42:0x0135, B:45:0x0142, B:47:0x015a, B:50:0x016e, B:52:0x0179, B:54:0x0191, B:56:0x01c4, B:58:0x01d5, B:60:0x0269, B:62:0x0282, B:67:0x029c, B:69:0x02a7, B:74:0x02bc, B:76:0x02c7, B:78:0x02ce, B:85:0x02ed, B:86:0x032a, B:88:0x0335, B:91:0x034d, B:95:0x0365, B:98:0x0379, B:100:0x0401, B:101:0x040d, B:103:0x0414, B:105:0x041e, B:107:0x044e, B:109:0x0468, B:111:0x047f, B:115:0x049d, B:117:0x04a6, B:119:0x04b2, B:124:0x04c9, B:125:0x04d5, B:129:0x04e7, B:133:0x04f7, B:134:0x0510, B:136:0x0527, B:140:0x0545, B:142:0x054e, B:144:0x0558, B:146:0x0562, B:149:0x0575, B:150:0x057f, B:151:0x0582, B:154:0x05ac, B:156:0x05fe, B:157:0x060a, B:159:0x0611, B:160:0x061a, B:161:0x061d, B:163:0x063f, B:165:0x0652, B:167:0x0679, B:168:0x0682, B:169:0x0685, B:170:0x06a8, B:172:0x06af, B:174:0x06de), top: B:186:0x00cd, inners: #0, #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x029c A[Catch: all -> 0x06ec, TRY_ENTER, TryCatch #3 {all -> 0x06ec, blocks: (B:25:0x00cd, B:27:0x00e0, B:30:0x00f3, B:32:0x00fa, B:37:0x0110, B:39:0x0125, B:42:0x0135, B:45:0x0142, B:47:0x015a, B:50:0x016e, B:52:0x0179, B:54:0x0191, B:56:0x01c4, B:58:0x01d5, B:60:0x0269, B:62:0x0282, B:67:0x029c, B:69:0x02a7, B:74:0x02bc, B:76:0x02c7, B:78:0x02ce, B:85:0x02ed, B:86:0x032a, B:88:0x0335, B:91:0x034d, B:95:0x0365, B:98:0x0379, B:100:0x0401, B:101:0x040d, B:103:0x0414, B:105:0x041e, B:107:0x044e, B:109:0x0468, B:111:0x047f, B:115:0x049d, B:117:0x04a6, B:119:0x04b2, B:124:0x04c9, B:125:0x04d5, B:129:0x04e7, B:133:0x04f7, B:134:0x0510, B:136:0x0527, B:140:0x0545, B:142:0x054e, B:144:0x0558, B:146:0x0562, B:149:0x0575, B:150:0x057f, B:151:0x0582, B:154:0x05ac, B:156:0x05fe, B:157:0x060a, B:159:0x0611, B:160:0x061a, B:161:0x061d, B:163:0x063f, B:165:0x0652, B:167:0x0679, B:168:0x0682, B:169:0x0685, B:170:0x06a8, B:172:0x06af, B:174:0x06de), top: B:186:0x00cd, inners: #0, #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0335 A[Catch: all -> 0x06ec, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x06ec, blocks: (B:25:0x00cd, B:27:0x00e0, B:30:0x00f3, B:32:0x00fa, B:37:0x0110, B:39:0x0125, B:42:0x0135, B:45:0x0142, B:47:0x015a, B:50:0x016e, B:52:0x0179, B:54:0x0191, B:56:0x01c4, B:58:0x01d5, B:60:0x0269, B:62:0x0282, B:67:0x029c, B:69:0x02a7, B:74:0x02bc, B:76:0x02c7, B:78:0x02ce, B:85:0x02ed, B:86:0x032a, B:88:0x0335, B:91:0x034d, B:95:0x0365, B:98:0x0379, B:100:0x0401, B:101:0x040d, B:103:0x0414, B:105:0x041e, B:107:0x044e, B:109:0x0468, B:111:0x047f, B:115:0x049d, B:117:0x04a6, B:119:0x04b2, B:124:0x04c9, B:125:0x04d5, B:129:0x04e7, B:133:0x04f7, B:134:0x0510, B:136:0x0527, B:140:0x0545, B:142:0x054e, B:144:0x0558, B:146:0x0562, B:149:0x0575, B:150:0x057f, B:151:0x0582, B:154:0x05ac, B:156:0x05fe, B:157:0x060a, B:159:0x0611, B:160:0x061a, B:161:0x061d, B:163:0x063f, B:165:0x0652, B:167:0x0679, B:168:0x0682, B:169:0x0685, B:170:0x06a8, B:172:0x06af, B:174:0x06de), top: B:186:0x00cd, inners: #0, #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0365 A[Catch: all -> 0x06ec, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x06ec, blocks: (B:25:0x00cd, B:27:0x00e0, B:30:0x00f3, B:32:0x00fa, B:37:0x0110, B:39:0x0125, B:42:0x0135, B:45:0x0142, B:47:0x015a, B:50:0x016e, B:52:0x0179, B:54:0x0191, B:56:0x01c4, B:58:0x01d5, B:60:0x0269, B:62:0x0282, B:67:0x029c, B:69:0x02a7, B:74:0x02bc, B:76:0x02c7, B:78:0x02ce, B:85:0x02ed, B:86:0x032a, B:88:0x0335, B:91:0x034d, B:95:0x0365, B:98:0x0379, B:100:0x0401, B:101:0x040d, B:103:0x0414, B:105:0x041e, B:107:0x044e, B:109:0x0468, B:111:0x047f, B:115:0x049d, B:117:0x04a6, B:119:0x04b2, B:124:0x04c9, B:125:0x04d5, B:129:0x04e7, B:133:0x04f7, B:134:0x0510, B:136:0x0527, B:140:0x0545, B:142:0x054e, B:144:0x0558, B:146:0x0562, B:149:0x0575, B:150:0x057f, B:151:0x0582, B:154:0x05ac, B:156:0x05fe, B:157:0x060a, B:159:0x0611, B:160:0x061a, B:161:0x061d, B:163:0x063f, B:165:0x0652, B:167:0x0679, B:168:0x0682, B:169:0x0685, B:170:0x06a8, B:172:0x06af, B:174:0x06de), top: B:186:0x00cd, inners: #0, #1, #2 }] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @androidx.annotation.WorkerThread
    /* renamed from: S */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m11093S(com.google.android.gms.measurement.internal.zzn r8) {
        /*
            Method dump skipped, instructions count: 1782
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzki.m11093S(com.google.android.gms.measurement.internal.zzn):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: T */
    public final void m11092T(zzw zzwVar) {
        zzn L = m11100L(zzwVar.f9776f);
        if (L != null) {
            m11091U(zzwVar, L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: U */
    public final void m11091U(zzw zzwVar, zzn zznVar) {
        Preconditions.m14523k(zzwVar);
        Preconditions.m14527g(zzwVar.f9776f);
        Preconditions.m14523k(zzwVar.f9778h);
        Preconditions.m14527g(zzwVar.f9778h.f9700g);
        m11056o0();
        m11070h0();
        if (m11082b0(zznVar)) {
            if (!zznVar.f9732m) {
                m11090V(zznVar);
                return;
            }
            m11084a0().m11752s0();
            try {
                m11090V(zznVar);
                zzw o0 = m11084a0().m11756o0(zzwVar.f9776f, zzwVar.f9778h.f9700g);
                if (o0 != null) {
                    this.f9665j.mo11081c().m11553K().m11538c("Removing conditional user property", zzwVar.f9776f, this.f9665j.m11380H().m11565y(zzwVar.f9778h.f9700g));
                    m11084a0().m11754q0(zzwVar.f9776f, zzwVar.f9778h.f9700g);
                    if (o0.f9780j) {
                        m11084a0().m11760k0(zzwVar.f9776f, zzwVar.f9778h.f9700g);
                    }
                    if (zzwVar.f9786p != null) {
                        Bundle bundle = null;
                        if (zzwVar.f9786p.f8883g != null) {
                            bundle = zzwVar.f9786p.f8883g.m11701Y();
                        }
                        m11088X(this.f9665j.m11381G().m10997D(zzwVar.f9776f, zzwVar.f9786p.f8882f, bundle, o0.f9777g, zzwVar.f9786p.f8885i, true, false, zzlq.m11973a() && this.f9665j.m11366e().m10880r(zzat.f8912M0)), zznVar);
                    }
                } else {
                    this.f9665j.mo11081c().m11557G().m11538c("Conditional user property doesn't exist", zzer.m11546v(zzwVar.f9776f), this.f9665j.m11380H().m11565y(zzwVar.f9778h.f9700g));
                }
                m11084a0().m11751t();
            } finally {
                m11084a0().m11742x0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0122, code lost:
        if (r9.m11723o() != false) goto L_0x0125;
     */
    @androidx.annotation.WorkerThread
    /* renamed from: V */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzf m11090V(com.google.android.gms.measurement.internal.zzn r6) {
        /*
            Method dump skipped, instructions count: 606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzki.m11090V(com.google.android.gms.measurement.internal.zzn):com.google.android.gms.measurement.internal.zzf");
    }

    /* renamed from: W */
    public final zzfp m11089W() {
        m11095Q(this.f9656a);
        return this.f9656a;
    }

    /* renamed from: Y */
    public final zzeu m11087Y() {
        m11095Q(this.f9657b);
        return this.f9657b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Z */
    public final String m11086Z(zzn zznVar) {
        try {
            return (String) this.f9665j.mo11083b().m11412u(new zzkm(this, zznVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            this.f9665j.mo11081c().m11560D().m11538c("Failed to get app instance id. appId", zzer.m11546v(zznVar.f9725f), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    /* renamed from: a */
    public final Clock mo11085a() {
        return this.f9665j.mo11085a();
    }

    /* renamed from: a0 */
    public final zzac m11084a0() {
        m11095Q(this.f9658c);
        return this.f9658c;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    /* renamed from: b */
    public final zzfo mo11083b() {
        return this.f9665j.mo11083b();
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    /* renamed from: c */
    public final zzer mo11081c() {
        return this.f9665j.mo11081c();
    }

    /* renamed from: c0 */
    public final zzo m11080c0() {
        m11095Q(this.f9661f);
        return this.f9661f;
    }

    /* renamed from: d0 */
    public final zzie m11078d0() {
        m11095Q(this.f9663h);
        return this.f9663h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: e */
    public final zzad m11077e(String str) {
        zzad zzadVar = zzad.f8841c;
        zzad zzadVar2 = zzadVar;
        if (zzmj.m11898a()) {
            zzadVar2 = zzadVar;
            if (this.f9665j.m11366e().m10880r(zzat.f8906J0)) {
                m11056o0();
                m11070h0();
                zzad zzadVar3 = this.f9680y.get(str);
                zzadVar2 = zzadVar3;
                if (zzadVar3 == null) {
                    zzad B0 = m11084a0().m11801B0(str);
                    zzadVar2 = B0;
                    if (B0 == null) {
                        zzadVar2 = zzad.f8841c;
                    }
                    m11109C(str, zzadVar2);
                }
            }
        }
        return zzadVar2;
    }

    /* renamed from: e0 */
    public final zzks m11076e0() {
        m11095Q(this.f9662g);
        return this.f9662g;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    /* renamed from: f */
    public final Context mo11075f() {
        return this.f9665j.mo11075f();
    }

    /* renamed from: f0 */
    public final zzep m11074f0() {
        return this.f9665j.m11380H();
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    /* renamed from: g */
    public final zzx mo11073g() {
        return this.f9665j.mo11073g();
    }

    /* renamed from: g0 */
    public final zzkw m11072g0() {
        return this.f9665j.m11381G();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h0 */
    public final void m11070h0() {
        if (!this.f9666k) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01b9, code lost:
        if (m11077e(r0).m11723o() != false) goto L_0x01bc;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0306 A[Catch: all -> 0x0545, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0545, blocks: (B:3:0x000d, B:5:0x001c, B:8:0x0036, B:10:0x003d, B:13:0x0057, B:15:0x0060, B:18:0x006e, B:25:0x0084, B:28:0x009e, B:30:0x00a8, B:33:0x00c6, B:37:0x00f0, B:39:0x00fc, B:40:0x0102, B:43:0x0118, B:45:0x0133, B:47:0x0143, B:49:0x014e, B:51:0x015a, B:53:0x0196, B:55:0x019c, B:59:0x01b0, B:62:0x01be, B:64:0x01c5, B:66:0x01cd, B:68:0x01e9, B:74:0x0202, B:76:0x020d, B:78:0x022b, B:80:0x0237, B:82:0x024b, B:84:0x0277, B:86:0x027d, B:88:0x028d, B:93:0x02a0, B:95:0x02a6, B:97:0x02b6, B:102:0x02ce, B:104:0x02d4, B:106:0x02e4, B:114:0x0306, B:116:0x0354, B:117:0x035a, B:119:0x0360, B:123:0x0375, B:126:0x0386, B:128:0x038d, B:130:0x039e, B:132:0x03bf, B:133:0x03cb, B:135:0x03d9, B:137:0x03f3, B:138:0x0414, B:139:0x0417, B:144:0x0432, B:146:0x043e, B:147:0x0451, B:149:0x0463, B:152:0x0479, B:154:0x0484, B:156:0x04f4, B:157:0x050e, B:159:0x0529, B:161:0x0536), top: B:168:0x000d, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03d9 A[Catch: all -> 0x0545, TRY_LEAVE, TryCatch #0 {all -> 0x0545, blocks: (B:3:0x000d, B:5:0x001c, B:8:0x0036, B:10:0x003d, B:13:0x0057, B:15:0x0060, B:18:0x006e, B:25:0x0084, B:28:0x009e, B:30:0x00a8, B:33:0x00c6, B:37:0x00f0, B:39:0x00fc, B:40:0x0102, B:43:0x0118, B:45:0x0133, B:47:0x0143, B:49:0x014e, B:51:0x015a, B:53:0x0196, B:55:0x019c, B:59:0x01b0, B:62:0x01be, B:64:0x01c5, B:66:0x01cd, B:68:0x01e9, B:74:0x0202, B:76:0x020d, B:78:0x022b, B:80:0x0237, B:82:0x024b, B:84:0x0277, B:86:0x027d, B:88:0x028d, B:93:0x02a0, B:95:0x02a6, B:97:0x02b6, B:102:0x02ce, B:104:0x02d4, B:106:0x02e4, B:114:0x0306, B:116:0x0354, B:117:0x035a, B:119:0x0360, B:123:0x0375, B:126:0x0386, B:128:0x038d, B:130:0x039e, B:132:0x03bf, B:133:0x03cb, B:135:0x03d9, B:137:0x03f3, B:138:0x0414, B:139:0x0417, B:144:0x0432, B:146:0x043e, B:147:0x0451, B:149:0x0463, B:152:0x0479, B:154:0x0484, B:156:0x04f4, B:157:0x050e, B:159:0x0529, B:161:0x0536), top: B:168:0x000d, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0429  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x043e A[Catch: MalformedURLException -> 0x04f3, all -> 0x0545, TRY_LEAVE, TryCatch #1 {MalformedURLException -> 0x04f3, blocks: (B:138:0x0414, B:139:0x0417, B:144:0x0432, B:146:0x043e, B:147:0x0451, B:149:0x0463, B:152:0x0479, B:154:0x0484), top: B:169:0x0414, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0451 A[Catch: MalformedURLException -> 0x04f3, all -> 0x0545, TRY_ENTER, TryCatch #1 {MalformedURLException -> 0x04f3, blocks: (B:138:0x0414, B:139:0x0417, B:144:0x0432, B:146:0x043e, B:147:0x0451, B:149:0x0463, B:152:0x0479, B:154:0x0484), top: B:169:0x0414, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0479 A[Catch: MalformedURLException -> 0x04f3, all -> 0x0545, TRY_ENTER, TryCatch #1 {MalformedURLException -> 0x04f3, blocks: (B:138:0x0414, B:139:0x0417, B:144:0x0432, B:146:0x043e, B:147:0x0451, B:149:0x0463, B:152:0x0479, B:154:0x0484), top: B:169:0x0414, outer: #0 }] */
    @androidx.annotation.WorkerThread
    /* renamed from: i0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m11068i0() {
        /*
            Method dump skipped, instructions count: 1361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzki.m11068i0():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    @WorkerThread
    /* renamed from: j0 */
    public final void m11066j0() {
        m11056o0();
        m11070h0();
        if (!this.f9667l) {
            this.f9667l = true;
            if (m11101K()) {
                int d = m11079d(this.f9676u);
                int F = this.f9665j.m11370R().m11586F();
                m11056o0();
                if (d > F) {
                    this.f9665j.mo11081c().m11560D().m11538c("Panic: can't downgrade version. Previous, current version", Integer.valueOf(d), Integer.valueOf(F));
                } else if (d >= F) {
                } else {
                    if (m11107E(F, this.f9676u)) {
                        this.f9665j.mo11081c().m11552L().m11538c("Storage version upgraded. Previous, current version", Integer.valueOf(d), Integer.valueOf(F));
                    } else {
                        this.f9665j.mo11081c().m11560D().m11538c("Storage version upgrade failed. Previous, current version", Integer.valueOf(d), Integer.valueOf(F));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k0 */
    public final void m11064k0() {
        this.f9671p++;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: l */
    public final void m11063l() {
        this.f9665j.mo11083b().mo11316e();
        m11084a0().m11799C0();
        if (this.f9665j.m11349x().f9186e.m11433a() == 0) {
            this.f9665j.m11349x().f9186e.m11432b(this.f9665j.mo11085a().mo14335a());
        }
        m11103I();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l0 */
    public final zzfv m11062l0() {
        return this.f9665j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Finally extract failed */
    @VisibleForTesting
    @WorkerThread
    /* renamed from: m */
    public final void m11061m(int i, Throwable th, byte[] bArr, String str) {
        zzac a0;
        long longValue;
        m11056o0();
        m11070h0();
        byte[] bArr2 = bArr;
        if (bArr == null) {
            try {
                bArr2 = new byte[0];
            } finally {
                this.f9673r = false;
                m11102J();
            }
        }
        List<Long> list = this.f9677v;
        this.f9677v = null;
        if ((i == 200 || i == 204) && th == null) {
            try {
                this.f9665j.m11349x().f9186e.m11432b(this.f9665j.mo11085a().mo14335a());
                this.f9665j.m11349x().f9187f.m11432b(0L);
                m11103I();
                this.f9665j.mo11081c().m11552L().m11538c("Successful upload. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr2.length));
                m11084a0().m11752s0();
                try {
                    for (Long l : list) {
                        try {
                            a0 = m11084a0();
                            longValue = l.longValue();
                            a0.mo11316e();
                            a0.m11038q();
                        } catch (SQLiteException e) {
                            if (this.f9678w == null || !this.f9678w.contains(l)) {
                                throw e;
                            }
                        }
                        try {
                            if (a0.m11749u().delete("queue", "rowid=?", new String[]{String.valueOf(longValue)}) != 1) {
                                throw new SQLiteException("Deleted fewer rows from queue than expected");
                                break;
                            }
                        } catch (SQLiteException e2) {
                            a0.mo11081c().m11560D().m11539b("Failed to delete a bundle in a queue table", e2);
                            throw e2;
                            break;
                        }
                    }
                    m11084a0().m11751t();
                    m11084a0().m11742x0();
                    this.f9678w = null;
                    if (!m11087Y().m11533w() || !m11104H()) {
                        this.f9679x = -1L;
                        m11103I();
                    } else {
                        m11068i0();
                    }
                    this.f9668m = 0L;
                } catch (Throwable th2) {
                    m11084a0().m11742x0();
                    throw th2;
                }
            } catch (SQLiteException e3) {
                this.f9665j.mo11081c().m11560D().m11539b("Database error while trying to delete uploaded bundles", e3);
                this.f9668m = this.f9665j.mo11085a().mo14334b();
                this.f9665j.mo11081c().m11552L().m11539b("Disable upload, time", Long.valueOf(this.f9668m));
            }
        } else {
            this.f9665j.mo11081c().m11552L().m11538c("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
            this.f9665j.m11349x().f9187f.m11432b(this.f9665j.mo11085a().mo14335a());
            boolean z = true;
            if (i != 503) {
                z = i == 429;
            }
            if (z) {
                this.f9665j.m11349x().f9188g.m11432b(this.f9665j.mo11085a().mo14335a());
            }
            m11084a0().m11781P(list);
            m11103I();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: q */
    public final void m11053q(zzar zzarVar, zzn zznVar) {
        List<zzw> list;
        List<zzw> list2;
        List<zzw> list3;
        Preconditions.m14523k(zznVar);
        Preconditions.m14527g(zznVar.f9725f);
        m11056o0();
        m11070h0();
        String str = zznVar.f9725f;
        long j = zzarVar.f8885i;
        m11076e0();
        if (zzks.m11018Q(zzarVar, zznVar)) {
            if (!zznVar.f9732m) {
                m11090V(zznVar);
                return;
            }
            List<String> list4 = zznVar.f9745z;
            zzar zzarVar2 = zzarVar;
            if (list4 != null) {
                if (list4.contains(zzarVar.f8882f)) {
                    Bundle Y = zzarVar.f8883g.m11701Y();
                    Y.putLong("ga_safelisted", 1L);
                    zzarVar2 = new zzar(zzarVar.f8882f, new zzam(Y), zzarVar.f8884h, zzarVar.f8885i);
                } else {
                    this.f9665j.mo11081c().m11553K().m11537d("Dropping non-safelisted event. appId, event name, origin", str, zzarVar.f8882f, zzarVar.f8884h);
                    return;
                }
            }
            m11084a0().m11752s0();
            try {
                zzac a0 = m11084a0();
                Preconditions.m14527g(str);
                a0.mo11316e();
                a0.m11038q();
                int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                if (i < 0) {
                    a0.mo11081c().m11557G().m11538c("Invalid time querying timed out conditional properties", zzer.m11546v(str), Long.valueOf(j));
                    list = Collections.emptyList();
                } else {
                    list = a0.m11786K("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str, String.valueOf(j)});
                }
                for (zzw zzwVar : list) {
                    if (zzwVar != null) {
                        this.f9665j.mo11081c().m11552L().m11537d("User property timed out", zzwVar.f9776f, this.f9665j.m11380H().m11565y(zzwVar.f9778h.f9700g), zzwVar.f9778h.m11035B());
                        if (zzwVar.f9782l != null) {
                            m11088X(new zzar(zzwVar.f9782l, j), zznVar);
                        }
                        m11084a0().m11754q0(str, zzwVar.f9778h.f9700g);
                    }
                }
                zzac a02 = m11084a0();
                Preconditions.m14527g(str);
                a02.mo11316e();
                a02.m11038q();
                if (i < 0) {
                    a02.mo11081c().m11557G().m11538c("Invalid time querying expired conditional properties", zzer.m11546v(str), Long.valueOf(j));
                    list2 = Collections.emptyList();
                } else {
                    list2 = a02.m11786K("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str, String.valueOf(j)});
                }
                ArrayList arrayList = new ArrayList(list2.size());
                for (zzw zzwVar2 : list2) {
                    if (zzwVar2 != null) {
                        this.f9665j.mo11081c().m11552L().m11537d("User property expired", zzwVar2.f9776f, this.f9665j.m11380H().m11565y(zzwVar2.f9778h.f9700g), zzwVar2.f9778h.m11035B());
                        m11084a0().m11760k0(str, zzwVar2.f9778h.f9700g);
                        if (zzwVar2.f9786p != null) {
                            arrayList.add(zzwVar2.f9786p);
                        }
                        m11084a0().m11754q0(str, zzwVar2.f9778h.f9700g);
                    }
                }
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    m11088X(new zzar((zzar) obj, j), zznVar);
                }
                zzac a03 = m11084a0();
                String str2 = zzarVar2.f8882f;
                Preconditions.m14527g(str);
                Preconditions.m14527g(str2);
                a03.mo11316e();
                a03.m11038q();
                if (i < 0) {
                    a03.mo11081c().m11557G().m11537d("Invalid time querying triggered conditional properties", zzer.m11546v(str), a03.m11314i().m11569u(str2), Long.valueOf(j));
                    list3 = Collections.emptyList();
                } else {
                    list3 = a03.m11786K("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str, str2, String.valueOf(j)});
                }
                ArrayList arrayList2 = new ArrayList(list3.size());
                for (zzw zzwVar3 : list3) {
                    if (zzwVar3 != null) {
                        zzkr zzkrVar = zzwVar3.f9778h;
                        zzkt zzktVar = new zzkt(zzwVar3.f9776f, zzwVar3.f9777g, zzkrVar.f9700g, j, zzkrVar.m11035B());
                        if (m11084a0().m11778S(zzktVar)) {
                            this.f9665j.mo11081c().m11552L().m11537d("User property triggered", zzwVar3.f9776f, this.f9665j.m11380H().m11565y(zzktVar.f9708c), zzktVar.f9710e);
                        } else {
                            this.f9665j.mo11081c().m11560D().m11537d("Too many active user properties, ignoring", zzer.m11546v(zzwVar3.f9776f), this.f9665j.m11380H().m11565y(zzktVar.f9708c), zzktVar.f9710e);
                        }
                        if (zzwVar3.f9784n != null) {
                            arrayList2.add(zzwVar3.f9784n);
                        }
                        zzwVar3.f9778h = new zzkr(zzktVar);
                        zzwVar3.f9780j = true;
                        m11084a0().m11777T(zzwVar3);
                    }
                }
                m11088X(zzarVar2, zznVar);
                int size2 = arrayList2.size();
                int i3 = 0;
                while (i3 < size2) {
                    Object obj2 = arrayList2.get(i3);
                    i3++;
                    m11088X(new zzar((zzar) obj2, j), zznVar);
                }
                m11084a0().m11751t();
            } finally {
                m11084a0().m11742x0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: r */
    public final void m11051r(zzar zzarVar, String str) {
        zzf i0 = m11084a0().m11762i0(str);
        if (i0 == null || TextUtils.isEmpty(i0.m11511T())) {
            this.f9665j.mo11081c().m11553K().m11539b("No app data available; dropping event", str);
            return;
        }
        Boolean N = m11098N(i0);
        if (N == null) {
            if (!"_ui".equals(zzarVar.f8882f)) {
                this.f9665j.mo11081c().m11557G().m11539b("Could not find package. appId", zzer.m11546v(str));
            }
        } else if (!N.booleanValue()) {
            this.f9665j.mo11081c().m11560D().m11539b("App version does not match; dropping event. appId", zzer.m11546v(str));
            return;
        }
        m11096P(zzarVar, new zzn(str, i0.m11530A(), i0.m11511T(), i0.m11509V(), i0.m11507X(), i0.m11505Z(), i0.m11501b0(), (String) null, i0.m11495e0(), false, i0.m11518M(), i0.m11484k(), 0L, 0, i0.m11482l(), i0.m11480m(), false, i0.m11527D(), i0.m11478n(), i0.m11497d0(), i0.m11477o(), (!zznt.m11872a() || !this.f9665j.m11366e().m10901B(i0.m11472t(), zzat.f8947j0)) ? null : i0.m11524G(), (!zzmj.m11898a() || !this.f9665j.m11366e().m10880r(zzat.f8906J0)) ? "" : m11077e(str).m11733e()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public final void m11048u(zzkj zzkjVar) {
        this.f9670o++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: w */
    public final void m11046w(zzkr zzkrVar, zzn zznVar) {
        m11056o0();
        m11070h0();
        if (m11082b0(zznVar)) {
            if (!zznVar.f9732m) {
                m11090V(zznVar);
                return;
            }
            int o0 = this.f9665j.m11381G().m10950o0(zzkrVar.f9700g);
            if (o0 != 0) {
                this.f9665j.m11381G();
                String G = zzkw.m10991G(zzkrVar.f9700g, 24, true);
                String str = zzkrVar.f9700g;
                this.f9665j.m11381G().m10970V(this.f9681z, zznVar.f9725f, o0, "_ev", G, str != null ? str.length() : 0);
                return;
            }
            int p0 = this.f9665j.m11381G().m10949p0(zzkrVar.f9700g, zzkrVar.m11035B());
            if (p0 != 0) {
                this.f9665j.m11381G();
                String G2 = zzkw.m10991G(zzkrVar.f9700g, 24, true);
                Object B = zzkrVar.m11035B();
                this.f9665j.m11381G().m10970V(this.f9681z, zznVar.f9725f, p0, "_ev", G2, (B == null || (!(B instanceof String) && !(B instanceof CharSequence))) ? 0 : String.valueOf(B).length());
                return;
            }
            Object w0 = this.f9665j.m11381G().m10936w0(zzkrVar.f9700g, zzkrVar.m11035B());
            if (w0 != null) {
                if ("_sid".equals(zzkrVar.f9700g)) {
                    long j = zzkrVar.f9701h;
                    String str2 = zzkrVar.f9704k;
                    long j2 = 0;
                    zzkt n0 = m11084a0().m11757n0(zznVar.f9725f, "_sno");
                    if (n0 != null) {
                        Object obj = n0.f9710e;
                        if (obj instanceof Long) {
                            j2 = ((Long) obj).longValue();
                            m11046w(new zzkr("_sno", j, Long.valueOf(j2 + 1), str2), zznVar);
                        }
                    }
                    if (n0 != null) {
                        this.f9665j.mo11081c().m11557G().m11539b("Retrieved last session number from database does not contain a valid (long) value", n0.f9710e);
                    }
                    zzan C = m11084a0().m11800C(zznVar.f9725f, "_s");
                    if (C != null) {
                        j2 = C.f8871c;
                        this.f9665j.mo11081c().m11552L().m11539b("Backfill the session number. Last used session number", Long.valueOf(j2));
                    }
                    m11046w(new zzkr("_sno", j, Long.valueOf(j2 + 1), str2), zznVar);
                }
                zzkt zzktVar = new zzkt(zznVar.f9725f, zzkrVar.f9704k, zzkrVar.f9700g, zzkrVar.f9701h, w0);
                this.f9665j.mo11081c().m11552L().m11538c("Setting user property", this.f9665j.m11380H().m11565y(zzktVar.f9708c), w0);
                m11084a0().m11752s0();
                try {
                    m11090V(zznVar);
                    boolean S = m11084a0().m11778S(zzktVar);
                    m11084a0().m11751t();
                    if (!S) {
                        this.f9665j.mo11081c().m11560D().m11538c("Too many unique user properties are set. Ignoring user property", this.f9665j.m11380H().m11565y(zzktVar.f9708c), zzktVar.f9710e);
                        this.f9665j.m11381G().m10970V(this.f9681z, zznVar.f9725f, 9, null, null, 0);
                    }
                } finally {
                    m11084a0().m11742x0();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    @WorkerThread
    /* renamed from: x */
    public final void m11045x(zzn zznVar) {
        if (this.f9677v != null) {
            ArrayList arrayList = new ArrayList();
            this.f9678w = arrayList;
            arrayList.addAll(this.f9677v);
        }
        zzac a0 = m11084a0();
        String str = zznVar.f9725f;
        Preconditions.m14527g(str);
        a0.mo11316e();
        a0.m11038q();
        try {
            SQLiteDatabase u = a0.m11749u();
            String[] strArr = new String[1];
            strArr[0] = str;
            int delete = u.delete("apps", "app_id=?", strArr) + 0 + u.delete("events", "app_id=?", strArr) + u.delete("user_attributes", "app_id=?", strArr) + u.delete("conditional_properties", "app_id=?", strArr) + u.delete("raw_events", "app_id=?", strArr) + u.delete("raw_events_metadata", "app_id=?", strArr) + u.delete("queue", "app_id=?", strArr) + u.delete("audience_filter_values", "app_id=?", strArr) + u.delete("main_event_params", "app_id=?", strArr) + u.delete("default_event_params", "app_id=?", strArr);
            if (delete > 0) {
                a0.mo11081c().m11552L().m11538c("Reset analytics data. app, records", str, Integer.valueOf(delete));
            }
        } catch (SQLiteException e) {
            a0.mo11081c().m11560D().m11538c("Error resetting analytics data. appId, error", zzer.m11546v(str), e);
        }
        if (zznVar.f9732m) {
            m11093S(zznVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: y */
    public final void m11044y(zzw zzwVar) {
        zzn L = m11100L(zzwVar.f9776f);
        if (L != null) {
            m11043z(zzwVar, L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: z */
    public final void m11043z(zzw zzwVar, zzn zznVar) {
        Preconditions.m14523k(zzwVar);
        Preconditions.m14527g(zzwVar.f9776f);
        Preconditions.m14523k(zzwVar.f9777g);
        Preconditions.m14523k(zzwVar.f9778h);
        Preconditions.m14527g(zzwVar.f9778h.f9700g);
        m11056o0();
        m11070h0();
        if (m11082b0(zznVar)) {
            if (!zznVar.f9732m) {
                m11090V(zznVar);
                return;
            }
            zzw zzwVar2 = new zzw(zzwVar);
            boolean z = false;
            zzwVar2.f9780j = false;
            m11084a0().m11752s0();
            try {
                zzw o0 = m11084a0().m11756o0(zzwVar2.f9776f, zzwVar2.f9778h.f9700g);
                if (o0 != null && !o0.f9777g.equals(zzwVar2.f9777g)) {
                    this.f9665j.mo11081c().m11557G().m11537d("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.f9665j.m11380H().m11565y(zzwVar2.f9778h.f9700g), zzwVar2.f9777g, o0.f9777g);
                }
                if (o0 != null && o0.f9780j) {
                    zzwVar2.f9777g = o0.f9777g;
                    zzwVar2.f9779i = o0.f9779i;
                    zzwVar2.f9783m = o0.f9783m;
                    zzwVar2.f9781k = o0.f9781k;
                    zzwVar2.f9784n = o0.f9784n;
                    zzwVar2.f9780j = o0.f9780j;
                    zzwVar2.f9778h = new zzkr(zzwVar2.f9778h.f9700g, o0.f9778h.f9701h, zzwVar2.f9778h.m11035B(), o0.f9778h.f9704k);
                } else if (TextUtils.isEmpty(zzwVar2.f9781k)) {
                    zzwVar2.f9778h = new zzkr(zzwVar2.f9778h.f9700g, zzwVar2.f9779i, zzwVar2.f9778h.m11035B(), zzwVar2.f9778h.f9704k);
                    zzwVar2.f9780j = true;
                    z = true;
                }
                if (zzwVar2.f9780j) {
                    zzkr zzkrVar = zzwVar2.f9778h;
                    zzkt zzktVar = new zzkt(zzwVar2.f9776f, zzwVar2.f9777g, zzkrVar.f9700g, zzkrVar.f9701h, zzkrVar.m11035B());
                    if (m11084a0().m11778S(zzktVar)) {
                        this.f9665j.mo11081c().m11553K().m11537d("User property updated immediately", zzwVar2.f9776f, this.f9665j.m11380H().m11565y(zzktVar.f9708c), zzktVar.f9710e);
                    } else {
                        this.f9665j.mo11081c().m11560D().m11537d("(2)Too many active user properties, ignoring", zzer.m11546v(zzwVar2.f9776f), this.f9665j.m11380H().m11565y(zzktVar.f9708c), zzktVar.f9710e);
                    }
                    if (z && zzwVar2.f9784n != null) {
                        m11088X(new zzar(zzwVar2.f9784n, zzwVar2.f9779i), zznVar);
                    }
                }
                if (m11084a0().m11777T(zzwVar2)) {
                    this.f9665j.mo11081c().m11553K().m11537d("Conditional property added", zzwVar2.f9776f, this.f9665j.m11380H().m11565y(zzwVar2.f9778h.f9700g), zzwVar2.f9778h.m11035B());
                } else {
                    this.f9665j.mo11081c().m11560D().m11537d("Too many conditional properties, ignoring", zzer.m11546v(zzwVar2.f9776f), this.f9665j.m11380H().m11565y(zzwVar2.f9778h.f9700g), zzwVar2.f9778h.m11035B());
                }
                m11084a0().m11751t();
            } finally {
                m11084a0().m11742x0();
            }
        }
    }
}
