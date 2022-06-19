package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.measurement.en */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/en.class */
final class C13474en<T> implements AbstractC13471ek, Serializable {

    /* renamed from: a */
    final T f50694a;

    public C13474en(T t) {
        this.f50694a = t;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13471ek
    /* renamed from: a */
    public final T mo12298a() {
        return this.f50694a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C13474en) {
            T t = this.f50694a;
            T t2 = ((C13474en) obj).f50694a;
            return t == t2 || t.equals(t2);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f50694a});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f50694a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
        sb.append("Suppliers.ofInstance(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }
}
