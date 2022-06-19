package com.google.android.gms.internal.measurement;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.bv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bv.class */
public final class C3833bv<T> extends AbstractC3835bx<T> {

    /* renamed from: a */
    static final C3833bv<Object> f17914a = new C3833bv<>();

    private C3833bv() {
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3835bx
    /* renamed from: a */
    public final boolean mo5848a() {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3835bx
    /* renamed from: b */
    public final T mo5847b() {
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
