package com.google.android.gms.internal.icing;

import java.io.Serializable;
import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzcg.class */
final class zzcg<T> implements zzcc<T>, Serializable {
    @NullableDecl

    /* renamed from: f */
    private final T f7945f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcg(@NullableDecl T t) {
        this.f7945f = t;
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (!(obj instanceof zzcg)) {
            return false;
        }
        T t = this.f7945f;
        T t2 = ((zzcg) obj).f7945f;
        if (t != t2) {
            return t != null && t.equals(t2);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.icing.zzcc
    public final T get() {
        return this.f7945f;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f7945f});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f7945f);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
        sb.append("Suppliers.ofInstance(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }
}
