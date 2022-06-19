package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgn.class */
public abstract class zzgn implements Callable {
    private final String TAG = getClass().getSimpleName();
    private final String className;
    protected final zzcf.zza.zzb zzabb;
    private final String zzabj;
    protected Method zzabl;
    private final int zzabo;
    private final int zzabp;
    protected final zzfc zzwc;

    public zzgn(zzfc zzfcVar, String str, String str2, zzcf.zza.zzb zzbVar, int i, int i2) {
        this.zzwc = zzfcVar;
        this.className = str;
        this.zzabj = str2;
        this.zzabb = zzbVar;
        this.zzabo = i;
        this.zzabp = i2;
    }

    protected abstract void zzcw() throws IllegalAccessException, InvocationTargetException;

    /* renamed from: zzcy */
    public Void call() throws Exception {
        try {
            long nanoTime = System.nanoTime();
            Method zza = this.zzwc.zza(this.className, this.zzabj);
            this.zzabl = zza;
            if (zza == null) {
                return null;
            }
            zzcw();
            zzdw zzcl = this.zzwc.zzcl();
            if (zzcl == null) {
                return null;
            }
            int i = this.zzabo;
            if (i == Integer.MIN_VALUE) {
                return null;
            }
            zzcl.zza(this.zzabp, i, (System.nanoTime() - nanoTime) / 1000);
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }
}
