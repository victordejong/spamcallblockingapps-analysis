package com.google.android.gms.internal.icing;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbv.class */
final class zzbv<T> extends zzbx<T> {

    /* renamed from: f */
    static final zzbv<Object> f7935f = new zzbv<>();

    private zzbv() {
    }

    @Override // com.google.android.gms.internal.icing.zzbx
    /* renamed from: a */
    public final T mo13995a() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.android.gms.internal.icing.zzbx
    /* renamed from: b */
    public final boolean mo13994b() {
        return false;
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
