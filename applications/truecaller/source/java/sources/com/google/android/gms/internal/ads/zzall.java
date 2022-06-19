package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzall.class */
public final class zzall<T> {
    public final T zza;
    private zzalc zzb = new zzalc();
    private boolean zzc;
    private boolean zzd;

    public zzall(T t) {
        this.zza = t;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzall.class == obj.getClass()) {
            return this.zza.equals(((zzall) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zza(zzalk<T> zzalkVar) {
        this.zzd = true;
        if (this.zzc) {
            zzalkVar.zza(this.zza, this.zzb.zzb());
        }
    }

    public final void zzb(int i, zzalj<T> zzaljVar) {
        if (!this.zzd) {
            if (i != -1) {
                this.zzb.zza(i);
            }
            this.zzc = true;
            zzaljVar.zza(this.zza);
        }
    }

    public final void zzc(zzalk<T> zzalkVar) {
        if (this.zzd || !this.zzc) {
            return;
        }
        zzale zzb = this.zzb.zzb();
        this.zzb = new zzalc();
        this.zzc = false;
        zzalkVar.zza(this.zza, zzb);
    }
}
