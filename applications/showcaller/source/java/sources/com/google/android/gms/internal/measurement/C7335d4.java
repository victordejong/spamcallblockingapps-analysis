package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* renamed from: com.google.android.gms.internal.measurement.d4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/d4.class */
final class C7335d4<T> implements AbstractC7321c4<T> {

    /* renamed from: d */
    volatile AbstractC7321c4<T> f34396d;

    /* renamed from: e */
    volatile boolean f34397e;

    /* renamed from: f */
    T f34398f;

    public C7335d4(AbstractC7321c4<T> abstractC7321c4) {
        Objects.requireNonNull(abstractC7321c4);
        this.f34396d = abstractC7321c4;
    }

    public final String toString() {
        AbstractC7321c4<T> abstractC7321c4 = this.f34396d;
        String str = abstractC7321c4;
        if (abstractC7321c4 == null) {
            String valueOf = String.valueOf(this.f34398f);
            StringBuilder sb = new StringBuilder(valueOf.length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            str = sb.toString();
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
        if (!this.f34397e) {
            synchronized (this) {
                if (!this.f34397e) {
                    T zza = this.f34396d.zza();
                    this.f34398f = zza;
                    this.f34397e = true;
                    this.f34396d = null;
                    return zza;
                }
            }
        }
        return this.f34398f;
    }
}
