package com.google.android.gms.internal.icing;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbz.class */
final class zzbz<T> extends zzbx<T> {

    /* renamed from: f */
    private final T f7937f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbz(T t) {
        this.f7937f = t;
    }

    @Override // com.google.android.gms.internal.icing.zzbx
    /* renamed from: a */
    public final T mo13995a() {
        return this.f7937f;
    }

    @Override // com.google.android.gms.internal.icing.zzbx
    /* renamed from: b */
    public final boolean mo13994b() {
        return true;
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (obj instanceof zzbz) {
            return this.f7937f.equals(((zzbz) obj).f7937f);
        }
        return false;
    }

    public final int hashCode() {
        return this.f7937f.hashCode() + 1502476572;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f7937f);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
        sb.append("Optional.of(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }
}
