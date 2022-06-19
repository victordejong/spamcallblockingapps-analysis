package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.ConditionVariable;
import com.google.android.gms.internal.ads.zzbw;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdw.class */
public class zzdw {
    private static final ConditionVariable zzwd = new ConditionVariable();
    protected static volatile zztz zzwe = null;
    private static volatile Random zzwg = null;
    private zzfc zzwc;
    protected volatile Boolean zzwf;

    public zzdw(zzfc zzfcVar) {
        this.zzwc = zzfcVar;
        zzfcVar.zzcg().execute(new zzdv(this));
    }

    public static int zzbu() {
        try {
            return Build.VERSION.SDK_INT >= 21 ? ThreadLocalRandom.current().nextInt() : zzbv().nextInt();
        } catch (RuntimeException e) {
            return zzbv().nextInt();
        }
    }

    private static Random zzbv() {
        if (zzwg == null) {
            synchronized (zzdw.class) {
                try {
                    if (zzwg == null) {
                        zzwg = new Random();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzwg;
    }

    public final void zza(int i, int i2, long j) {
        zza(i, i2, j, null, null);
    }

    public final void zza(int i, int i2, long j, String str) {
        zza(i, -1, j, str, null);
    }

    public final void zza(int i, int i2, long j, String str, Exception exc) {
        try {
            zzwd.block();
            if (!this.zzwf.booleanValue() || zzwe == null) {
                return;
            }
            zzbw.zza.zzb zzd = zzbw.zza.zzs().zzo(this.zzwc.context.getPackageName()).zzd(j);
            if (str != null) {
                zzd.zzr(str);
            }
            if (exc != null) {
                StringWriter stringWriter = new StringWriter();
                zzeja.zza(exc, new PrintWriter(stringWriter));
                zzd.zzp(stringWriter.toString()).zzq(exc.getClass().getName());
            }
            zzud zzf = zzwe.zzf(((zzbw.zza) ((zzelb) zzd.zzbiw())).toByteArray());
            zzf.zzbv(i);
            if (i2 != -1) {
                zzf.zzbu(i2);
            }
            zzf.log();
        } catch (Exception e) {
        }
    }
}
