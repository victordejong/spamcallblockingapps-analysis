package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagy.class */
public final class zzagy<T> {
    public final T zza;
    public final zzagb zzb;
    public final zzahb zzc;
    public boolean zzd;

    private zzagy(zzahb zzahbVar) {
        this.zzd = false;
        this.zza = null;
        this.zzb = null;
        this.zzc = zzahbVar;
    }

    private zzagy(T t, zzagb zzagbVar) {
        this.zzd = false;
        this.zza = t;
        this.zzb = zzagbVar;
        this.zzc = null;
    }

    public static <T> zzagy<T> zza(zzahb zzahbVar) {
        return new zzagy<>(zzahbVar);
    }

    public static <T> zzagy<T> zzb(T t, zzagb zzagbVar) {
        return new zzagy<>(t, zzagbVar);
    }

    public final boolean zzc() {
        return this.zzc == null;
    }
}
