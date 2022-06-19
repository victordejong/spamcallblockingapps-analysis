package com.google.android.gms.measurement.internal;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzdv.class */
public final class zzdv<V> {
    private static final Object zzf = new Object();
    private final String zza;
    private final zzdt<V> zzb;
    private final V zzc;
    private final V zzd;
    private final Object zze = new Object();
    private volatile V zzg = null;
    private volatile V zzh = null;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ zzdv(String str, Object obj, Object obj2, zzdt zzdtVar, zzds zzdsVar) {
        this.zza = str;
        this.zzc = obj;
        this.zzd = obj2;
        this.zzb = zzdtVar;
    }

    public final String zza() {
        return this.zza;
    }

    public final V zzb(V v) {
        List<zzdv> list;
        V v2;
        synchronized (this.zze) {
        }
        if (v != null) {
            return v;
        }
        if (zzdu.zza == null) {
            return this.zzc;
        }
        synchronized (zzf) {
            if (zzz.zza()) {
                return this.zzh == null ? this.zzc : this.zzh;
            }
            try {
                list = zzdw.zzaC;
                for (zzdv zzdvVar : list) {
                    if (zzz.zza()) {
                        throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                    }
                    try {
                        zzdt<V> zzdtVar = zzdvVar.zzb;
                        v2 = null;
                        if (zzdtVar != null) {
                            v2 = zzdtVar.zza();
                        }
                    } catch (IllegalStateException e) {
                        v2 = null;
                    }
                    synchronized (zzf) {
                        zzdvVar.zzh = v2;
                    }
                }
            } catch (SecurityException e2) {
            }
            zzdt<V> zzdtVar2 = this.zzb;
            if (zzdtVar2 == null) {
                return this.zzc;
            }
            try {
                return zzdtVar2.zza();
            } catch (IllegalStateException e3) {
                return this.zzc;
            } catch (SecurityException e4) {
                return this.zzc;
            }
        }
    }
}
