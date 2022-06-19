package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaoa.class */
public abstract class zzaoa implements Callable {
    public final String zza = getClass().getSimpleName();
    public final zzams zzb;
    public final String zzc;
    public final String zzd;
    public final zzaiz zze;
    public Method zzf;
    public final int zzg;
    public final int zzh;

    public zzaoa(zzams zzamsVar, String str, String str2, zzaiz zzaizVar, int i, int i2) {
        this.zzb = zzamsVar;
        this.zzc = str;
        this.zzd = str2;
        this.zze = zzaizVar;
        this.zzg = i;
        this.zzh = i2;
    }

    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ Object call() throws Exception {
        zzk();
        return null;
    }

    public abstract void zza() throws IllegalAccessException, InvocationTargetException;

    public Void zzk() throws Exception {
        try {
            long nanoTime = System.nanoTime();
            Method zzj = this.zzb.zzj(this.zzc, this.zzd);
            this.zzf = zzj;
            if (zzj == null) {
                return null;
            }
            zza();
            zzalo zzd = this.zzb.zzd();
            if (zzd == null) {
                return null;
            }
            int i = this.zzg;
            if (i == Integer.MIN_VALUE) {
                return null;
            }
            zzd.zzc(this.zzh, i, (System.nanoTime() - nanoTime) / 1000, null, null);
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }
}
