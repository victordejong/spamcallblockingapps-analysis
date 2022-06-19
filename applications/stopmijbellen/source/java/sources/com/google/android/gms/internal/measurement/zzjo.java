package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjo.class */
final class zzjo {
    private final Object zza;
    private final int zzb;

    public zzjo(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzjo)) {
            return false;
        }
        zzjo zzjoVar = (zzjo) obj;
        return this.zza == zzjoVar.zza && this.zzb == zzjoVar.zzb;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * 65535) + this.zzb;
    }
}
