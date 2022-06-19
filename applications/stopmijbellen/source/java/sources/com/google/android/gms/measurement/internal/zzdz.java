package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.List;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzdz.class */
public final class zzdz<V> {
    private static final Object zzf = new Object();
    private final String zza;
    private final zzdx<V> zzb;
    private final V zzc;
    private final V zzd;
    private final Object zze = new Object();
    private volatile V zzg = null;
    private volatile V zzh = null;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ zzdz(String str, Object obj, Object obj2, zzdx zzdxVar, zzdw zzdwVar) {
        this.zza = str;
        this.zzc = obj;
        this.zzd = obj2;
        this.zzb = zzdxVar;
    }

    public final String zza() {
        return this.zza;
    }

    public final V zzb(V v) {
        List<zzdz> list;
        V v2;
        synchronized (this.zze) {
        }
        if (v != null) {
            return v;
        }
        if (zzdy.zza == null) {
            return this.zzc;
        }
        synchronized (zzf) {
            if (zzz.zza()) {
                return this.zzh == null ? this.zzc : this.zzh;
            }
            try {
                list = zzea.zzaG;
                for (zzdz zzdzVar : list) {
                    if (zzz.zza()) {
                        throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                    }
                    try {
                        zzdx<V> zzdxVar = zzdzVar.zzb;
                        v2 = null;
                        if (zzdxVar != null) {
                            v2 = zzdxVar.zza();
                        }
                    } catch (IllegalStateException e) {
                        v2 = null;
                    }
                    synchronized (zzf) {
                        zzdzVar.zzh = v2;
                    }
                }
            } catch (SecurityException e2) {
            }
            zzdx<V> zzdxVar2 = this.zzb;
            if (zzdxVar2 == null) {
                return this.zzc;
            }
            try {
                return zzdxVar2.zza();
            } catch (IllegalStateException e3) {
                return this.zzc;
            } catch (SecurityException e4) {
                return this.zzc;
            }
        }
    }
}
