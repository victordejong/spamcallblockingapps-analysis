package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/eg.class */
public final class eg<T> extends ei<T> {

    /* renamed from: a  reason: collision with root package name */
    static final eg<Object> f28987a = new eg<>();

    private eg() {
    }

    @Override // com.google.android.gms.internal.measurement.ei
    public final boolean a() {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.ei
    public final T b() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
