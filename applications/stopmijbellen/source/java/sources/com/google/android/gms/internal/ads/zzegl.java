package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzegl.class */
public final class zzegl {
    private int zza = 0;
    private long zzb = 0;
    private long zzc = 0;
    private long zzd = 0;
    private final Object zze = new Object();
    private final Object zzf = new Object();
    private final Object zzg = new Object();
    private final Object zzh = new Object();

    public final int zza() {
        int i;
        synchronized (this.zze) {
            i = this.zza;
        }
        return i;
    }

    public final long zzb() {
        long j;
        synchronized (this) {
            synchronized (this.zzh) {
                j = this.zzd;
            }
        }
        return j;
    }

    public final long zzc() {
        long j;
        synchronized (this) {
            synchronized (this.zzg) {
                j = this.zzc;
            }
        }
        return j;
    }

    public final long zzd() {
        long j;
        synchronized (this.zzf) {
            j = this.zzb;
        }
        return j;
    }

    public final void zze(long j) {
        synchronized (this) {
            synchronized (this.zzh) {
                this.zzd = j;
            }
        }
    }

    public final void zzf(long j) {
        synchronized (this) {
            synchronized (this.zzg) {
                this.zzc = j;
            }
        }
    }

    public final void zzg(int i) {
        synchronized (this.zze) {
            this.zza = i;
        }
    }

    public final void zzh(long j) {
        synchronized (this.zzf) {
            this.zzb = j;
        }
    }
}
