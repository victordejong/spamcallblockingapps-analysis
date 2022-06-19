package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcl.class */
public abstract class zzcl<T> {
    private static zzcz<zzcy<zzch>> zzd;
    private final zzcr zze;
    private final String zzf;
    private final T zzg;
    private volatile int zzi;
    private volatile T zzj;
    private static final Object zza = new Object();
    private static Context zzb = null;
    private static boolean zzc = false;
    private static final AtomicInteger zzh = new AtomicInteger();

    private zzcl(zzcr zzcrVar, String str, T t) {
        this.zzi = -1;
        if (zzcrVar.zzb != null) {
            this.zze = zzcrVar;
            this.zzf = str;
            this.zzg = t;
            return;
        }
        throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
    }

    public /* synthetic */ zzcl(zzcr zzcrVar, String str, Object obj, zzcn zzcnVar) {
        this(zzcrVar, str, obj);
    }

    private final String zza(String str) {
        if (str == null || !str.isEmpty()) {
            String valueOf = String.valueOf(str);
            String valueOf2 = String.valueOf(this.zzf);
            return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        }
        return this.zzf;
    }

    public static void zza() {
        zzh.incrementAndGet();
    }

    public static void zza(Context context) {
        synchronized (zza) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (zzb != context) {
                zzbx.zzc();
                zzcu.zza();
                zzcg.zza();
                zzh.incrementAndGet();
                zzb = context;
                zzd = zzdc.zza(zzco.zza);
            }
        }
    }

    public static zzcl<Double> zzb(zzcr zzcrVar, String str, double d) {
        return new zzcp(zzcrVar, str, Double.valueOf(d));
    }

    public static zzcl<Long> zzb(zzcr zzcrVar, String str, long j) {
        return new zzcn(zzcrVar, str, Long.valueOf(j));
    }

    public static zzcl<String> zzb(zzcr zzcrVar, String str, String str2) {
        return new zzcs(zzcrVar, str, str2);
    }

    public static zzcl<Boolean> zzb(zzcr zzcrVar, String str, boolean z) {
        return new zzcq(zzcrVar, str, Boolean.valueOf(z));
    }

    public static final /* synthetic */ zzcy zzd() {
        new zzck();
        return zzck.zza(zzb);
    }

    abstract T zza(Object obj);

    public final String zzb() {
        return zza(this.zze.zzd);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x014d, code lost:
        if (r8 != null) goto L56;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0125 A[Catch: all -> 0x0177, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:6:0x0011, B:8:0x0019, B:10:0x001f, B:13:0x0037, B:15:0x0059, B:16:0x0062, B:18:0x0075, B:25:0x0090, B:27:0x009a, B:29:0x00aa, B:31:0x00c3, B:34:0x00cf, B:36:0x00de, B:37:0x00e7, B:39:0x00f0, B:41:0x00ff, B:42:0x010a, B:44:0x0117, B:49:0x0125, B:52:0x0145, B:55:0x0153, B:57:0x0159, B:58:0x0165, B:59:0x0171, B:61:0x0173), top: B:70:0x0011 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T zzc() {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzcl.zzc():java.lang.Object");
    }
}
