package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalo.class */
public final class zzalo {
    public volatile Boolean zzb;
    private final zzams zze;
    private static final ConditionVariable zzc = new ConditionVariable();
    public static volatile zzfoj zza = null;
    private static volatile Random zzd = null;

    public zzalo(zzams zzamsVar) {
        this.zze = zzamsVar;
        zzamsVar.zzk().execute(new zzaln(this));
    }

    public static final int zzd() {
        try {
            return ThreadLocalRandom.current().nextInt();
        } catch (RuntimeException e) {
            return zze().nextInt();
        }
    }

    private static Random zze() {
        if (zzd == null) {
            synchronized (zzalo.class) {
                try {
                    if (zzd == null) {
                        zzd = new Random();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzd;
    }

    public final void zzc(int i, int i2, long j, String str, Exception exc) {
        try {
            zzc.block();
            if (!this.zzb.booleanValue() || zza == null) {
                return;
            }
            zzail zza2 = zzaip.zza();
            zza2.zza(this.zze.zza.getPackageName());
            zza2.zze(j);
            if (str != null) {
                zza2.zzb(str);
            }
            if (exc != null) {
                StringWriter stringWriter = new StringWriter();
                exc.printStackTrace(new PrintWriter(stringWriter));
                zza2.zzf(stringWriter.toString());
                zza2.zzd(exc.getClass().getName());
            }
            zzfoi zza3 = zza.zza(zza2.zzah().zzar());
            zza3.zza(i);
            if (i2 != -1) {
                zza3.zzb(i2);
            }
            zza3.zzc();
        } catch (Exception e) {
        }
    }
}
