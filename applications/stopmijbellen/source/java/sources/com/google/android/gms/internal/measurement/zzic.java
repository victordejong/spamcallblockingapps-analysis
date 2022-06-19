package com.google.android.gms.internal.measurement;

import androidx.recyclerview.widget.C0608b;
import java.io.Serializable;
import java.util.Objects;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzic.class */
final class zzic<T> implements Serializable, zzib {
    public final zzib<T> zza;
    public volatile transient boolean zzb;
    @NullableDecl
    public transient T zzc;

    public zzic(zzib<T> zzibVar) {
        Objects.requireNonNull(zzibVar);
        this.zza = zzibVar;
    }

    public final String toString() {
        String str;
        if (this.zzb) {
            String valueOf = String.valueOf(this.zzc);
            str = C0608b.m7625j(new StringBuilder(valueOf.length() + 25), "<supplier that returned ", valueOf, ">");
        } else {
            str = this.zza;
        }
        String valueOf2 = String.valueOf(str);
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
                    return zza;
                }
            }
        }
        return this.zzc;
    }
}
