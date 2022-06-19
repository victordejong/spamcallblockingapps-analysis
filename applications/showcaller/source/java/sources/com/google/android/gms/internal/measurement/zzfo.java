package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfo.class */
public final class zzfo<T> extends zzfn<T> {
    private final T zza;

    public zzfo(T t) {
        this.zza = t;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzfo) {
            return this.zza.equals(((zzfo) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zza);
        StringBuilder sb = new StringBuilder(valueOf.length() + 13);
        sb.append("Optional.of(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzfn
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzfn
    public final T zzb() {
        return this.zza;
    }
}
