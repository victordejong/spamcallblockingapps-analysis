package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdu.class */
public final class zzdu<T> extends zzdy<T> {
    public static final zzdu<Object> zza = new zzdu<>();

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }

    @Override // com.google.android.gms.internal.measurement.zzdy
    public final boolean zza() {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzdy
    public final T zzb() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }
}
