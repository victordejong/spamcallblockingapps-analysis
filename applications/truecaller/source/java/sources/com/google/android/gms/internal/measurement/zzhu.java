package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzhu.class */
public abstract class zzhu {
    public static final /* synthetic */ int zzc = 0;
    private static volatile zzhs zze;
    private static volatile boolean zzf = false;
    public final zzhr zza;
    public final String zzb;
    private final Object zzj;
    private volatile int zzk = -1;
    private volatile Object zzl;
    private final boolean zzm;
    private static final Object zzd = new Object();
    private static final AtomicReference zzg = new AtomicReference();
    private static final zzhw zzh = new zzhw(zzhl.zza, null);
    private static final AtomicInteger zzi = new AtomicInteger();

    public /* synthetic */ zzhu(zzhr zzhrVar, String str, Object obj, boolean z, zzht zzhtVar) {
        if (zzhrVar.zzb != null) {
            this.zza = zzhrVar;
            this.zzb = str;
            this.zzj = obj;
            this.zzm = true;
            return;
        }
        throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
    }

    public static void zzd() {
        zzi.incrementAndGet();
    }

    public static void zze(Context context) {
        if (zze == null) {
            Object obj = zzd;
            synchronized (obj) {
                if (zze == null) {
                    synchronized (obj) {
                        zzhs zzhsVar = zze;
                        Context applicationContext = context.getApplicationContext();
                        if (applicationContext != null) {
                            context = applicationContext;
                        }
                        if (zzhsVar == null || zzhsVar.zza() != context) {
                            zzha.zze();
                            zzhv.zzc();
                            zzhh.zze();
                            final Context context2 = context;
                            zze = new zzgx(context, zzif.zza(new zzib() { // from class: com.google.android.gms.internal.measurement.zzhm
                                @Override // com.google.android.gms.internal.measurement.zzib
                                /*
                                    Code decompiled incorrectly, please refer to instructions dump.
                                    To view partially-correct add '--show-bad-code' argument
                                */
                                public final java.lang.Object zza() {
                                    /*
                                        Method dump skipped, instructions count: 529
                                        To view this dump add '--comments-level debug' option
                                    */
                                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzhm.zza():java.lang.Object");
                                }
                            }));
                            zzi.incrementAndGet();
                        }
                    }
                }
            }
        }
    }

    public abstract Object zza(Object obj);

    /* JADX WARN: Removed duplicated region for block: B:39:0x010d A[Catch: all -> 0x01d5, TRY_ENTER, TryCatch #0 {, blocks: (B:9:0x0022, B:11:0x002a, B:13:0x0032, B:15:0x004d, B:17:0x005b, B:19:0x0064, B:21:0x0075, B:22:0x0080, B:25:0x0090, B:27:0x009a, B:29:0x00ab, B:31:0x00cf, B:34:0x00eb, B:36:0x00fd, B:39:0x010d, B:41:0x0117, B:45:0x0130, B:47:0x0138, B:49:0x0144, B:53:0x015b, B:55:0x0162, B:57:0x0171, B:59:0x0177, B:61:0x01a2, B:62:0x01ab, B:64:0x01b4, B:65:0x01c1, B:66:0x01cf, B:68:0x01d1), top: B:77:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x015b A[Catch: all -> 0x01d5, TRY_ENTER, TryCatch #0 {, blocks: (B:9:0x0022, B:11:0x002a, B:13:0x0032, B:15:0x004d, B:17:0x005b, B:19:0x0064, B:21:0x0075, B:22:0x0080, B:25:0x0090, B:27:0x009a, B:29:0x00ab, B:31:0x00cf, B:34:0x00eb, B:36:0x00fd, B:39:0x010d, B:41:0x0117, B:45:0x0130, B:47:0x0138, B:49:0x0144, B:53:0x015b, B:55:0x0162, B:57:0x0171, B:59:0x0177, B:61:0x01a2, B:62:0x01ab, B:64:0x01b4, B:65:0x01c1, B:66:0x01cf, B:68:0x01d1), top: B:77:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0177 A[Catch: all -> 0x01d5, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x0022, B:11:0x002a, B:13:0x0032, B:15:0x004d, B:17:0x005b, B:19:0x0064, B:21:0x0075, B:22:0x0080, B:25:0x0090, B:27:0x009a, B:29:0x00ab, B:31:0x00cf, B:34:0x00eb, B:36:0x00fd, B:39:0x010d, B:41:0x0117, B:45:0x0130, B:47:0x0138, B:49:0x0144, B:53:0x015b, B:55:0x0162, B:57:0x0171, B:59:0x0177, B:61:0x01a2, B:62:0x01ab, B:64:0x01b4, B:65:0x01c1, B:66:0x01cf, B:68:0x01d1), top: B:77:0x0022 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzb() {
        /*
            Method dump skipped, instructions count: 481
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzhu.zzb():java.lang.Object");
    }

    public final String zzc() {
        String str = this.zza.zzd;
        return this.zzb;
    }
}
