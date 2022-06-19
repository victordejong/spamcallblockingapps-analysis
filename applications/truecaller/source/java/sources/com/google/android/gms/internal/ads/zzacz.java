package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzacz.class */
public abstract class zzacz implements Callable {
    public final String zza = getClass().getSimpleName();
    public final zzabr zzb;
    public final String zzc;
    public final String zzd;
    public final zzyj zze;
    public Method zzf;
    public final int zzg;
    public final int zzh;

    public zzacz(zzabr zzabrVar, String str, String str2, zzyj zzyjVar, int i, int i2) {
        this.zzb = zzabrVar;
        this.zzc = str;
        this.zzd = str2;
        this.zze = zzyjVar;
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
            Method zzq = this.zzb.zzq(this.zzc, this.zzd);
            this.zzf = zzq;
            if (zzq == null) {
                return null;
            }
            zza();
            zzaan zzj = this.zzb.zzj();
            if (zzj == null) {
                return null;
            }
            int i = this.zzg;
            if (i == Integer.MIN_VALUE) {
                return null;
            }
            zzj.zzc(this.zzh, i, (System.nanoTime() - nanoTime) / 1000, null, null);
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }
}
