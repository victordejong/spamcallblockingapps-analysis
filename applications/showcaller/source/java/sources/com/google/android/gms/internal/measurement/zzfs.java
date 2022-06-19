package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfs.class */
final class zzfs<T> implements Serializable, AbstractC7321c4 {
    final T zza;

    public zzfs(T t) {
        this.zza = t;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzfs) {
            T t = this.zza;
            T t2 = ((zzfs) obj).zza;
            return t == t2 || t.equals(t2);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zza);
        StringBuilder sb = new StringBuilder(valueOf.length() + 22);
        sb.append("Suppliers.ofInstance(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7321c4
    public final T zza() {
        return this.zza;
    }
}
