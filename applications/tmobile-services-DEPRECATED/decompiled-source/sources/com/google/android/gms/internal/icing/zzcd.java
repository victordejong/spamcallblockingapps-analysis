package com.google.android.gms.internal.icing;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzcd.class */
final class zzcd<T> implements zzcc<T> {

    /* renamed from: f */
    private volatile zzcc<T> f7938f;

    /* renamed from: g */
    private volatile boolean f7939g;
    @NullableDecl

    /* renamed from: h */
    private T f7940h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcd(zzcc<T> zzccVar) {
        zzca.m13993a(zzccVar);
        this.f7938f = zzccVar;
    }

    @Override // com.google.android.gms.internal.icing.zzcc
    public final T get() {
        if (!this.f7939g) {
            synchronized (this) {
                if (!this.f7939g) {
                    T t = this.f7938f.get();
                    this.f7940h = t;
                    this.f7939g = true;
                    this.f7938f = null;
                    return t;
                }
            }
        }
        return this.f7940h;
    }

    public final String toString() {
        zzcc<T> zzccVar = this.f7938f;
        String str = zzccVar;
        if (zzccVar == null) {
            String valueOf = String.valueOf(this.f7940h);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            str = sb.toString();
        }
        String valueOf2 = String.valueOf(str);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }
}
