package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.eg */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/eg.class */
public final class C13467eg<T> extends AbstractC13469ei<T> {

    /* renamed from: a */
    static final C13467eg<Object> f50686a = new C13467eg<>();

    private C13467eg() {
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13469ei
    /* renamed from: a */
    public final boolean mo12895a() {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13469ei
    /* renamed from: b */
    public final T mo12894b() {
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
