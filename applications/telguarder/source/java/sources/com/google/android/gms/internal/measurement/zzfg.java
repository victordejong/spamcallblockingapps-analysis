package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfg.class */
public abstract class zzfg<T> {
    public static final /* synthetic */ int zzc = 0;
    @Nullable
    private static volatile zzff zze;
    private static volatile boolean zzf = false;
    final zzfe zza;
    final String zzb;
    private final T zzi;
    private volatile int zzk = -1;
    private volatile T zzl;
    private final boolean zzm;
    private static final Object zzd = new Object();
    private static final AtomicReference<Collection<zzfg<?>>> zzg = new AtomicReference<>();
    private static final zzfi zzh = new zzfi(zzez.zza);
    private static final AtomicInteger zzj = new AtomicInteger();

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ zzfg(zzfe zzfeVar, String str, Object obj, boolean z, zzfa zzfaVar) {
        if (zzfeVar.zzb != null) {
            this.zza = zzfeVar;
            this.zzb = str;
            this.zzi = obj;
            this.zzm = true;
            return;
        }
        throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
    }

    @Deprecated
    public static void zzb(Context context) {
        synchronized (zzd) {
            zzff zzffVar = zze;
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (zzffVar == null || zzffVar.zza() != context) {
                zzen.zzd();
                zzfh.zzb();
                zzeu.zzc();
                zze = new zzek(context, zzfs.zza(new zzfo(context) { // from class: com.google.android.gms.internal.measurement.zzey
                    private final Context zza;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zza = context;
                    }

                    @Override // com.google.android.gms.internal.measurement.zzfo
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object zza() {
                        /*
                            Method dump skipped, instructions count: 566
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzey.zza():java.lang.Object");
                    }
                }));
                zzj.incrementAndGet();
            }
        }
    }

    public static void zzc() {
        zzj.incrementAndGet();
    }

    abstract T zza(Object obj);

    public final String zzd() {
        String str = this.zza.zzd;
        return this.zzb;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x010b A[Catch: all -> 0x01cf, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x0022, B:11:0x002a, B:13:0x0032, B:15:0x0054, B:17:0x0061, B:19:0x006a, B:21:0x0079, B:22:0x0083, B:24:0x008f, B:27:0x0099, B:29:0x00a3, B:31:0x00b4, B:33:0x00d7, B:36:0x00ef, B:38:0x00fe, B:41:0x010b, B:43:0x0144, B:47:0x0159, B:49:0x015f, B:51:0x016e, B:53:0x0174, B:55:0x01a2, B:56:0x01aa, B:58:0x01b1, B:59:0x01bd, B:60:0x01c9, B:62:0x01cb), top: B:71:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0174 A[Catch: all -> 0x01cf, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x0022, B:11:0x002a, B:13:0x0032, B:15:0x0054, B:17:0x0061, B:19:0x006a, B:21:0x0079, B:22:0x0083, B:24:0x008f, B:27:0x0099, B:29:0x00a3, B:31:0x00b4, B:33:0x00d7, B:36:0x00ef, B:38:0x00fe, B:41:0x010b, B:43:0x0144, B:47:0x0159, B:49:0x015f, B:51:0x016e, B:53:0x0174, B:55:0x01a2, B:56:0x01aa, B:58:0x01b1, B:59:0x01bd, B:60:0x01c9, B:62:0x01cb), top: B:71:0x0022 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T zze() {
        /*
            Method dump skipped, instructions count: 473
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzfg.zze():java.lang.Object");
    }
}
