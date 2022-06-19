package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzhd.class */
final class zzhd {
    private final Object zza;
    private final int zzb;

    public zzhd(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhd)) {
            return false;
        }
        zzhd zzhdVar = (zzhd) obj;
        return this.zza == zzhdVar.zza && this.zzb == zzhdVar.zzb;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * 65535) + this.zzb;
    }
}
