package com.google.android.gms.internal.measurement;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdu.class */
final class zzdu<T> extends zzdy<T> {

    /* renamed from: f */
    static final zzdu<Object> f8368f = new zzdu<>();

    private zzdu() {
    }

    @Override // com.google.android.gms.internal.measurement.zzdy
    /* renamed from: b */
    public final boolean mo12744b() {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzdy
    /* renamed from: c */
    public final T mo12743c() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    public final boolean equals(@NullableDecl Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
