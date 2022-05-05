package com.google.android.gms.internal.icing;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzce.class */
final class zzce<T> implements zzcc<T>, Serializable {

    /* renamed from: f */
    private final zzcc<T> f7941f;

    /* renamed from: g */
    private volatile transient boolean f7942g;
    @NullableDecl

    /* renamed from: h */
    private transient T f7943h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzce(zzcc<T> zzccVar) {
        zzca.m13993a(zzccVar);
        this.f7941f = zzccVar;
    }

    @Override // com.google.android.gms.internal.icing.zzcc
    public final T get() {
        if (!this.f7942g) {
            synchronized (this) {
                if (!this.f7942g) {
                    T t = this.f7941f.get();
                    this.f7943h = t;
                    this.f7942g = true;
                    return t;
                }
            }
        }
        return this.f7943h;
    }

    public final String toString() {
        Object obj;
        if (this.f7942g) {
            String valueOf = String.valueOf(this.f7943h);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            obj = sb.toString();
        } else {
            obj = this.f7941f;
        }
        String valueOf2 = String.valueOf(obj);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }
}
