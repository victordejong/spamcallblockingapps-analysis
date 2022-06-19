package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfq.class */
final class zzfq<T> implements Serializable, AbstractC7321c4 {

    /* renamed from: d */
    volatile transient boolean f34849d;

    /* renamed from: e */
    transient T f34850e;
    final AbstractC7321c4<T> zza;

    public zzfq(AbstractC7321c4<T> abstractC7321c4) {
        Objects.requireNonNull(abstractC7321c4);
        this.zza = abstractC7321c4;
    }

    public final String toString() {
        String str;
        if (this.f34849d) {
            String valueOf = String.valueOf(this.f34850e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            str = sb.toString();
        } else {
            str = this.zza;
        }
        String valueOf2 = String.valueOf(str);
        StringBuilder sb2 = new StringBuilder(valueOf2.length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7321c4
    public final T zza() {
        if (!this.f34849d) {
            synchronized (this) {
                if (!this.f34849d) {
                    T zza = this.zza.zza();
                    this.f34850e = zza;
                    this.f34849d = true;
                    return zza;
                }
            }
        }
        return this.f34850e;
    }
}
