package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzeg.class */
final class zzeg<T> implements zzec<T>, Serializable {
    @NullableDecl

    /* renamed from: f */
    private final T f8374f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeg(@NullableDecl T t) {
        this.f8374f = t;
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (obj instanceof zzeg) {
            return zzdz.m12745a(this.f8374f, ((zzeg) obj).f8374f);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f8374f});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f8374f);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
        sb.append("Suppliers.ofInstance(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzec
    public final T zza() {
        return this.f8374f;
    }
}
