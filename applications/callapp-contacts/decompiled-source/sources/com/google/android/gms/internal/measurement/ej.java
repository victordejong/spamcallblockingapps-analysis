package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ej.class */
public final class ej<T> extends ei<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f28988a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ej(T t) {
        this.f28988a = t;
    }

    @Override // com.google.android.gms.internal.measurement.ei
    public final boolean a() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.ei
    public final T b() {
        return this.f28988a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ej) {
            return this.f28988a.equals(((ej) obj).f28988a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f28988a.hashCode() + 1502476572;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f28988a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
        sb.append("Optional.of(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }
}
