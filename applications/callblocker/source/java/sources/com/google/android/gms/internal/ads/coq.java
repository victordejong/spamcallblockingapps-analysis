package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/coq.class */
public final class coq<T> extends col<T> {

    /* renamed from: a */
    private final T f13446a;

    public coq(T t) {
        this.f13446a = t;
    }

    @Override // com.google.android.gms.internal.ads.col
    /* renamed from: a */
    public final T mo10940a() {
        return this.f13446a;
    }

    public final boolean equals(@NullableDecl Object obj) {
        return obj instanceof coq ? this.f13446a.equals(((coq) obj).f13446a) : false;
    }

    public final int hashCode() {
        return 1502476572 + this.f13446a.hashCode();
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f13446a);
        return new StringBuilder(String.valueOf(valueOf).length() + 13).append("Optional.of(").append(valueOf).append(")").toString();
    }
}
