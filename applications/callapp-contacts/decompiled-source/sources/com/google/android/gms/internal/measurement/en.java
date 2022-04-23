package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/en.class */
final class en<T> implements ek, Serializable {

    /* renamed from: a  reason: collision with root package name */
    final T f28995a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public en(T t) {
        this.f28995a = t;
    }

    @Override // com.google.android.gms.internal.measurement.ek
    public final T a() {
        return this.f28995a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof en)) {
            return false;
        }
        T t = this.f28995a;
        T t2 = ((en) obj).f28995a;
        return t == t2 || t.equals(t2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f28995a});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f28995a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
        sb.append("Suppliers.ofInstance(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }
}
