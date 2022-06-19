package com.google.android.gms.measurement.internal;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzel.class */
public final class zzel<V> {
    private static final Object zzf = new Object();
    private final String zza;
    private final zzej<V> zzb;
    private final V zzc;
    private final V zzd;
    private final Object zze;
    private volatile V zzg;
    private volatile V zzh;

    /* JADX INFO: Access modifiers changed from: private */
    public zzel(String str, V v, V v2, zzej<V> zzejVar) {
        this.zze = new Object();
        this.zzg = null;
        this.zzh = null;
        this.zza = str;
        this.zzc = v;
        this.zzd = v2;
        this.zzb = zzejVar;
    }

    public final V zza(V v) {
        List<zzel> list;
        synchronized (this.zze) {
            V v2 = this.zzg;
        }
        if (v != null) {
            return v;
        }
        if (zzem.zza == null) {
            return this.zzc;
        }
        zzw zzwVar = zzem.zza;
        synchronized (zzf) {
            if (zzw.zza()) {
                return this.zzh == null ? this.zzc : this.zzh;
            }
            try {
                list = zzap.zzcr;
                for (zzel zzelVar : list) {
                    if (zzw.zza()) {
                        throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                    }
                    V v3 = null;
                    try {
                        if (zzelVar.zzb != null) {
                            v3 = zzelVar.zzb.zza();
                        }
                    } catch (IllegalStateException e) {
                        v3 = null;
                    }
                    synchronized (zzf) {
                        zzelVar.zzh = v3;
                    }
                }
            } catch (SecurityException e2) {
            }
            zzej<V> zzejVar = this.zzb;
            if (zzejVar == null) {
                zzw zzwVar2 = zzem.zza;
                return this.zzc;
            }
            try {
                return zzejVar.zza();
            } catch (IllegalStateException e3) {
                zzw zzwVar3 = zzem.zza;
                return this.zzc;
            } catch (SecurityException e4) {
                zzw zzwVar4 = zzem.zza;
                return this.zzc;
            }
        }
    }

    public final String zza() {
        return this.zza;
    }
}
