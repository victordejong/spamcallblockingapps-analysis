package com.google.android.gms.internal.measurement;

import androidx.recyclerview.widget.C0608b;
import java.util.Objects;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzid.class */
final class zzid<T> implements zzib<T> {
    public volatile zzib<T> zza;
    public volatile boolean zzb;
    @NullableDecl
    public T zzc;

    public zzid(zzib<T> zzibVar) {
        Objects.requireNonNull(zzibVar);
        this.zza = zzibVar;
    }

    public final String toString() {
        Object obj = this.zza;
        Object obj2 = obj;
        if (obj == null) {
            String valueOf = String.valueOf(this.zzc);
            obj2 = C0608b.m7625j(new StringBuilder(valueOf.length() + 25), "<supplier that returned ", valueOf, ">");
        }
        String valueOf2 = String.valueOf(obj2);
        return C0608b.m7625j(new StringBuilder(valueOf2.length() + 19), "Suppliers.memoize(", valueOf2, ")");
    }

    @Override // com.google.android.gms.internal.measurement.zzib
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
