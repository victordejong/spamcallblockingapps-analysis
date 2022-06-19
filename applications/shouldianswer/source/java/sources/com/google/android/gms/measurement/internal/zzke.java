package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.p014c.C0374a;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzbo;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.internal.measurement.zzfd;
import com.google.android.gms.internal.measurement.zzkm;
import com.google.android.gms.internal.measurement.zzkn;
import com.google.android.gms.internal.measurement.zzle;
import com.google.android.gms.internal.measurement.zzv;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzke.class */
public class zzke implements zzgt {
    private static volatile zzke zza;
    private zzfu zzb;
    private zzfa zzc;
    private zzac zzd;
    private zzfd zze;
    private zzka zzf;
    private zzn zzg;
    private final zzki zzh;
    private zzid zzi;
    private final zzga zzj;
    private boolean zzk;
    private boolean zzl;
    private boolean zzm;
    private long zzn;
    private List<Runnable> zzo;
    private int zzp;
    private int zzq;
    private boolean zzr;
    private boolean zzs;
    private boolean zzt;
    private FileLock zzu;
    private FileChannel zzv;
    private List<Long> zzw;
    private List<Long> zzx;
    private long zzy;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzke$zza.class */
    public final class zza implements zzae {
        zzbr.zzg zza;
        List<Long> zzb;
        List<zzbr.zzc> zzc;
        private long zzd;

        private zza() {
            zzke.this = r4;
        }

        /* synthetic */ zza(zzke zzkeVar, zzkd zzkdVar) {
            this();
        }

        private static long zza(zzbr.zzc zzcVar) {
            return ((zzcVar.zze() / 1000) / 60) / 60;
        }

        @Override // com.google.android.gms.measurement.internal.zzae
        public final void zza(zzbr.zzg zzgVar) {
            Preconditions.checkNotNull(zzgVar);
            this.zza = zzgVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzae
        public final boolean zza(long j, zzbr.zzc zzcVar) {
            Preconditions.checkNotNull(zzcVar);
            if (this.zzc == null) {
                this.zzc = new ArrayList();
            }
            if (this.zzb == null) {
                this.zzb = new ArrayList();
            }
            if (this.zzc.size() <= 0 || zza(this.zzc.get(0)) == zza(zzcVar)) {
                long zzbn = this.zzd + zzcVar.zzbn();
                if (zzbn >= Math.max(0, zzap.zzi.zza(null).intValue())) {
                    return false;
                }
                this.zzd = zzbn;
                this.zzc.add(zzcVar);
                this.zzb.add(Long.valueOf(j));
                return this.zzc.size() < Math.max(1, zzap.zzj.zza(null).intValue());
            }
            return false;
        }
    }

    private zzke(zzkj zzkjVar) {
        this(zzkjVar, null);
    }

    private zzke(zzkj zzkjVar, zzga zzgaVar) {
        this.zzk = false;
        Preconditions.checkNotNull(zzkjVar);
        this.zzj = zzga.zza(zzkjVar.zza, (zzv) null);
        this.zzy = -1L;
        zzki zzkiVar = new zzki(this);
        zzkiVar.zzal();
        this.zzh = zzkiVar;
        zzfa zzfaVar = new zzfa(this);
        zzfaVar.zzal();
        this.zzc = zzfaVar;
        zzfu zzfuVar = new zzfu(this);
        zzfuVar.zzal();
        this.zzb = zzfuVar;
        this.zzj.zzq().zza(new zzkd(this, zzkjVar));
    }

    private final int zza(FileChannel fileChannel) {
        int read;
        zzw();
        int i = 0;
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.zzj.zzr().zzf().zza("Bad channel to read from");
            return 0;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        try {
            fileChannel.position(0L);
            read = fileChannel.read(allocate);
        } catch (IOException e) {
            this.zzj.zzr().zzf().zza("Failed to read from channel", e);
        }
        if (read == 4) {
            allocate.flip();
            i = allocate.getInt();
            return i;
        } else if (read == -1) {
            return 0;
        } else {
            this.zzj.zzr().zzi().zza("Unexpected data length. Bytes read", Integer.valueOf(read));
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0281  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.measurement.internal.zzg zza(com.google.android.gms.measurement.internal.zzm r6, com.google.android.gms.measurement.internal.zzg r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.zza(com.google.android.gms.measurement.internal.zzm, com.google.android.gms.measurement.internal.zzg, java.lang.String):com.google.android.gms.measurement.internal.zzg");
    }

    public static zzke zza(Context context) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zza == null) {
            synchronized (zzke.class) {
                try {
                    if (zza == null) {
                        zza = new zzke(new zzkj(context));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zza;
    }

    private final zzm zza(Context context, String str, String str2, boolean z, boolean z2, boolean z3, long j, String str3, String str4) {
        String str5;
        String str6;
        int i;
        String str7;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            this.zzj.zzr().zzf().zza("PackageManager is null, can not log app install information");
            return null;
        }
        try {
            str5 = packageManager.getInstallerPackageName(str);
        } catch (IllegalArgumentException e) {
            this.zzj.zzr().zzf().zza("Error retrieving installer package name. appId", zzew.zza(str));
            str5 = "Unknown";
        }
        if (str5 == null) {
            str6 = "manual_install";
        } else {
            str6 = str5;
            if ("com.android.vending".equals(str5)) {
                str6 = "";
            }
        }
        String str8 = "Unknown";
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(str, 0);
            if (packageInfo != null) {
                CharSequence applicationLabel = Wrappers.packageManager(context).getApplicationLabel(str);
                String str9 = "Unknown";
                if (!TextUtils.isEmpty(applicationLabel)) {
                    str9 = applicationLabel.toString();
                }
                String str10 = str9;
                String str11 = packageInfo.versionName;
                str8 = str9;
                i = packageInfo.versionCode;
                str7 = str11;
            } else {
                str7 = "Unknown";
                i = Integer.MIN_VALUE;
            }
            long j2 = i;
            long zze = this.zzj.zzb().zze();
            long zza2 = this.zzj.zzi().zza(context, str);
            if (!zzle.zzb() || !this.zzj.zzb().zze(str, zzap.zzcc)) {
                str4 = null;
            }
            return new zzm(str, str2, str7, j2, str6, zze, zza2, (String) null, z, false, "", 0L, j, 0, z2, z3, false, str3, (Boolean) null, 0L, (List<String>) null, str4);
        } catch (PackageManager.NameNotFoundException e2) {
            this.zzj.zzr().zzf().zza("Error retrieving newly installed package info. appId, appName", zzew.zza(str), str8);
            return null;
        }
    }

    private final zzm zza(String str) {
        zzg zzb = zze().zzb(str);
        if (zzb == null || TextUtils.isEmpty(zzb.zzl())) {
            this.zzj.zzr().zzw().zza("No app data available; dropping", str);
            return null;
        }
        Boolean zzb2 = zzb(zzb);
        if (zzb2 == null || zzb2.booleanValue()) {
            return new zzm(str, zzb.zze(), zzb.zzl(), zzb.zzm(), zzb.zzn(), zzb.zzo(), zzb.zzp(), (String) null, zzb.zzr(), false, zzb.zzi(), zzb.zzae(), 0L, 0, zzb.zzaf(), zzb.zzag(), false, zzb.zzf(), zzb.zzah(), zzb.zzq(), zzb.zzai(), (!zzle.zzb() || !this.zzj.zzb().zze(str, zzap.zzcc)) ? null : zzb.zzg());
        }
        this.zzj.zzr().zzf().zza("App version does not match; dropping. appId", zzew.zza(str));
        return null;
    }

    private static void zza(zzbr.zzc.zza zzaVar, int i, String str) {
        List<zzbr.zze> zza2 = zzaVar.zza();
        for (int i2 = 0; i2 < zza2.size(); i2++) {
            if ("_err".equals(zza2.get(i2).zza())) {
                return;
            }
        }
        zzaVar.zza((zzbr.zze) ((zzfd) zzbr.zze.zzh().zza("_err").zza(Long.valueOf(i).longValue()).zzu())).zza((zzbr.zze) ((zzfd) zzbr.zze.zzh().zza("_ev").zzb(str).zzu()));
    }

    private static void zza(zzbr.zzc.zza zzaVar, String str) {
        List<zzbr.zze> zza2 = zzaVar.zza();
        for (int i = 0; i < zza2.size(); i++) {
            if (str.equals(zza2.get(i).zza())) {
                zzaVar.zzb(i);
                return;
            }
        }
    }

    private static void zza(zzbr.zzg.zza zzaVar) {
        zzaVar.zzb(Long.MAX_VALUE).zzc(Long.MIN_VALUE);
        for (int i = 0; i < zzaVar.zzb(); i++) {
            zzbr.zzc zzb = zzaVar.zzb(i);
            if (zzb.zze() < zzaVar.zzf()) {
                zzaVar.zzb(zzb.zze());
            }
            if (zzb.zze() > zzaVar.zzg()) {
                zzaVar.zzc(zzb.zze());
            }
        }
    }

    private final void zza(zzbr.zzg.zza zzaVar, long j, boolean z) {
        String str = z ? "_se" : "_lte";
        zzkn zzc = zze().zzc(zzaVar.zzj(), str);
        zzkn zzknVar = (zzc == null || zzc.zze == null) ? new zzkn(zzaVar.zzj(), "auto", str, this.zzj.zzm().currentTimeMillis(), Long.valueOf(j)) : new zzkn(zzaVar.zzj(), "auto", str, this.zzj.zzm().currentTimeMillis(), Long.valueOf(((Long) zzc.zze).longValue() + j));
        zzbr.zzk zzkVar = (zzbr.zzk) ((zzfd) zzbr.zzk.zzj().zza(str).zza(this.zzj.zzm().currentTimeMillis()).zzb(((Long) zzknVar.zze).longValue()).zzu());
        boolean z2 = false;
        int zza2 = zzki.zza(zzaVar, str);
        if (zza2 >= 0) {
            zzaVar.zza(zza2, zzkVar);
            z2 = true;
        }
        if (!z2) {
            zzaVar.zza(zzkVar);
        }
        if (j > 0) {
            zze().zza(zzknVar);
            this.zzj.zzr().zzw().zza("Updated engagement user property. scope, value", z ? "session-scoped" : "lifetime", zzknVar.zze);
        }
    }

    private final void zza(zzg zzgVar) {
        C0374a c0374a;
        zzw();
        if (!zzle.zzb() || !this.zzj.zzb().zze(zzgVar.zzc(), zzap.zzcc)) {
            if (TextUtils.isEmpty(zzgVar.zze()) && TextUtils.isEmpty(zzgVar.zzf())) {
                zza(zzgVar.zzc(), 204, null, null, null);
                return;
            }
        } else if (TextUtils.isEmpty(zzgVar.zze()) && TextUtils.isEmpty(zzgVar.zzg()) && TextUtils.isEmpty(zzgVar.zzf())) {
            zza(zzgVar.zzc(), 204, null, null, null);
            return;
        }
        String zza2 = this.zzj.zzb().zza(zzgVar);
        try {
            URL url = new URL(zza2);
            this.zzj.zzr().zzx().zza("Fetching remote configuration", zzgVar.zzc());
            zzbo.zzb zza3 = zzc().zza(zzgVar.zzc());
            String zzb = zzc().zzb(zzgVar.zzc());
            if (zza3 == null || TextUtils.isEmpty(zzb)) {
                c0374a = null;
            } else {
                c0374a = new C0374a();
                c0374a.put("If-Modified-Since", zzb);
            }
            this.zzr = true;
            zzfa zzd = zzd();
            String zzc = zzgVar.zzc();
            zzkf zzkfVar = new zzkf(this);
            zzd.zzd();
            zzd.zzak();
            Preconditions.checkNotNull(url);
            Preconditions.checkNotNull(zzkfVar);
            zzd.zzq().zzb(new zzfe(zzd, zzc, url, null, c0374a, zzkfVar));
        } catch (MalformedURLException e) {
            this.zzj.zzr().zzf().zza("Failed to parse config URL. Not fetching. appId", zzew.zza(zzgVar.zzc()), zza2);
        }
    }

    public final void zza(zzkj zzkjVar) {
        this.zzj.zzq().zzd();
        zzac zzacVar = new zzac(this);
        zzacVar.zzal();
        this.zzd = zzacVar;
        this.zzj.zzb().zza(this.zzb);
        zzn zznVar = new zzn(this);
        zznVar.zzal();
        this.zzg = zznVar;
        zzid zzidVar = new zzid(this);
        zzidVar.zzal();
        this.zzi = zzidVar;
        zzka zzkaVar = new zzka(this);
        zzkaVar.zzal();
        this.zzf = zzkaVar;
        this.zze = new zzfd(this);
        if (this.zzp != this.zzq) {
            this.zzj.zzr().zzf().zza("Not all upload components initialized", Integer.valueOf(this.zzp), Integer.valueOf(this.zzq));
        }
        this.zzk = true;
    }

    private final boolean zza(int i, FileChannel fileChannel) {
        zzw();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.zzj.zzr().zzf().zza("Bad channel to read from");
            return false;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt(i);
        allocate.flip();
        try {
            fileChannel.truncate(0L);
            if (this.zzj.zzb().zza(zzap.zzcp) && Build.VERSION.SDK_INT <= 19) {
                fileChannel.position(0L);
            }
            fileChannel.write(allocate);
            fileChannel.force(true);
            if (fileChannel.size() == 4) {
                return true;
            }
            this.zzj.zzr().zzf().zza("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
            return true;
        } catch (IOException e) {
            this.zzj.zzr().zzf().zza("Failed to write to channel", e);
            return false;
        }
    }

    private final boolean zza(zzbr.zzc.zza zzaVar, zzbr.zzc.zza zzaVar2) {
        Preconditions.checkArgument("_e".equals(zzaVar.zzd()));
        zzh();
        zzbr.zze zza2 = zzki.zza((zzbr.zzc) ((zzfd) zzaVar.zzu()), "_sc");
        String str = null;
        String zzc = zza2 == null ? null : zza2.zzc();
        zzh();
        zzbr.zze zza3 = zzki.zza((zzbr.zzc) ((zzfd) zzaVar2.zzu()), "_pc");
        if (zza3 != null) {
            str = zza3.zzc();
        }
        if (str == null || !str.equals(zzc)) {
            return false;
        }
        zzb(zzaVar, zzaVar2);
        return true;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:141:0x04b2 A[Catch: all -> 0x1839, TRY_ENTER, TryCatch #16 {all -> 0x1839, blocks: (B:3:0x0007, B:5:0x000f, B:34:0x010d, B:58:0x01e8, B:70:0x0268, B:96:0x0362, B:105:0x03c4, B:113:0x03f7, B:122:0x043b, B:141:0x04b2, B:143:0x04bb, B:145:0x04c1, B:152:0x04df, B:154:0x0522, B:157:0x0535, B:159:0x056a, B:161:0x05a6, B:168:0x05c9, B:170:0x05d7, B:173:0x0606, B:175:0x0621, B:182:0x0652, B:186:0x0662, B:190:0x0672, B:207:0x06c7, B:210:0x06d9, B:212:0x06ec, B:215:0x071b, B:217:0x072e, B:224:0x0776, B:227:0x07b0, B:229:0x07e3, B:231:0x0814, B:235:0x0832, B:241:0x085a, B:243:0x088f, B:245:0x08b5, B:247:0x08bf, B:249:0x08d6, B:252:0x08f1, B:261:0x091f, B:265:0x093a, B:267:0x0970, B:271:0x09a0, B:273:0x09b6, B:275:0x09c1, B:280:0x09e3, B:287:0x0a12, B:289:0x0a23, B:291:0x0a34, B:295:0x0a6d, B:300:0x0a8d, B:302:0x0a96, B:305:0x0aa9, B:309:0x0abe, B:310:0x0aeb, B:312:0x0b03, B:314:0x0b11, B:318:0x0b2f, B:320:0x0b44, B:322:0x0b5a, B:328:0x0ba3, B:330:0x0bb1, B:334:0x0bcf, B:336:0x0be4, B:338:0x0bfa, B:341:0x0c2b, B:345:0x0c52, B:347:0x0c60, B:349:0x0c74, B:355:0x0cab, B:357:0x0cc0, B:362:0x0d05, B:364:0x0d13, B:366:0x0d1b, B:367:0x0d39, B:369:0x0d59, B:370:0x0d77, B:371:0x0d82, B:373:0x0d98, B:375:0x0da8, B:383:0x0ddb, B:385:0x0df0, B:387:0x0dff, B:389:0x0e19, B:392:0x0e35, B:394:0x0e3c, B:399:0x0e63, B:401:0x0e6c, B:405:0x0e8f, B:407:0x0eb1, B:409:0x0ebd, B:411:0x0ec5, B:418:0x0ee8, B:419:0x0ef7, B:421:0x0efd, B:423:0x0f12, B:430:0x0f2b, B:432:0x0f3a, B:433:0x0f60, B:434:0x0f6c, B:436:0x0f81, B:438:0x0f91, B:440:0x0fa5, B:442:0x0fc6, B:444:0x0fd9, B:446:0x0fe1, B:448:0x0feb, B:450:0x101c, B:452:0x1026, B:454:0x1039, B:460:0x1056, B:462:0x105e, B:464:0x1072, B:466:0x1079, B:468:0x10c9, B:470:0x10f4, B:472:0x10fe, B:474:0x111e, B:477:0x114f, B:479:0x116d, B:481:0x1173, B:483:0x117f, B:485:0x1191, B:487:0x1197, B:489:0x11a1, B:491:0x11b4, B:493:0x11c7, B:495:0x11d2, B:499:0x1218, B:501:0x1223, B:503:0x122b, B:505:0x1244, B:507:0x124c, B:510:0x125e, B:512:0x1264, B:515:0x1273, B:517:0x1279, B:524:0x129a, B:528:0x12bb, B:529:0x12f5, B:531:0x1309, B:534:0x1327, B:536:0x135c, B:537:0x1381, B:539:0x13a5, B:543:0x13ce, B:546:0x13db, B:548:0x13f6, B:550:0x13fd, B:552:0x1404, B:555:0x140c, B:557:0x1423, B:558:0x142e, B:560:0x1438, B:562:0x1441, B:564:0x1463, B:566:0x146b, B:568:0x1479, B:569:0x1493, B:571:0x149a, B:572:0x14a5, B:576:0x14be, B:578:0x14d8, B:580:0x14fa, B:582:0x1502, B:584:0x1513, B:585:0x152d, B:587:0x1535, B:589:0x154c, B:590:0x1554, B:592:0x155e, B:594:0x156d, B:596:0x157a, B:599:0x158d, B:601:0x1597, B:603:0x15bc, B:605:0x15d1, B:607:0x15d7, B:609:0x15ef, B:610:0x160c, B:612:0x1614, B:615:0x1622, B:616:0x162d, B:618:0x1635, B:624:0x164b, B:625:0x1655, B:627:0x165d, B:629:0x168c, B:630:0x1697, B:632:0x169e, B:634:0x16a8, B:636:0x16ae, B:638:0x16cb, B:641:0x16d6, B:642:0x16e4, B:644:0x16f1, B:645:0x16fd, B:647:0x1718, B:649:0x172d, B:651:0x1756, B:655:0x1767, B:657:0x1770, B:658:0x1789, B:660:0x17af, B:662:0x17cd, B:664:0x17d9, B:666:0x17f2, B:668:0x1807, B:671:0x1816, B:678:0x1830, B:680:0x1838, B:75:0x028b, B:76:0x028e), top: B:700:0x0007, inners: #2, #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x04c1 A[Catch: all -> 0x1839, TryCatch #16 {all -> 0x1839, blocks: (B:3:0x0007, B:5:0x000f, B:34:0x010d, B:58:0x01e8, B:70:0x0268, B:96:0x0362, B:105:0x03c4, B:113:0x03f7, B:122:0x043b, B:141:0x04b2, B:143:0x04bb, B:145:0x04c1, B:152:0x04df, B:154:0x0522, B:157:0x0535, B:159:0x056a, B:161:0x05a6, B:168:0x05c9, B:170:0x05d7, B:173:0x0606, B:175:0x0621, B:182:0x0652, B:186:0x0662, B:190:0x0672, B:207:0x06c7, B:210:0x06d9, B:212:0x06ec, B:215:0x071b, B:217:0x072e, B:224:0x0776, B:227:0x07b0, B:229:0x07e3, B:231:0x0814, B:235:0x0832, B:241:0x085a, B:243:0x088f, B:245:0x08b5, B:247:0x08bf, B:249:0x08d6, B:252:0x08f1, B:261:0x091f, B:265:0x093a, B:267:0x0970, B:271:0x09a0, B:273:0x09b6, B:275:0x09c1, B:280:0x09e3, B:287:0x0a12, B:289:0x0a23, B:291:0x0a34, B:295:0x0a6d, B:300:0x0a8d, B:302:0x0a96, B:305:0x0aa9, B:309:0x0abe, B:310:0x0aeb, B:312:0x0b03, B:314:0x0b11, B:318:0x0b2f, B:320:0x0b44, B:322:0x0b5a, B:328:0x0ba3, B:330:0x0bb1, B:334:0x0bcf, B:336:0x0be4, B:338:0x0bfa, B:341:0x0c2b, B:345:0x0c52, B:347:0x0c60, B:349:0x0c74, B:355:0x0cab, B:357:0x0cc0, B:362:0x0d05, B:364:0x0d13, B:366:0x0d1b, B:367:0x0d39, B:369:0x0d59, B:370:0x0d77, B:371:0x0d82, B:373:0x0d98, B:375:0x0da8, B:383:0x0ddb, B:385:0x0df0, B:387:0x0dff, B:389:0x0e19, B:392:0x0e35, B:394:0x0e3c, B:399:0x0e63, B:401:0x0e6c, B:405:0x0e8f, B:407:0x0eb1, B:409:0x0ebd, B:411:0x0ec5, B:418:0x0ee8, B:419:0x0ef7, B:421:0x0efd, B:423:0x0f12, B:430:0x0f2b, B:432:0x0f3a, B:433:0x0f60, B:434:0x0f6c, B:436:0x0f81, B:438:0x0f91, B:440:0x0fa5, B:442:0x0fc6, B:444:0x0fd9, B:446:0x0fe1, B:448:0x0feb, B:450:0x101c, B:452:0x1026, B:454:0x1039, B:460:0x1056, B:462:0x105e, B:464:0x1072, B:466:0x1079, B:468:0x10c9, B:470:0x10f4, B:472:0x10fe, B:474:0x111e, B:477:0x114f, B:479:0x116d, B:481:0x1173, B:483:0x117f, B:485:0x1191, B:487:0x1197, B:489:0x11a1, B:491:0x11b4, B:493:0x11c7, B:495:0x11d2, B:499:0x1218, B:501:0x1223, B:503:0x122b, B:505:0x1244, B:507:0x124c, B:510:0x125e, B:512:0x1264, B:515:0x1273, B:517:0x1279, B:524:0x129a, B:528:0x12bb, B:529:0x12f5, B:531:0x1309, B:534:0x1327, B:536:0x135c, B:537:0x1381, B:539:0x13a5, B:543:0x13ce, B:546:0x13db, B:548:0x13f6, B:550:0x13fd, B:552:0x1404, B:555:0x140c, B:557:0x1423, B:558:0x142e, B:560:0x1438, B:562:0x1441, B:564:0x1463, B:566:0x146b, B:568:0x1479, B:569:0x1493, B:571:0x149a, B:572:0x14a5, B:576:0x14be, B:578:0x14d8, B:580:0x14fa, B:582:0x1502, B:584:0x1513, B:585:0x152d, B:587:0x1535, B:589:0x154c, B:590:0x1554, B:592:0x155e, B:594:0x156d, B:596:0x157a, B:599:0x158d, B:601:0x1597, B:603:0x15bc, B:605:0x15d1, B:607:0x15d7, B:609:0x15ef, B:610:0x160c, B:612:0x1614, B:615:0x1622, B:616:0x162d, B:618:0x1635, B:624:0x164b, B:625:0x1655, B:627:0x165d, B:629:0x168c, B:630:0x1697, B:632:0x169e, B:634:0x16a8, B:636:0x16ae, B:638:0x16cb, B:641:0x16d6, B:642:0x16e4, B:644:0x16f1, B:645:0x16fd, B:647:0x1718, B:649:0x172d, B:651:0x1756, B:655:0x1767, B:657:0x1770, B:658:0x1789, B:660:0x17af, B:662:0x17cd, B:664:0x17d9, B:666:0x17f2, B:668:0x1807, B:671:0x1816, B:678:0x1830, B:680:0x1838, B:75:0x028b, B:76:0x028e), top: B:700:0x0007, inners: #2, #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x04df A[Catch: all -> 0x1839, TRY_ENTER, TRY_LEAVE, TryCatch #16 {all -> 0x1839, blocks: (B:3:0x0007, B:5:0x000f, B:34:0x010d, B:58:0x01e8, B:70:0x0268, B:96:0x0362, B:105:0x03c4, B:113:0x03f7, B:122:0x043b, B:141:0x04b2, B:143:0x04bb, B:145:0x04c1, B:152:0x04df, B:154:0x0522, B:157:0x0535, B:159:0x056a, B:161:0x05a6, B:168:0x05c9, B:170:0x05d7, B:173:0x0606, B:175:0x0621, B:182:0x0652, B:186:0x0662, B:190:0x0672, B:207:0x06c7, B:210:0x06d9, B:212:0x06ec, B:215:0x071b, B:217:0x072e, B:224:0x0776, B:227:0x07b0, B:229:0x07e3, B:231:0x0814, B:235:0x0832, B:241:0x085a, B:243:0x088f, B:245:0x08b5, B:247:0x08bf, B:249:0x08d6, B:252:0x08f1, B:261:0x091f, B:265:0x093a, B:267:0x0970, B:271:0x09a0, B:273:0x09b6, B:275:0x09c1, B:280:0x09e3, B:287:0x0a12, B:289:0x0a23, B:291:0x0a34, B:295:0x0a6d, B:300:0x0a8d, B:302:0x0a96, B:305:0x0aa9, B:309:0x0abe, B:310:0x0aeb, B:312:0x0b03, B:314:0x0b11, B:318:0x0b2f, B:320:0x0b44, B:322:0x0b5a, B:328:0x0ba3, B:330:0x0bb1, B:334:0x0bcf, B:336:0x0be4, B:338:0x0bfa, B:341:0x0c2b, B:345:0x0c52, B:347:0x0c60, B:349:0x0c74, B:355:0x0cab, B:357:0x0cc0, B:362:0x0d05, B:364:0x0d13, B:366:0x0d1b, B:367:0x0d39, B:369:0x0d59, B:370:0x0d77, B:371:0x0d82, B:373:0x0d98, B:375:0x0da8, B:383:0x0ddb, B:385:0x0df0, B:387:0x0dff, B:389:0x0e19, B:392:0x0e35, B:394:0x0e3c, B:399:0x0e63, B:401:0x0e6c, B:405:0x0e8f, B:407:0x0eb1, B:409:0x0ebd, B:411:0x0ec5, B:418:0x0ee8, B:419:0x0ef7, B:421:0x0efd, B:423:0x0f12, B:430:0x0f2b, B:432:0x0f3a, B:433:0x0f60, B:434:0x0f6c, B:436:0x0f81, B:438:0x0f91, B:440:0x0fa5, B:442:0x0fc6, B:444:0x0fd9, B:446:0x0fe1, B:448:0x0feb, B:450:0x101c, B:452:0x1026, B:454:0x1039, B:460:0x1056, B:462:0x105e, B:464:0x1072, B:466:0x1079, B:468:0x10c9, B:470:0x10f4, B:472:0x10fe, B:474:0x111e, B:477:0x114f, B:479:0x116d, B:481:0x1173, B:483:0x117f, B:485:0x1191, B:487:0x1197, B:489:0x11a1, B:491:0x11b4, B:493:0x11c7, B:495:0x11d2, B:499:0x1218, B:501:0x1223, B:503:0x122b, B:505:0x1244, B:507:0x124c, B:510:0x125e, B:512:0x1264, B:515:0x1273, B:517:0x1279, B:524:0x129a, B:528:0x12bb, B:529:0x12f5, B:531:0x1309, B:534:0x1327, B:536:0x135c, B:537:0x1381, B:539:0x13a5, B:543:0x13ce, B:546:0x13db, B:548:0x13f6, B:550:0x13fd, B:552:0x1404, B:555:0x140c, B:557:0x1423, B:558:0x142e, B:560:0x1438, B:562:0x1441, B:564:0x1463, B:566:0x146b, B:568:0x1479, B:569:0x1493, B:571:0x149a, B:572:0x14a5, B:576:0x14be, B:578:0x14d8, B:580:0x14fa, B:582:0x1502, B:584:0x1513, B:585:0x152d, B:587:0x1535, B:589:0x154c, B:590:0x1554, B:592:0x155e, B:594:0x156d, B:596:0x157a, B:599:0x158d, B:601:0x1597, B:603:0x15bc, B:605:0x15d1, B:607:0x15d7, B:609:0x15ef, B:610:0x160c, B:612:0x1614, B:615:0x1622, B:616:0x162d, B:618:0x1635, B:624:0x164b, B:625:0x1655, B:627:0x165d, B:629:0x168c, B:630:0x1697, B:632:0x169e, B:634:0x16a8, B:636:0x16ae, B:638:0x16cb, B:641:0x16d6, B:642:0x16e4, B:644:0x16f1, B:645:0x16fd, B:647:0x1718, B:649:0x172d, B:651:0x1756, B:655:0x1767, B:657:0x1770, B:658:0x1789, B:660:0x17af, B:662:0x17cd, B:664:0x17d9, B:666:0x17f2, B:668:0x1807, B:671:0x1816, B:678:0x1830, B:680:0x1838, B:75:0x028b, B:76:0x028e), top: B:700:0x0007, inners: #2, #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x068a  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x06a7  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x09a0 A[Catch: all -> 0x1839, TRY_ENTER, TRY_LEAVE, TryCatch #16 {all -> 0x1839, blocks: (B:3:0x0007, B:5:0x000f, B:34:0x010d, B:58:0x01e8, B:70:0x0268, B:96:0x0362, B:105:0x03c4, B:113:0x03f7, B:122:0x043b, B:141:0x04b2, B:143:0x04bb, B:145:0x04c1, B:152:0x04df, B:154:0x0522, B:157:0x0535, B:159:0x056a, B:161:0x05a6, B:168:0x05c9, B:170:0x05d7, B:173:0x0606, B:175:0x0621, B:182:0x0652, B:186:0x0662, B:190:0x0672, B:207:0x06c7, B:210:0x06d9, B:212:0x06ec, B:215:0x071b, B:217:0x072e, B:224:0x0776, B:227:0x07b0, B:229:0x07e3, B:231:0x0814, B:235:0x0832, B:241:0x085a, B:243:0x088f, B:245:0x08b5, B:247:0x08bf, B:249:0x08d6, B:252:0x08f1, B:261:0x091f, B:265:0x093a, B:267:0x0970, B:271:0x09a0, B:273:0x09b6, B:275:0x09c1, B:280:0x09e3, B:287:0x0a12, B:289:0x0a23, B:291:0x0a34, B:295:0x0a6d, B:300:0x0a8d, B:302:0x0a96, B:305:0x0aa9, B:309:0x0abe, B:310:0x0aeb, B:312:0x0b03, B:314:0x0b11, B:318:0x0b2f, B:320:0x0b44, B:322:0x0b5a, B:328:0x0ba3, B:330:0x0bb1, B:334:0x0bcf, B:336:0x0be4, B:338:0x0bfa, B:341:0x0c2b, B:345:0x0c52, B:347:0x0c60, B:349:0x0c74, B:355:0x0cab, B:357:0x0cc0, B:362:0x0d05, B:364:0x0d13, B:366:0x0d1b, B:367:0x0d39, B:369:0x0d59, B:370:0x0d77, B:371:0x0d82, B:373:0x0d98, B:375:0x0da8, B:383:0x0ddb, B:385:0x0df0, B:387:0x0dff, B:389:0x0e19, B:392:0x0e35, B:394:0x0e3c, B:399:0x0e63, B:401:0x0e6c, B:405:0x0e8f, B:407:0x0eb1, B:409:0x0ebd, B:411:0x0ec5, B:418:0x0ee8, B:419:0x0ef7, B:421:0x0efd, B:423:0x0f12, B:430:0x0f2b, B:432:0x0f3a, B:433:0x0f60, B:434:0x0f6c, B:436:0x0f81, B:438:0x0f91, B:440:0x0fa5, B:442:0x0fc6, B:444:0x0fd9, B:446:0x0fe1, B:448:0x0feb, B:450:0x101c, B:452:0x1026, B:454:0x1039, B:460:0x1056, B:462:0x105e, B:464:0x1072, B:466:0x1079, B:468:0x10c9, B:470:0x10f4, B:472:0x10fe, B:474:0x111e, B:477:0x114f, B:479:0x116d, B:481:0x1173, B:483:0x117f, B:485:0x1191, B:487:0x1197, B:489:0x11a1, B:491:0x11b4, B:493:0x11c7, B:495:0x11d2, B:499:0x1218, B:501:0x1223, B:503:0x122b, B:505:0x1244, B:507:0x124c, B:510:0x125e, B:512:0x1264, B:515:0x1273, B:517:0x1279, B:524:0x129a, B:528:0x12bb, B:529:0x12f5, B:531:0x1309, B:534:0x1327, B:536:0x135c, B:537:0x1381, B:539:0x13a5, B:543:0x13ce, B:546:0x13db, B:548:0x13f6, B:550:0x13fd, B:552:0x1404, B:555:0x140c, B:557:0x1423, B:558:0x142e, B:560:0x1438, B:562:0x1441, B:564:0x1463, B:566:0x146b, B:568:0x1479, B:569:0x1493, B:571:0x149a, B:572:0x14a5, B:576:0x14be, B:578:0x14d8, B:580:0x14fa, B:582:0x1502, B:584:0x1513, B:585:0x152d, B:587:0x1535, B:589:0x154c, B:590:0x1554, B:592:0x155e, B:594:0x156d, B:596:0x157a, B:599:0x158d, B:601:0x1597, B:603:0x15bc, B:605:0x15d1, B:607:0x15d7, B:609:0x15ef, B:610:0x160c, B:612:0x1614, B:615:0x1622, B:616:0x162d, B:618:0x1635, B:624:0x164b, B:625:0x1655, B:627:0x165d, B:629:0x168c, B:630:0x1697, B:632:0x169e, B:634:0x16a8, B:636:0x16ae, B:638:0x16cb, B:641:0x16d6, B:642:0x16e4, B:644:0x16f1, B:645:0x16fd, B:647:0x1718, B:649:0x172d, B:651:0x1756, B:655:0x1767, B:657:0x1770, B:658:0x1789, B:660:0x17af, B:662:0x17cd, B:664:0x17d9, B:666:0x17f2, B:668:0x1807, B:671:0x1816, B:678:0x1830, B:680:0x1838, B:75:0x028b, B:76:0x028e), top: B:700:0x0007, inners: #2, #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:312:0x0b03 A[Catch: all -> 0x1839, TryCatch #16 {all -> 0x1839, blocks: (B:3:0x0007, B:5:0x000f, B:34:0x010d, B:58:0x01e8, B:70:0x0268, B:96:0x0362, B:105:0x03c4, B:113:0x03f7, B:122:0x043b, B:141:0x04b2, B:143:0x04bb, B:145:0x04c1, B:152:0x04df, B:154:0x0522, B:157:0x0535, B:159:0x056a, B:161:0x05a6, B:168:0x05c9, B:170:0x05d7, B:173:0x0606, B:175:0x0621, B:182:0x0652, B:186:0x0662, B:190:0x0672, B:207:0x06c7, B:210:0x06d9, B:212:0x06ec, B:215:0x071b, B:217:0x072e, B:224:0x0776, B:227:0x07b0, B:229:0x07e3, B:231:0x0814, B:235:0x0832, B:241:0x085a, B:243:0x088f, B:245:0x08b5, B:247:0x08bf, B:249:0x08d6, B:252:0x08f1, B:261:0x091f, B:265:0x093a, B:267:0x0970, B:271:0x09a0, B:273:0x09b6, B:275:0x09c1, B:280:0x09e3, B:287:0x0a12, B:289:0x0a23, B:291:0x0a34, B:295:0x0a6d, B:300:0x0a8d, B:302:0x0a96, B:305:0x0aa9, B:309:0x0abe, B:310:0x0aeb, B:312:0x0b03, B:314:0x0b11, B:318:0x0b2f, B:320:0x0b44, B:322:0x0b5a, B:328:0x0ba3, B:330:0x0bb1, B:334:0x0bcf, B:336:0x0be4, B:338:0x0bfa, B:341:0x0c2b, B:345:0x0c52, B:347:0x0c60, B:349:0x0c74, B:355:0x0cab, B:357:0x0cc0, B:362:0x0d05, B:364:0x0d13, B:366:0x0d1b, B:367:0x0d39, B:369:0x0d59, B:370:0x0d77, B:371:0x0d82, B:373:0x0d98, B:375:0x0da8, B:383:0x0ddb, B:385:0x0df0, B:387:0x0dff, B:389:0x0e19, B:392:0x0e35, B:394:0x0e3c, B:399:0x0e63, B:401:0x0e6c, B:405:0x0e8f, B:407:0x0eb1, B:409:0x0ebd, B:411:0x0ec5, B:418:0x0ee8, B:419:0x0ef7, B:421:0x0efd, B:423:0x0f12, B:430:0x0f2b, B:432:0x0f3a, B:433:0x0f60, B:434:0x0f6c, B:436:0x0f81, B:438:0x0f91, B:440:0x0fa5, B:442:0x0fc6, B:444:0x0fd9, B:446:0x0fe1, B:448:0x0feb, B:450:0x101c, B:452:0x1026, B:454:0x1039, B:460:0x1056, B:462:0x105e, B:464:0x1072, B:466:0x1079, B:468:0x10c9, B:470:0x10f4, B:472:0x10fe, B:474:0x111e, B:477:0x114f, B:479:0x116d, B:481:0x1173, B:483:0x117f, B:485:0x1191, B:487:0x1197, B:489:0x11a1, B:491:0x11b4, B:493:0x11c7, B:495:0x11d2, B:499:0x1218, B:501:0x1223, B:503:0x122b, B:505:0x1244, B:507:0x124c, B:510:0x125e, B:512:0x1264, B:515:0x1273, B:517:0x1279, B:524:0x129a, B:528:0x12bb, B:529:0x12f5, B:531:0x1309, B:534:0x1327, B:536:0x135c, B:537:0x1381, B:539:0x13a5, B:543:0x13ce, B:546:0x13db, B:548:0x13f6, B:550:0x13fd, B:552:0x1404, B:555:0x140c, B:557:0x1423, B:558:0x142e, B:560:0x1438, B:562:0x1441, B:564:0x1463, B:566:0x146b, B:568:0x1479, B:569:0x1493, B:571:0x149a, B:572:0x14a5, B:576:0x14be, B:578:0x14d8, B:580:0x14fa, B:582:0x1502, B:584:0x1513, B:585:0x152d, B:587:0x1535, B:589:0x154c, B:590:0x1554, B:592:0x155e, B:594:0x156d, B:596:0x157a, B:599:0x158d, B:601:0x1597, B:603:0x15bc, B:605:0x15d1, B:607:0x15d7, B:609:0x15ef, B:610:0x160c, B:612:0x1614, B:615:0x1622, B:616:0x162d, B:618:0x1635, B:624:0x164b, B:625:0x1655, B:627:0x165d, B:629:0x168c, B:630:0x1697, B:632:0x169e, B:634:0x16a8, B:636:0x16ae, B:638:0x16cb, B:641:0x16d6, B:642:0x16e4, B:644:0x16f1, B:645:0x16fd, B:647:0x1718, B:649:0x172d, B:651:0x1756, B:655:0x1767, B:657:0x1770, B:658:0x1789, B:660:0x17af, B:662:0x17cd, B:664:0x17d9, B:666:0x17f2, B:668:0x1807, B:671:0x1816, B:678:0x1830, B:680:0x1838, B:75:0x028b, B:76:0x028e), top: B:700:0x0007, inners: #2, #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:359:0x0ced  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x0d1b A[Catch: all -> 0x1839, TRY_LEAVE, TryCatch #16 {all -> 0x1839, blocks: (B:3:0x0007, B:5:0x000f, B:34:0x010d, B:58:0x01e8, B:70:0x0268, B:96:0x0362, B:105:0x03c4, B:113:0x03f7, B:122:0x043b, B:141:0x04b2, B:143:0x04bb, B:145:0x04c1, B:152:0x04df, B:154:0x0522, B:157:0x0535, B:159:0x056a, B:161:0x05a6, B:168:0x05c9, B:170:0x05d7, B:173:0x0606, B:175:0x0621, B:182:0x0652, B:186:0x0662, B:190:0x0672, B:207:0x06c7, B:210:0x06d9, B:212:0x06ec, B:215:0x071b, B:217:0x072e, B:224:0x0776, B:227:0x07b0, B:229:0x07e3, B:231:0x0814, B:235:0x0832, B:241:0x085a, B:243:0x088f, B:245:0x08b5, B:247:0x08bf, B:249:0x08d6, B:252:0x08f1, B:261:0x091f, B:265:0x093a, B:267:0x0970, B:271:0x09a0, B:273:0x09b6, B:275:0x09c1, B:280:0x09e3, B:287:0x0a12, B:289:0x0a23, B:291:0x0a34, B:295:0x0a6d, B:300:0x0a8d, B:302:0x0a96, B:305:0x0aa9, B:309:0x0abe, B:310:0x0aeb, B:312:0x0b03, B:314:0x0b11, B:318:0x0b2f, B:320:0x0b44, B:322:0x0b5a, B:328:0x0ba3, B:330:0x0bb1, B:334:0x0bcf, B:336:0x0be4, B:338:0x0bfa, B:341:0x0c2b, B:345:0x0c52, B:347:0x0c60, B:349:0x0c74, B:355:0x0cab, B:357:0x0cc0, B:362:0x0d05, B:364:0x0d13, B:366:0x0d1b, B:367:0x0d39, B:369:0x0d59, B:370:0x0d77, B:371:0x0d82, B:373:0x0d98, B:375:0x0da8, B:383:0x0ddb, B:385:0x0df0, B:387:0x0dff, B:389:0x0e19, B:392:0x0e35, B:394:0x0e3c, B:399:0x0e63, B:401:0x0e6c, B:405:0x0e8f, B:407:0x0eb1, B:409:0x0ebd, B:411:0x0ec5, B:418:0x0ee8, B:419:0x0ef7, B:421:0x0efd, B:423:0x0f12, B:430:0x0f2b, B:432:0x0f3a, B:433:0x0f60, B:434:0x0f6c, B:436:0x0f81, B:438:0x0f91, B:440:0x0fa5, B:442:0x0fc6, B:444:0x0fd9, B:446:0x0fe1, B:448:0x0feb, B:450:0x101c, B:452:0x1026, B:454:0x1039, B:460:0x1056, B:462:0x105e, B:464:0x1072, B:466:0x1079, B:468:0x10c9, B:470:0x10f4, B:472:0x10fe, B:474:0x111e, B:477:0x114f, B:479:0x116d, B:481:0x1173, B:483:0x117f, B:485:0x1191, B:487:0x1197, B:489:0x11a1, B:491:0x11b4, B:493:0x11c7, B:495:0x11d2, B:499:0x1218, B:501:0x1223, B:503:0x122b, B:505:0x1244, B:507:0x124c, B:510:0x125e, B:512:0x1264, B:515:0x1273, B:517:0x1279, B:524:0x129a, B:528:0x12bb, B:529:0x12f5, B:531:0x1309, B:534:0x1327, B:536:0x135c, B:537:0x1381, B:539:0x13a5, B:543:0x13ce, B:546:0x13db, B:548:0x13f6, B:550:0x13fd, B:552:0x1404, B:555:0x140c, B:557:0x1423, B:558:0x142e, B:560:0x1438, B:562:0x1441, B:564:0x1463, B:566:0x146b, B:568:0x1479, B:569:0x1493, B:571:0x149a, B:572:0x14a5, B:576:0x14be, B:578:0x14d8, B:580:0x14fa, B:582:0x1502, B:584:0x1513, B:585:0x152d, B:587:0x1535, B:589:0x154c, B:590:0x1554, B:592:0x155e, B:594:0x156d, B:596:0x157a, B:599:0x158d, B:601:0x1597, B:603:0x15bc, B:605:0x15d1, B:607:0x15d7, B:609:0x15ef, B:610:0x160c, B:612:0x1614, B:615:0x1622, B:616:0x162d, B:618:0x1635, B:624:0x164b, B:625:0x1655, B:627:0x165d, B:629:0x168c, B:630:0x1697, B:632:0x169e, B:634:0x16a8, B:636:0x16ae, B:638:0x16cb, B:641:0x16d6, B:642:0x16e4, B:644:0x16f1, B:645:0x16fd, B:647:0x1718, B:649:0x172d, B:651:0x1756, B:655:0x1767, B:657:0x1770, B:658:0x1789, B:660:0x17af, B:662:0x17cd, B:664:0x17d9, B:666:0x17f2, B:668:0x1807, B:671:0x1816, B:678:0x1830, B:680:0x1838, B:75:0x028b, B:76:0x028e), top: B:700:0x0007, inners: #2, #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0d39 A[Catch: all -> 0x1839, TRY_ENTER, TRY_LEAVE, TryCatch #16 {all -> 0x1839, blocks: (B:3:0x0007, B:5:0x000f, B:34:0x010d, B:58:0x01e8, B:70:0x0268, B:96:0x0362, B:105:0x03c4, B:113:0x03f7, B:122:0x043b, B:141:0x04b2, B:143:0x04bb, B:145:0x04c1, B:152:0x04df, B:154:0x0522, B:157:0x0535, B:159:0x056a, B:161:0x05a6, B:168:0x05c9, B:170:0x05d7, B:173:0x0606, B:175:0x0621, B:182:0x0652, B:186:0x0662, B:190:0x0672, B:207:0x06c7, B:210:0x06d9, B:212:0x06ec, B:215:0x071b, B:217:0x072e, B:224:0x0776, B:227:0x07b0, B:229:0x07e3, B:231:0x0814, B:235:0x0832, B:241:0x085a, B:243:0x088f, B:245:0x08b5, B:247:0x08bf, B:249:0x08d6, B:252:0x08f1, B:261:0x091f, B:265:0x093a, B:267:0x0970, B:271:0x09a0, B:273:0x09b6, B:275:0x09c1, B:280:0x09e3, B:287:0x0a12, B:289:0x0a23, B:291:0x0a34, B:295:0x0a6d, B:300:0x0a8d, B:302:0x0a96, B:305:0x0aa9, B:309:0x0abe, B:310:0x0aeb, B:312:0x0b03, B:314:0x0b11, B:318:0x0b2f, B:320:0x0b44, B:322:0x0b5a, B:328:0x0ba3, B:330:0x0bb1, B:334:0x0bcf, B:336:0x0be4, B:338:0x0bfa, B:341:0x0c2b, B:345:0x0c52, B:347:0x0c60, B:349:0x0c74, B:355:0x0cab, B:357:0x0cc0, B:362:0x0d05, B:364:0x0d13, B:366:0x0d1b, B:367:0x0d39, B:369:0x0d59, B:370:0x0d77, B:371:0x0d82, B:373:0x0d98, B:375:0x0da8, B:383:0x0ddb, B:385:0x0df0, B:387:0x0dff, B:389:0x0e19, B:392:0x0e35, B:394:0x0e3c, B:399:0x0e63, B:401:0x0e6c, B:405:0x0e8f, B:407:0x0eb1, B:409:0x0ebd, B:411:0x0ec5, B:418:0x0ee8, B:419:0x0ef7, B:421:0x0efd, B:423:0x0f12, B:430:0x0f2b, B:432:0x0f3a, B:433:0x0f60, B:434:0x0f6c, B:436:0x0f81, B:438:0x0f91, B:440:0x0fa5, B:442:0x0fc6, B:444:0x0fd9, B:446:0x0fe1, B:448:0x0feb, B:450:0x101c, B:452:0x1026, B:454:0x1039, B:460:0x1056, B:462:0x105e, B:464:0x1072, B:466:0x1079, B:468:0x10c9, B:470:0x10f4, B:472:0x10fe, B:474:0x111e, B:477:0x114f, B:479:0x116d, B:481:0x1173, B:483:0x117f, B:485:0x1191, B:487:0x1197, B:489:0x11a1, B:491:0x11b4, B:493:0x11c7, B:495:0x11d2, B:499:0x1218, B:501:0x1223, B:503:0x122b, B:505:0x1244, B:507:0x124c, B:510:0x125e, B:512:0x1264, B:515:0x1273, B:517:0x1279, B:524:0x129a, B:528:0x12bb, B:529:0x12f5, B:531:0x1309, B:534:0x1327, B:536:0x135c, B:537:0x1381, B:539:0x13a5, B:543:0x13ce, B:546:0x13db, B:548:0x13f6, B:550:0x13fd, B:552:0x1404, B:555:0x140c, B:557:0x1423, B:558:0x142e, B:560:0x1438, B:562:0x1441, B:564:0x1463, B:566:0x146b, B:568:0x1479, B:569:0x1493, B:571:0x149a, B:572:0x14a5, B:576:0x14be, B:578:0x14d8, B:580:0x14fa, B:582:0x1502, B:584:0x1513, B:585:0x152d, B:587:0x1535, B:589:0x154c, B:590:0x1554, B:592:0x155e, B:594:0x156d, B:596:0x157a, B:599:0x158d, B:601:0x1597, B:603:0x15bc, B:605:0x15d1, B:607:0x15d7, B:609:0x15ef, B:610:0x160c, B:612:0x1614, B:615:0x1622, B:616:0x162d, B:618:0x1635, B:624:0x164b, B:625:0x1655, B:627:0x165d, B:629:0x168c, B:630:0x1697, B:632:0x169e, B:634:0x16a8, B:636:0x16ae, B:638:0x16cb, B:641:0x16d6, B:642:0x16e4, B:644:0x16f1, B:645:0x16fd, B:647:0x1718, B:649:0x172d, B:651:0x1756, B:655:0x1767, B:657:0x1770, B:658:0x1789, B:660:0x17af, B:662:0x17cd, B:664:0x17d9, B:666:0x17f2, B:668:0x1807, B:671:0x1816, B:678:0x1830, B:680:0x1838, B:75:0x028b, B:76:0x028e), top: B:700:0x0007, inners: #2, #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:671:0x1816 A[Catch: all -> 0x1839, TRY_ENTER, TRY_LEAVE, TryCatch #16 {all -> 0x1839, blocks: (B:3:0x0007, B:5:0x000f, B:34:0x010d, B:58:0x01e8, B:70:0x0268, B:96:0x0362, B:105:0x03c4, B:113:0x03f7, B:122:0x043b, B:141:0x04b2, B:143:0x04bb, B:145:0x04c1, B:152:0x04df, B:154:0x0522, B:157:0x0535, B:159:0x056a, B:161:0x05a6, B:168:0x05c9, B:170:0x05d7, B:173:0x0606, B:175:0x0621, B:182:0x0652, B:186:0x0662, B:190:0x0672, B:207:0x06c7, B:210:0x06d9, B:212:0x06ec, B:215:0x071b, B:217:0x072e, B:224:0x0776, B:227:0x07b0, B:229:0x07e3, B:231:0x0814, B:235:0x0832, B:241:0x085a, B:243:0x088f, B:245:0x08b5, B:247:0x08bf, B:249:0x08d6, B:252:0x08f1, B:261:0x091f, B:265:0x093a, B:267:0x0970, B:271:0x09a0, B:273:0x09b6, B:275:0x09c1, B:280:0x09e3, B:287:0x0a12, B:289:0x0a23, B:291:0x0a34, B:295:0x0a6d, B:300:0x0a8d, B:302:0x0a96, B:305:0x0aa9, B:309:0x0abe, B:310:0x0aeb, B:312:0x0b03, B:314:0x0b11, B:318:0x0b2f, B:320:0x0b44, B:322:0x0b5a, B:328:0x0ba3, B:330:0x0bb1, B:334:0x0bcf, B:336:0x0be4, B:338:0x0bfa, B:341:0x0c2b, B:345:0x0c52, B:347:0x0c60, B:349:0x0c74, B:355:0x0cab, B:357:0x0cc0, B:362:0x0d05, B:364:0x0d13, B:366:0x0d1b, B:367:0x0d39, B:369:0x0d59, B:370:0x0d77, B:371:0x0d82, B:373:0x0d98, B:375:0x0da8, B:383:0x0ddb, B:385:0x0df0, B:387:0x0dff, B:389:0x0e19, B:392:0x0e35, B:394:0x0e3c, B:399:0x0e63, B:401:0x0e6c, B:405:0x0e8f, B:407:0x0eb1, B:409:0x0ebd, B:411:0x0ec5, B:418:0x0ee8, B:419:0x0ef7, B:421:0x0efd, B:423:0x0f12, B:430:0x0f2b, B:432:0x0f3a, B:433:0x0f60, B:434:0x0f6c, B:436:0x0f81, B:438:0x0f91, B:440:0x0fa5, B:442:0x0fc6, B:444:0x0fd9, B:446:0x0fe1, B:448:0x0feb, B:450:0x101c, B:452:0x1026, B:454:0x1039, B:460:0x1056, B:462:0x105e, B:464:0x1072, B:466:0x1079, B:468:0x10c9, B:470:0x10f4, B:472:0x10fe, B:474:0x111e, B:477:0x114f, B:479:0x116d, B:481:0x1173, B:483:0x117f, B:485:0x1191, B:487:0x1197, B:489:0x11a1, B:491:0x11b4, B:493:0x11c7, B:495:0x11d2, B:499:0x1218, B:501:0x1223, B:503:0x122b, B:505:0x1244, B:507:0x124c, B:510:0x125e, B:512:0x1264, B:515:0x1273, B:517:0x1279, B:524:0x129a, B:528:0x12bb, B:529:0x12f5, B:531:0x1309, B:534:0x1327, B:536:0x135c, B:537:0x1381, B:539:0x13a5, B:543:0x13ce, B:546:0x13db, B:548:0x13f6, B:550:0x13fd, B:552:0x1404, B:555:0x140c, B:557:0x1423, B:558:0x142e, B:560:0x1438, B:562:0x1441, B:564:0x1463, B:566:0x146b, B:568:0x1479, B:569:0x1493, B:571:0x149a, B:572:0x14a5, B:576:0x14be, B:578:0x14d8, B:580:0x14fa, B:582:0x1502, B:584:0x1513, B:585:0x152d, B:587:0x1535, B:589:0x154c, B:590:0x1554, B:592:0x155e, B:594:0x156d, B:596:0x157a, B:599:0x158d, B:601:0x1597, B:603:0x15bc, B:605:0x15d1, B:607:0x15d7, B:609:0x15ef, B:610:0x160c, B:612:0x1614, B:615:0x1622, B:616:0x162d, B:618:0x1635, B:624:0x164b, B:625:0x1655, B:627:0x165d, B:629:0x168c, B:630:0x1697, B:632:0x169e, B:634:0x16a8, B:636:0x16ae, B:638:0x16cb, B:641:0x16d6, B:642:0x16e4, B:644:0x16f1, B:645:0x16fd, B:647:0x1718, B:649:0x172d, B:651:0x1756, B:655:0x1767, B:657:0x1770, B:658:0x1789, B:660:0x17af, B:662:0x17cd, B:664:0x17d9, B:666:0x17f2, B:668:0x1807, B:671:0x1816, B:678:0x1830, B:680:0x1838, B:75:0x028b, B:76:0x028e), top: B:700:0x0007, inners: #2, #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:678:0x1830 A[Catch: all -> 0x1839, TRY_ENTER, TryCatch #16 {all -> 0x1839, blocks: (B:3:0x0007, B:5:0x000f, B:34:0x010d, B:58:0x01e8, B:70:0x0268, B:96:0x0362, B:105:0x03c4, B:113:0x03f7, B:122:0x043b, B:141:0x04b2, B:143:0x04bb, B:145:0x04c1, B:152:0x04df, B:154:0x0522, B:157:0x0535, B:159:0x056a, B:161:0x05a6, B:168:0x05c9, B:170:0x05d7, B:173:0x0606, B:175:0x0621, B:182:0x0652, B:186:0x0662, B:190:0x0672, B:207:0x06c7, B:210:0x06d9, B:212:0x06ec, B:215:0x071b, B:217:0x072e, B:224:0x0776, B:227:0x07b0, B:229:0x07e3, B:231:0x0814, B:235:0x0832, B:241:0x085a, B:243:0x088f, B:245:0x08b5, B:247:0x08bf, B:249:0x08d6, B:252:0x08f1, B:261:0x091f, B:265:0x093a, B:267:0x0970, B:271:0x09a0, B:273:0x09b6, B:275:0x09c1, B:280:0x09e3, B:287:0x0a12, B:289:0x0a23, B:291:0x0a34, B:295:0x0a6d, B:300:0x0a8d, B:302:0x0a96, B:305:0x0aa9, B:309:0x0abe, B:310:0x0aeb, B:312:0x0b03, B:314:0x0b11, B:318:0x0b2f, B:320:0x0b44, B:322:0x0b5a, B:328:0x0ba3, B:330:0x0bb1, B:334:0x0bcf, B:336:0x0be4, B:338:0x0bfa, B:341:0x0c2b, B:345:0x0c52, B:347:0x0c60, B:349:0x0c74, B:355:0x0cab, B:357:0x0cc0, B:362:0x0d05, B:364:0x0d13, B:366:0x0d1b, B:367:0x0d39, B:369:0x0d59, B:370:0x0d77, B:371:0x0d82, B:373:0x0d98, B:375:0x0da8, B:383:0x0ddb, B:385:0x0df0, B:387:0x0dff, B:389:0x0e19, B:392:0x0e35, B:394:0x0e3c, B:399:0x0e63, B:401:0x0e6c, B:405:0x0e8f, B:407:0x0eb1, B:409:0x0ebd, B:411:0x0ec5, B:418:0x0ee8, B:419:0x0ef7, B:421:0x0efd, B:423:0x0f12, B:430:0x0f2b, B:432:0x0f3a, B:433:0x0f60, B:434:0x0f6c, B:436:0x0f81, B:438:0x0f91, B:440:0x0fa5, B:442:0x0fc6, B:444:0x0fd9, B:446:0x0fe1, B:448:0x0feb, B:450:0x101c, B:452:0x1026, B:454:0x1039, B:460:0x1056, B:462:0x105e, B:464:0x1072, B:466:0x1079, B:468:0x10c9, B:470:0x10f4, B:472:0x10fe, B:474:0x111e, B:477:0x114f, B:479:0x116d, B:481:0x1173, B:483:0x117f, B:485:0x1191, B:487:0x1197, B:489:0x11a1, B:491:0x11b4, B:493:0x11c7, B:495:0x11d2, B:499:0x1218, B:501:0x1223, B:503:0x122b, B:505:0x1244, B:507:0x124c, B:510:0x125e, B:512:0x1264, B:515:0x1273, B:517:0x1279, B:524:0x129a, B:528:0x12bb, B:529:0x12f5, B:531:0x1309, B:534:0x1327, B:536:0x135c, B:537:0x1381, B:539:0x13a5, B:543:0x13ce, B:546:0x13db, B:548:0x13f6, B:550:0x13fd, B:552:0x1404, B:555:0x140c, B:557:0x1423, B:558:0x142e, B:560:0x1438, B:562:0x1441, B:564:0x1463, B:566:0x146b, B:568:0x1479, B:569:0x1493, B:571:0x149a, B:572:0x14a5, B:576:0x14be, B:578:0x14d8, B:580:0x14fa, B:582:0x1502, B:584:0x1513, B:585:0x152d, B:587:0x1535, B:589:0x154c, B:590:0x1554, B:592:0x155e, B:594:0x156d, B:596:0x157a, B:599:0x158d, B:601:0x1597, B:603:0x15bc, B:605:0x15d1, B:607:0x15d7, B:609:0x15ef, B:610:0x160c, B:612:0x1614, B:615:0x1622, B:616:0x162d, B:618:0x1635, B:624:0x164b, B:625:0x1655, B:627:0x165d, B:629:0x168c, B:630:0x1697, B:632:0x169e, B:634:0x16a8, B:636:0x16ae, B:638:0x16cb, B:641:0x16d6, B:642:0x16e4, B:644:0x16f1, B:645:0x16fd, B:647:0x1718, B:649:0x172d, B:651:0x1756, B:655:0x1767, B:657:0x1770, B:658:0x1789, B:660:0x17af, B:662:0x17cd, B:664:0x17d9, B:666:0x17f2, B:668:0x1807, B:671:0x1816, B:678:0x1830, B:680:0x1838, B:75:0x028b, B:76:0x028e), top: B:700:0x0007, inners: #2, #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0251 A[Catch: all -> 0x0272, SQLiteException -> 0x0276, TRY_ENTER, TRY_LEAVE, TryCatch #18 {SQLiteException -> 0x0276, all -> 0x0272, blocks: (B:68:0x0251, B:80:0x02af), top: B:705:0x024e }] */
    /* JADX WARN: Removed duplicated region for block: B:696:0x0281 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v164, types: [long] */
    /* JADX WARN: Type inference failed for: r0v168, types: [long] */
    /* JADX WARN: Type inference failed for: r0v310, types: [long] */
    /* JADX WARN: Type inference failed for: r0v313, types: [long] */
    /* JADX WARN: Type inference failed for: r0v548, types: [long] */
    /* JADX WARN: Type inference failed for: r0v619, types: [long] */
    /* JADX WARN: Type inference failed for: r18v0, types: [com.google.android.gms.measurement.internal.zzke] */
    /* JADX WARN: Type inference failed for: r30v38 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:140:0x04af -> B:686:0x04b9). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:141:0x04b2 -> B:686:0x04b9). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zza(java.lang.String r19, long r20) {
        /*
            Method dump skipped, instructions count: 6211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.zza(java.lang.String, long):boolean");
    }

    private final void zzaa() {
        zzw();
        if (this.zzr || this.zzs || this.zzt) {
            this.zzj.zzr().zzx().zza("Not stopping services. fetch, network, upload", Boolean.valueOf(this.zzr), Boolean.valueOf(this.zzs), Boolean.valueOf(this.zzt));
            return;
        }
        this.zzj.zzr().zzx().zza("Stopping uploading service(s)");
        List<Runnable> list = this.zzo;
        if (list == null) {
            return;
        }
        for (Runnable runnable : list) {
            runnable.run();
        }
        this.zzo.clear();
    }

    private final boolean zzab() {
        FileLock fileLock;
        zzw();
        if (this.zzj.zzb().zza(zzap.zzca) && (fileLock = this.zzu) != null && fileLock.isValid()) {
            this.zzj.zzr().zzx().zza("Storage concurrent access okay");
            return true;
        }
        try {
            this.zzv = new RandomAccessFile(new File(this.zzj.zzn().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
            this.zzu = this.zzv.tryLock();
            if (this.zzu != null) {
                this.zzj.zzr().zzx().zza("Storage concurrent access okay");
                return true;
            }
            this.zzj.zzr().zzf().zza("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e) {
            this.zzj.zzr().zzf().zza("Failed to acquire storage lock", e);
            return false;
        } catch (IOException e2) {
            this.zzj.zzr().zzf().zza("Failed to access storage lock file", e2);
            return false;
        } catch (OverlappingFileLockException e3) {
            this.zzj.zzr().zzi().zza("Storage lock already acquired", e3);
            return false;
        }
    }

    private final boolean zzac() {
        zzw();
        zzk();
        return this.zzl;
    }

    private final Boolean zzb(zzg zzgVar) {
        try {
            if (zzgVar.zzm() != -2147483648L) {
                if (zzgVar.zzm() == Wrappers.packageManager(this.zzj.zzn()).getPackageInfo(zzgVar.zzc(), 0).versionCode) {
                    return true;
                }
            } else {
                String str = Wrappers.packageManager(this.zzj.zzn()).getPackageInfo(zzgVar.zzc(), 0).versionName;
                if (zzgVar.zzl() != null && zzgVar.zzl().equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    private final void zzb(zzbr.zzc.zza zzaVar, zzbr.zzc.zza zzaVar2) {
        Preconditions.checkArgument("_e".equals(zzaVar.zzd()));
        zzh();
        zzbr.zze zza2 = zzki.zza((zzbr.zzc) ((zzfd) zzaVar.zzu()), "_et");
        if (!zza2.zzd() || zza2.zze() <= 0) {
            return;
        }
        ?? zze = zza2.zze();
        zzh();
        zzbr.zze zza3 = zzki.zza((zzbr.zzc) ((zzfd) zzaVar2.zzu()), "_et");
        char c = zze;
        if (zza3 != null) {
            c = zze;
            if (zza3.zze() > 0) {
                c = zze + zza3.zze();
            }
        }
        zzh();
        zzki.zza(zzaVar2, "_et", Long.valueOf(c));
        zzh();
        zzki.zza(zzaVar, "_fr", (Object) 1L);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:59|(1:61)(1:62)|63|64|(3:69|78|(1:80))|70|71|305|72|75|76|77|78|(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x02ed, code lost:
        r34 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x02ef, code lost:
        r0.zzr().zzf().zza("Error pruning currencies. appId", com.google.android.gms.measurement.internal.zzew.zza(r0), r34);
     */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0bb5 A[Catch: all -> 0x0c33, TRY_LEAVE, TryCatch #0 {all -> 0x0c33, blocks: (B:34:0x0142, B:36:0x0159, B:39:0x016c, B:41:0x0189, B:44:0x01a7, B:50:0x01cd, B:51:0x01d7, B:53:0x01f7, B:55:0x0208, B:57:0x020e, B:59:0x0223, B:61:0x0232, B:62:0x023f, B:64:0x024c, B:66:0x025d, B:69:0x026b, B:70:0x02a0, B:72:0x02c9, B:74:0x02ef, B:75:0x0304, B:76:0x0307, B:78:0x032b, B:80:0x0337, B:84:0x037c, B:87:0x038b, B:92:0x03de, B:94:0x03fc, B:99:0x040f, B:104:0x0437, B:106:0x0455, B:111:0x047e, B:116:0x04b0, B:118:0x04ce, B:121:0x04dc, B:123:0x050b, B:125:0x0534, B:127:0x0542, B:129:0x0556, B:131:0x056b, B:133:0x0576, B:135:0x058d, B:137:0x0597, B:139:0x05ab, B:141:0x05bf, B:143:0x05d6, B:146:0x05e7, B:147:0x0601, B:148:0x0604, B:150:0x0635, B:154:0x064a, B:157:0x068d, B:159:0x06b4, B:161:0x06cf, B:163:0x0707, B:165:0x071f, B:167:0x072a, B:169:0x0733, B:171:0x073e, B:173:0x0747, B:175:0x0752, B:177:0x075c, B:179:0x0769, B:181:0x077b, B:182:0x0785, B:184:0x078b, B:186:0x079f, B:188:0x07aa, B:190:0x07b4, B:192:0x07c0, B:194:0x07c9, B:196:0x07d4, B:198:0x07de, B:199:0x07eb, B:201:0x07fb, B:203:0x0806, B:205:0x0810, B:206:0x081d, B:208:0x0827, B:210:0x0832, B:212:0x083a, B:214:0x0846, B:216:0x0862, B:218:0x0870, B:220:0x0879, B:222:0x088d, B:224:0x089b, B:226:0x08a2, B:228:0x08b8, B:229:0x08cc, B:231:0x08e0, B:233:0x08e7, B:235:0x08fe, B:238:0x0922, B:240:0x092a, B:242:0x0946, B:244:0x094f, B:246:0x09a1, B:248:0x09b1, B:250:0x09be, B:252:0x09c6, B:255:0x09db, B:257:0x0a86, B:259:0x0a8f, B:261:0x0a9c, B:263:0x0aa5, B:265:0x0ab1, B:267:0x0abf, B:269:0x0aca, B:270:0x0b16, B:272:0x0b2b, B:274:0x0b36, B:276:0x0b41, B:278:0x0b49, B:281:0x0b5f, B:283:0x0b8b, B:287:0x0ba9, B:289:0x0bb5, B:291:0x0bbe, B:293:0x0bd8, B:295:0x0bec), top: B:302:0x0142, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:295:0x0bec A[Catch: all -> 0x0c33, TryCatch #0 {all -> 0x0c33, blocks: (B:34:0x0142, B:36:0x0159, B:39:0x016c, B:41:0x0189, B:44:0x01a7, B:50:0x01cd, B:51:0x01d7, B:53:0x01f7, B:55:0x0208, B:57:0x020e, B:59:0x0223, B:61:0x0232, B:62:0x023f, B:64:0x024c, B:66:0x025d, B:69:0x026b, B:70:0x02a0, B:72:0x02c9, B:74:0x02ef, B:75:0x0304, B:76:0x0307, B:78:0x032b, B:80:0x0337, B:84:0x037c, B:87:0x038b, B:92:0x03de, B:94:0x03fc, B:99:0x040f, B:104:0x0437, B:106:0x0455, B:111:0x047e, B:116:0x04b0, B:118:0x04ce, B:121:0x04dc, B:123:0x050b, B:125:0x0534, B:127:0x0542, B:129:0x0556, B:131:0x056b, B:133:0x0576, B:135:0x058d, B:137:0x0597, B:139:0x05ab, B:141:0x05bf, B:143:0x05d6, B:146:0x05e7, B:147:0x0601, B:148:0x0604, B:150:0x0635, B:154:0x064a, B:157:0x068d, B:159:0x06b4, B:161:0x06cf, B:163:0x0707, B:165:0x071f, B:167:0x072a, B:169:0x0733, B:171:0x073e, B:173:0x0747, B:175:0x0752, B:177:0x075c, B:179:0x0769, B:181:0x077b, B:182:0x0785, B:184:0x078b, B:186:0x079f, B:188:0x07aa, B:190:0x07b4, B:192:0x07c0, B:194:0x07c9, B:196:0x07d4, B:198:0x07de, B:199:0x07eb, B:201:0x07fb, B:203:0x0806, B:205:0x0810, B:206:0x081d, B:208:0x0827, B:210:0x0832, B:212:0x083a, B:214:0x0846, B:216:0x0862, B:218:0x0870, B:220:0x0879, B:222:0x088d, B:224:0x089b, B:226:0x08a2, B:228:0x08b8, B:229:0x08cc, B:231:0x08e0, B:233:0x08e7, B:235:0x08fe, B:238:0x0922, B:240:0x092a, B:242:0x0946, B:244:0x094f, B:246:0x09a1, B:248:0x09b1, B:250:0x09be, B:252:0x09c6, B:255:0x09db, B:257:0x0a86, B:259:0x0a8f, B:261:0x0a9c, B:263:0x0aa5, B:265:0x0ab1, B:267:0x0abf, B:269:0x0aca, B:270:0x0b16, B:272:0x0b2b, B:274:0x0b36, B:276:0x0b41, B:278:0x0b49, B:281:0x0b5f, B:283:0x0b8b, B:287:0x0ba9, B:289:0x0bb5, B:291:0x0bbe, B:293:0x0bd8, B:295:0x0bec), top: B:302:0x0142, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0337 A[Catch: all -> 0x0c33, TRY_LEAVE, TryCatch #0 {all -> 0x0c33, blocks: (B:34:0x0142, B:36:0x0159, B:39:0x016c, B:41:0x0189, B:44:0x01a7, B:50:0x01cd, B:51:0x01d7, B:53:0x01f7, B:55:0x0208, B:57:0x020e, B:59:0x0223, B:61:0x0232, B:62:0x023f, B:64:0x024c, B:66:0x025d, B:69:0x026b, B:70:0x02a0, B:72:0x02c9, B:74:0x02ef, B:75:0x0304, B:76:0x0307, B:78:0x032b, B:80:0x0337, B:84:0x037c, B:87:0x038b, B:92:0x03de, B:94:0x03fc, B:99:0x040f, B:104:0x0437, B:106:0x0455, B:111:0x047e, B:116:0x04b0, B:118:0x04ce, B:121:0x04dc, B:123:0x050b, B:125:0x0534, B:127:0x0542, B:129:0x0556, B:131:0x056b, B:133:0x0576, B:135:0x058d, B:137:0x0597, B:139:0x05ab, B:141:0x05bf, B:143:0x05d6, B:146:0x05e7, B:147:0x0601, B:148:0x0604, B:150:0x0635, B:154:0x064a, B:157:0x068d, B:159:0x06b4, B:161:0x06cf, B:163:0x0707, B:165:0x071f, B:167:0x072a, B:169:0x0733, B:171:0x073e, B:173:0x0747, B:175:0x0752, B:177:0x075c, B:179:0x0769, B:181:0x077b, B:182:0x0785, B:184:0x078b, B:186:0x079f, B:188:0x07aa, B:190:0x07b4, B:192:0x07c0, B:194:0x07c9, B:196:0x07d4, B:198:0x07de, B:199:0x07eb, B:201:0x07fb, B:203:0x0806, B:205:0x0810, B:206:0x081d, B:208:0x0827, B:210:0x0832, B:212:0x083a, B:214:0x0846, B:216:0x0862, B:218:0x0870, B:220:0x0879, B:222:0x088d, B:224:0x089b, B:226:0x08a2, B:228:0x08b8, B:229:0x08cc, B:231:0x08e0, B:233:0x08e7, B:235:0x08fe, B:238:0x0922, B:240:0x092a, B:242:0x0946, B:244:0x094f, B:246:0x09a1, B:248:0x09b1, B:250:0x09be, B:252:0x09c6, B:255:0x09db, B:257:0x0a86, B:259:0x0a8f, B:261:0x0a9c, B:263:0x0aa5, B:265:0x0ab1, B:267:0x0abf, B:269:0x0aca, B:270:0x0b16, B:272:0x0b2b, B:274:0x0b36, B:276:0x0b41, B:278:0x0b49, B:281:0x0b5f, B:283:0x0b8b, B:287:0x0ba9, B:289:0x0bb5, B:291:0x0bbe, B:293:0x0bd8, B:295:0x0bec), top: B:302:0x0142, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x037c A[Catch: all -> 0x0c33, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0c33, blocks: (B:34:0x0142, B:36:0x0159, B:39:0x016c, B:41:0x0189, B:44:0x01a7, B:50:0x01cd, B:51:0x01d7, B:53:0x01f7, B:55:0x0208, B:57:0x020e, B:59:0x0223, B:61:0x0232, B:62:0x023f, B:64:0x024c, B:66:0x025d, B:69:0x026b, B:70:0x02a0, B:72:0x02c9, B:74:0x02ef, B:75:0x0304, B:76:0x0307, B:78:0x032b, B:80:0x0337, B:84:0x037c, B:87:0x038b, B:92:0x03de, B:94:0x03fc, B:99:0x040f, B:104:0x0437, B:106:0x0455, B:111:0x047e, B:116:0x04b0, B:118:0x04ce, B:121:0x04dc, B:123:0x050b, B:125:0x0534, B:127:0x0542, B:129:0x0556, B:131:0x056b, B:133:0x0576, B:135:0x058d, B:137:0x0597, B:139:0x05ab, B:141:0x05bf, B:143:0x05d6, B:146:0x05e7, B:147:0x0601, B:148:0x0604, B:150:0x0635, B:154:0x064a, B:157:0x068d, B:159:0x06b4, B:161:0x06cf, B:163:0x0707, B:165:0x071f, B:167:0x072a, B:169:0x0733, B:171:0x073e, B:173:0x0747, B:175:0x0752, B:177:0x075c, B:179:0x0769, B:181:0x077b, B:182:0x0785, B:184:0x078b, B:186:0x079f, B:188:0x07aa, B:190:0x07b4, B:192:0x07c0, B:194:0x07c9, B:196:0x07d4, B:198:0x07de, B:199:0x07eb, B:201:0x07fb, B:203:0x0806, B:205:0x0810, B:206:0x081d, B:208:0x0827, B:210:0x0832, B:212:0x083a, B:214:0x0846, B:216:0x0862, B:218:0x0870, B:220:0x0879, B:222:0x088d, B:224:0x089b, B:226:0x08a2, B:228:0x08b8, B:229:0x08cc, B:231:0x08e0, B:233:0x08e7, B:235:0x08fe, B:238:0x0922, B:240:0x092a, B:242:0x0946, B:244:0x094f, B:246:0x09a1, B:248:0x09b1, B:250:0x09be, B:252:0x09c6, B:255:0x09db, B:257:0x0a86, B:259:0x0a8f, B:261:0x0a9c, B:263:0x0aa5, B:265:0x0ab1, B:267:0x0abf, B:269:0x0aca, B:270:0x0b16, B:272:0x0b2b, B:274:0x0b36, B:276:0x0b41, B:278:0x0b49, B:281:0x0b5f, B:283:0x0b8b, B:287:0x0ba9, B:289:0x0bb5, B:291:0x0bbe, B:293:0x0bd8, B:295:0x0bec), top: B:302:0x0142, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x03d3  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x040a  */
    /* JADX WARN: Type inference failed for: r0v513, types: [long] */
    /* JADX WARN: Type inference failed for: r0v518, types: [double] */
    /* JADX WARN: Type inference failed for: r0v532, types: [long] */
    /* JADX WARN: Type inference failed for: r0v538, types: [double] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzb(com.google.android.gms.measurement.internal.zzan r17, com.google.android.gms.measurement.internal.zzm r18) {
        /*
            Method dump skipped, instructions count: 3133
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.zzb(com.google.android.gms.measurement.internal.zzan, com.google.android.gms.measurement.internal.zzm):void");
    }

    private static void zzb(zzkb zzkbVar) {
        if (zzkbVar != null) {
            if (zzkbVar.zzaj()) {
                return;
            }
            String valueOf = String.valueOf(zzkbVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
        throw new IllegalStateException("Upload Component not created");
    }

    private final boolean zze(zzm zzmVar) {
        return (!zzle.zzb() || !this.zzj.zzb().zze(zzmVar.zza, zzap.zzcc)) ? !TextUtils.isEmpty(zzmVar.zzb) || !TextUtils.isEmpty(zzmVar.zzr) : !TextUtils.isEmpty(zzmVar.zzb) || !TextUtils.isEmpty(zzmVar.zzv) || !TextUtils.isEmpty(zzmVar.zzr);
    }

    private final zzfd zzt() {
        zzfd zzfdVar = this.zze;
        if (zzfdVar != null) {
            return zzfdVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    private final zzka zzv() {
        zzb(this.zzf);
        return this.zzf;
    }

    private final void zzw() {
        this.zzj.zzq().zzd();
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    private final long zzx() {
        long currentTimeMillis = this.zzj.zzm().currentTimeMillis();
        zzff zzc = this.zzj.zzc();
        zzc.zzaa();
        zzc.zzd();
        ?? zza2 = zzc.zzg.zza();
        char c = zza2;
        if (zza2 == 0) {
            c = 1 + zzc.zzp().zzh().nextInt(86400000);
            zzc.zzg.zza(c);
        }
        return ((((currentTimeMillis + c) / 1000) / 60) / 60) / 24;
    }

    private final boolean zzy() {
        zzw();
        zzk();
        return zze().zzy() || !TextUtils.isEmpty(zze().m3773d_());
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0249  */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v125, types: [long] */
    /* JADX WARN: Type inference failed for: r0v130, types: [long] */
    /* JADX WARN: Type inference failed for: r0v136, types: [long] */
    /* JADX WARN: Type inference failed for: r0v139, types: [long] */
    /* JADX WARN: Type inference failed for: r0v147, types: [long] */
    /* JADX WARN: Type inference failed for: r0v151, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzz() {
        /*
            Method dump skipped, instructions count: 822
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.zzz():void");
    }

    public final void zza() {
        this.zzj.zzq().zzd();
        zze().zzv();
        if (this.zzj.zzc().zzc.zza() == 0) {
            this.zzj.zzc().zzc.zza(this.zzj.zzm().currentTimeMillis());
        }
        zzz();
    }

    /* JADX WARN: Finally extract failed */
    public final void zza(int i, Throwable th, byte[] bArr, String str) {
        zzac zze;
        long longValue;
        zzw();
        zzk();
        byte[] bArr2 = bArr;
        if (bArr == null) {
            try {
                bArr2 = new byte[0];
            } finally {
                this.zzs = false;
                zzaa();
            }
        }
        List<Long> list = this.zzw;
        this.zzw = null;
        if ((i == 200 || i == 204) && th == null) {
            try {
                this.zzj.zzc().zzc.zza(this.zzj.zzm().currentTimeMillis());
                this.zzj.zzc().zzd.zza(0L);
                zzz();
                this.zzj.zzr().zzx().zza("Successful upload. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr2.length));
                zze().zzf();
                try {
                    for (Long l : list) {
                        try {
                            zze = zze();
                            longValue = l.longValue();
                            zze.zzd();
                            zze.zzak();
                        } catch (SQLiteException e) {
                            if (this.zzx == null || !this.zzx.contains(l)) {
                                throw e;
                            }
                        }
                        try {
                            if (zze.m3774c_().delete("queue", "rowid=?", new String[]{String.valueOf(longValue)}) != 1) {
                                throw new SQLiteException("Deleted fewer rows from queue than expected");
                                break;
                            }
                        } catch (SQLiteException e2) {
                            zze.zzr().zzf().zza("Failed to delete a bundle in a queue table", e2);
                            throw e2;
                            break;
                        }
                    }
                    zze().m3775b_();
                    zze().zzh();
                    this.zzx = null;
                    if (!zzd().zzf() || !zzy()) {
                        this.zzy = -1L;
                        zzz();
                    } else {
                        zzl();
                    }
                    this.zzn = 0L;
                } catch (Throwable th2) {
                    zze().zzh();
                    throw th2;
                }
            } catch (SQLiteException e3) {
                this.zzj.zzr().zzf().zza("Database error while trying to delete uploaded bundles", e3);
                this.zzn = this.zzj.zzm().elapsedRealtime();
                this.zzj.zzr().zzx().zza("Disable upload, time", Long.valueOf(this.zzn));
            }
        } else {
            this.zzj.zzr().zzx().zza("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
            this.zzj.zzc().zzd.zza(this.zzj.zzm().currentTimeMillis());
            boolean z = true;
            if (i != 503) {
                z = i == 429;
            }
            if (z) {
                this.zzj.zzc().zze.zza(this.zzj.zzm().currentTimeMillis());
            }
            zze().zza(list);
            zzz();
        }
    }

    public final void zza(zzan zzanVar, zzm zzmVar) {
        List<zzv> list;
        List<zzv> list2;
        List<zzv> list3;
        Preconditions.checkNotNull(zzmVar);
        Preconditions.checkNotEmpty(zzmVar.zza);
        zzw();
        zzk();
        String str = zzmVar.zza;
        long j = zzanVar.zzd;
        if (!zzh().zza(zzanVar, zzmVar)) {
            return;
        }
        if (!zzmVar.zzh) {
            zzc(zzmVar);
            return;
        }
        zzan zzanVar2 = zzanVar;
        if (this.zzj.zzb().zze(str, zzap.zzbk)) {
            zzanVar2 = zzanVar;
            if (zzmVar.zzu != null) {
                if (!zzmVar.zzu.contains(zzanVar.zza)) {
                    this.zzj.zzr().zzw().zza("Dropping non-safelisted event. appId, event name, origin", str, zzanVar.zza, zzanVar.zzc);
                    return;
                }
                Bundle zzb = zzanVar.zzb.zzb();
                zzb.putLong("ga_safelisted", 1L);
                zzanVar2 = new zzan(zzanVar.zza, new zzam(zzb), zzanVar.zzc, zzanVar.zzd);
            }
        }
        zze().zzf();
        try {
            zzac zze = zze();
            Preconditions.checkNotEmpty(str);
            zze.zzd();
            zze.zzak();
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i < 0) {
                zze.zzr().zzi().zza("Invalid time querying timed out conditional properties", zzew.zza(str), Long.valueOf(j));
                list = Collections.emptyList();
            } else {
                list = zze.zza("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str, String.valueOf(j)});
            }
            for (zzv zzvVar : list) {
                if (zzvVar != null) {
                    this.zzj.zzr().zzw().zza("User property timed out", zzvVar.zza, this.zzj.zzj().zzc(zzvVar.zzc.zza), zzvVar.zzc.zza());
                    if (zzvVar.zzg != null) {
                        zzb(new zzan(zzvVar.zzg, j), zzmVar);
                    }
                    zze().zze(str, zzvVar.zzc.zza);
                }
            }
            zzac zze2 = zze();
            Preconditions.checkNotEmpty(str);
            zze2.zzd();
            zze2.zzak();
            if (i < 0) {
                zze2.zzr().zzi().zza("Invalid time querying expired conditional properties", zzew.zza(str), Long.valueOf(j));
                list2 = Collections.emptyList();
            } else {
                list2 = zze2.zza("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str, String.valueOf(j)});
            }
            ArrayList arrayList = new ArrayList(list2.size());
            for (zzv zzvVar2 : list2) {
                if (zzvVar2 != null) {
                    this.zzj.zzr().zzw().zza("User property expired", zzvVar2.zza, this.zzj.zzj().zzc(zzvVar2.zzc.zza), zzvVar2.zzc.zza());
                    zze().zzb(str, zzvVar2.zzc.zza);
                    if (zzvVar2.zzk != null) {
                        arrayList.add(zzvVar2.zzk);
                    }
                    zze().zze(str, zzvVar2.zzc.zza);
                }
            }
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList2.get(i2);
                i2++;
                zzb(new zzan((zzan) obj, j), zzmVar);
            }
            zzac zze3 = zze();
            String str2 = zzanVar2.zza;
            Preconditions.checkNotEmpty(str);
            Preconditions.checkNotEmpty(str2);
            zze3.zzd();
            zze3.zzak();
            if (i < 0) {
                zze3.zzr().zzi().zza("Invalid time querying triggered conditional properties", zzew.zza(str), zze3.zzo().zza(str2), Long.valueOf(j));
                list3 = Collections.emptyList();
            } else {
                list3 = zze3.zza("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str, str2, String.valueOf(j)});
            }
            ArrayList arrayList3 = new ArrayList(list3.size());
            for (zzv zzvVar3 : list3) {
                if (zzvVar3 != null) {
                    zzkl zzklVar = zzvVar3.zzc;
                    zzkn zzknVar = new zzkn(zzvVar3.zza, zzvVar3.zzb, zzklVar.zza, j, zzklVar.zza());
                    if (zze().zza(zzknVar)) {
                        this.zzj.zzr().zzw().zza("User property triggered", zzvVar3.zza, this.zzj.zzj().zzc(zzknVar.zzc), zzknVar.zze);
                    } else {
                        this.zzj.zzr().zzf().zza("Too many active user properties, ignoring", zzew.zza(zzvVar3.zza), this.zzj.zzj().zzc(zzknVar.zzc), zzknVar.zze);
                    }
                    if (zzvVar3.zzi != null) {
                        arrayList3.add(zzvVar3.zzi);
                    }
                    zzvVar3.zzc = new zzkl(zzknVar);
                    zzvVar3.zze = true;
                    zze().zza(zzvVar3);
                }
            }
            zzb(zzanVar2, zzmVar);
            ArrayList arrayList4 = arrayList3;
            int size2 = arrayList4.size();
            int i3 = 0;
            while (i3 < size2) {
                Object obj2 = arrayList4.get(i3);
                i3++;
                zzb(new zzan((zzan) obj2, j), zzmVar);
            }
            zze().m3775b_();
        } finally {
            zze().zzh();
        }
    }

    public final void zza(zzan zzanVar, String str) {
        zzg zzb = zze().zzb(str);
        if (zzb == null || TextUtils.isEmpty(zzb.zzl())) {
            this.zzj.zzr().zzw().zza("No app data available; dropping event", str);
            return;
        }
        Boolean zzb2 = zzb(zzb);
        if (zzb2 == null) {
            if (!"_ui".equals(zzanVar.zza)) {
                this.zzj.zzr().zzi().zza("Could not find package. appId", zzew.zza(str));
            }
        } else if (!zzb2.booleanValue()) {
            this.zzj.zzr().zzf().zza("App version does not match; dropping event. appId", zzew.zza(str));
            return;
        }
        zza(zzanVar, new zzm(str, zzb.zze(), zzb.zzl(), zzb.zzm(), zzb.zzn(), zzb.zzo(), zzb.zzp(), (String) null, zzb.zzr(), false, zzb.zzi(), zzb.zzae(), 0L, 0, zzb.zzaf(), zzb.zzag(), false, zzb.zzf(), zzb.zzah(), zzb.zzq(), zzb.zzai(), (!zzle.zzb() || !this.zzj.zzb().zze(zzb.zzc(), zzap.zzcc)) ? null : zzb.zzg()));
    }

    public final void zza(zzkb zzkbVar) {
        this.zzp++;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00bd, code lost:
        if ((r0 instanceof java.lang.CharSequence) != false) goto L25;
     */
    /* JADX WARN: Type inference failed for: r0v81, types: [long] */
    /* JADX WARN: Type inference failed for: r0v96, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.measurement.internal.zzkl r12, com.google.android.gms.measurement.internal.zzm r13) {
        /*
            Method dump skipped, instructions count: 676
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.zza(com.google.android.gms.measurement.internal.zzkl, com.google.android.gms.measurement.internal.zzm):void");
    }

    public final void zza(zzm zzmVar) {
        if (this.zzw != null) {
            this.zzx = new ArrayList();
            this.zzx.addAll(this.zzw);
        }
        zzac zze = zze();
        String str = zzmVar.zza;
        Preconditions.checkNotEmpty(str);
        zze.zzd();
        zze.zzak();
        try {
            SQLiteDatabase m3774c_ = zze.m3774c_();
            String[] strArr = new String[1];
            strArr[0] = str;
            int delete = m3774c_.delete("apps", "app_id=?", strArr) + 0 + m3774c_.delete("events", "app_id=?", strArr) + m3774c_.delete("user_attributes", "app_id=?", strArr) + m3774c_.delete("conditional_properties", "app_id=?", strArr) + m3774c_.delete("raw_events", "app_id=?", strArr) + m3774c_.delete("raw_events_metadata", "app_id=?", strArr) + m3774c_.delete("queue", "app_id=?", strArr) + m3774c_.delete("audience_filter_values", "app_id=?", strArr) + m3774c_.delete("main_event_params", "app_id=?", strArr);
            if (delete > 0) {
                zze.zzr().zzx().zza("Reset analytics data. app, records", str, Integer.valueOf(delete));
            }
        } catch (SQLiteException e) {
            zze.zzr().zzf().zza("Error resetting analytics data. appId, error", zzew.zza(str), e);
        }
        if (zzkm.zzb() && this.zzj.zzb().zza(zzap.zzch)) {
            if (!zzmVar.zzh) {
                return;
            }
            zzb(zzmVar);
            return;
        }
        zzm zza2 = zza(this.zzj.zzn(), zzmVar.zza, zzmVar.zzb, zzmVar.zzh, zzmVar.zzo, zzmVar.zzp, zzmVar.zzm, zzmVar.zzr, zzmVar.zzv);
        if (!zzmVar.zzh) {
            return;
        }
        zzb(zza2);
    }

    public final void zza(zzv zzvVar) {
        zzm zza2 = zza(zzvVar.zza);
        if (zza2 != null) {
            zza(zzvVar, zza2);
        }
    }

    public final void zza(zzv zzvVar, zzm zzmVar) {
        Preconditions.checkNotNull(zzvVar);
        Preconditions.checkNotEmpty(zzvVar.zza);
        Preconditions.checkNotNull(zzvVar.zzb);
        Preconditions.checkNotNull(zzvVar.zzc);
        Preconditions.checkNotEmpty(zzvVar.zzc.zza);
        zzw();
        zzk();
        if (!zze(zzmVar)) {
            return;
        }
        if (!zzmVar.zzh) {
            zzc(zzmVar);
            return;
        }
        zzv zzvVar2 = new zzv(zzvVar);
        boolean z = false;
        zzvVar2.zze = false;
        zze().zzf();
        try {
            zzv zzd = zze().zzd(zzvVar2.zza, zzvVar2.zzc.zza);
            if (zzd != null && !zzd.zzb.equals(zzvVar2.zzb)) {
                this.zzj.zzr().zzi().zza("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.zzj.zzj().zzc(zzvVar2.zzc.zza), zzvVar2.zzb, zzd.zzb);
            }
            if (zzd != null && zzd.zze) {
                zzvVar2.zzb = zzd.zzb;
                zzvVar2.zzd = zzd.zzd;
                zzvVar2.zzh = zzd.zzh;
                zzvVar2.zzf = zzd.zzf;
                zzvVar2.zzi = zzd.zzi;
                zzvVar2.zze = zzd.zze;
                zzvVar2.zzc = new zzkl(zzvVar2.zzc.zza, zzd.zzc.zzb, zzvVar2.zzc.zza(), zzd.zzc.zze);
            } else if (TextUtils.isEmpty(zzvVar2.zzf)) {
                zzvVar2.zzc = new zzkl(zzvVar2.zzc.zza, zzvVar2.zzd, zzvVar2.zzc.zza(), zzvVar2.zzc.zze);
                zzvVar2.zze = true;
                z = true;
            }
            if (zzvVar2.zze) {
                zzkl zzklVar = zzvVar2.zzc;
                zzkn zzknVar = new zzkn(zzvVar2.zza, zzvVar2.zzb, zzklVar.zza, zzklVar.zzb, zzklVar.zza());
                if (zze().zza(zzknVar)) {
                    this.zzj.zzr().zzw().zza("User property updated immediately", zzvVar2.zza, this.zzj.zzj().zzc(zzknVar.zzc), zzknVar.zze);
                } else {
                    this.zzj.zzr().zzf().zza("(2)Too many active user properties, ignoring", zzew.zza(zzvVar2.zza), this.zzj.zzj().zzc(zzknVar.zzc), zzknVar.zze);
                }
                if (z && zzvVar2.zzi != null) {
                    zzb(new zzan(zzvVar2.zzi, zzvVar2.zzd), zzmVar);
                }
            }
            if (zze().zza(zzvVar2)) {
                this.zzj.zzr().zzw().zza("Conditional property added", zzvVar2.zza, this.zzj.zzj().zzc(zzvVar2.zzc.zza), zzvVar2.zzc.zza());
            } else {
                this.zzj.zzr().zzf().zza("Too many conditional properties, ignoring", zzew.zza(zzvVar2.zza), this.zzj.zzj().zzc(zzvVar2.zzc.zza), zzvVar2.zzc.zza());
            }
            zze().m3775b_();
        } finally {
            zze().zzh();
        }
    }

    public final void zza(Runnable runnable) {
        zzw();
        if (this.zzo == null) {
            this.zzo = new ArrayList();
        }
        this.zzo.add(runnable);
    }

    public final void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        zzw();
        zzk();
        Preconditions.checkNotEmpty(str);
        byte[] bArr2 = bArr;
        if (bArr == null) {
            try {
                bArr2 = new byte[0];
            } finally {
                this.zzr = false;
                zzaa();
            }
        }
        this.zzj.zzr().zzx().zza("onConfigFetched. Response size", Integer.valueOf(bArr2.length));
        zze().zzf();
        zzg zzb = zze().zzb(str);
        boolean z = (i == 200 || i == 204 || i == 304) && th == null;
        if (zzb == null) {
            this.zzj.zzr().zzi().zza("App does not exist in onConfigFetched. appId", zzew.zza(str));
        } else if (z || i == 404) {
            List<String> list = map != null ? map.get("Last-Modified") : null;
            String str2 = (list == null || list.size() <= 0) ? null : list.get(0);
            if (i == 404 || i == 304) {
                if (zzc().zza(str) == null && !zzc().zza(str, null, null)) {
                    zze().zzh();
                    return;
                }
            } else if (!zzc().zza(str, bArr2, str2)) {
                zze().zzh();
                return;
            }
            zzb.zzh(this.zzj.zzm().currentTimeMillis());
            zze().zza(zzb);
            if (i == 404) {
                this.zzj.zzr().zzk().zza("Config not found. Using empty config. appId", str);
            } else {
                this.zzj.zzr().zzx().zza("Successfully fetched config. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr2.length));
            }
            if (!zzd().zzf() || !zzy()) {
                zzz();
            } else {
                zzl();
            }
        } else {
            zzb.zzi(this.zzj.zzm().currentTimeMillis());
            zze().zza(zzb);
            this.zzj.zzr().zzx().zza("Fetching config failed. code, error", Integer.valueOf(i), th);
            zzc().zzc(str);
            this.zzj.zzc().zzd.zza(this.zzj.zzm().currentTimeMillis());
            boolean z2 = true;
            if (i != 503) {
                z2 = i == 429;
            }
            if (z2) {
                this.zzj.zzc().zze.zza(this.zzj.zzm().currentTimeMillis());
            }
            zzz();
        }
        zze().m3775b_();
        zze().zzh();
    }

    public final void zza(boolean z) {
        zzz();
    }

    public final zzx zzb() {
        return this.zzj.zzb();
    }

    public final void zzb(zzkl zzklVar, zzm zzmVar) {
        zzw();
        zzk();
        if (!zze(zzmVar)) {
            return;
        }
        if (!zzmVar.zzh) {
            zzc(zzmVar);
        } else if (!this.zzj.zzb().zze(zzmVar.zza, zzap.zzba)) {
            this.zzj.zzr().zzw().zza("Removing user property", this.zzj.zzj().zzc(zzklVar.zza));
            zze().zzf();
            try {
                zzc(zzmVar);
                zze().zzb(zzmVar.zza, zzklVar.zza);
                zze().m3775b_();
                this.zzj.zzr().zzw().zza("User property removed", this.zzj.zzj().zzc(zzklVar.zza));
            } finally {
            }
        } else if ("_npa".equals(zzklVar.zza) && zzmVar.zzs != null) {
            this.zzj.zzr().zzw().zza("Falling back to manifest metadata value for ad personalization");
            zza(new zzkl("_npa", this.zzj.zzm().currentTimeMillis(), Long.valueOf((zzmVar.zzs.booleanValue() ? 1 : null) == 1 ? 1L : 0L), "auto"), zzmVar);
        } else {
            this.zzj.zzr().zzw().zza("Removing user property", this.zzj.zzj().zzc(zzklVar.zza));
            zze().zzf();
            try {
                zzc(zzmVar);
                zze().zzb(zzmVar.zza, zzklVar.zza);
                zze().m3775b_();
                this.zzj.zzr().zzw().zza("User property removed", this.zzj.zzj().zzc(zzklVar.zza));
            } finally {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:178:0x06c4 A[Catch: all -> 0x0708, TRY_ENTER, TryCatch #2 {all -> 0x0708, blocks: (B:28:0x00e1, B:30:0x00f5, B:32:0x010a, B:35:0x0119, B:37:0x011f, B:42:0x0134, B:44:0x0149, B:47:0x0159, B:50:0x0166, B:51:0x0180, B:53:0x0190, B:55:0x01ae, B:57:0x01e3, B:59:0x01f3, B:61:0x0270, B:64:0x028d, B:69:0x02aa, B:71:0x02b5, B:76:0x02ca, B:78:0x02d5, B:80:0x02dc, B:87:0x02fb, B:88:0x0338, B:90:0x0343, B:93:0x035b, B:97:0x0373, B:100:0x0387, B:102:0x03b5, B:104:0x03c8, B:106:0x0423, B:108:0x042d, B:110:0x0433, B:112:0x043d, B:114:0x046e, B:116:0x0488, B:118:0x049f, B:122:0x04bd, B:124:0x04c6, B:126:0x04d2, B:131:0x04e9, B:132:0x04f5, B:136:0x0507, B:140:0x0517, B:141:0x0530, B:143:0x0547, B:147:0x0565, B:149:0x056e, B:151:0x0578, B:153:0x0582, B:156:0x0595, B:157:0x059f, B:158:0x05a2, B:161:0x05cc, B:163:0x061e, B:165:0x0628, B:167:0x062e, B:168:0x0637, B:169:0x063a, B:171:0x065c, B:173:0x066f, B:175:0x0693, B:176:0x069b, B:177:0x069e, B:178:0x06c4, B:180:0x06cb, B:182:0x06fa), top: B:192:0x00e1, inners: #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02aa A[Catch: all -> 0x0708, TRY_ENTER, TryCatch #2 {all -> 0x0708, blocks: (B:28:0x00e1, B:30:0x00f5, B:32:0x010a, B:35:0x0119, B:37:0x011f, B:42:0x0134, B:44:0x0149, B:47:0x0159, B:50:0x0166, B:51:0x0180, B:53:0x0190, B:55:0x01ae, B:57:0x01e3, B:59:0x01f3, B:61:0x0270, B:64:0x028d, B:69:0x02aa, B:71:0x02b5, B:76:0x02ca, B:78:0x02d5, B:80:0x02dc, B:87:0x02fb, B:88:0x0338, B:90:0x0343, B:93:0x035b, B:97:0x0373, B:100:0x0387, B:102:0x03b5, B:104:0x03c8, B:106:0x0423, B:108:0x042d, B:110:0x0433, B:112:0x043d, B:114:0x046e, B:116:0x0488, B:118:0x049f, B:122:0x04bd, B:124:0x04c6, B:126:0x04d2, B:131:0x04e9, B:132:0x04f5, B:136:0x0507, B:140:0x0517, B:141:0x0530, B:143:0x0547, B:147:0x0565, B:149:0x056e, B:151:0x0578, B:153:0x0582, B:156:0x0595, B:157:0x059f, B:158:0x05a2, B:161:0x05cc, B:163:0x061e, B:165:0x0628, B:167:0x062e, B:168:0x0637, B:169:0x063a, B:171:0x065c, B:173:0x066f, B:175:0x0693, B:176:0x069b, B:177:0x069e, B:178:0x06c4, B:180:0x06cb, B:182:0x06fa), top: B:192:0x00e1, inners: #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0343 A[Catch: all -> 0x0708, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0708, blocks: (B:28:0x00e1, B:30:0x00f5, B:32:0x010a, B:35:0x0119, B:37:0x011f, B:42:0x0134, B:44:0x0149, B:47:0x0159, B:50:0x0166, B:51:0x0180, B:53:0x0190, B:55:0x01ae, B:57:0x01e3, B:59:0x01f3, B:61:0x0270, B:64:0x028d, B:69:0x02aa, B:71:0x02b5, B:76:0x02ca, B:78:0x02d5, B:80:0x02dc, B:87:0x02fb, B:88:0x0338, B:90:0x0343, B:93:0x035b, B:97:0x0373, B:100:0x0387, B:102:0x03b5, B:104:0x03c8, B:106:0x0423, B:108:0x042d, B:110:0x0433, B:112:0x043d, B:114:0x046e, B:116:0x0488, B:118:0x049f, B:122:0x04bd, B:124:0x04c6, B:126:0x04d2, B:131:0x04e9, B:132:0x04f5, B:136:0x0507, B:140:0x0517, B:141:0x0530, B:143:0x0547, B:147:0x0565, B:149:0x056e, B:151:0x0578, B:153:0x0582, B:156:0x0595, B:157:0x059f, B:158:0x05a2, B:161:0x05cc, B:163:0x061e, B:165:0x0628, B:167:0x062e, B:168:0x0637, B:169:0x063a, B:171:0x065c, B:173:0x066f, B:175:0x0693, B:176:0x069b, B:177:0x069e, B:178:0x06c4, B:180:0x06cb, B:182:0x06fa), top: B:192:0x00e1, inners: #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0373 A[Catch: all -> 0x0708, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0708, blocks: (B:28:0x00e1, B:30:0x00f5, B:32:0x010a, B:35:0x0119, B:37:0x011f, B:42:0x0134, B:44:0x0149, B:47:0x0159, B:50:0x0166, B:51:0x0180, B:53:0x0190, B:55:0x01ae, B:57:0x01e3, B:59:0x01f3, B:61:0x0270, B:64:0x028d, B:69:0x02aa, B:71:0x02b5, B:76:0x02ca, B:78:0x02d5, B:80:0x02dc, B:87:0x02fb, B:88:0x0338, B:90:0x0343, B:93:0x035b, B:97:0x0373, B:100:0x0387, B:102:0x03b5, B:104:0x03c8, B:106:0x0423, B:108:0x042d, B:110:0x0433, B:112:0x043d, B:114:0x046e, B:116:0x0488, B:118:0x049f, B:122:0x04bd, B:124:0x04c6, B:126:0x04d2, B:131:0x04e9, B:132:0x04f5, B:136:0x0507, B:140:0x0517, B:141:0x0530, B:143:0x0547, B:147:0x0565, B:149:0x056e, B:151:0x0578, B:153:0x0582, B:156:0x0595, B:157:0x059f, B:158:0x05a2, B:161:0x05cc, B:163:0x061e, B:165:0x0628, B:167:0x062e, B:168:0x0637, B:169:0x063a, B:171:0x065c, B:173:0x066f, B:175:0x0693, B:176:0x069b, B:177:0x069e, B:178:0x06c4, B:180:0x06cb, B:182:0x06fa), top: B:192:0x00e1, inners: #1, #3 }] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v169 */
    /* JADX WARN: Type inference failed for: r0v226 */
    /* JADX WARN: Type inference failed for: r0v227 */
    /* JADX WARN: Type inference failed for: r0v327, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r1v87 */
    /* JADX WARN: Type inference failed for: r2v10, types: [long] */
    /* JADX WARN: Type inference failed for: r2v19, types: [long] */
    /* JADX WARN: Type inference failed for: r2v36, types: [long] */
    /* JADX WARN: Type inference failed for: r2v77, types: [long] */
    /* JADX WARN: Type inference failed for: r2v79, types: [long] */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r4v0, types: [long] */
    /* JADX WARN: Type inference failed for: r4v1, types: [long] */
    /* JADX WARN: Type inference failed for: r4v3, types: [long] */
    /* JADX WARN: Type inference failed for: r4v6, types: [long] */
    /* JADX WARN: Type inference failed for: r4v7, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzb(com.google.android.gms.measurement.internal.zzm r8) {
        /*
            Method dump skipped, instructions count: 1810
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.zzb(com.google.android.gms.measurement.internal.zzm):void");
    }

    public final void zzb(zzv zzvVar) {
        zzm zza2 = zza(zzvVar.zza);
        if (zza2 != null) {
            zzb(zzvVar, zza2);
        }
    }

    public final void zzb(zzv zzvVar, zzm zzmVar) {
        Preconditions.checkNotNull(zzvVar);
        Preconditions.checkNotEmpty(zzvVar.zza);
        Preconditions.checkNotNull(zzvVar.zzc);
        Preconditions.checkNotEmpty(zzvVar.zzc.zza);
        zzw();
        zzk();
        if (!zze(zzmVar)) {
            return;
        }
        if (!zzmVar.zzh) {
            zzc(zzmVar);
            return;
        }
        zze().zzf();
        try {
            zzc(zzmVar);
            zzv zzd = zze().zzd(zzvVar.zza, zzvVar.zzc.zza);
            if (zzd != null) {
                this.zzj.zzr().zzw().zza("Removing conditional user property", zzvVar.zza, this.zzj.zzj().zzc(zzvVar.zzc.zza));
                zze().zze(zzvVar.zza, zzvVar.zzc.zza);
                if (zzd.zze) {
                    zze().zzb(zzvVar.zza, zzvVar.zzc.zza);
                }
                if (zzvVar.zzk != null) {
                    Bundle bundle = null;
                    if (zzvVar.zzk.zzb != null) {
                        bundle = zzvVar.zzk.zzb.zzb();
                    }
                    zzb(this.zzj.zzi().zza(zzvVar.zza, zzvVar.zzk.zza, bundle, zzd.zzb, zzvVar.zzk.zzd, true, false), zzmVar);
                }
            } else {
                this.zzj.zzr().zzi().zza("Conditional user property doesn't exist", zzew.zza(zzvVar.zza), this.zzj.zzj().zzc(zzvVar.zzc.zza));
            }
            zze().m3775b_();
        } finally {
            zze().zzh();
        }
    }

    public final zzfu zzc() {
        zzb(this.zzb);
        return this.zzb;
    }

    public final zzg zzc(zzm zzmVar) {
        zzg zzgVar;
        zzw();
        zzk();
        Preconditions.checkNotNull(zzmVar);
        Preconditions.checkNotEmpty(zzmVar.zza);
        zzg zzb = zze().zzb(zzmVar.zza);
        String zzb2 = this.zzj.zzc().zzb(zzmVar.zza);
        if (!zzkn.zzb() || !this.zzj.zzb().zza(zzap.zzck)) {
            return zza(zzmVar, zzb, zzb2);
        }
        if (zzb == null) {
            zzgVar = new zzg(this.zzj, zzmVar.zza);
            zzgVar.zza(this.zzj.zzi().zzk());
            zzgVar.zze(zzb2);
        } else {
            zzgVar = zzb;
            if (!zzb2.equals(zzb.zzh())) {
                zzb.zze(zzb2);
                zzb.zza(this.zzj.zzi().zzk());
                zzgVar = zzb;
            }
        }
        zzgVar.zzb(zzmVar.zzb);
        zzgVar.zzc(zzmVar.zzr);
        if (zzle.zzb() && this.zzj.zzb().zze(zzgVar.zzc(), zzap.zzcc)) {
            zzgVar.zzd(zzmVar.zzv);
        }
        if (!TextUtils.isEmpty(zzmVar.zzk)) {
            zzgVar.zzf(zzmVar.zzk);
        }
        if (zzmVar.zze != 0) {
            zzgVar.zzd(zzmVar.zze);
        }
        if (!TextUtils.isEmpty(zzmVar.zzc)) {
            zzgVar.zzg(zzmVar.zzc);
        }
        zzgVar.zzc(zzmVar.zzj);
        if (zzmVar.zzd != null) {
            zzgVar.zzh(zzmVar.zzd);
        }
        zzgVar.zze(zzmVar.zzf);
        zzgVar.zza(zzmVar.zzh);
        if (!TextUtils.isEmpty(zzmVar.zzg)) {
            zzgVar.zzi(zzmVar.zzg);
        }
        zzgVar.zzp(zzmVar.zzl);
        zzgVar.zzb(zzmVar.zzo);
        zzgVar.zzc(zzmVar.zzp);
        if (this.zzj.zzb().zze(zzmVar.zza, zzap.zzba)) {
            zzgVar.zza(zzmVar.zzs);
        }
        zzgVar.zzf(zzmVar.zzt);
        if (zzgVar.zza()) {
            zze().zza(zzgVar);
        }
        return zzgVar;
    }

    public final zzfa zzd() {
        zzb(this.zzc);
        return this.zzc;
    }

    public final String zzd(zzm zzmVar) {
        try {
            return (String) this.zzj.zzq().zza(new zzkh(this, zzmVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            this.zzj.zzr().zzf().zza("Failed to get app instance id. appId", zzew.zza(zzmVar.zza), e);
            return null;
        }
    }

    public final zzac zze() {
        zzb(this.zzd);
        return this.zzd;
    }

    public final zzn zzf() {
        zzb(this.zzg);
        return this.zzg;
    }

    public final zzid zzg() {
        zzb(this.zzi);
        return this.zzi;
    }

    public final zzki zzh() {
        zzb(this.zzh);
        return this.zzh;
    }

    public final zzeu zzi() {
        return this.zzj.zzj();
    }

    public final zzkm zzj() {
        return this.zzj.zzi();
    }

    public final void zzk() {
        if (this.zzk) {
            return;
        }
        throw new IllegalStateException("UploadController is not initialized");
    }

    public final void zzl() {
        zzg zzb;
        String str;
        zzw();
        zzk();
        this.zzt = true;
        try {
            this.zzj.zzu();
            Boolean zzag = this.zzj.zzw().zzag();
            if (zzag == null) {
                this.zzj.zzr().zzi().zza("Upload data called on the client side before use of service was decided");
            } else if (zzag.booleanValue()) {
                this.zzj.zzr().zzf().zza("Upload called in the client side when service should be used");
            } else if (this.zzn > 0) {
                zzz();
            } else {
                zzw();
                if (this.zzw != null) {
                    this.zzj.zzr().zzx().zza("Uploading requested multiple times");
                } else if (!zzd().zzf()) {
                    this.zzj.zzr().zzx().zza("Network not connected, ignoring upload request");
                    zzz();
                } else {
                    long currentTimeMillis = this.zzj.zzm().currentTimeMillis();
                    zza((String) null, currentTimeMillis - zzx.zzk());
                    long zza2 = this.zzj.zzc().zzc.zza();
                    if (zza2 != 0) {
                        this.zzj.zzr().zzw().zza("Uploading events. Elapsed time since last upload attempt (ms)", Long.valueOf(Math.abs(currentTimeMillis - zza2)));
                    }
                    String m3773d_ = zze().m3773d_();
                    if (!TextUtils.isEmpty(m3773d_)) {
                        if (this.zzy == -1) {
                            this.zzy = zze().zzaa();
                        }
                        List<Pair<zzbr.zzg, Long>> zza3 = zze().zza(m3773d_, this.zzj.zzb().zzb(m3773d_, zzap.zzg), Math.max(0, this.zzj.zzb().zzb(m3773d_, zzap.zzh)));
                        if (!zza3.isEmpty()) {
                            Iterator<Pair<zzbr.zzg, Long>> it = zza3.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    str = null;
                                    break;
                                }
                                zzbr.zzg zzgVar = (zzbr.zzg) it.next().first;
                                if (!TextUtils.isEmpty(zzgVar.zzad())) {
                                    str = zzgVar.zzad();
                                    break;
                                }
                            }
                            List<Pair<zzbr.zzg, Long>> list = zza3;
                            if (str != null) {
                                int i = 0;
                                while (true) {
                                    list = zza3;
                                    if (i >= zza3.size()) {
                                        break;
                                    }
                                    zzbr.zzg zzgVar2 = (zzbr.zzg) zza3.get(i).first;
                                    if (!TextUtils.isEmpty(zzgVar2.zzad()) && !zzgVar2.zzad().equals(str)) {
                                        list = zza3.subList(0, i);
                                        break;
                                    }
                                    i++;
                                }
                            }
                            zzbr.zzf.zza zzb2 = zzbr.zzf.zzb();
                            int size = list.size();
                            ArrayList arrayList = new ArrayList(list.size());
                            boolean z = this.zzj.zzb().zza(zzap.zza) && this.zzj.zzb().zzd(m3773d_);
                            for (int i2 = 0; i2 < size; i2++) {
                                zzbr.zzg.zza zzbm = ((zzbr.zzg) list.get(i2).first).zzbm();
                                arrayList.add((Long) list.get(i2).second);
                                zzbr.zzg.zza zza4 = zzbm.zzg(this.zzj.zzb().zze()).zza(currentTimeMillis);
                                this.zzj.zzu();
                                zza4.zzb(false);
                                if (!z) {
                                    zzbm.zzn();
                                }
                                if (this.zzj.zzb().zze(m3773d_, zzap.zzbf)) {
                                    zzbm.zzl(zzh().zza(((zzbr.zzg) ((zzfd) zzbm.zzu())).zzbi()));
                                }
                                zzb2.zza(zzbm);
                            }
                            String zza5 = this.zzj.zzr().zza(2) ? zzh().zza((zzbr.zzf) ((zzfd) zzb2.zzu())) : null;
                            zzh();
                            byte[] zzbi = ((zzbr.zzf) ((zzfd) zzb2.zzu())).zzbi();
                            String zza6 = zzap.zzq.zza(null);
                            try {
                                URL url = new URL(zza6);
                                Preconditions.checkArgument(!arrayList.isEmpty());
                                if (this.zzw != null) {
                                    this.zzj.zzr().zzf().zza("Set uploading progress before finishing the previous upload");
                                } else {
                                    this.zzw = new ArrayList(arrayList);
                                }
                                this.zzj.zzc().zzd.zza(currentTimeMillis);
                                String str2 = "?";
                                if (size > 0) {
                                    str2 = zzb2.zza(0).zzx();
                                }
                                this.zzj.zzr().zzx().zza("Uploading data. app, uncompressed size, data", str2, Integer.valueOf(zzbi.length), zza5);
                                this.zzs = true;
                                zzfa zzd = zzd();
                                zzkg zzkgVar = new zzkg(this, m3773d_);
                                zzd.zzd();
                                zzd.zzak();
                                Preconditions.checkNotNull(url);
                                Preconditions.checkNotNull(zzbi);
                                Preconditions.checkNotNull(zzkgVar);
                                zzd.zzq().zzb(new zzfe(zzd, m3773d_, url, zzbi, null, zzkgVar));
                            } catch (MalformedURLException e) {
                                this.zzj.zzr().zzf().zza("Failed to parse upload URL. Not uploading. appId", zzew.zza(m3773d_), zza6);
                            }
                        }
                    } else {
                        this.zzy = -1L;
                        String zza7 = zze().zza(currentTimeMillis - zzx.zzk());
                        if (!TextUtils.isEmpty(zza7) && (zzb = zze().zzb(zza7)) != null) {
                            zza(zzb);
                        }
                    }
                }
            }
        } finally {
            this.zzt = false;
            zzaa();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final Clock zzm() {
        return this.zzj.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final Context zzn() {
        return this.zzj.zzn();
    }

    public final void zzo() {
        zzw();
        zzk();
        if (!this.zzm) {
            this.zzm = true;
            zzw();
            zzk();
            if ((this.zzj.zzb().zza(zzap.zzbc) || zzac()) && zzab()) {
                int zza2 = zza(this.zzv);
                int zzaf = this.zzj.zzy().zzaf();
                zzw();
                if (zza2 > zzaf) {
                    this.zzj.zzr().zzf().zza("Panic: can't downgrade version. Previous, current version", Integer.valueOf(zza2), Integer.valueOf(zzaf));
                } else if (zza2 < zzaf) {
                    if (zza(zzaf, this.zzv)) {
                        this.zzj.zzr().zzx().zza("Storage version upgraded. Previous, current version", Integer.valueOf(zza2), Integer.valueOf(zzaf));
                    } else {
                        this.zzj.zzr().zzf().zza("Storage version upgrade failed. Previous, current version", Integer.valueOf(zza2), Integer.valueOf(zzaf));
                    }
                }
            }
        }
        if (this.zzl || this.zzj.zzb().zza(zzap.zzbc)) {
            return;
        }
        this.zzj.zzr().zzv().zza("This instance being marked as an uploader");
        this.zzl = true;
        zzz();
    }

    public final void zzp() {
        this.zzq++;
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final zzft zzq() {
        return this.zzj.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final zzew zzr() {
        return this.zzj.zzr();
    }

    public final zzga zzs() {
        return this.zzj;
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final zzw zzu() {
        return this.zzj.zzu();
    }
}
