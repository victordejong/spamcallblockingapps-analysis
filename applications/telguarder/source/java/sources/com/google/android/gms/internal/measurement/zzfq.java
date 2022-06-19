package com.google.android.gms.internal.measurement;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.Objects;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfq.class */
final class zzfq<T> implements zzfo<T> {
    volatile zzfo<T> zza;
    volatile boolean zzb;
    @NullableDecl
    T zzc;

    public zzfq(zzfo<T> zzfoVar) {
        Objects.requireNonNull(zzfoVar);
        this.zza = zzfoVar;
    }

    public final String toString() {
        zzfo<T> zzfoVar = this.zza;
        String str = zzfoVar;
        if (zzfoVar == null) {
            String valueOf = String.valueOf(this.zzc);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(SimpleComparison.GREATER_THAN_OPERATION);
            str = sb.toString();
        }
        String valueOf2 = String.valueOf(str);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzfo
    public final T zza() {
        if (!this.zzb) {
            synchronized (this) {
                if (!this.zzb) {
                    T zza = this.zza.zza();
                    this.zzc = zza;
                    this.zzb = true;
                    this.zza = null;
                    return zza;
                }
            }
        }
        return this.zzc;
    }
}
