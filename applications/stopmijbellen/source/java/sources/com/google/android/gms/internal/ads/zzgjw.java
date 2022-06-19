package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgjw.class */
final class zzgjw {
    private final Object zza;
    private final int zzb;

    public zzgjw(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgjw)) {
            return false;
        }
        zzgjw zzgjwVar = (zzgjw) obj;
        return this.zza == zzgjwVar.zza && this.zzb == zzgjwVar.zzb;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * 65535) + this.zzb;
    }
}
