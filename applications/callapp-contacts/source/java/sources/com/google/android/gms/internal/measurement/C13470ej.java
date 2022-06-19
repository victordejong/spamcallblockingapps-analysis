package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ej */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ej.class */
public final class C13470ej<T> extends AbstractC13469ei<T> {

    /* renamed from: a */
    private final T f50687a;

    public C13470ej(T t) {
        this.f50687a = t;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13469ei
    /* renamed from: a */
    public final boolean mo12895a() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13469ei
    /* renamed from: b */
    public final T mo12894b() {
        return this.f50687a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C13470ej) {
            return this.f50687a.equals(((C13470ej) obj).f50687a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f50687a.hashCode() + 1502476572;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f50687a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
        sb.append("Optional.of(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }
}
