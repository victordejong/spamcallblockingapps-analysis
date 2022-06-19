package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzht.class */
public abstract class zzht<T> {
    public static final /* synthetic */ int zzc = 0;
    @Nullable
    private static volatile zzhs zze;
    private static volatile boolean zzf = false;
    public final zzhr zza;
    public final String zzb;
    private final T zzi;
    private volatile int zzk = -1;
    private volatile T zzl;
    private final boolean zzm;
    private static final Object zzd = new Object();
    private static final AtomicReference<Collection<zzht<?>>> zzg = new AtomicReference<>();
    private static final zzhv zzh = new zzhv(zzhm.zza);
    private static final AtomicInteger zzj = new AtomicInteger();

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ zzht(zzhr zzhrVar, String str, Object obj, boolean z, zzhn zzhnVar) {
        if (zzhrVar.zzb != null) {
            this.zza = zzhrVar;
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
            zzhs zzhsVar = zze;
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (zzhsVar == null || zzhsVar.zza() != context) {
                zzha.zzd();
                zzhu.zzb();
                zzhh.zzc();
                zze = new zzgx(context, zzif.zza(new zzib(context) { // from class: com.google.android.gms.internal.measurement.zzhl
                    private final Context zza;

                    {
                        this.zza = context;
                    }

                    @Override // com.google.android.gms.internal.measurement.zzib
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object zza() {
                        /*
                            Method dump skipped, instructions count: 566
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzhl.zza():java.lang.Object");
                    }
                }));
                zzj.incrementAndGet();
            }
        }
    }

    public static void zzc() {
        zzj.incrementAndGet();
    }

    public abstract T zza(Object obj);

    public final String zzd() {
        String str = this.zza.zzd;
        return this.zzb;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0100 A[Catch: all -> 0x01ba, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x0022, B:11:0x002a, B:13:0x0032, B:15:0x004d, B:17:0x005b, B:19:0x0064, B:21:0x0075, B:24:0x0083, B:26:0x008d, B:28:0x009e, B:30:0x00c2, B:33:0x00de, B:35:0x00f0, B:38:0x0100, B:40:0x0129, B:44:0x0140, B:46:0x0147, B:48:0x0156, B:50:0x015c, B:52:0x0187, B:53:0x0190, B:55:0x0199, B:56:0x01a6, B:57:0x01b4, B:59:0x01b6), top: B:68:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x015c A[Catch: all -> 0x01ba, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x0022, B:11:0x002a, B:13:0x0032, B:15:0x004d, B:17:0x005b, B:19:0x0064, B:21:0x0075, B:24:0x0083, B:26:0x008d, B:28:0x009e, B:30:0x00c2, B:33:0x00de, B:35:0x00f0, B:38:0x0100, B:40:0x0129, B:44:0x0140, B:46:0x0147, B:48:0x0156, B:50:0x015c, B:52:0x0187, B:53:0x0190, B:55:0x0199, B:56:0x01a6, B:57:0x01b4, B:59:0x01b6), top: B:68:0x0022 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T zze() {
        /*
            Method dump skipped, instructions count: 454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzht.zze():java.lang.Object");
    }
}
