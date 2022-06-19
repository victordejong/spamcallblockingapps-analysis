package com.google.android.gms.internal.measurement;

import androidx.recyclerview.widget.C0608b;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzia.class */
public final class zzia<T> extends zzhz<T> {
    private final T zza;

    public zzia(T t) {
        this.zza = t;
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (obj instanceof zzia) {
            return this.zza.equals(((zzia) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zza);
        return C0608b.m7625j(new StringBuilder(valueOf.length() + 13), "Optional.of(", valueOf, ")");
    }

    @Override // com.google.android.gms.internal.measurement.zzhz
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzhz
    public final T zzb() {
        return this.zza;
    }
}
