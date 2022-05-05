package com.google.android.gms.internal.measurement;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzea.class */
final class zzea<T> extends zzdy<T> {

    /* renamed from: f */
    private final T f8370f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzea(T t) {
        this.f8370f = t;
    }

    @Override // com.google.android.gms.internal.measurement.zzdy
    /* renamed from: b */
    public final boolean mo12744b() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzdy
    /* renamed from: c */
    public final T mo12743c() {
        return this.f8370f;
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (obj instanceof zzea) {
            return this.f8370f.equals(((zzea) obj).f8370f);
        }
        return false;
    }

    public final int hashCode() {
        return this.f8370f.hashCode() + 1502476572;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f8370f);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
        sb.append("Optional.of(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }
}
