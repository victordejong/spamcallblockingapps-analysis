package com.google.android.gms.internal.measurement;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.bz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bz.class */
public final class C3837bz<T> extends AbstractC3835bx<T> {

    /* renamed from: a */
    private final T f17915a;

    public C3837bz(T t) {
        this.f17915a = t;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3835bx
    /* renamed from: a */
    public final boolean mo5848a() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3835bx
    /* renamed from: b */
    public final T mo5847b() {
        return this.f17915a;
    }

    public final boolean equals(@NullableDecl Object obj) {
        return obj instanceof C3837bz ? this.f17915a.equals(((C3837bz) obj).f17915a) : false;
    }

    public final int hashCode() {
        return 1502476572 + this.f17915a.hashCode();
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f17915a);
        return new StringBuilder(String.valueOf(valueOf).length() + 13).append("Optional.of(").append(valueOf).append(")").toString();
    }
}
