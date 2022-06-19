package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfl.class */
public final class zzfl<T> extends zzfn<T> {

    /* renamed from: d */
    static final zzfl<Object> f34848d = new zzfl<>();

    private zzfl() {
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }

    @Override // com.google.android.gms.internal.measurement.zzfn
    public final boolean zza() {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzfn
    public final T zzb() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }
}
